#!/usr/bin/env python3
# How to run it:
#   python3 automated_test_execution.py your_test_case
# with your_test_case set to the test case you want to test. Or you can run:
#   python3 automated_test_execution.py
# and set the testcase in this file as DEFAULT_TESTCASE = "your_test_case"

import argparse
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path
import textwrap

# ---------------------------------------------------------------------------
# Default configuration
# ---------------------------------------------------------------------------

DEFAULT_TESTCASE = "acc_test_2"


def run_shell(command: str, description: str) -> None:
    """
    Run a shell command and wait until it finishes.
    If the command fails, stop the script.
    """

    command = textwrap.dedent(command).strip()

    print()
    print("=" * 80)
    print(description)
    print("=" * 80)
    print(command)
    print("=" * 80)

    result = subprocess.run(
        ["bash", "-lc", command],
        check=False,
    )

    if result.returncode != 0:
        print()
        print(f"ERROR: Step failed: {description}")
        print(f"Return code: {result.returncode}")
        sys.exit(result.returncode)


def update_makefile_line(makefile_path: Path,
                         line_number: int,
                         variable_name: str,
                         testcase: str) -> None:
    """
    Update a specific 1-based line number in a Makefile.

    Example:
        line_number = 18 means the 18th line in the file.

    It replaces the line with:
        TEST ?= <testcase>
    or:
        TESTCASE ?= <testcase>
    """

    if not makefile_path.exists():
        raise FileNotFoundError(f"Makefile not found: {makefile_path}")

    lines = makefile_path.read_text().splitlines(keepends=True)

    index = line_number - 1

    if index < 0 or index >= len(lines):
        raise RuntimeError(
            f"{makefile_path} has only {len(lines)} lines, "
            f"but line {line_number} was requested."
        )

    old_line = lines[index].rstrip("\n")

    expected_prefix = f"{variable_name} ?="

    if not old_line.strip().startswith(expected_prefix):
        raise RuntimeError(
            f"Unexpected content in {makefile_path} at line {line_number}.\n"
            f"Expected line starting with: {expected_prefix}\n"
            f"Actual line was: {old_line}\n"
            f"No changes were made."
        )

    newline = "\n"
    if lines[index].endswith("\r\n"):
        newline = "\r\n"

    lines[index] = f"{variable_name} ?= {testcase}{newline}"

    backup_path = makefile_path.with_suffix(makefile_path.suffix + ".bak")
    shutil.copy2(makefile_path, backup_path)

    makefile_path.write_text("".join(lines))

    print(f"Updated {makefile_path}, line {line_number}:")
    print(f"  old: {old_line}")
    print(f"  new: {variable_name} ?= {testcase}")
    print(f"Backup written to: {backup_path}")


def validate_testcase_name(testcase: str) -> None:
    """
    Basic safety check so the testcase name cannot inject shell commands.
    Allows names like:
        acc_test_2
        acc_identity_8x8
        my-test-1
    """

    if not re.fullmatch(r"[A-Za-z0-9_-]+", testcase):
        raise ValueError(
            "Invalid testcase name. Use only letters, numbers, underscore, and dash."
        )


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Build and run a Didactic-SoC software test in QuestaSim."
    )

    parser.add_argument(
        "testcase",
        nargs="?",
        default=DEFAULT_TESTCASE,
        help=f"Testcase name to build and run. Default: {DEFAULT_TESTCASE}",
    )

    parser.add_argument(
        "--repo",
        default=str(Path.home() / "Edu4Chip" / "Didactic-SoC"),
        help="Path to Didactic-SoC repository.",
    )

    parser.add_argument(
        "--skip-makefile-edit",
        action="store_true",
        help="Do not modify Makefiles; only run commands.",
    )

    args = parser.parse_args()

    testcase = args.testcase
    repo = Path(args.repo).expanduser().resolve()

    validate_testcase_name(testcase)

    root_makefile = repo / "Makefile"
    sw_makefile = repo / "sw" / "Makefile"
    sim_makefile = repo / "sim" / "Makefile"

    sim_dir = repo / "sim"
    msmcd_dir = Path("/nas/ei/share/tools/apptainer/MSMCD")

    print()
    print(f"Repository: {repo}")
    print(f"Testcase:   {testcase}")

    if not repo.exists():
        print(f"ERROR: Repository does not exist: {repo}")
        sys.exit(1)

    # -----------------------------------------------------------------------
    # Update Makefiles
    # -----------------------------------------------------------------------

    if not args.skip_makefile_edit:
        print()
        print("Updating Makefiles...")

        update_makefile_line(root_makefile, 18, "TEST", testcase)
        update_makefile_line(sw_makefile, 9, "TESTCASE", testcase)
        update_makefile_line(sim_makefile, 91, "TESTCASE", testcase)
    else:
        print()
        print("Skipping Makefile edits.")

        # -----------------------------------------------------------------------
    # Full build and simulation flow
    #
    # Important:
    # This is intentionally one single shell session.
    # That way the PATH export and module loads stay active for later steps.
    # -----------------------------------------------------------------------

    run_shell(
        command=f"""
            set -e

            export PATH="{Path.home()}/Edu4Chip/benderDir:$PATH"

            echo
            echo "============================================================"
            echo "Step 1: Repository init"
            echo "============================================================"
            cd "{repo}"
            module load xilinx/vivado/2024.1
            make repository_init

            echo
            echo "============================================================"
            echo "Step 2: QuestaSim compile and elaborate"
            echo "============================================================"
            cd "{sim_dir}"
            module load mentor/questasim/2023.4
            make compile
            make elaborate

            echo
            echo "============================================================"
            echo "Step 3: Build software test"
            echo "============================================================"
            cd "{repo}"
            module load eda_freeware/riscv/64-elf-ubuntu-24.04-gcc/2026.04.05
            make build_test

            echo
            echo "============================================================"
            echo "Step 4: Run simulation inside Apptainer"
            echo "============================================================"

            cat > "{repo}/.run_sim_inside_apptainer.sh" <<'EOF'
            set -e
            cd "${{HOME}}/Edu4Chip/Didactic-SoC/sim"
            make run_sim
            exit
            EOF

            cd "{msmcd_dir}"
            source launch_alma_apptainer < "{repo}/.run_sim_inside_apptainer.sh"

            rm -f "{repo}/.run_sim_inside_apptainer.sh"
        """,
        description="Full Didactic-SoC build and simulation flow",
    )

    print()
    print("=" * 80)
    print(f"DONE: testcase '{testcase}' completed.")
    print("=" * 80)


if __name__ == "__main__":
    main()

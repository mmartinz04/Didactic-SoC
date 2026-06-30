`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Weight Buffer for AI Accelerator
//
// Responsibilities:
//   - Stores one weight matrix using INT8 values.
//   - Receives write commands from buffer_controller.
//   - Has no APB protocol logic inside.
//   - Presents the full weight matrix to the systolic array.
//   - Generates b_valid when the stored matrix should be considered valid.
//
// Addressing:
//   - The matrix is stored as a flat memory.
//   - Address = row * MAT_DIM + col
//
// Example for MAT_DIM = 16:
//   element B[0][0] -> address 0
//   element B[0][1] -> address 1
//   element B[1][0] -> address 16
//
// Notes:
//   - This module represents one physical weight buffer.
//   - For double buffering, instantiate this module twice:
//       weight_buffer B0
//       weight_buffer B1
//
//   - Buffer selection and write routing are handled outside this module.
//   - Since the systolic array uses stationary weights, this module exposes the complete matrix continuously when output_enable is active.
//
//////////////////////////////////////////////////////////////////////////////////

module weight_buffer #(
    parameter MAT_DIM = 16,
    parameter DATA_W  = 8,
    parameter ADDR_W  = 16
)(
    //--------------------------------------------------
    // Clock and Reset
    //--------------------------------------------------
    input wire clk_in,
    input wire reset_int,

    //--------------------------------------------------
    // Write Interface from Buffer Controller
    //--------------------------------------------------
    input wire wr_en,
    input wire [ADDR_W-1:0] wr_addr,
    input wire [DATA_W-1:0] wr_data,

    //--------------------------------------------------
    // Matrix Dimension Configuration
    //--------------------------------------------------
    input wire [4:0] b_rows,
    input wire [4:0] b_cols,

    //--------------------------------------------------
    // Output Control
    //--------------------------------------------------
    input wire output_enable,

    //--------------------------------------------------
    // Outputs to Systolic Array
    //--------------------------------------------------
    output wire signed [0:MAT_DIM-1][0:MAT_DIM-1][DATA_W-1:0] weight_out,
    output wire b_valid
);

    //--------------------------------------------------
    // Local Parameters
    //--------------------------------------------------

    localparam NUM_ELEMENTS = MAT_DIM * MAT_DIM;

    //--------------------------------------------------
    // Internal Storage
    //--------------------------------------------------
    //
    // Flat storage is easier to access from software.
    //
    // Software-visible address:
    //   addr = row * MAT_DIM + col
    //
    //--------------------------------------------------

    reg [DATA_W-1:0] mem [0:NUM_ELEMENTS-1];

    //--------------------------------------------------
    // Loop Variables
    //--------------------------------------------------

    integer clear_idx;

    //--------------------------------------------------
    // Write Port
    //--------------------------------------------------
    //
    // A write from the CPU eventually becomes:
    //
    //   wr_en   = 1
    //   wr_addr = target element index
    //   wr_data = INT8 weight value
    //
    //--------------------------------------------------

    always @(posedge clk_in or negedge reset_int) begin
        if (!reset_int) begin
            for (clear_idx = 0; clear_idx < NUM_ELEMENTS; clear_idx = clear_idx + 1) begin
                mem[clear_idx] <= {DATA_W{1'b0}};
            end
        end
        else begin
            if (wr_en) begin
                if (wr_addr < NUM_ELEMENTS) begin
                    mem[wr_addr] <= wr_data;
                end
            end
        end
    end

    //--------------------------------------------------
    // Matrix Output Logic
    //--------------------------------------------------
    //
    // When output_enable is high, the full stored matrix is exposed to the
    // systolic array.
    //
    // Only entries inside the configured matrix size are marked meaningful.
    // Entries outside b_rows/b_cols are driven as zero.
    //
    //--------------------------------------------------

    genvar gi;
    genvar gj;
    
    generate
        for (gi = 0; gi < MAT_DIM; gi = gi + 1) begin : gen_weight_row
            for (gj = 0; gj < MAT_DIM; gj = gj + 1) begin : gen_weight_col
    
                assign weight_out[gi][gj] =
                    (output_enable && (gi < b_rows) && (gj < b_cols))
                    ? mem[(gi * MAT_DIM) + gj]
                    : {DATA_W{1'b0}};
    
            end
        end
    endgenerate
    
    assign b_valid = output_enable;
    
endmodule

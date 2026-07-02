`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// AI Accelerator Top-Level Module
//
// Responsibilities:
//   - Provides the APB-visible subsystem wrapper for the AI accelerator.
//   - Instantiates the APB interface.
//   - Instantiates the buffer write router.
//   - Instantiates double-buffered activation, weight, and output buffers.
//   - Instantiates the accelerator control unit.
//   - Instantiates the systolic array.
//   - Connects CPU/APB writes to internal buffers.
//   - Connects selected buffer outputs to the systolic array.
//   - Connects systolic array outputs to the selected output buffer.
//   - Returns computation results to the CPU through the APB interface.
//
// Buffering scheme:
//   - active_buf = 0:
//       compute using A0, B0, C0
//
//   - active_buf = 1:
//       compute using A1, B1, C1
//
// Result readback:
//   - last_result_buf tells which output buffer contains the most recent result.
//   - The APB interface reads from C0 or C1 depending on last_result_buf.
//
//////////////////////////////////////////////////////////////////////////////////

module subsystem #(
    parameter APB_AW    = 10,
    parameter APB_DW    = 32,
    parameter MAT_DIM   = 8,
    parameter DATA_W_A  = 8,
    parameter DATA_W_B  = 8,
    parameter DATA_W_C  = 32,
    parameter ADDR_W    = 16
)(
    //--------------------------------------------------
    // APB Interface
    //--------------------------------------------------
    input  wire [APB_AW-1:0]     PADDR,
    input  wire                  PENABLE,
    input  wire                  PSEL,
    input  wire [APB_DW-1:0]     PWDATA,
    input  wire                  PWRITE,
    input  wire [APB_DW/8-1:0]   PSTRB,

    output wire [APB_DW-1:0]     PRDATA,
    output wire                  PREADY,
    output wire                  PSLVERR,

    //--------------------------------------------------
    // Clock and Reset
    //--------------------------------------------------
    input  wire                  clk,
    //input  wire                  high_speed_clk,
    input  wire                  reset_n,

    //--------------------------------------------------
    // IRQ
    //--------------------------------------------------
    output wire                  irq,

    //--------------------------------------------------
    // Subsystem Control
    //--------------------------------------------------
    input  wire                  irq_en,
    //input  wire [7:0]            ss_ctrl_4,

    //--------------------------------------------------
    // PMOD GPIO Port 0
    //--------------------------------------------------
    input  wire [15:0]            pmod_gpi,
    output wire [15:0]            pmod_gpo,
    output wire [15:0]            pmod_gpio_oe

    //--------------------------------------------------
    // PMOD GPIO Port 1
    //--------------------------------------------------
    //input  wire [3:0]            pmod_1_gpi,
    //output wire [3:0]            pmod_1_gpo,
    //output wire [3:0]            pmod_1_gpio_oe
);

    //--------------------------------------------------
    // Unused PMOD Outputs
    //--------------------------------------------------

    assign pmod_gpo     = 16'd0;
    assign pmod_gpio_oe = 16'd0;

    //--------------------------------------------------
    // APB Interface Internal Signals
    //--------------------------------------------------

    wire                  start_cmd;
    wire                  busy;
    wire                  done;
    wire                  irq_pending;          // v5: latched completion for level IRQ

    wire                  buffer_wr_en;
    wire [2:0]            buffer_select;
    wire [ADDR_W-1:0]     buffer_addr;
    wire [31:0]           buffer_data;

    wire [ADDR_W-1:0]     result_addr;
    wire [31:0]           result_data;

    wire [4:0]            a_rows;
    wire [4:0]            a_cols;
    wire [4:0]            b_rows;
    wire [4:0]            b_cols;

    wire [4:0]            c_rows;
    wire [4:0]            c_cols;

    assign c_rows = a_rows;
    assign c_cols = b_cols;

    //--------------------------------------------------
    // Buffer Controller Outputs
    //--------------------------------------------------

    wire                  a0_wr_en;
    wire [ADDR_W-1:0]     a0_wr_addr;
    wire [DATA_W_A-1:0]   a0_wr_data;

    wire                  a1_wr_en;
    wire [ADDR_W-1:0]     a1_wr_addr;
    wire [DATA_W_A-1:0]   a1_wr_data;

    wire                  b0_wr_en;
    wire [ADDR_W-1:0]     b0_wr_addr;
    wire [DATA_W_B-1:0]   b0_wr_data;

    wire                  b1_wr_en;
    wire [ADDR_W-1:0]     b1_wr_addr;
    wire [DATA_W_B-1:0]   b1_wr_data;

    wire                  c0_wr_en;
    wire [ADDR_W-1:0]     c0_wr_addr;
    wire [DATA_W_C-1:0]   c0_wr_data;

    wire                  c1_wr_en;
    wire [ADDR_W-1:0]     c1_wr_addr;
    wire [DATA_W_C-1:0]   c1_wr_data;

    //--------------------------------------------------
    // Activation Buffer Outputs
    //--------------------------------------------------

    wire signed [0:MAT_DIM-1][DATA_W_A-1:0] a0_out;
    wire        [0:MAT_DIM-1]               a0_valid;
    wire                                    a0_stream_done;

    wire signed [0:MAT_DIM-1][DATA_W_A-1:0] a1_out;
    wire        [0:MAT_DIM-1]               a1_valid;
    wire                                    a1_stream_done;

    //--------------------------------------------------
    // Weight Buffer Outputs
    //--------------------------------------------------

    wire signed [0:MAT_DIM-1][0:MAT_DIM-1][DATA_W_B-1:0] b0_out;
    wire                                                 b0_valid;

    wire signed [0:MAT_DIM-1][0:MAT_DIM-1][DATA_W_B-1:0] b1_out;
    wire                                                 b1_valid;

    //--------------------------------------------------
    // Selected Systolic Inputs
    //--------------------------------------------------

    wire signed [0:MAT_DIM-1][DATA_W_A-1:0] selected_a;
    wire        [0:MAT_DIM-1]               selected_a_valid;

    wire signed [0:MAT_DIM-1][0:MAT_DIM-1][DATA_W_B-1:0] selected_b;
    wire                                                 selected_b_valid;

    //--------------------------------------------------
    // Systolic Outputs
    //--------------------------------------------------

    wire signed [0:MAT_DIM-1][DATA_W_C-1:0] c_out;
    wire        [0:MAT_DIM-1]               c_valid;

    //--------------------------------------------------
    // Output Buffer Read Data
    //--------------------------------------------------

    wire signed [DATA_W_C-1:0] c0_read_data;
    wire signed [DATA_W_C-1:0] c1_read_data;

    wire c0_store_done;
    wire c1_store_done;

    //--------------------------------------------------
    // Control Signals
    //--------------------------------------------------

    wire a0_stream_start;
    wire a1_stream_start;

    wire a0_stream_en;
    wire a1_stream_en;

    wire b0_output_enable;
    wire b1_output_enable;

    wire c0_store_enable;
    wire c1_store_enable;

    wire active_buf;
    wire last_result_buf;

    //--------------------------------------------------
    // APB Interface
    //--------------------------------------------------

    apb_interface #(
        .APB_AW(APB_AW),
        .APB_DW(APB_DW)
    ) u_apb_interface (
        .clk_in(clk),
        .reset_int(reset_n),

        .PADDR(PADDR),
        .PSEL(PSEL),
        .PENABLE(PENABLE),
        .PWRITE(PWRITE),
        .PWDATA(PWDATA),

        .PSTRB(PSTRB),

        .PRDATA(PRDATA),
        .PREADY(PREADY),
        .PSLVERR(PSLVERR),

        .start_cmd(start_cmd),

        .busy(busy),
        .done(done),

        .irq_pending(irq_pending),

        .buffer_wr_en(buffer_wr_en),
        .buffer_select(buffer_select),
        .buffer_addr(buffer_addr),
        .buffer_data(buffer_data),

        .result_addr(result_addr),
        .result_data(result_data),

        .a_rows(a_rows),
        .a_cols(a_cols),
        .b_rows(b_rows),
        .b_cols(b_cols)
    );

    //--------------------------------------------------
    // Buffer Controller
    //--------------------------------------------------

    buffer_controller #(
        .ADDR_W(ADDR_W),
        .IN_DW(DATA_W_A),
        .OUT_DW(DATA_W_C)
    ) u_buffer_controller (
        .buffer_wr_en(buffer_wr_en),
        .buffer_select(buffer_select),
        .buffer_addr(buffer_addr),
        .buffer_data(buffer_data),

        .a0_wr_en(a0_wr_en),
        .a0_wr_addr(a0_wr_addr),
        .a0_wr_data(a0_wr_data),

        .a1_wr_en(a1_wr_en),
        .a1_wr_addr(a1_wr_addr),
        .a1_wr_data(a1_wr_data),

        .b0_wr_en(b0_wr_en),
        .b0_wr_addr(b0_wr_addr),
        .b0_wr_data(b0_wr_data),

        .b1_wr_en(b1_wr_en),
        .b1_wr_addr(b1_wr_addr),
        .b1_wr_data(b1_wr_data),

        .c0_wr_en(c0_wr_en),
        .c0_wr_addr(c0_wr_addr),
        .c0_wr_data(c0_wr_data),

        .c1_wr_en(c1_wr_en),
        .c1_wr_addr(c1_wr_addr),
        .c1_wr_data(c1_wr_data)
    );

    //--------------------------------------------------
    // Activation Buffer A0
    //--------------------------------------------------

    activation_buffer #(
        .MAT_DIM(MAT_DIM),
        .DATA_W(DATA_W_A),
        .ADDR_W(ADDR_W)
    ) u_activation_buffer_a0 (
        .clk_in(clk),
        .reset_int(reset_n),

        .wr_en(a0_wr_en),
        .wr_addr(a0_wr_addr),
        .wr_data(a0_wr_data),

        .a_rows(a_rows),
        .a_cols(a_cols),

        .stream_start(a0_stream_start),
        .stream_en(a0_stream_en),

        .act_out(a0_out),
        .act_valid(a0_valid),

        .stream_done(a0_stream_done)
    );

    //--------------------------------------------------
    // Activation Buffer A1
    //--------------------------------------------------

    activation_buffer #(
        .MAT_DIM(MAT_DIM),
        .DATA_W(DATA_W_A),
        .ADDR_W(ADDR_W)
    ) u_activation_buffer_a1 (
        .clk_in(clk),
        .reset_int(reset_n),

        .wr_en(a1_wr_en),
        .wr_addr(a1_wr_addr),
        .wr_data(a1_wr_data),

        .a_rows(a_rows),
        .a_cols(a_cols),

        .stream_start(a1_stream_start),
        .stream_en(a1_stream_en),

        .act_out(a1_out),
        .act_valid(a1_valid),

        .stream_done(a1_stream_done)
    );

    //--------------------------------------------------
    // Weight Buffer B0
    //--------------------------------------------------

    weight_buffer #(
        .MAT_DIM(MAT_DIM),
        .DATA_W(DATA_W_B),
        .ADDR_W(ADDR_W)
    ) u_weight_buffer_b0 (
        .clk_in(clk),
        .reset_int(reset_n),

        .wr_en(b0_wr_en),
        .wr_addr(b0_wr_addr),
        .wr_data(b0_wr_data),

        .b_rows(b_rows),
        .b_cols(b_cols),

        .output_enable(b0_output_enable),

        .weight_out(b0_out),
        .b_valid(b0_valid)
    );

    //--------------------------------------------------
    // Weight Buffer B1
    //--------------------------------------------------

    weight_buffer #(
        .MAT_DIM(MAT_DIM),
        .DATA_W(DATA_W_B),
        .ADDR_W(ADDR_W)
    ) u_weight_buffer_b1 (
        .clk_in(clk),
        .reset_int(reset_n),

        .wr_en(b1_wr_en),
        .wr_addr(b1_wr_addr),
        .wr_data(b1_wr_data),

        .b_rows(b_rows),
        .b_cols(b_cols),

        .output_enable(b1_output_enable),

        .weight_out(b1_out),
        .b_valid(b1_valid)
    );

    //--------------------------------------------------
    // Select Active Input Buffers
    //--------------------------------------------------

    assign selected_a       = (active_buf == 1'b0) ? a0_out    : a1_out;
    assign selected_a_valid = (active_buf == 1'b0) ? a0_valid  : a1_valid;

    assign selected_b       = (active_buf == 1'b0) ? b0_out    : b1_out;
    assign selected_b_valid = (active_buf == 1'b0) ? b0_valid  : b1_valid;

    //--------------------------------------------------
    // Systolic Array
    //--------------------------------------------------

    systolic_array #(
        .ARRAY_SIZE(MAT_DIM),
        .DATA_W_A(DATA_W_A),
        .DATA_W_B(DATA_W_B),
        .DATA_W_C(DATA_W_C)
    ) u_systolic_array (
        .clk(clk),
        .rst(reset_n),

        .a_in(selected_a),
        .a_valid(selected_a_valid),

        .b_in(selected_b),
        .b_valid(selected_b_valid),

        .c_out(c_out),
        .c_valid(c_valid)
    );

    //--------------------------------------------------
    // Output Buffer C0
    //--------------------------------------------------

    output_buffer #(
        .MAT_DIM(MAT_DIM),
        .DATA_W(DATA_W_C),
        .ADDR_W(ADDR_W)
    ) u_output_buffer_c0 (
        .clk_in(clk),
        .reset_int(reset_n),

        .c_in(c_out),
        .c_valid(c_valid),

        .c_rows(c_rows),
        .c_cols(c_cols),

        .store_enable(c0_store_enable),

        .read_addr(result_addr),
        .read_data(c0_read_data),

        .store_done(c0_store_done)
    );

    //--------------------------------------------------
    // Output Buffer C1
    //--------------------------------------------------

    output_buffer #(
        .MAT_DIM(MAT_DIM),
        .DATA_W(DATA_W_C),
        .ADDR_W(ADDR_W)
    ) u_output_buffer_c1 (
        .clk_in(clk),
        .reset_int(reset_n),

        .c_in(c_out),
        .c_valid(c_valid),

        .c_rows(c_rows),
        .c_cols(c_cols),

        .store_enable(c1_store_enable),

        .read_addr(result_addr),
        .read_data(c1_read_data),

        .store_done(c1_store_done)
    );

    //--------------------------------------------------
    // Result Readback Mux
    //--------------------------------------------------

    assign result_data =
        (last_result_buf == 1'b0) ? c0_read_data : c1_read_data;

    //--------------------------------------------------
    // Accelerator Control Unit
    //--------------------------------------------------

    accelerator_control #(
        .MAT_DIM(MAT_DIM)
    ) u_accelerator_control (
        .clk_in(clk),
        .reset_int(reset_n),

        .start_cmd(start_cmd),

        .busy(busy),
        .done(done),

        .a0_stream_done(a0_stream_done),
        .a1_stream_done(a1_stream_done),

        .c0_store_done(c0_store_done),
        .c1_store_done(c1_store_done),

        .a0_stream_start(a0_stream_start),
        .a1_stream_start(a1_stream_start),

        .a0_stream_en(a0_stream_en),
        .a1_stream_en(a1_stream_en),

        .b0_output_enable(b0_output_enable),
        .b1_output_enable(b1_output_enable),

        .c0_store_enable(c0_store_enable),
        .c1_store_enable(c1_store_enable),

        .active_buf(active_buf),
        .last_result_buf(last_result_buf)
    );

    //--------------------------------------------------
    // IRQ
    //--------------------------------------------------
    //
    // v5: level-style interrupt. irq_pending is the latched completion flag
    // (held until the SoC acknowledges via CONTROL[1] or starts a new run),
    // so the 1-cycle done pulse can no longer be missed by the interrupt
    // controller. Gated by the SoC enable irq_en_4.
    //
    //--------------------------------------------------

    assign irq = irq_pending & irq_en;

endmodule

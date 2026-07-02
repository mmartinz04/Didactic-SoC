`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Buffer Controller for AI Accelerator
//
// This module connects the APB interface to the accelerator buffer modules.
//
// Responsibilities:
//   - Receives generic buffer access commands from the APB interface.
//   - Decodes BUFFER_SELECT to determine which buffer is targeted.
//   - Routes write-enable, address, and data signals to the selected buffer.
//   - Separates INT8 input-buffer writes from INT32 output-buffer access.
//   - Keeps the APB interface independent from the internal buffer structure.
//   - Keeps the buffer storage modules independent from APB protocol details.
//
// Buffer IDs:
//   0 = Activation Buffer A0
//   1 = Activation Buffer A1
//   2 = Weight Buffer B0
//   3 = Weight Buffer B1
//   4 = Output Buffer C0
//   5 = Output Buffer C1
//
// Notes:
//   - Activation and weight buffers store INT8 values, so only buffer_data[7:0] is forwarded to A/B buffers.
//   - Output buffers store INT32 values, so the full 32-bit data path is used.
//   - CPU writes to C buffers are usually not needed during normal operation, but the ports are included for testing/debugging if desired.
//
//////////////////////////////////////////////////////////////////////////////////

module buffer_controller #(
    parameter ADDR_W = 16,
    parameter IN_DW  = 8,
    parameter OUT_DW = 32
)(
    //--------------------------------------------------
    // Generic Buffer Access Interface from APB Interface
    //--------------------------------------------------
    input  wire                  buffer_wr_en,
    input  wire [2:0]            buffer_select,
    input  wire [ADDR_W-1:0]     buffer_addr,
    input  wire [31:0]           buffer_data,

    //--------------------------------------------------
    // Activation Buffer A0 Write Interface
    //--------------------------------------------------
    output reg                   a0_wr_en,
    output reg  [ADDR_W-1:0]     a0_wr_addr,
    output reg  [IN_DW-1:0]      a0_wr_data,

    //--------------------------------------------------
    // Activation Buffer A1 Write Interface
    //--------------------------------------------------
    output reg                   a1_wr_en,
    output reg  [ADDR_W-1:0]     a1_wr_addr,
    output reg  [IN_DW-1:0]      a1_wr_data,

    //--------------------------------------------------
    // Weight Buffer B0 Write Interface
    //--------------------------------------------------
    output reg                   b0_wr_en,
    output reg  [ADDR_W-1:0]     b0_wr_addr,
    output reg  [IN_DW-1:0]      b0_wr_data,

    //--------------------------------------------------
    // Weight Buffer B1 Write Interface
    //--------------------------------------------------
    output reg                   b1_wr_en,
    output reg  [ADDR_W-1:0]     b1_wr_addr,
    output reg  [IN_DW-1:0]      b1_wr_data,

    //--------------------------------------------------
    // Optional Output Buffer C0 Write Interface
    //--------------------------------------------------
    output reg                   c0_wr_en,
    output reg  [ADDR_W-1:0]     c0_wr_addr,
    output reg  [OUT_DW-1:0]     c0_wr_data,

    //--------------------------------------------------
    // Optional Output Buffer C1 Write Interface
    //--------------------------------------------------
    output reg                   c1_wr_en,
    output reg  [ADDR_W-1:0]     c1_wr_addr,
    output reg  [OUT_DW-1:0]     c1_wr_data
);

    //--------------------------------------------------
    // Buffer ID Encoding
    //--------------------------------------------------

    localparam BUF_A0 = 3'd0;
    localparam BUF_A1 = 3'd1;

    localparam BUF_B0 = 3'd2;
    localparam BUF_B1 = 3'd3;

    localparam BUF_C0 = 3'd4;
    localparam BUF_C1 = 3'd5;

    //--------------------------------------------------
    // Combinational Routing Logic
    //--------------------------------------------------
    //
    // This block translates one generic APB-side write command into exactly one buffer-specific write command.
    //
    // Example:
    //   buffer_select = BUF_A0
    //   buffer_addr   = 16'd73
    //   buffer_data   = 32'h0000002A
    //   buffer_wr_en  = 1
    //
    // Result:
    //   a0_wr_en      = 1
    //   a0_wr_addr    = 73
    //   a0_wr_data    = 8'h2A
    //
    //--------------------------------------------------

    always @(*) begin

        //--------------------------------------------------
        // Default values -> All write enables are disabled by default. This prevents accidental writes to multiple buffers.
        //--------------------------------------------------

        a0_wr_en   = 1'b0;
        a1_wr_en   = 1'b0;
        b0_wr_en   = 1'b0;
        b1_wr_en   = 1'b0;
        c0_wr_en   = 1'b0;
        c1_wr_en   = 1'b0;

        a0_wr_addr = {ADDR_W{1'b0}};
        a1_wr_addr = {ADDR_W{1'b0}};
        b0_wr_addr = {ADDR_W{1'b0}};
        b1_wr_addr = {ADDR_W{1'b0}};
        c0_wr_addr = {ADDR_W{1'b0}};
        c1_wr_addr = {ADDR_W{1'b0}};

        a0_wr_data = {IN_DW{1'b0}};
        a1_wr_data = {IN_DW{1'b0}};
        b0_wr_data = {IN_DW{1'b0}};
        b1_wr_data = {IN_DW{1'b0}};
        c0_wr_data = {OUT_DW{1'b0}};
        c1_wr_data = {OUT_DW{1'b0}};

        //--------------------------------------------------
        // Decode selected buffer
        //--------------------------------------------------

        if (buffer_wr_en) begin
            case (buffer_select)

                BUF_A0: begin
                    a0_wr_en   = 1'b1;
                    a0_wr_addr = buffer_addr;
                    a0_wr_data = buffer_data[IN_DW-1:0];
                end

                BUF_A1: begin
                    a1_wr_en   = 1'b1;
                    a1_wr_addr = buffer_addr;
                    a1_wr_data = buffer_data[IN_DW-1:0];
                end

                BUF_B0: begin
                    b0_wr_en   = 1'b1;
                    b0_wr_addr = buffer_addr;
                    b0_wr_data = buffer_data[IN_DW-1:0];
                end

                BUF_B1: begin
                    b1_wr_en   = 1'b1;
                    b1_wr_addr = buffer_addr;
                    b1_wr_data = buffer_data[IN_DW-1:0];
                end

                BUF_C0: begin
                    c0_wr_en   = 1'b1;
                    c0_wr_addr = buffer_addr;
                    c0_wr_data = buffer_data[OUT_DW-1:0];
                end

                BUF_C1: begin
                    c1_wr_en   = 1'b1;
                    c1_wr_addr = buffer_addr;
                    c1_wr_data = buffer_data[OUT_DW-1:0];
                end

                default: begin
                end
            endcase
        end
    end
endmodule

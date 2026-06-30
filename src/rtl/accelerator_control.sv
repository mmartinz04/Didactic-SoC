`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Accelerator Control Unit
//
// Responsibilities:
//   - Receives start_cmd from the APB interface.
//   - Controls one complete accelerator operation.
//   - Selects which double buffers are active for computation.
//   - Enables the selected activation buffer stream.
//   - Enables the selected weight buffer output.
//   - Enables the selected output buffer store path.
//   - Reports busy/done status back to the APB interface.
//   - Toggles active buffers after each completed operation.
//
// Double-buffering behavior:
//   - While one buffer set is used for computation, software may write to the
//     other buffer set.
//   - active_buf = 0 means compute using A0, B0, C0.
//   - active_buf = 1 means compute using A1, B1, C1.
//
// Notes:
//   - This module does not contain APB logic.
//   - This module does not contain buffer storage.
//   - This module only coordinates existing modules.
//
//////////////////////////////////////////////////////////////////////////////////

module accelerator_control #(
    parameter MAT_DIM = 16
)(
    //--------------------------------------------------
    // Clock and Reset
    //--------------------------------------------------
    input  wire clk_in,
    input  wire reset_int,

    //--------------------------------------------------
    // Command from APB Interface
    //--------------------------------------------------
    input  wire start_cmd,

    //--------------------------------------------------
    // Status to APB Interface
    //--------------------------------------------------
    output reg  busy,
    output reg  done,

    //--------------------------------------------------
    // Completion Inputs from Buffers
    //--------------------------------------------------
    input  wire a0_stream_done,
    input  wire a1_stream_done,

    input  wire c0_store_done,
    input  wire c1_store_done,

    //--------------------------------------------------
    // Activation Buffer Control
    //--------------------------------------------------
    output reg  a0_stream_start,
    output reg  a1_stream_start,

    output reg  a0_stream_en,
    output reg  a1_stream_en,

    //--------------------------------------------------
    // Weight Buffer Control
    //--------------------------------------------------
    output reg  b0_output_enable,
    output reg  b1_output_enable,

    //--------------------------------------------------
    // Output Buffer Control
    //--------------------------------------------------
    output reg  c0_store_enable,
    output reg  c1_store_enable,

    //--------------------------------------------------
    // Active Buffer Indicator
    //--------------------------------------------------
    output reg  active_buf,
    output reg last_result_buf
);

    //--------------------------------------------------
    // State Encoding
    //--------------------------------------------------

    localparam S_IDLE    = 2'd0;
    localparam S_START   = 2'd1;
    localparam S_COMPUTE = 2'd2;
    localparam S_DONE    = 2'd3;

    reg [1:0] state_reg;
    reg [1:0] state_next;

    //--------------------------------------------------
    // Selected Done Signal
    //--------------------------------------------------
    // Completion is driven by the active output buffer's store_done.
    // (v5: the per-run a_done_seen / c_done_seen latches were removed -
    //  they were written but never read, so they affected nothing.)

    wire selected_c_store_done;

    assign selected_c_store_done = (active_buf == 1'b0) ? c0_store_done : c1_store_done;

    //--------------------------------------------------
    // Next-State Logic
    //--------------------------------------------------

    always @(*) begin
        state_next = state_reg;

        case (state_reg)

            S_IDLE: begin
                if (start_cmd)
                    state_next = S_START;
            end

            S_START: begin
                state_next = S_COMPUTE;
            end

            S_COMPUTE: begin
                if (selected_c_store_done)
                    state_next = S_DONE;
            end

            S_DONE: begin
                state_next = S_IDLE;
            end

            default: begin
                state_next = S_IDLE;
            end

        endcase
    end

    //--------------------------------------------------
    // State Register
    //--------------------------------------------------

    always @(posedge clk_in or negedge reset_int) begin
        if (!reset_int) begin
            state_reg       <= S_IDLE;
            active_buf      <= 1'b0;
            last_result_buf <= 1'b0;
        end
        else begin
            state_reg <= state_next;

            if (state_reg == S_DONE) begin
                last_result_buf <= active_buf;
                active_buf      <= ~active_buf;
            end
        end
    end

    //--------------------------------------------------
    // Output Control Logic
    //--------------------------------------------------

    always @(*) begin

        //--------------------------------------------------
        // Defaults
        //--------------------------------------------------

        busy = 1'b0;
        done = 1'b0;

        a0_stream_start = 1'b0;
        a1_stream_start = 1'b0;

        a0_stream_en = 1'b0;
        a1_stream_en = 1'b0;

        b0_output_enable = 1'b0;
        b1_output_enable = 1'b0;

        c0_store_enable = 1'b0;
        c1_store_enable = 1'b0;

        //--------------------------------------------------
        // State-dependent outputs
        //--------------------------------------------------

        case (state_reg)

            S_IDLE: begin
                busy = 1'b0;
                done = 1'b0;
            end

            S_START: begin
                busy = 1'b1;

                if (active_buf == 1'b0) begin
                    a0_stream_start  = 1'b1;
                    a0_stream_en     = 1'b1;
                    b0_output_enable = 1'b1;
                    c0_store_enable  = 1'b1;
                end
                else begin
                    a1_stream_start  = 1'b1;
                    a1_stream_en     = 1'b1;
                    b1_output_enable = 1'b1;
                    c1_store_enable  = 1'b1;
                end
            end

            S_COMPUTE: begin
                busy = 1'b1;

                if (active_buf == 1'b0) begin
                    a0_stream_en     = 1'b1;
                    b0_output_enable = 1'b1;
                    c0_store_enable  = 1'b1;
                end
                else begin
                    a1_stream_en     = 1'b1;
                    b1_output_enable = 1'b1;
                    c1_store_enable  = 1'b1;
                end
            end

            S_DONE: begin
                busy = 1'b0;
                done = 1'b1;
            end

            default: begin
                busy = 1'b0;
                done = 1'b0;
            end

        endcase

    end

endmodule
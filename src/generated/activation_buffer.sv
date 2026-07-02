`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Activation Buffer for AI Accelerator
//
// Responsibilities:
//   - Stores one activation matrix using INT8 values.
//   - Receives write commands from buffer_controller.
//   - Has no APB protocol logic inside.
//   - Streams activation values to the systolic array.
//   - Applies row-skewing:
//       row 0 starts at cycle 0
//       row 1 starts at cycle 1
//       row 2 starts at cycle 2
//       ...
//
// Addressing:
//   - The matrix is stored as a flat memory.
//   - Address = row * MAT_DIM + col
//
// Example for MAT_DIM = 16:
//   element A[0][0] -> address 0
//   element A[0][1] -> address 1
//   element A[1][0] -> address 16
//
// Notes:
//   - This module represents one physical activation buffer.
//   - For double buffering, instantiate this module twice:
//       activation_buffer A0
//       activation_buffer A1
//   - Buffer selection and write routing are handled outside this module.
//
//
//////////////////////////////////////////////////////////////////////////////////

module activation_buffer #(
    parameter MAT_DIM = 16,
    parameter DATA_W  = 8,
    parameter ADDR_W  = 16
)(
    //--------------------------------------------------
    // Clock and Reset
    //--------------------------------------------------
    input  wire clk_in,
    input  wire reset_int,

    //--------------------------------------------------
    // Write Interface from Buffer Controller
    //--------------------------------------------------
    input  wire                  wr_en,
    input  wire [ADDR_W-1:0]     wr_addr,
    input  wire [DATA_W-1:0]     wr_data,

    //--------------------------------------------------
    // Matrix Dimension Configuration
    //--------------------------------------------------
    input  wire [4:0]            a_rows,
    input  wire [4:0]            a_cols,

    //--------------------------------------------------
    // Streaming Control
    //--------------------------------------------------
    input  wire                  stream_start,
    input  wire                  stream_en,

    //--------------------------------------------------
    // Outputs to Systolic Array
    //--------------------------------------------------
    output reg signed [0:MAT_DIM-1][DATA_W-1:0] act_out,
    output reg [0:MAT_DIM-1] act_valid,

    //--------------------------------------------------
    // Status
    //--------------------------------------------------
    output reg                  stream_done
);

    //--------------------------------------------------
    // Local Parameters
    //--------------------------------------------------

    localparam NUM_ELEMENTS = MAT_DIM * MAT_DIM;
    localparam CYCLE_W      = $clog2(2*MAT_DIM + 1);

    //--------------------------------------------------
    // Internal Storage
    //--------------------------------------------------
    //
    // Flat storage is easier to address from software.
    //
    // Software-visible address:
    //   addr = row * MAT_DIM + col
    //
    //--------------------------------------------------

    reg [DATA_W-1:0] mem [0:NUM_ELEMENTS-1];

    //--------------------------------------------------
    // Streaming State
    //--------------------------------------------------

    reg [CYCLE_W-1:0] stream_cycle;
    reg               streaming;

    integer i;
    integer clear_idx;

    //--------------------------------------------------
    // Write Port
    //--------------------------------------------------
    //
    // A write from the CPU eventually becomes:
    //
    //   wr_en   = 1
    //   wr_addr = target element index
    //   wr_data = INT8 activation value
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
    // Streaming Control
    //--------------------------------------------------
    //
    // stream_start starts a new activation stream.
    //
    // stream_en keeps the stream advancing.
    //
    // For a matrix with R rows and C columns, the skewed stream lasts:
    //
    //   R + C - 1 cycles
    //
    //--------------------------------------------------

    always @(posedge clk_in or negedge reset_int) begin
        if (!reset_int) begin
            streaming    <= 1'b0;
            stream_cycle <= {CYCLE_W{1'b0}};
            stream_done  <= 1'b0;

            for (i = 0; i < MAT_DIM; i = i + 1) begin
                act_out[i]   <= {DATA_W{1'b0}};
                act_valid[i] <= 1'b0;
            end
        end
        else begin
            stream_done <= 1'b0;

            //--------------------------------------------------
            // Default output values
            //--------------------------------------------------

            for (i = 0; i < MAT_DIM; i = i + 1) begin
                act_out[i]   <= {DATA_W{1'b0}};
                act_valid[i] <= 1'b0;
            end

            //--------------------------------------------------
            // Start new stream
            //--------------------------------------------------

            if (stream_start) begin
                streaming    <= 1'b1;
                stream_cycle <= {CYCLE_W{1'b0}};
            end

            //--------------------------------------------------
            // Stream data
            //--------------------------------------------------

            else if (streaming && stream_en) begin

                if (stream_cycle < (a_rows + a_cols - 1)) begin

                    for (i = 0; i < MAT_DIM; i = i + 1) begin

                        //--------------------------------------------------
                        // Column-skewed access (computes C = A * B):
                        //
                        // Array-row i is the contraction index k, so it must
                        // receive COLUMN i of A, streamed over the output-row
                        // index (stream_cycle - i). At stream_cycle t,
                        // array-row i outputs A[t - i][i].
                        //
                        // (Feeding A[i][t-i] here would contract over A's row
                        //  index and produce B^T * A instead of A * B.)
                        //--------------------------------------------------

                        if ((i < a_cols) &&
                            (stream_cycle >= i) &&
                            ((stream_cycle - i) < a_rows)) begin

                            act_out[i] <= mem[((stream_cycle - i) * MAT_DIM) + i];
                            act_valid[i] <= 1'b1;

                        end

                    end

                    stream_cycle <= stream_cycle + 1'b1;

                end
                else begin
                    streaming   <= 1'b0;
                    stream_done <= 1'b1;
                end

            end
        end
    end

endmodule

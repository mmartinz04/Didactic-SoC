`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Output Buffer for AI Accelerator
//
// Responsibilities:
//   - Stores one output matrix C using INT32 values.
//   - Receives result values from the systolic array.
//   - Uses c_valid to decide which output rows contain valid data.
//   - Stores the systolic array output anti-diagonal pattern into a normal row/column matrix layout.
//   - Provides indexed read access for the APB interface.
//   - Has no APB protocol logic inside.
//
// Addressing:
//   - The output matrix is stored as a flat memory.
//   - Address = row * MAT_DIM + col
//
// Example for MAT_DIM = 16:
//   element C[0][0] -> address 0
//   element C[0][1] -> address 1
//   element C[1][0] -> address 16
//
// Notes:
//   - This module represents one physical output buffer.
//   - For double buffering, instantiate this module twice:
//       output_buffer C0
//       output_buffer C1
//
//   - The systolic array output pattern is assumed to be:
//       at output cycle t, row i belongs to column (t - i)
//
//////////////////////////////////////////////////////////////////////////////////

module output_buffer #(
    parameter MAT_DIM = 16,
    parameter DATA_W  = 32,
    parameter ADDR_W  = 16
)(
    //--------------------------------------------------
    // Clock and Reset
    //--------------------------------------------------
    input  wire clk_in,
    input  wire reset_int,

    //--------------------------------------------------
    // Systolic Array Result Input
    //--------------------------------------------------
    input  wire signed [0:MAT_DIM-1][DATA_W-1:0] c_in,
    input  wire        [0:MAT_DIM-1]             c_valid,

    //--------------------------------------------------
    // Matrix Dimension Configuration
    //--------------------------------------------------
    input  wire [4:0] c_rows,
    input  wire [4:0] c_cols,

    //--------------------------------------------------
    // Store Control
    //--------------------------------------------------
    input  wire store_enable,

    //--------------------------------------------------
    // APB-Side Read Interface
    //--------------------------------------------------
    input  wire [ADDR_W-1:0] read_addr,
    output reg  signed [DATA_W-1:0] read_data,

    //--------------------------------------------------
    // Status
    //--------------------------------------------------
    output reg store_done
);

    //--------------------------------------------------
    // Local Parameters
    //--------------------------------------------------

    localparam NUM_ELEMENTS = MAT_DIM * MAT_DIM;
    localparam T_W          = $clog2(2*MAT_DIM + 1);

    //--------------------------------------------------
    // Internal Storage
    //--------------------------------------------------

    reg signed [DATA_W-1:0] mem [0:NUM_ELEMENTS-1];
    
    //--------------------------------------------------
    // Store Timing
    //--------------------------------------------------
    //
    // store_t counts output anti-diagonal cycles.
    //
    // At store_t = 0:
    //   C[0][0] is valid
    //
    // At store_t = 1:
    //   C[0][1], C[1][0] may be valid
    //
    // At store_t = 2:
    //   C[0][2], C[1][1], C[2][0] may be valid
    //
    //--------------------------------------------------

    reg [T_W-1:0] store_t;
    reg           storing;
    
    reg store_enable_q;
    reg store_armed;
    
    wire store_enable_rise;
    wire capture_now;
    
    assign store_enable_rise = store_enable && !store_enable_q;
    
    assign capture_now = |c_valid && (storing || store_armed || store_enable_rise);
    
    integer i;
    integer clear_idx;
    
    //--------------------------------------------------
    // Read Port
    //--------------------------------------------------
    //
    // This is a simple combinational read.
    // The APB interface selects read_addr through REG_RESULT_ADDR.
    //
    //--------------------------------------------------

    always @(*) begin
        if (read_addr < NUM_ELEMENTS)
            read_data = mem[read_addr];
        else
            read_data = {DATA_W{1'b0}};
    end

    //--------------------------------------------------
    // Store Logic
    //--------------------------------------------------
    
    always @(posedge clk_in or negedge reset_int) begin
    if (!reset_int) begin
        store_t        <= {T_W{1'b0}};
        storing        <= 1'b0;
        store_done     <= 1'b0;
        store_enable_q <= 1'b0;
        store_armed    <= 1'b0;

        for (clear_idx = 0; clear_idx < NUM_ELEMENTS; clear_idx = clear_idx + 1) begin
            mem[clear_idx] <= {DATA_W{1'b0}};
        end
    end
    else begin
        store_enable_q <= store_enable;
        store_done     <= 1'b0;

        //--------------------------------------------------
        // Arm once per store_enable rising edge.
        //
        // If store_enable stays high after store_done, the
        // remaining physical c_valid tail must not restart
        // another store pass.
        //--------------------------------------------------

        if (!store_enable) begin
            store_armed <= 1'b0;
        end
        else if (store_enable_rise) begin
            store_armed <= 1'b1;
        end

        //--------------------------------------------------
        // Capture on valid systolic-array output.
        //--------------------------------------------------

        if (capture_now) begin

            if (!storing) begin
                storing     <= 1'b1;
                store_armed <= 1'b0;
                store_t     <= {T_W{1'b0}};
            end

            for (i = 0; i < MAT_DIM; i = i + 1) begin
                if (c_valid[i]) begin
                    // Array-output i is result COLUMN i.
                    // The anti-diagonal index (store_t - i)
                    // is result ROW.
                    if ((i < c_cols) &&
                        (store_t >= i) &&
                        ((store_t - i) < c_rows)) begin

                        mem[((store_t - i) * MAT_DIM) + i] <= c_in[i];

                    end
                end
            end

            if (store_t < (c_rows + c_cols - 2)) begin
                store_t <= store_t + 1'b1;
            end
            else begin
                storing     <= 1'b0;
                store_armed <= 1'b0;
                store_done  <= 1'b1;
                store_t     <= {T_W{1'b0}};
            end

        end
        else if (storing && (store_t >= (c_rows + c_cols - 2))) begin

            //--------------------------------------------------
            // Safety finish:
            // If valid disappeared after the final anti-diagonal
            // was reached, still complete the store operation.
            //--------------------------------------------------

            storing     <= 1'b0;
            store_armed <= 1'b0;
            store_done  <= 1'b1;
            store_t     <= {T_W{1'b0}};

        end
    end
end
    
endmodule

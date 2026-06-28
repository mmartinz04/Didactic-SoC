`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// APB Interface for AI Accelerator
//
// This module acts as the communication bridge between the Didactic SoC and the AI accelerator.
//
// Responsibilities:
//   - Implements the APB slave interface.
//   - Decodes APB register accesses.
//   - Stores configuration and control registers.
//   - Provides CPU access to the accelerator buffers.
//   - Generates control signals such as START.
//   - Returns accelerator status information.
//   - Provides access to computation results.
//
// The CPU interacts with the accelerator through memory-mapped registers:
//
//   1. Configure matrix dimensions.
//   2. Select a target buffer.
//   3. Write activation/weight values into buffers.
//   4. Start computation.
//   5. Poll STATUS or wait for an interrupt.
//   6. Read results from the output buffer.
//
// The APB interface does not contain any buffer storage or systolic-array scheduling logic. Those responsibilities are implemented in separate modules.
//
// Buffer contents are accessed indirectly through:
//      BUFFER_SELECT
//      BUFFER_ADDR
//      BUFFER_DATA
//
// allowing the design to scale to larger matrix sizes without changing the APB address map.
//
//////////////////////////////////////////////////////////////////////////////////


module apb_interface #(
    parameter APB_AW = 10,                                                  //APB Adress Width -> value 10 taken from Documentation Example
    parameter APB_DW = 32                                                   //APB Data Width
)(
    //--------------------------------------------------
    // APB
    //--------------------------------------------------
    input  wire                  clk_in,
    input  wire                  reset_int,

    input  wire [APB_AW-1:0]     PADDR,                                     //PADDR - Source: Requester = SoC -> ADDRESS: PADDR is the APB address bus and can be up to 32 bits wide
    input  wire                  PSEL,                                      //PSEL - Source: Requester = SoC -> SELECT: The Requester generates a PSEL signal for each Completer. PSEL indicates that the Completer is selected and that a data transfer is required
    input  wire                  PENABLE,                                   //PENABLE - Source: Requester = SoC -> ENABLE: PENABLE indicates the second and subsequent cycles of an APB transfer.
    input  wire                  PWRITE,                                    //PWRITE - Source: Requester = SoC -> DIRECTION: PWRITE indicates an APB write access when HIGH and an APB read access when LOW.
    input  wire [APB_DW-1:0]     PWDATA,                                    //PWDATA - Source: Requester = SoC -> WRITE DATA: The PWDATA write data bus is driven by the APB bridge Requester during write cycles when PWRITE is HIGH. PWDATA can be 8 bits, 16 bits, or 32 bits wide.
    input  wire [APB_DW/8-1:0]   PSTRB,                                     //PSTRB - Source: Requester = SoC -> WRITE STROBE: one bit per byte lane of PWDATA. v5 accepts only full-word writes (PSTRB all ones); partial writes are rejected with PSLVERR.

    output reg  [APB_DW-1:0]     PRDATA,                                    //PRDATA - Source: Completer = Accelerator -> READ DATA: The PRDATA read data bus is driven by the selected Completer during read cycles when PWRITE is LOW. PRDATA can be 8 bits, 16 bits, or 32 bits wide.
    output reg                   PREADY,                                    //PREADY - Source: Completer = Accelerator -> READY: PREADY is used to extend an APB transfer by the Completer.
    output reg                   PSLVERR,                                   //PSLVERR - Source: Completer = Accelerator -> TRANSFER ERROR: PSLVERR is an optional signal that can be asserted HIGH by the Completer to indicate an error condition on an APB transfer.

    //--------------------------------------------------
    // Control Unit Interface
    //--------------------------------------------------
    output reg                   start_cmd,

    input  wire                  busy,
    input  wire                  done,

    //--------------------------------------------------
    // Interrupt source (v5)
    //--------------------------------------------------
    // Latched completion flag for level-style interrupt generation. Stays
    // high until acknowledged (CONTROL bit 1) or a new run is started.
    output wire                  irq_pending,

    //--------------------------------------------------
    // Buffer Write Interface
    //--------------------------------------------------
    output reg                   buffer_wr_en,
    output reg [2:0]             buffer_select,
    output reg [15:0]            buffer_addr,
    output reg [31:0]            buffer_data,

    //--------------------------------------------------
    // Result Read Interface
    //--------------------------------------------------
    output reg [15:0]            result_addr,
    input  wire [31:0]           result_data,
    
    //--------------------------------------------------
    // Matrix A and B Row and Column Width
    //--------------------------------------------------
    
    output reg [4:0] a_rows,
    output reg [4:0] a_cols,
    
    output reg [4:0] b_rows,
    output reg [4:0] b_cols
);

    //--------------------------------------------------
    // Register Map
    //--------------------------------------------------
    
    localparam REG_CONTROL       = 10'h000;
    localparam REG_STATUS        = 10'h004;
    
    localparam REG_BUF_SEL       = 10'h008;
    localparam REG_BUF_ADDR      = 10'h00C;
    localparam REG_BUF_DATA      = 10'h010;
    
    localparam REG_RESULT_ADDR   = 10'h014;
    localparam REG_RESULT_DATA   = 10'h018;
    
    //--------------------------------------------------
    // Buffer IDs
    //--------------------------------------------------
    
    localparam BUF_A0 = 3'd0;
    localparam BUF_A1 = 3'd1;
    
    localparam BUF_B0 = 3'd2;
    localparam BUF_B1 = 3'd3;
    
    localparam BUF_C0 = 3'd4;
    localparam BUF_C1 = 3'd5;
    
    //--------------------------------------------------
    // Matrix A and B Row and Column Width
    //--------------------------------------------------
    
    localparam REG_A_ROWS = 10'h020;
    localparam REG_A_COLS = 10'h024;
    
    localparam REG_B_ROWS = 10'h028;
    localparam REG_B_COLS = 10'h02C;
    
    //--------------------------------------------------
    // Internal Registers
    //--------------------------------------------------
    
    reg [31:0] control_reg;
    reg [31:0] status_reg;
    reg [2:0]  buffer_select_reg;
    reg [15:0] buffer_addr_reg;
    reg [15:0] result_addr_reg;
    
    reg done_reg;
    reg dim_err;                                                            // v5: set if START attempted with a_cols != b_rows

    // v5: latched completion drives a level-style interrupt.
    assign irq_pending = done_reg;

    wire apb_access;
    assign apb_access = PSEL && PENABLE && !PREADY;
    //--------------------------------------------------
    // Status Register
    //--------------------------------------------------
    //   bit 0 = BUSY
    //   bit 1 = DONE  (latched, cleared by START or by CONTROL[1] ack)
    //   bit 2 = DIM_ERR (v5: last START rejected, a_cols != b_rows)

    always @(*) begin
        status_reg = 32'd0;
        status_reg[0] = busy;
        status_reg[1] = done_reg;
        status_reg[2] = dim_err;
    end
    
    //--------------------------------------------------
    // APB Write Logic - Similar to the provided student_ss_example.sv 
    //--------------------------------------------------
    
    always @(posedge clk_in or posedge reset_int) begin
        if(reset_int) begin
            PREADY <= 1'b0;
            PSLVERR <= 1'b0;
    
            control_reg <= 0;
            buffer_select_reg <= 0;
            buffer_addr_reg   <= 0;
            result_addr_reg   <= 0;
            start_cmd <= 0;
            buffer_wr_en <= 0;
            buffer_select <= 0;
            buffer_addr   <= 0;
            buffer_data   <= 0;
            result_addr <= 0;
    
            a_rows <= 0;
            a_cols <= 0;
            b_rows <= 0;
            b_cols <= 0;

            done_reg <= 0;
            dim_err  <= 0;
        end
        else begin
            //--------------------------------------------------
            // Default one-cycle pulse outputs
            //--------------------------------------------------
            // These signals should only be high for one clock cycle
            // when the corresponding APB write happens.
            //--------------------------------------------------
        
            buffer_wr_en <= 1'b0;

            if (busy) begin
                start_cmd      <= 1'b0;
                control_reg[0] <= 1'b0;   // clear START bit once accelerator accepted it
            end
            
            if (done)
                done_reg <= 1'b1;

            // APB access phase
            //--------------------------------------------------
            // A real APB transfer completes in the ACCESS phase:
            //
            //   PSEL    = 1
            //   PENABLE = 1
            //   PREADY  = 0 before we respond
            //
            // This prevents us from accidentally executing the write
            // during the APB setup phase where PENABLE is still 0.
            //--------------------------------------------------
        
            if (apb_access) begin
        
                PREADY  <= 1'b1;
                PSLVERR <= 1'b0;

                if (PWRITE) begin

                    //--------------------------------------------------
                    // v5: only full-word writes are supported. A partial
                    // write (any byte strobe deasserted) is rejected with
                    // PSLVERR and performs no register update.
                    //--------------------------------------------------
                    if (PSTRB != {(APB_DW/8){1'b1}}) begin
                        PSLVERR <= 1'b1;
                    end
                    else
                    case (PADDR)

                        REG_CONTROL: begin
                            control_reg <= PWDATA;

                            // v5: CONTROL bit 1 = acknowledge / clear DONE+IRQ
                            // (and any pending DIM_ERR).
                            if (PWDATA[1]) begin
                                done_reg <= 1'b0;
                                dim_err  <= 1'b0;
                            end

                            // CONTROL bit 0 = START. v5 dimension guard:
                            // only launch if the inner dimensions match
                            // (a_cols == b_rows); otherwise flag DIM_ERR
                            // and do not start.
                            if (PWDATA[0]) begin
                                if (a_cols == b_rows) begin
                                    start_cmd <= 1'b1;
                                    done_reg  <= 1'b0;
                                    dim_err   <= 1'b0;
                                end
                                else begin
                                    dim_err   <= 1'b1;
                                end
                            end
                        end

                        REG_BUF_SEL: begin
                            buffer_select_reg <= PWDATA[2:0];
                        end
        
                        REG_BUF_ADDR: begin
                            buffer_addr_reg <= PWDATA[15:0];
                        end
        
                        REG_BUF_DATA: begin
                            buffer_data   <= PWDATA;
                            buffer_select <= buffer_select_reg;
                            buffer_addr   <= buffer_addr_reg;
                            buffer_wr_en  <= 1'b1;
                        end
        
                        REG_RESULT_ADDR: begin
                            result_addr_reg <= PWDATA[15:0];
                            result_addr     <= PWDATA[15:0];
                        end
        
                        REG_A_ROWS: begin
                            a_rows <= PWDATA[4:0];
                        end
        
                        REG_A_COLS: begin
                            a_cols <= PWDATA[4:0];
                        end
        
                        REG_B_ROWS: begin
                            b_rows <= PWDATA[4:0];
                        end
        
                        REG_B_COLS: begin
                            b_cols <= PWDATA[4:0];
                        end
        
                        default: begin
                            PSLVERR <= 1'b1;
                        end
        
                    endcase
        
                end
            end
        
            //--------------------------------------------------
            // End of APB transfer
            //--------------------------------------------------
            // Once the master has seen PREADY high, drop it again
            // so the next APB transaction can complete cleanly.
            //--------------------------------------------------
        
            else if (PSEL && PREADY) begin
                PREADY  <= 1'b0;
                PSLVERR <= 1'b0;
            end
        
            //--------------------------------------------------
            // Idle bus
            //--------------------------------------------------
        
            else if (!PSEL) begin
                PREADY  <= 1'b0;
                PSLVERR <= 1'b0;
            end
        end 
    end    
    //--------------------------------------------------
    // APB Read Logic
    //--------------------------------------------------
    
    always @(*) begin
        PRDATA = 32'd0;
        case(PADDR)
            REG_CONTROL:
                PRDATA = control_reg;
    
            REG_STATUS:
                PRDATA = status_reg;
    
            REG_BUF_SEL:
                PRDATA = buffer_select_reg;
    
            REG_BUF_ADDR:
                PRDATA = buffer_addr_reg;
    
            REG_RESULT_ADDR:
                PRDATA = result_addr_reg;
    
            REG_RESULT_DATA:
                PRDATA = result_data;
            
            REG_A_ROWS:
                PRDATA = {27'd0, a_rows};
            
            REG_A_COLS:
                PRDATA = {27'd0, a_cols};
            
            REG_B_ROWS:
                PRDATA = {27'd0, b_rows};
            
            REG_B_COLS:
                PRDATA = {27'd0, b_cols};
    
            default:
                PRDATA = 32'd0;
        endcase
    end
endmodule
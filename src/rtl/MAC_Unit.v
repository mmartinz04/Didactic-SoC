`timescale 1ns / 1ps

// This implementation is for a pos edge reset
// The Data Width of A, B and C is parametrized 
// A gets passed on to the next MAC Unit to the left after being used 
// In the actual implementation: B does not get passed on and stays the same for all the calculations for the same A Matrix
// C gets passed on to the next MAC Unit below

// In the actual implementation: 
        // - a and b have to be valid in the same cycle
        // - c has to be valid one cycle after a and b (on time for the accumulation)
        // - a gets passed on 1 cycle after a_valid was asserted
        // - c also gets passed on 1 cycle after the input c was valid

module MAC_Unit#(
    parameter DATA_W_A = 8,
    parameter DATA_W_B = 8,
    parameter DATA_W_C = 32
)(
    input clk,
    input rst,
    
    input wire signed [DATA_W_A-1:0] in_a,
    input wire signed [DATA_W_B-1:0] in_b,
    input wire signed [DATA_W_C-1:0] in_c,
    input wire a_valid, 
    input wire b_valid, 
    input wire c_valid,
    
    output reg signed [DATA_W_A-1:0] out_a,
    output reg signed [DATA_W_C-1:0] out_c,
    output reg a_out_valid,
    output reg c_out_valid
    );
    
    // ------------------------------------------------------------------------------------ //
    // Helpregisters
    // ------------------------------------------------------------------------------------ //
        
    reg signed [DATA_W_B-1:0] b_reg;

    // ------------------------------------------------------------------------------------ //
    // Pipeline Logic
    // ------------------------------------------------------------------------------------ //
    
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            b_reg <= 0;
        end
        else begin
            if (b_valid)
                b_reg <= in_b;
        end
    end
    
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
    
            out_a <= 0;
            out_c <= 0;
    
            a_out_valid <= 0;
            c_out_valid <= 0;
    
        end
        else begin
    
            // ----------------------------------------------------
            // Forward A
            // ----------------------------------------------------
    
            if(a_valid) begin
                out_a <= in_a;
                a_out_valid <= 1;
            end
            else begin
                out_a <= 0;
                a_out_valid <= 0;
            end
    
            // ----------------------------------------------------
            // Multiply + Accumulate
            //
            // Condition is c_valid only (not a_valid && c_valid).
            // When a_valid=0 the activation buffer drives in_a=0,
            // so in_a * b_reg = 0 and the partial sum passes through
            // unchanged.  This lets inactive rows on sub-size problems
            // act as transparent pass-throughs, keeping the c_valid
            // chain alive all the way to the output buffer.
            // Without this, any problem smaller than MAT_DIM deadlocks
            // because c_out_valid is killed at the first inactive row.
            // ----------------------------------------------------

            if(c_valid) begin
                out_c <= in_c + (in_a * b_reg);
                c_out_valid <= 1;
            end
            else begin
                out_c <= 0;
                c_out_valid <= 0;
            end
    
        end
    end
endmodule

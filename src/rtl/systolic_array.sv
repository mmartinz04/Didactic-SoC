`timescale 1ns / 1ps

// SYSTOLIC ARRAY MODULE
// --------------------------------------------------
//
// Input a is sent together with a_valid by the input buffer, once it starts sending the data -> Control Logic tells buffer to start sending data
// -> Important: Buffer has to send a already delayed by N cycles depending on which row it is, so for example row 7 has to be delayed by 7 cylces, before a is sent and a_valid is set
//
// --------------------------------------------------


module systolic_array #(
    parameter ARRAY_SIZE          = 16,
    parameter DATA_W_A            = 8,
    parameter DATA_W_B            = 8,
    parameter DATA_W_C            = 32
)(
    
	input  wire                          clk,
    input  wire                          rst,

	/* Unpacked definitions
    input  wire signed [DATA_W_A-1:0]    a_in    [0:ARRAY_SIZE-1],					// Activation input 
    input  wire                          a_valid [0:ARRAY_SIZE-1], 					// Activation input flag coming from buffers, when it starts sending the data 
    input  wire signed [DATA_W_B-1:0]    b_in    [0:ARRAY_SIZE-1][0:ARRAY_SIZE-1], 	// Weight matrix	 
    input  wire                          b_valid, 	                                // Weight matrix flag also coming from the buffer when it starts sending valid data

    output wire signed [DATA_W_C-1:0]    c_out   [0:ARRAY_SIZE-1],
    output wire                          c_valid [0:ARRAY_SIZE-1]                   //Flag for the Output Buffer to accept new values
	*/
	
	// Packed definitions
	input  wire signed [0:ARRAY_SIZE-1][DATA_W_A-1:0] 					a_in,
	input  wire        [0:ARRAY_SIZE-1]               					a_valid,
	input  wire signed [0:ARRAY_SIZE-1][0:ARRAY_SIZE-1][DATA_W_B-1:0] 	b_in,
	input  wire                                       					b_valid,
	
	output wire signed [0:ARRAY_SIZE-1][DATA_W_C-1:0] 					c_out,
	output wire        [0:ARRAY_SIZE-1]               					c_valid

);
    
    // ------------------------------------------------------------------------------------ //
    // Internal Interconnect Signals (for better scaling)
    // ------------------------------------------------------------------------------------ //

    wire signed [DATA_W_A-1:0] a_bus [0:ARRAY_SIZE-1][0:ARRAY_SIZE];        // Horizontal propagation of A
    wire a_valid_bus [0:ARRAY_SIZE-1][0:ARRAY_SIZE];
    
    wire signed [DATA_W_C-1:0] c_bus [0:ARRAY_SIZE][0:ARRAY_SIZE-1];        // Vertical propagation of C
    wire c_valid_bus [0:ARRAY_SIZE][0:ARRAY_SIZE-1];
    
    // ------------------------------------------------------------------------------------ //
    // Assigning a and c inputs
    // ------------------------------------------------------------------------------------ // 
    
    genvar i;
    generate
        for(i = 0; i < ARRAY_SIZE; i = i + 1) begin
            assign a_bus[i][0] = a_in[i];
            assign a_valid_bus[i][0] = a_valid[i];
        end
    endgenerate

    generate
        for(i = 0; i < ARRAY_SIZE; i = i + 1) begin
            assign c_bus[0][i] = 0;
            assign c_valid_bus[0][i] = a_valid_bus[0][i];
        end
    endgenerate
    
    // ------------------------------------------------------------------------------------ //
    // MAC Array Generation
    // ------------------------------------------------------------------------------------ //
    
    genvar row, col;
    generate
        for(row = 0; row < ARRAY_SIZE; row = row + 1) begin : ROW_GEN
            for(col = 0; col < ARRAY_SIZE; col = col + 1) begin : COL_GEN
                MAC_Unit #(
                    .DATA_W_A(DATA_W_A),
                    .DATA_W_B(DATA_W_B),
                    .DATA_W_C(DATA_W_C)
                ) mac_inst (
                    .clk(clk),
                    .rst(rst),

                    .in_a(a_bus[row][col]),
                    .in_b(b_in[row][col]),
                    .in_c(c_bus[row][col]),

                    .a_valid(a_valid_bus[row][col]),
                    .b_valid(b_valid),
                    .c_valid(c_valid_bus[row][col]),

                    .out_a(a_bus[row][col+1]),
                    .out_c(c_bus[row+1][col]),

                    .a_out_valid(a_valid_bus[row][col+1]),
                    .c_out_valid(c_valid_bus[row+1][col])
                );
            end
        end
    endgenerate

    // ------------------------------------------------------------------------------------ //
    // Outputs
    // ------------------------------------------------------------------------------------ //
    
    generate
        for(i = 0; i < ARRAY_SIZE; i = i + 1) begin
            assign c_out[i]   = c_bus[ARRAY_SIZE][i];
            assign c_valid[i] = c_valid_bus[ARRAY_SIZE][i];
        end
    endgenerate

endmodule
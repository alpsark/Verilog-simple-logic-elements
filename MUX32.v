`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:19:34 03/05/2017 
// Design Name: 
// Module Name:    MUX32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUX32(
    input [31:0] in,
    input [4:0] sel,
    output out
    );
	 wire [7:0] A;
	 wire [3:0] B;
	 wire [1:0] C;
	 wire  D;
	 generate
		  genvar i;
		  for (i=0; i < 8; i=i+1) begin: m0a
				MUX2 m0_i(in[2*i+1:2*i], sel[0] , A[i]);
		  end
		  for (i=0; i < 4; i=i+1) begin: m1a
				MUX2 m1_i(A[2*i+1:2*i], sel[1] , B[i]);
		  end
		  for (i=0; i < 2; i=i+1) begin: m2a
				MUX2 m2_i(B[2*i+1:2*i], sel[2] , C[i]);
		  end   
	endgenerate
	MUX2 m3(C, sel[3] , D); 


endmodule

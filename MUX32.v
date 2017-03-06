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
	 wire [16:0] A;
	 wire [7:0] B;
	 wire [3:0] C;
	 wire [1:0] D;
	 
	 generate
		  genvar i,j,k,l;
		  for (i=0; i < 16; i=i+1) begin: m0
				MUX2 m(in[2*i+1:2*i], sel[0] , A[i]);
		  end		 
		  for (l=0; l < 8; l=l+1) begin: m1
				MUX2 m(A[2*l+1:2*l], sel[1] , B[l]);
		  end			  
		  for (j=0; j < 4; j=j+1) begin: m2
				MUX2 m(B[2*j+1:2*j], sel[2] , C[j]);
		  end 
		  for (k=0; k < 2; k=k+1) begin: m3
				MUX2 m(C[2*k+1:2*k], sel[3] , D[k]);
		  end   
	endgenerate	
	MUX2 m4(D, sel[4] , out); 


endmodule

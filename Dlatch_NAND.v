`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:09:41 03/05/2017 
// Design Name: 
// Module Name:    Dlatch_NAND 
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
module Dlatch_NAND(
    input En,
    input D,
    output Q,
	 output not_Q
    );
	 
	 wire not_D,A,B ;
	 
	 NAND n1(D,D,not_D);
	 NAND n2(D,En,A);
	 NAND n3(not_D,En,B);
	 NAND n4(A,not_Q,Q);
	 NAND n5(B,Q,not_Q);	  
		
		

endmodule

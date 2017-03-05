`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:05:26 03/06/2017 
// Design Name: 
// Module Name:    DNlatch_NAND 
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
module DNlatch_NAND(
    input En,
    input D,
    output Q,
    output not_Q
    );
	 
	 wire not_D,not_En,A,B;
	 
	 NAND n1(En,En,not_En);
	 NAND n2(D,D,not_D);
	 NAND n3(D,not_En,A);
	 NAND n4(not_D,not_En,B);
	 NAND n5(A,not_Q,Q);
	 NAND n6(B,Q,not_Q);	


endmodule

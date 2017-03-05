`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:10:46 03/06/2017 
// Design Name: 
// Module Name:    DNlatch_NOR 
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
module DNlatch_NOR(
    input En,
    input D,
    output Q,
    output not_Q
    );
	 
	 wire not_D,A,B ;
	 
	 NOR n1(D,D,not_D);	 
	 NOR n2(not_D,En,A);
	 NOR n3(D,En,B);
	 NOR n4(A,not_Q,Q);
	 NOR n5(B,Q,not_Q);


endmodule

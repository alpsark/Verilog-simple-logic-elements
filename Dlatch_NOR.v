`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:54:06 03/05/2017 
// Design Name: 
// Module Name:    Dlatch_NOR 
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
module Dlatch_NOR(
    input En,
    input D,
    output Q,
    output not_Q
    );
	 
	 wire not_D,not_En,A,B ;
	 
	 NOR n1(D,D,not_D);
	 NOR n2(En,En,not_En);
	 NOR n3(not_D,not_En,A);
	 NOR n4(D,not_En,B);
	 NOR n5(A,not_Q,Q);
	 NOR n6(B,Q,not_Q);

	 

endmodule

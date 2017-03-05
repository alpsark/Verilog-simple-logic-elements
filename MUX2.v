`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:27:17 03/05/2017 
// Design Name: 
// Module Name:    MUX2 
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
module MUX2(    
	 input [1:0] in,
	 input sel,
    output out
    );
	 
	 wire notS,A0,A1 ;	 

	 INVERTER i1(sel,notS);
	 NAND n1(notS,in[0],A0);
	 NAND n2(sel,in[1],A1);
	 NAND n3(A1,A0,out);
	

endmodule

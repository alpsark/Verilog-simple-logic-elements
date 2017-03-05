`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:08:38 03/05/2017 
// Design Name: 
// Module Name:    FULL_ADDER 
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
module FULL_ADDER(
    input A,
    input B,
    input Ci,
    output S,
    output Co
    );
	wire P , i1 , G  ;
	XOR x1(A,B,P);
	NAND n2(A,B,G);	
	
	XOR x2(P,Ci,S);
	NAND n1(P,Ci,i1);
	
	NAND n2(G,i1,Co);
	
endmodule

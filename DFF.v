`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:25:51 03/06/2017 
// Design Name: 
// Module Name:    DFF 
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
module DFF(
    input clk,
    input D,
    input R, //if R=1 Q=0 independent of others
    output Q,
    output not_Q
    );
	 
	 wire Dnot,D1,Q1,Q1not,D2,Q2,Q2not;
	 
	 INVERTER i1(D,Dnot);
	 NOR n1(R,Dnot,D1);
	 DNlatch_NOR dn1(clk,D1,Q1,Q1not);
	 NOR n2(R,Q1not,D2);	 
	 Dlatch_NAND d1(clk,D2,Q2,Q2not); 
	 NOR n3(R,Q2not,Q);
	 INVERTER i2(Q,not_Q);
	 


endmodule

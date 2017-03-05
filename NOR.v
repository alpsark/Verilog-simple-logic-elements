`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:45 03/05/2017 
// Design Name: 
// Module Name:    NOR 
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
module NOR(
    input in1,
    input in2,
    output out
    );
	
	buf#(3,2) (out,~(in1 | in2));

endmodule

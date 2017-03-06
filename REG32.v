`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:09:45 03/06/2017 
// Design Name: 
// Module Name:    REG32 
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
module REG32(
    input [31:0] in,
    input clk,
    input R,
    output [31:0] out
    );
	 
	 
	 
	 generate
		  genvar i;
		  for (i=0; i < 32; i=i+1) begin: d
				DFF d(clk,in[i],R,out[i] , );
		  end		  
	endgenerate


endmodule

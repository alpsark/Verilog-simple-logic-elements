`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:40:34 03/06/2017 
// Design Name: 
// Module Name:    MUX4 
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
 primitive MUX4_UDP  ( out,in3,in2,in1,in0, sel1,sel0);
  output out;
  input  in3,in2,in1,in0, sel1,sel0;
  
  table
    ???000 : 0;
	 ???100 : 1;
    ??0?01 : 0;
	 ??1?01 : 1; 
	 ?0??10 : 0;
	 ?1??10 : 1;
    0???11 : 0; 
	 1???11 : 1; 	    
  endtable
  
  
endprimitive

module MUX4(
    input [3:0] in,
    input [1:0] sel,
    output out
    );
	 
	 MUX4_UDP  m(out,in[3],in[2],in[1],in[0], sel[1],sel[0]); 


endmodule

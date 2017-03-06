`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:23:55 03/06/2017
// Design Name:   MUX2
// Module Name:   D:/Projects/XilinxISE/HW1/Homework1/testMUX2.v
// Project Name:  Homework1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testMUX2;

	// Inputs
	reg [1:0] in;
	reg sel;

	// Outputs
	wire out;

	// Instantiate the DESIGN Under Test (DUT)
	MUX2 dut (
		.in(in), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		sel = 0;
		
		#20;
		in = 2'b01;
		sel=1;
        
		#20;
		in = 2'b10;
		sel=0;
        
		#20;
		in = 2'b11;
		sel=1;
		
		#20;
		in = 2'b00;
		sel=1;
		
		#20;
		in = 2'b01;
		sel=0;
		
		#20;
		in = 2'b10;
		sel=1;
		
		#20;
		in = 2'b11;
		sel=0    ;
        
		

	end
      
endmodule


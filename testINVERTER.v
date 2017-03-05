`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:42:17 03/05/2017
// Design Name:   INVERTER
// Module Name:   D:/Projects/XilinxISE/HW1/Homework1/testINVERTER.v
// Project Name:  Homework1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: INVERTER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testINVERTER;

	// Inputs
	reg in;

	// Outputs
	wire out;

	// Instantiate the DESIGN Under Test (DUT)
	INVERTER dut (
		.in(in), 
		.out(out)
	);

	always begin
		// Initialize Inputs
		in = 0;

		// Add stimulus here
		#10 in = 1;
		#10 ;      
		
		

	end
      
endmodule


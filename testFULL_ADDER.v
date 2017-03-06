`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:58:49 03/06/2017
// Design Name:   FULL_ADDER
// Module Name:   D:/Projects/XilinxISE/HW1/Homework1/testFULL_ADDER.v
// Project Name:  Homework1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FULL_ADDER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testFULL_ADDER;

	// Inputs
	reg A;
	reg B;
	reg Ci;

	// Outputs
	wire S;
	wire Co;

	// Instantiate the DESIGN Under Test (DUT)
	FULL_ADDER dut (
		.A(A), 
		.B(B), 
		.Ci(Ci), 
		.S(S), 
		.Co(Co)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Ci = 0;
		
		#30;
		A = 0;
		B = 0;
		Ci = 1;
		
		#30;
		A = 0;
		B = 1;
		Ci = 0;
		
		#30;
		A = 0;
		B = 1;
		Ci = 1;
		
		#30;
		A = 1;
		B = 0;
		Ci = 0;
		
		#30;
		A = 1;
		B = 0;
		Ci = 1;
		
		#30;
		A = 1;
		B =1;
		Ci = 0;
		
		#30;
		A = 1;
		B = 1;
		Ci = 1;
        
		// Add stimulus here

	end
      
endmodule


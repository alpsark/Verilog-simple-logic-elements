`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:23:31 03/06/2017
// Design Name:   NOR
// Module Name:   D:/Projects/XilinxISE/HW1/Homework1/testNOR.v
// Project Name:  Homework1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NOR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testNOR;

	// Inputs
	reg in1;
	reg in2;

	// Outputs
	wire out;

	// Instantiate the DESIGN Under Test (DUT)
	NOR dut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs					
		in1 = 0; //out 1
		in2 = 0;
		
		#10 ;//out 0
		in1 = 1;
		in2 = 1;

		#10 ;//out 1
		in1 = 0; 
		in2 = 0;
		
		        
		#10 ;//out 0
		in1 = 1; 
		in2 = 0;
		
		#10 ;//out 1
		in1 = 0; 
		in2 = 0; 
		
		#10 ;//out 0
		in1 = 0; 
		in2 = 1;
		
		#10 ;//out 0
		in1 = 1; 
		in2 = 0;
		
		#10 ;

	end
      
endmodule


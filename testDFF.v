`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:01:16 03/06/2017
// Design Name:   DFF
// Module Name:   D:/Projects/XilinxISE/HW1/Homework1/testDFF.v
// Project Name:  Homework1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testDFF;

	// Inputs
	reg clk;
	reg D;
	reg R;

	// Outputs
	wire Q;
	wire not_Q;

	// Instantiate the DESIGN Under Test (DUT)
	DFF dut (
		.clk(clk), 
		.D(D), 
		.R(R), 
		.Q(Q), 
		.not_Q(not_Q)
	);
	
	always begin
	
	clk = 0;
	#100;
	clk = 1;	
	#100;
	end
	
	initial begin
		// Initialize Inputs
		D = 0;
		R = 1;
		
		#249;			
		D = 1;
		R = 0;
		
		#300;   
		D = 0;
		R = 0;
		 
		#200;   
		D = 1;  
		R = 0;
		
		#400; 		   
		D = 0;
		R = 1;
		
		#200;       
		D = 0;
		R = 0;
		
		#200;       
		D = 1;
		R = 0;

	end
      
endmodule


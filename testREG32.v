`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:59:31 03/06/2017
// Design Name:   REG32
// Module Name:   D:/Projects/XilinxISE/HW1/Homework1/testREG32.v
// Project Name:  Homework1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: REG32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testREG32;

	// Inputs
	reg [31:0] in;
	reg clk;
	reg R;

	// Outputs
	wire [31:0] out;

	// Instantiate the DESIGN Under Test (DUT)
	REG32 dut (
		.in(in), 
		.clk(clk), 
		.R(R), 
		.out(out)
	);

	always begin
	
	clk = 0;
	#100;
	clk = 1;	
	#100;
	end
	
	initial begin
		// Initialize Inputs
		in = 0;		
		R = 1;

		// Wait 100 ns for global reset to finish
		#50
		#300;	
		R = 0;
		in=32'hEEEEEEEE	;		
		
		#300;	
		in=32'hEE0E5EA0	;
		
		#300;	
		in=32'hEEEE5EEE	;
		
		
		#300;		
		R = 1;	
		in=32'h000050A0	;
		
		#300;			
		in=32'hEE3EEEEE	;
		
			
		#300;	
		R = 0;	
		in=32'h0AB000A0	;
		
		#300;			
		in=32'hEE0E5EEE	;
		
		#300;			
		in=32'h0AB000B0	;
		
		
		
		#300;	
		R=1;	
		in=32'hEE0E5EAE	;
		
				
		
		#300;	
		R=0;	
		in=32'hEA003070	;
		
		#300;			
		in=32'h100200E5	;
		
		#300;			
		in=32'hD0D020E0	;
		
		
		#300;			
		in=32'h0607A061	;
		
		
		#300;			
		in=32'h09005E00	;
			
        
		// Add stimulus here

	end
      
endmodule


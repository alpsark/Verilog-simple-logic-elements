`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:47:43 03/06/2017
// Design Name:   MUX32
// Module Name:   D:/Projects/XilinxISE/HW1/Homework1/testMUX32.v
// Project Name:  Homework1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testMUX32;

	// Inputs
	reg [31:0] in;
	reg [4:0] sel;

	// Outputs
	wire out;

	// Instantiate the DESIGN Under Test (DUT)
	MUX32 dut (
		.in(in), 
		.sel(sel), 
		.out(out)
	);
	
	/*
	//integer i; 
	initial begin
		// Initialize Inputs
		in = 0;
		sel = 0;
		
		for(sel=0;sel<=4'b1111 ;sel=sel+1) begin
		// Wait 100 ns for global reset to finish
		
		for(in=0;in<=32'hEEEEEEEE ;in=in+1) begin
			#30;		
		end	
		
		end
		
		
        
		// Add stimulus here

	end
	*/
      

	initial begin
	// Initialize Inputs
	in = 0;
	sel = 0;
	
	
	#30;	
	in=32'hEEEEEEEE	;
	sel=4'b1111	;
	
		#30;	
	in=32'hEE0E5EA0	;
	sel=4'b0010	;
	
	#30;	
	in=32'hEEEE5EEE	;
	sel=4'b1011	;
	
	
	#30;	
	in=32'h000050A0	;
	sel=4'b1000	;
	
	#30;	
	in=32'hEE3EEEEE	;
	sel=4'b1011	;
	
		
	#30;	
	in=32'h0AB000A0	;
	sel=4'b1011	;
	
	#30;	
	in=32'hEE0E5EEE	;
	sel=4'b1001	;
	
	#30;	
	in=32'h0AB000B0	;
	sel=4'b0011	;
	
	
	
	#30;	
	in=32'hEE0E5EAE	;
	sel=4'b0011	;
	
			
	
	#30;	
	in=32'hEA003070	;
	sel=4'b1111	;
	
	#30;	
	in=32'h100200E5	;
	sel=4'b0110	;
	
	#30;	
	in=32'hD0D020E0	;
	sel=4'b1001	;	
	
	
	#30;	
	in=32'h0607A061	;
	sel=4'b0001	;
	
	
	#30;	
	in=32'h09005E00	;
	sel=4'b1000	;
		

	end
endmodule


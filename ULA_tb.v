`timescale 1ns/100ps 
module ULA_tb(); 
   
   wire [3:0] out;
	reg [3:0] op_a, op_b;
  	reg [2:0] sel_ULA;
   
   ULA DUT  (op_a, op_b, sel_ULA, out);
	   	   
   initial begin
	// sel_ULA = 000
	op_a <= 4'b1100;
   op_b <= 4'b0011;
	sel_ULA <= 3'b0;
	#100
	// sel_ULA = 001
	op_a <= 4'b1011;
   op_b <= 4'b1111;
	sel_ULA <= 3'b001;
	#100
	// sel_ULA = 010
	op_a <= 4'b0000;
   op_b <= 4'b1111;
	sel_ULA <= 3'b010;
	#100
	// sel_ULA = 011
	op_a <= 4'b1100;
   op_b <= 4'b1111;
	sel_ULA <= 3'b011;
	#100// sel_ULA = 100
	op_a <= 4'b1010;
   op_b <= 4'b0011;
	sel_ULA <= 3'b100;
	#100// sel_ULA = 101
	op_a <= 4'b1010;
   op_b <= 4'b1011;
	sel_ULA <= 3'b101;
	#100// sel_ULA = 110
	op_a <= 4'b1001;
   op_b <= 4'b0010;
	sel_ULA <= 3'b110;
	#100// sel_ULA = 111
	op_a <= 4'b1010;
   op_b <= 4'b0110;
	sel_ULA <= 3'b111;
	#400 $finish; 
   end
   
endmodule 
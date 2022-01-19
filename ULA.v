module ULA (op_a, op_b, sel_ULA, out);

input [3:0] op_a, op_b;
input [2:0] sel_ULA;
output reg [3:0] out;

reg [3:0] out_ULA;

always @(*)
begin
   case (sel_ULA) 
	  3'b000: begin out_ULA <= op_a;          end 
	  3'b001: begin out_ULA <= ~op_a;         end 
	  3'b010: begin out_ULA <= op_b;          end 
	  3'b011: begin out_ULA <= ~op_b;         end 
	  3'b100: begin out_ULA <= op_a & op_b;   end 
	  3'b101: begin out_ULA <= ~op_a & op_b;  end 
	  3'b110: begin out_ULA <= op_a & ~op_b;  end 
	  3'b111: begin out_ULA <= ~op_a & ~op_b; end 
	 default: begin out_ULA <= out_ULA;  end 
   endcase
	
  out <= out_ULA;
end 

endmodule 	
	

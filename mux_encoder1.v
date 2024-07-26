`timescale 1ps / 1ps

module mux_encoder1(sB, sA, in0, in1, in2, out);

input sB, sA;
input [1:0] in0;
input [1:0] in1;
input [1:0] in2;

output reg [1:0] out;

//mux_logic mux_logic1 (.Tx_Data(sB), .Tx_Data(sA)......);

always @(*) begin	
	
	case({sB, sA})
		
		2'b00: begin out[0] = in0[0]; out[1] = in0[1]; end
		2'b01: begin out[0] = in1[0]; out[1] = in1[1]; end
		default :  out = 0;

	endcase

end

assign in2 = 0;

endmodule



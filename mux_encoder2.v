`timescale 1ps / 1ps

module mux_encoder2(sB, sA, in0, in1, in2, in3, out);

input sB, sA;
input [1:0] in0;
input [1:0] in1;
input [1:0] in2;
input [1:0] in3;

output reg [1:0] out;

//mux_logic mux_logic1 (.Tx_Data(sB), .Tx_Data(sA)......);

always @(*) begin
	
	case({sB, sA})
		2'b00: begin out[0] = in0[0]; out[1] = in0[1]; end
		2'b01: begin out[0] = in1[0]; out[1] = in1[1]; end
		2'b10: begin out[0] = in2[0]; out[1] = in2[1]; end
		default : out = 0;

	endcase

end

assign in3 = 0;

endmodule



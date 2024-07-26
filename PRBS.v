`timescale 1ps / 1ps


module PRBS(CLK, rst, prbs);

input CLK;
input rst;
output reg [15:0] prbs;

wire feedback;

assign feedback = prbs[15] ^ prbs[13] ^ prbs[12] ^ prbs[10];		// Generally used PRBS

always @(posedge CLK or posedge rst) begin
	if(rst) begin
		prbs <= 16'h09eb; end
	else begin
		prbs <= {prbs[14:0], feedback}; end
	end

endmodule 



`timescale 1ps / 1ps

module PtoS(ll_Flip, ll_Rotate, ll_Polarity, clk_in, rst, ss_Flip, ss_Rotate, ss_Polarity);

input [6:0] ll_Flip;
input [6:0] ll_Rotate;
input [6:0] ll_Polarity;

input clk_in, rst;

output ss_Flip, ss_Rotate, ss_Polarity;

wire [15:0] Tx_Data;

reg ss_Flip_r, ss_Rotate_r, ss_Polarity_r;
reg ss_Flip_c, ss_Rotate_c, ss_Polarity_c;
reg [2:0] bitIndex_r, bitIndex_c;

reg p_state, n_state;

parameter BITS_TO_TRANMIT = 7;

parameter READY = 1'b0;
parameter TX_SERIAL = 1'b1;

wire clk_out;

FRP_logic uut1(
	.Tx_Data(Tx_Data),
	.Tx_Flip(ll_Flip),
	.Tx_Rotation(ll_Rotate),
	.Tx_Polarity(ll_Polarity)
	);


PRBS prbsuut(
	.CLK(clk_out),
	.rst(rst),
	.prbs(Tx_Data)
	);


clk_divide divide1(
		.clk_in(clk_in),
		.clk_out(clk_out),
		.rst(rst)
	);

		
always @(posedge clk_in or posedge rst) begin		// state register 
		if(rst)
		p_state <= READY;
		else
		p_state <= n_state;

	end


always @(posedge clk_in or posedge rst) begin		// status logic
		if(rst) begin
		ss_Flip_r <= 0;
		ss_Rotate_r <= 0;
		ss_Polarity_r <= 0;
		bitIndex_r <= 0;
		end

		else begin
		ss_Flip_r <= ss_Flip_c;
		ss_Rotate_r <= ss_Rotate_c;
		ss_Polarity_r <= ss_Polarity_c;
		bitIndex_r <= bitIndex_c; end
	end




always @(*) begin		// next state definiton
	n_state = READY;

	case(p_state)
		READY:
			n_state = TX_SERIAL;		
				
		TX_SERIAL:
			if(bitIndex_r == (BITS_TO_TRANMIT-1))
			n_state = READY;
			else
			n_state = TX_SERIAL;

	endcase 

 end 



always @(*) begin
	bitIndex_c = 0;

 case(p_state)
	READY: begin
		
		ss_Flip_c = 1'bz;
		ss_Rotate_c = 1'bz;
		ss_Polarity_c = 1'bz;

	/*	ss_Flip_c = ll_Flip[0];
		ss_Rotate_c = ll_Rotate[0];
		ss_Polarity_c = ll_Polarity[0]; */

		end

	TX_SERIAL: begin 

		ss_Flip_c = ll_Flip[bitIndex_r];
		ss_Rotate_c = ll_Rotate[bitIndex_r];
		ss_Polarity_c = ll_Polarity[bitIndex_r];

		bitIndex_c = bitIndex_r;

			if(bitIndex_r == BITS_TO_TRANMIT) begin
				ss_Flip_c = ss_Flip_r;
				ss_Rotate_c = ss_Rotate_r;
				ss_Polarity_c = ss_Polarity_r; end
	
			else 
				bitIndex_c = bitIndex_r + 1;
		
			end
	
	endcase
end


		
assign ss_Flip = ss_Flip_c;
assign ss_Rotate = ss_Rotate_c;
assign ss_Polarity = ss_Polarity_c;


endmodule







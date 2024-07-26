`timescale 1ps / 1ps

module serialize();

reg clk_in, rst;
wire clk_out;
wire [6:0] ll_Flip, ll_Rotate, ll_Polarity;
wire ss_Flip, ss_Rotate, ss_Polarity;
wire [15:0] Tx_Data;
wire [15:0] Rx_Data;

wire [2:0] wire_state;

reg Error;

clk_divide divide1(
		.clk_in(clk_in),
		.clk_out(clk_out),
		.rst(rst)
	);		


PRBS prbs(
		.CLK(clk_out),
		.rst(rst),
		.prbs(Tx_Data)
	);


PtoS PtoS0(
		.ll_Flip(ll_Flip),
		.ll_Rotate(ll_Rotate),
		.ll_Polarity(ll_Polarity),
		.clk_in(clk_in),		
		.rst(rst),
		.ss_Flip(ss_Flip),
		.ss_Rotate(ss_Rotate),
		.ss_Polarity(ss_Polarity)
	);	


symbol_encoder state_encoding(
		.ss_Flip(ss_Flip),
		.ss_Rotate(ss_Rotate),
		.ss_Polarity(ss_Polarity),
		.clk(clk_in),
		.rst(rst),
		.wire_state(wire_state)
	);


demapping_16bit damapping(

	.rx_pol(ll_Polarity),
	.rx_rot(ll_Rotate),
	.rx_flip(ll_Flip),
	.rx_data(Rx_Data)
);

FRP_logic FRP(
	
	.Tx_Data(Tx_Data),
	.Tx_Flip(ll_Flip),
	.Tx_Rotation(ll_Rotate),
	.Tx_Polarity(ll_Polarity)
	);



always #100 begin	
	clk_in = ~clk_in;
end

always @(*) begin
	if(Tx_Data == Rx_Data) 
		Error = 0;
	else 
		Error = 1;

end


initial begin
	clk_in = 1;
	#100;	

end 

initial begin
	rst = 1;
	#100;
	rst = 0;
	#100000;
	
	

	$finish;

end 

initial begin
	$shm_open("waves.shm");
	$shm_probe("AS");
end



endmodule





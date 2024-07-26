`timescale 1ps / 1ps

module FRP_logic(Tx_Data, Tx_Flip, Tx_Rotation, Tx_Polarity);		

input [15:0] Tx_Data;

output [6:0] Tx_Flip;
output [6:0] Tx_Rotation;
output [6:0] Tx_Polarity;

wire muxb6, muxa6, muxb5, muxa5, muxb4, muxa4, muxb3, muxa3, muxb2, muxa2, muxb1, muxa1, mux0;
wire [1:0] in1, in2, in3;

mux_encoder0 uut0( 
		.sB(mux0),
		.in0(Tx_Data[1:0]),
		.in1(in1),
		.out({Tx_Rotation[0], Tx_Polarity[0]})
		 );

mux_encoder1 uut1(
		.sB(muxb1),
		.sA(muxa1),
		.in0(Tx_Data[1:0]),
		.in1(Tx_Data[3:2]),
		.in2(in2),
		.out({Tx_Rotation[1], Tx_Polarity[1]})
		);

mux_encoder2 uut2(
		.sB(muxb2),
		.sA(muxa2),
		.in0(Tx_Data[1:0]),
		.in1(Tx_Data[3:2]),
		.in2(Tx_Data[5:4]),
		.in3(in3),
		.out({Tx_Rotation[2], Tx_Polarity[2]})
		);

mux_encoder3 uut3(
		.sB(muxb3),
		.sA(muxa3),
		.in0(Tx_Data[3:2]),
		.in1(Tx_Data[5:4]),
		.in2(Tx_Data[7:6]),
		.in3(in3),
		.out({Tx_Rotation[3], Tx_Polarity[3]})
		);

mux_encoder4 uut4(
		.sB(muxb4),
		.sA(muxa4),
		.in0(Tx_Data[5:4]),
		.in1(Tx_Data[7:6]),
		.in2(Tx_Data[9:8]),
		.in3(in3),
		.out({Tx_Rotation[4], Tx_Polarity[4]})
		);

mux_encoder5 uut5(
		.sB(muxb5),
		.sA(muxa5),
		.in0(Tx_Data[7:6]),
		.in1(Tx_Data[9:8]),
		.in2(Tx_Data[11:10]),
		.in3(in3),
		.out({Tx_Rotation[5], Tx_Polarity[5]})
		);

mux_encoder6 uut6(
		.sB(muxb6),
		.sA(muxa6),
		.in0(Tx_Data[9:8]),
		.in1(Tx_Data[11:10]),
		.in2(Tx_Data[13:12]),
		.in3(in3),
		.out({Tx_Rotation[6], Tx_Polarity[6]})
		);

mux_logic mux_logic0 (
		.Tx_Data(Tx_Data[15:10]),
		.muxb6(muxb6),
		.muxa6(muxa6),
		.muxb5(muxb5),
		.muxa5(muxa5),
		.muxb4(muxb4),
		.muxa4(muxa4),
		.muxb3(muxb3),
		.muxa3(muxa3),
		.muxb2(muxb2),
		.muxa2(muxa2),
		.muxb1(muxb1),
		.muxa1(muxa1),
		.mux0(mux0),
		.Tx_Flip(Tx_Flip)
		);	

endmodule

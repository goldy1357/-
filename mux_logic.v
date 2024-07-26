`timescale 1ps / 1ps

module mux_logic(Tx_Data, muxb6, muxa6, muxb5, muxa5, muxb4, muxa4, muxb3, muxa3, muxb2, muxa2, muxb1, muxa1, mux0, Tx_Flip);

input [15:10] Tx_Data;
output reg muxb6, muxa6, muxb5, muxa5, muxb4, muxa4, muxb3, muxa3, muxb2, muxa2, muxb1, muxa1, mux0;
output reg [6:0] Tx_Flip;

always @(*) begin

 case (Tx_Data)
	6'h00: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h01: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h02: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h03: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h04: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h05: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h06: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h07: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h08: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h09: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h0a: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h0b: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h0c: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h0d: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h0e: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end
	6'h0f: begin muxb6 = 1; muxa6 = 0; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h00; end


	6'h10: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 0; muxa1 = 0; mux0  = 1;
		Tx_Flip = 7'h01; end
	6'h11: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 0; muxa1 = 0; mux0  = 1;
		Tx_Flip = 7'h01; end
	6'h12: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 0; muxa1 = 0; mux0  = 1;
		Tx_Flip = 7'h01; end
	6'h13: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 0; muxa1 = 0; mux0  = 1;
		Tx_Flip = 7'h01; end


	6'h14: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 1; muxa1 = 0; mux0  = 0;
		Tx_Flip = 7'h02; end
	6'h15: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 1; muxa1 = 0; mux0  = 0;
		Tx_Flip = 7'h02; end
	6'h16: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 1; muxa1 = 0; mux0  = 0;
		Tx_Flip = 7'h02; end
	6'h17: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 1; muxa1 = 0; mux0  = 0;
		Tx_Flip = 7'h02; end


	6'h18: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 1; muxa2 = 1; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h04; end
	6'h19: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 1; muxa2 = 1; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h04; end
	6'h1a: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 1; muxa2 = 1; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h04; end
	6'h1b: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 1; muxa2 = 1; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h04; end


	6'h1c: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 1; muxa3 = 1; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h08; end
	6'h1d: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 1; muxa3 = 1; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h08; end
	6'h1e: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 1; muxa3 = 1; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h08; end
	6'h1f: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 1; muxa3 = 1; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h08; end


	6'h20: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 1; muxa4 = 1; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h10; end
	6'h21: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 1; muxa4 = 1; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h10; end
	6'h22: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 1; muxa4 = 1; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h10; end
	6'h23: begin muxb6 = 0; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 1; muxa4 = 1; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h10; end


	6'h24: begin muxb6 = 0; muxa6 = 1; muxb5 = 1; muxa5 = 1; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h20; end
	6'h25: begin muxb6 = 0; muxa6 = 1; muxb5 = 1; muxa5 = 1; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h20; end
	6'h26: begin muxb6 = 0; muxa6 = 1; muxb5 = 1; muxa5 = 1; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h20; end
	6'h27: begin muxb6 = 0; muxa6 = 1; muxb5 = 1; muxa5 = 1; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h20; end

	6'h28: begin muxb6 = 1; muxa6 = 1; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h40; end
	6'h29: begin muxb6 = 1; muxa6 = 1; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h40; end
	6'h2a: begin muxb6 = 1; muxa6 = 1; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h40; end
	6'h2b: begin muxb6 = 1; muxa6 = 1; muxb5 = 1; muxa5 = 0; muxb4 = 1; muxa4 = 0; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h40; end


	6'h2c: begin muxb6 = 0; muxa6 = 0; muxb5 = 0; muxa5 = 0; muxb4 = 0; muxa4 = 0; muxb3 = 0; muxa3 = 0; muxb2 = 0; muxa2 = 0; muxb1 = 1; muxa1 = 0; mux0  = 1;
		Tx_Flip = 7'h03; end

	6'h2d: begin muxb6 = 0; muxa6 = 0; muxb5 = 0; muxa5 = 0; muxb4 = 0; muxa4 = 0; muxb3 = 0; muxa3 = 0; muxb2 = 1; muxa2 = 1; muxb1 = 0; muxa1 = 0; mux0  = 1;
		Tx_Flip = 7'h05; end

	6'h2e: begin muxb6 = 0; muxa6 = 0; muxb5 = 0; muxa5 = 0; muxb4 = 0; muxa4 = 0; muxb3 = 1; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 0; muxa1 = 0; mux0  = 1;
		Tx_Flip = 7'h09; end

	6'h2f: begin muxb6 = 0; muxa6 = 0; muxb5 = 0; muxa5 = 0; muxb4 = 1; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 0; muxa1 = 0; mux0  = 1;
		Tx_Flip = 7'h11; end

	6'h30: begin muxb6 = 0; muxa6 = 0; muxb5 = 1; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 0; muxa1 = 0; mux0  = 1;
		Tx_Flip = 7'h21; end

	6'h31: begin muxb6 = 1; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 0; muxa1 = 0; mux0  = 1;
		Tx_Flip = 7'h41; end

	6'h32: begin muxb6 = 0; muxa6 = 0; muxb5 = 0; muxa5 = 0; muxb4 = 0; muxa4 = 0; muxb3 = 0; muxa3 = 0; muxb2 = 1; muxa2 = 1; muxb1 = 1; muxa1 = 0; mux0  = 0;
		Tx_Flip = 7'h06; end

	6'h33: begin muxb6 = 0; muxa6 = 0; muxb5 = 0; muxa5 = 0; muxb4 = 0; muxa4 = 0; muxb3 = 1; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 1; muxa1 = 0; mux0  = 0;
		Tx_Flip = 7'h0a; end

	6'h34: begin muxb6 = 0; muxa6 = 0; muxb5 = 0; muxa5 = 0; muxb4 = 1; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 1; muxa1 = 0; mux0  = 0;
		Tx_Flip = 7'h12; end

	6'h35: begin muxb6 = 0; muxa6 = 0; muxb5 = 1; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 1; muxa1 = 0; mux0  = 0;
		Tx_Flip = 7'h22; end

	6'h36: begin muxb6 = 1; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 0; muxa2 = 1; muxb1 = 1; muxa1 = 0; mux0  = 0;
		Tx_Flip = 7'h42; end

	6'h37: begin muxb6 = 0; muxa6 = 0; muxb5 = 0; muxa5 = 0; muxb4 = 0; muxa4 = 0; muxb3 = 1; muxa3 = 1; muxb2 = 1; muxa2 = 1; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h0c; end

	6'h38: begin muxb6 = 0; muxa6 = 0; muxb5 = 0; muxa5 = 0; muxb4 = 1; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 1; muxa2 = 1; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h14; end

	6'h39: begin muxb6 = 0; muxa6 = 0; muxb5 = 1; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 1; muxa2 = 1; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h24; end

	6'h3a: begin muxb6 = 1; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 0; muxa3 = 1; muxb2 = 1; muxa2 = 1; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h44; end

	6'h3b: begin muxb6 = 0; muxa6 = 0; muxb5 = 0; muxa5 = 0; muxb4 = 1; muxa4 = 1; muxb3 = 1; muxa3 = 1; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h18; end

	6'h3c: begin muxb6 = 0; muxa6 = 0; muxb5 = 1; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 1; muxa3 = 1; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h28; end

	6'h3d: begin muxb6 = 1; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 0; muxa4 = 1; muxb3 = 1; muxa3 = 1; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h48; end

	6'h3e: begin muxb6 = 0; muxa6 = 0; muxb5 = 1; muxa5 = 1; muxb4 = 1; muxa4 = 1; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h30; end

	6'h3f: begin muxb6 = 1; muxa6 = 1; muxb5 = 0; muxa5 = 1; muxb4 = 1; muxa4 = 1; muxb3 = 1; muxa3 = 0; muxb2 = 1; muxa2 = 0; muxb1 = 0; muxa1 = 1; mux0  = 0;
		Tx_Flip = 7'h50; end


 endcase

end

endmodule





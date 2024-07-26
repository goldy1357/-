`timescale 1ps / 1ps

module demapping_16bit (
//	i_en_7_sym,
	rx_pol,
	rx_rot,
	rx_flip,
	rx_data
);

	input	[6:0]	rx_pol;
	input	[6:0]	rx_rot;
	input	[6:0]	rx_flip;

	output	[15:0]	rx_data;

	reg	[15:0]	w_table;
	reg	[12:0]	w_mux_val;

	

	always @* begin
		case ( rx_flip[6:0] )
			7'h00 : begin
					w_table[15:14] = 2'b00;
					w_table[13:12] = 2'b00;	//2'dx;
					w_table[11:10] = 2'b00;	//2'dx;
					w_mux_val = 13'b0000000000000;
				end		
			7'h01 : begin
					w_table[15:14] = 2'b01;
					w_table[13:12] = 2'b00;
					w_table[11:10] = 2'b00;	//2'dx;
					w_mux_val = 13'b1010101010101;
				end		
			7'h02 : begin
					w_table[15:14] = 2'b01;
					w_table[13:12] = 2'b01;
					w_table[11:10] = 2'b00;	//2'dx;
					w_mux_val = 13'b1010101010100;
				end		
			7'h04 : begin
					w_table[15:14] = 2'b01;
					w_table[13:12] = 2'b10;
					w_table[11:10] = 2'b10;	//2'dx;
					w_mux_val = 13'b1010101010000;
				end		
			7'h08 : begin
					w_table[15:14] = 2'b01;
					w_table[13:12] = 2'b11;
					w_table[11:10] = 2'b00;	//2'dx;
					w_mux_val = 13'b1010101000000;
				end		
			7'h10 : begin
					w_table[15:14] = 2'b10;
					w_table[13:12] = 2'b00;
					w_table[11:10] = 2'b00;	//2'dx;
					w_mux_val = 13'b1010100000000;
				end		
			7'h20 : begin
					w_table[15:14] = 2'b10;
					w_table[13:12] = 2'b01;
					w_table[11:10] = 2'b00;	//2'dx;
					w_mux_val = 13'b1010000000000;
				end	
			7'h40 : begin	
					w_table[15:14] = 2'b10;
					w_table[13:12] = 2'b10;
					w_table[11:10] = 2'b00;	//2'dx;
					w_mux_val = 13'b1000000000000;
				end
			7'h03 : begin
					w_table[15:14] = 2'b10;
					w_table[13:12] = 2'b11;
					w_table[11:10] = 2'b00;
					w_mux_val = 13'b1101010101010;
				end		
			7'h05 : begin
					w_table[15:14] = 2'b10;
					w_table[13:12] = 2'b11;
					w_table[11:10] = 2'b01;
					w_mux_val = 13'b1101010101001;
				end		
			7'h09 : begin
					w_table[15:14] = 2'b10;
					w_table[13:12] = 2'b11;
					w_table[11:10] = 2'b10;
					w_mux_val = 13'b1101010100101;
				end		
			7'h11 : begin
					w_table[15:14] = 2'b10;
					w_table[13:12] = 2'b11;
					w_table[11:10] = 2'b11;
					w_mux_val = 13'b1101010010101;
				end		
			7'h21 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b00;
					w_table[11:10] = 2'b00;
					w_mux_val = 13'b1101001010101;
				end		
			7'h41 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b00;
					w_table[11:10] = 2'b01;
					w_mux_val = 13'b1100101010101;
				end		
			7'h06 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b00;
					w_table[11:10] = 2'b10;
					w_mux_val = 13'b1101010101000;
				end		
			7'h0a : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b00;
					w_table[11:10] = 2'b11;
					w_mux_val = 13'b1101010100100;
				end		
			7'h12 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b01;
					w_table[11:10] = 2'b00;
					w_mux_val = 13'b1101010010100;
				end		
			7'h22 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b01;
					w_table[11:10] = 2'b01;
					w_mux_val = 13'b1101001010100;
				end		
			7'h42 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b01;
					w_table[11:10] = 2'b10;
					w_mux_val = 13'b1100101010100;
				end		
			7'h0c : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b01;
					w_table[11:10] = 2'b11;
					w_mux_val = 13'b1101010100000;
				end		
			7'h14 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b10;
					w_table[11:10] = 2'b00;
					w_mux_val = 13'b1101010010000;
				end		
			7'h24 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b10;
					w_table[11:10] = 2'b01;
					w_mux_val = 13'b1101001010000;
				end		
			7'h44 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b10;
					w_table[11:10] = 2'b10;
					w_mux_val = 13'b1100101010000;
				end		
			7'h18 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b10;
					w_table[11:10] = 2'b11;
					w_mux_val = 13'b1101010000000;
				end		
			7'h28 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b11;
					w_table[11:10] = 2'b00;
					w_mux_val = 13'b1101001000000;
				end		
			7'h48 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b11;
					w_table[11:10] = 2'b01;
					w_mux_val = 13'b1100101000000;
				end		
			7'h30 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b11;
					w_table[11:10] = 2'b10;
					w_mux_val = 13'b1101000000000;
				end		
			7'h50 : begin
					w_table[15:14] = 2'b11;
					w_table[13:12] = 2'b11;
					w_table[11:10] = 2'b11;
					w_mux_val = 13'b1100100000000;
				end	
			default : begin
					w_table[15:14] = 2'b10;
					w_table[13:12] = 2'b10;
					w_table[11:10] = 2'b00;
					w_mux_val = 13'b1000000000000;
				end	
		endcase
	end


	assign	rx_data[0] = (w_mux_val[1:0] == 2'b00) ? rx_pol[0] : (w_mux_val[1:0] == 2'b01) ? rx_pol[1] : (w_mux_val[1:0] == 2'b10) ? rx_pol[2] : 1'b0;
	assign	rx_data[1] = (w_mux_val[1:0] == 2'b00) ? rx_rot[0] : (w_mux_val[1:0] == 2'b01) ? rx_rot[1] : (w_mux_val[1:0] == 2'b10) ? rx_rot[2] : 1'b0;
	assign	rx_data[2] = (w_mux_val[3:2] == 2'b00) ? rx_pol[1] : (w_mux_val[3:2] == 2'b01) ? rx_pol[2] : (w_mux_val[3:2] == 2'b10) ? rx_pol[3] : 1'b0;
	assign	rx_data[3] = (w_mux_val[3:2] == 2'b00) ? rx_rot[1] : (w_mux_val[3:2] == 2'b01) ? rx_rot[2] : (w_mux_val[3:2] == 2'b10) ? rx_rot[3] : 1'b0;
	assign	rx_data[4] = (w_mux_val[5:4] == 2'b00) ? rx_pol[2] : (w_mux_val[5:4] == 2'b01) ? rx_pol[3] : (w_mux_val[5:4] == 2'b10) ? rx_pol[4] : 1'b0;
	assign	rx_data[5] = (w_mux_val[5:4] == 2'b00) ? rx_rot[2] : (w_mux_val[5:4] == 2'b01) ? rx_rot[3] : (w_mux_val[5:4] == 2'b10) ? rx_rot[4] : 1'b0;
	assign	rx_data[6] = (w_mux_val[7:6] == 2'b00) ? rx_pol[3] : (w_mux_val[7:6] == 2'b01) ? rx_pol[4] : (w_mux_val[7:6] == 2'b10) ? rx_pol[5] : 1'b0;
	assign	rx_data[7] = (w_mux_val[7:6] == 2'b00) ? rx_rot[3] : (w_mux_val[7:6] == 2'b01) ? rx_rot[4] : (w_mux_val[7:6] == 2'b10) ? rx_rot[5] : 1'b0;

	assign	rx_data[8] = (w_mux_val[9:8] == 2'b00) ? rx_pol[4] : (w_mux_val[9:8] == 2'b01) ? rx_pol[5] : (w_mux_val[9:8] == 2'b10) ? rx_pol[6] : 1'b0;
	assign	rx_data[9] = (w_mux_val[9:8] == 2'b00) ? rx_rot[4] : (w_mux_val[9:8] == 2'b01) ? rx_rot[5] : (w_mux_val[9:8] == 2'b10) ? rx_rot[6] : 1'b0;
	assign	rx_data[10] = (w_mux_val[11:10] == 2'b00) ? rx_pol[5] : (w_mux_val[11:10] == 2'b01) ? rx_pol[6] : (w_mux_val[11:10] == 2'b10) ? w_table[10] : 1'b0;
	assign	rx_data[11] = (w_mux_val[11:10] == 2'b00) ? rx_rot[5] : (w_mux_val[11:10] == 2'b01) ? rx_rot[6] : (w_mux_val[11:10] == 2'b10) ? w_table[11] : 1'b0;

	assign	rx_data[12] = (w_mux_val[12] == 1'b0) ? rx_pol[6] : (w_mux_val[12] == 1'b1) ? w_table[12] : 1'b0;
	assign	rx_data[13] = (w_mux_val[12] == 1'b0) ? rx_rot[6] : (w_mux_val[12] == 1'b1) ? w_table[13] : 1'b0;
	assign	rx_data[14] = w_table[14];
	assign	rx_data[15] = w_table[15];


endmodule





module symbol_encoder(ss_Flip, ss_Rotate, ss_Polarity, clk, rst, wire_state);

input ss_Flip;
input ss_Rotate;
input ss_Polarity;

input clk, rst;

parameter pos_x = 3'b000; parameter neg_x = 3'b001;
parameter pos_y = 3'b010; parameter neg_y = 3'b011;
parameter pos_z = 3'b100; parameter neg_z = 3'b101;
 
output [2:0] wire_state;

reg [2:0] FRP;
reg [2:0] p_state, n_state;

assign wire_state = p_state;

always @(posedge clk or posedge rst) begin
		if(rst)
		p_state <= 3'b000;
		else
		p_state <= n_state;

end

assign FRP = {ss_Flip, ss_Rotate, ss_Polarity};

always @(p_state or FRP) begin
	n_state = 3'b000;
	case(p_state)
		pos_x: if(FRP == 3'b000)
				n_state = pos_z;
			else if(FRP == 3'b001)
				n_state = neg_z;
			else if(FRP == 3'b010)
				n_state = pos_y;
			else if(FRP == 3'b011)
				n_state = neg_y;
			else if(FRP == 3'b100)
				n_state = neg_x;

		pos_y: if(FRP == 3'b000)	
				n_state = pos_x;
			else if(FRP == 3'b001)
				n_state = neg_x;
			else if(FRP == 3'b010)
				n_state = pos_z;
			else if(FRP == 3'b011)
				n_state = neg_z;
			else if(FRP == 3'b100)
				n_state = neg_y;

		pos_z: if(FRP == 3'b000)
				n_state = pos_y;
			else if(FRP == 3'b001)
				n_state = neg_y;
			else if(FRP == 3'b010)
				n_state = pos_x;
			else if(FRP == 3'b011)
				n_state = neg_x;
			else if(FRP == 3'b100)
				n_state = neg_z;

/////////////////////////////////////////////////////////////////////////

		neg_x: if(FRP == 3'b000)
				n_state = neg_z;
			else if(FRP == 3'b001)
				n_state = pos_z;
			else if(FRP == 3'b010)
				n_state = neg_y;
			else if(FRP == 3'b011)
				n_state = pos_y;
			else if(FRP == 3'b100)
				n_state = pos_x;

		neg_y: if(FRP == 3'b000)
				n_state = neg_x;
			else if(FRP == 3'b001)
				n_state = pos_x;
			else if(FRP == 3'b010)
				n_state = neg_z;
			else if(FRP == 3'b011)
				n_state = pos_z;
			else if(FRP == 3'b100)
				n_state = pos_y;
 
		neg_z: if(FRP == 3'b000)
				n_state = neg_y;
			else if(FRP == 3'b001)
				n_state = pos_y;
			else if(FRP == 3'b010)
				n_state = neg_x;
			else if(FRP == 3'b011)
				n_state = pos_x;
			else if(FRP == 3'b100)
				n_state = pos_z;

	

	endcase

end


endmodule





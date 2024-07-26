`timescale 1ps / 1ps

module mux_encoder0(sB, in0, in1, out);

input sB;
input reg [1:0] in0;
input reg [1:0] in1;

output reg [1:0] out;

/* Need instiation? */


always @(*) begin
	
	if(sB == 0) begin
	out[0]= in0[0]; out[1] = in0[1]; 	// po0= data0; ro0 = data1;
	end
	
	else begin
	out[0]= 0; out[1] = 0;
	end

end

assign in1 = 0;

endmodule



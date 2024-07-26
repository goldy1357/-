`timescale 1ps / 1ps

module clk_divide(clk_in, clk_out, rst);

input rst;
input clk_in;
output reg clk_out;


reg[1:0] counter;
	


always @(posedge clk_in or posedge rst) begin
	if(rst) begin
		counter <= 2'b00;
		clk_out <= 1'b1; end
	
	else begin
		counter <= counter + 1;
		if(counter == 2'b11) begin		
			counter <= 2'b00;
			clk_out <= ~clk_out;		// delayed
		end
	end

end




endmodule	

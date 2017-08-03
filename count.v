module count(clk, rst, val);
	input clk, rst;
	output [7:0] val;
	reg [7:0] val;
	
	always@(posedge clk or negedge rst)
		begin
		if (!rst) val <= 0;
		else val <= val + 1;
		end
endmodule

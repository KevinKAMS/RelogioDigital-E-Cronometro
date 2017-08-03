module relogioCount(clk, miliseconds, seconds, minutes, hours);
	input clk;
	output [8:0] miliseconds;
	output [7:0] seconds;
	output [7:0] minutes;
	output [6:0] hours;
	reg [8:0] cnt_miliseconds=0;
	reg [7:0] cnt_seconds=0;
	reg [7:0] cnt_minutes=0;
	reg [6:0] cnt_hours=0;
	
	assign miliseconds = cnt_miliseconds;
	assign seconds = cnt_seconds;
	assign minutes = cnt_minutes;
	assign hours = cnt_hours;
	
	always@(posedge clk) begin
		cnt_miliseconds = cnt_miliseconds + 1;
	end
		
	always@(cnt_miliseconds) begin
		if(cnt_miliseconds == 8'b01100100)
		begin
		cnt_miliseconds <= 8'b00000000;
		cnt_seconds = cnt_seconds + 1;
		end
	end
	
	always@(cnt_seconds) begin
		if(cnt_seconds == 7'b0111100)
		begin
		cnt_seconds <= 7'b0000000;
		cnt_minutes = cnt_minutes + 1;
		end
	end
	
	always@(cnt_minutes) begin
		if(cnt_minutes == 7'b0111100)
		begin
		cnt_minutes = 0;
		cnt_hours = cnt_hours + 1;
		end
	end
	
	always@(cnt_hours) begin
		if(cnt_hours == 6'b011000) cnt_hours = 0;		
	end
		
	endmodule	
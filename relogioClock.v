module relogioClock(
					input clk, 
					output reg [6:0]mili,
					output reg [5:0]second, minute,
					output reg [4:0]hour
					);
						
	reg [6:0]next_mili;
	reg [5:0]next_second;
	reg [5:0]next_minute;
	reg [4:0]next_hour;

	always@(posedge clk) begin
		mili <= next_mili;
		second <= next_second;
		minute <= next_minute;
		hour <= next_hour;
		end
		
	always@(*) begin
		next_mili = mili + 1;
		next_second = second;
		next_minute = minute;
		next_hour = hour;
		
		if(next_mili == 100) begin
		next_mili = 0;
		next_second = second + 1;
		end
		
		if(next_second == 60) begin
		next_second = 0;
		next_minute = minute + 1;
		end
		
		if(next_minute == 60) begin
		next_minute = 0;
		next_hour = hour + 1;
		end
		
		if(next_hour == 24) begin
		next_hour = 0;
		end
		
	end

endmodule
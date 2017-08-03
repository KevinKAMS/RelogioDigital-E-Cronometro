module displaysetseg(
				input [6:0] mili,
				input [5:0] seg, min,
				input [4:0] hour,
				output [6:0] hor1,hor2,min1,min2,seg1,seg2,mili1,mili2,
				);
	
always@(*)
	begin
		case(mili)
		   5'd0 : 
		   5'd10:
		   5'd20:
		   5'd30:
		   5'd40:
		   5'd50:
		   5'd60:
		   5'd70:
		   5'd80:
		   5'd90:
		   mili2 = 7'b1000000; //to display 0
		   5'd1 : 
		   5'd11:
		   5'd21:
		   5'd31:
		   5'd41:
		   5'd51:
		   5'd61:
		   5'd71:
		   5'd81:
		   5'd91:
		   mili2 = 7'b1111001; //to display 1
		   5'd2 : 
		   5'd12:
		   5'd22:
		   5'd32:
		   5'd42:
		   5'd52:
		   5'd62:
		   5'd72:
		   5'd82:
		   5'd92:
		   mili2 = 7'b0100100; //to display 2
		   5'd3 :
		   5'd13:
		   5'd23:
		   5'd33:
		   5'd43:
		   5'd53:
		   5'd63:
		   5'd73:
		   5'd83:
		   5'd93:
		   mili2 = 7'b0110000; //to display 3
		   5'd4 : 
		   5'd14:
		   5'd24:
		   5'd34:
		   5'd44:
		   5'd54:
		   5'd64:
		   5'd74:
		   5'd84:
		   5'd94:
		   mili2 = 7'b0011001; //to display 4
		   5'd5 : 
		   5'd15:
		   5'd25:
		   5'd35:
		   5'd45:
		   5'd55:
		   5'd65:
		   5'd75:
		   5'd85:
		   5'd95:
		   mili2 = 7'b0010010; //to display 5
		   5'd6 : 
		   5'd16:
		   5'd26:
		   5'd36:
		   5'd46:
		   5'd56:
		   5'd66:
		   5'd76:
		   5'd86:
		   5'd96:
		   mili2 = 7'b0000010; //to display 6
		   5'd7 : 
		   5'd17:
		   5'd27:
		   5'd37:
		   5'd47:
		   5'd57:
		   5'd67:
		   5'd77:
		   5'd87:
		   5'd97:
		   mili2 = 7'b1111000; //to display 7
		   5'd8 : 
		   5'd18:
		   5'd28:
		   5'd38:
		   5'd48:
		   5'd58:
		   5'd68:
		   5'd78:
		   5'd88:
		   5'd98:
		   mili2 = 7'b0000000; //to display 8
		   5'd9 : 
		   5'd19:
		   5'd29:
		   5'd39:
		   5'd49:
		   5'd59:
		   5'd69:
		   5'd79:
		   5'd89:
		   5'd99:
		   mili2 = 7'b0010000; //to display 9
		endcase
		case(seg)
		   5'd0 : 
		   5'd10:
		   5'd20:
		   5'd30:
		   5'd40:
		   5'd50:
		   5'd60:
		   seg2 = 7'b1000000; //to display 0
		   5'd1 : 
		   5'd11:
		   5'd21:
		   5'd31:
		   5'd41:
		   5'd51:
		   seg2 = 7'b1111001; //to display 1
		   5'd2 : 
		   5'd12:
		   5'd22:
		   5'd32:
		   5'd42:
		   5'd52:
		   seg2 = 7'b0100100; //to display 2
		   5'd3 :
		   5'd13:
		   5'd23:
		   5'd33:
		   5'd43:
		   5'd43:
		   seg2 = 7'b0110000; //to display 3
		   5'd4 : 
		   5'd14:
		   5'd24:
		   5'd34:
		   5'd44:
		   5'd54:
		   seg2 = 7'b0011001; //to display 4
		   5'd5 : 
		   5'd15:
		   5'd25:
		   5'd35:
		   5'd45:
		   5'd55:
		   seg2 = 7'b0010010; //to display 5
		   5'd6 : 
		   5'd16:
		   5'd26:
		   5'd36:
		   5'd46:
		   5'd56:
		   seg2 = 7'b0000010; //to display 6
		   5'd7 : 
		   5'd17:
		   5'd27:
		   5'd37:
		   5'd47:
		   5'd57:
		   seg2 = 7'b1111000; //to display 7
		   5'd8 : 
		   5'd18:
		   5'd28:
		   5'd38:
		   5'd48:
		   5'd58:
		   seg2 = 7'b0000000; //to display 8
		   5'd9 : 
		   5'd19:
		   5'd29:
		   5'd39:
		   5'd49:
		   5'd59:
		   seg2 = 7'b0010000; //to display 9
		endcase
		case(min)
		   5'd0 : 
		   5'd10:
		   5'd20:
		   5'd30:
		   5'd40:
		   5'd50:
		   5'd60:
		   min2 = 7'b1000000; //to display 0
		   5'd1 : 
		   5'd11:
		   5'd21:
		   5'd31:
		   5'd41:
		   5'd51:
		   min2 = 7'b1111001; //to display 1
		   5'd2 : 
		   5'd12:
		   5'd22:
		   5'd32:
		   5'd42:
		   5'd52:
		   min2 = 7'b0100100; //to display 2
		   5'd3 :
		   5'd13:
		   5'd23:
		   5'd33:
		   5'd43:
		   5'd43:
		   min2 = 7'b0110000; //to display 3
		   5'd4 : 
		   5'd14:
		   5'd24:
		   5'd34:
		   5'd44:
		   5'd54:
		   min2 = 7'b0011001; //to display 4
		   5'd5 : 
		   5'd15:
		   5'd25:
		   5'd35:
		   5'd45:
		   5'd55:
		   min2 = 7'b0010010; //to display 5
		   5'd6 : 
		   5'd16:
		   5'd26:
		   5'd36:
		   5'd46:
		   5'd56:
		   min2 = 7'b0000010; //to display 6
		   5'd7 : 
		   5'd17:
		   5'd27:
		   5'd37:
		   5'd47:
		   5'd57:
		   min2 = 7'b1111000; //to display 7
		   5'd8 : 
		   5'd18:
		   5'd28:
		   5'd38:
		   5'd48:
		   5'd58:
		   min2 = 7'b0000000; //to display 8
		   5'd9 : 
		   5'd19:
		   5'd29:
		   5'd39:
		   5'd49:
		   5'd59:
		   min2 = 7'b0010000; //to display 9
		endcase
		case(hour)
		   5'd0 : 
		   5'd10:
		   5'd20:
		   hor2 = 7'b1000000; //to display 0
		   5'd1 : 
		   5'd11:
		   5'd21:
		   hor2 = 7'b1111001; //to display 1
		   5'd2 : 
		   5'd12:
		   5'd22:
		   hor2 = 7'b0100100; //to display 2
		   5'd3 :
		   5'd13:
		   5'd23:
		   hor2 = 7'b0110000; //to display 3
		   5'd4 : 
		   5'd14:
		   5'd24:
		   hor2 = 7'b0011001; //to display 4
		   5'd5 : 
		   5'd15:
		   hor2 = 7'b0010010; //to display 5
		   5'd6 : 
		   5'd16:
		   hor2 = 7'b0000010; //to display 6
		   5'd7 : 
		   5'd17:
		   hor2 = 7'b1111000; //to display 7
		   5'd8 : 
		   5'd18:
		   hor2 = 7'b0000000; //to display 8
		   5'd9 : 
		   5'd19:
		   hor2 = 7'b0010000; //to display 9
		endcase
	end
	
always@(*)
	begin
		case(mili)
		5'd0:
		5'd1:
		5'd2:
		5'd3:
		5'd4:
		5'd5:
		5'd6:
		5'd7:
		5'd8:
		5'd9:
		mili1 = 7'b1000000;
		5'd10:
		5'd11:
		5'd12:
		5'd13:
		5'd14:
		5'd15:
		5'd16:
		5'd17:
		5'd18:
		5'd19:
		mili1 = 7'b1111001; //to display 1
		5'd20:
		5'd21:
		5'd22:
		5'd23:
		5'd24:
		5'd25:
		5'd26:
		5'd27:
		5'd28:
		5'd29:
		mili1 = 7'b0100100; //to display 2
		5'd30:
		5'd31:
		5'd32:
		5'd33:
		5'd34:
		5'd35:
		5'd36:
		5'd37:
		5'd38:
		5'd39:
		mili1 = 7'b0110000; //to display 3
		5'd40:
		5'd41:
		5'd42:
		5'd43:
		5'd44:
		5'd45:
		5'd46:
		5'd47:
		5'd48:
		5'd49:
		mili1 = 7'b0011001; //to display 4
		5'd50:
		5'd51:
		5'd52:
		5'd53:
		5'd54:
		5'd55:
		5'd56:
		5'd57:
		5'd58:
		5'd59:
		mili1 = 7'b0010010; //to display 5
		5'd60:
		5'd61:
		5'd62:
		5'd63:
		5'd64:
		5'd65:
		5'd66:
		5'd67:
		5'd68:
		5'd69:
		mili1 = 7'b0000010; //to display 6
		5'd70:
		5'd71:
		5'd72:
		5'd73:
		5'd74:
		5'd75:
		5'd76:
		5'd77:
		5'd78:
		5'd79:
		mili1 = 7'b1111000; //to display 7
		5'd80:
		5'd81:
		5'd82:
		5'd83:
		5'd84:
		5'd85:
		5'd86:
		5'd87:
		5'd88:
		5'd89:
		mili1 = 7'b0000000; //to display 8
		5'd90:
		5'd91:
		5'd92:
		5'd93:
		5'd94:
		5'd95:
		5'd96:
		5'd97:
		5'd98:
		5'd99:
		mili1 = 7'b0010000; //to display 9
		endcase
		case(seg)
		5'd0:
		5'd1:
		5'd2:
		5'd3:
		5'd4:
		5'd5:
		5'd6:
		5'd7:
		5'd8:
		5'd9:
		seg1 = 7'b1000000;
		5'd10:
		5'd11:
		5'd12:
		5'd13:
		5'd14:
		5'd15:
		5'd16:
		5'd17:
		5'd18:
		5'd19:
		seg1 = 7'b1111001; //to display 1
		5'd20:
		5'd21:
		5'd22:
		5'd23:
		5'd24:
		5'd25:
		5'd26:
		5'd27:
		5'd28:
		5'd29:
		seg1 = 7'b0100100; //to display 2
		5'd30:
		5'd31:
		5'd32:
		5'd33:
		5'd34:
		5'd35:
		5'd36:
		5'd37:
		5'd38:
		5'd39:
		seg1 = 7'b0110000; //to display 3
		5'd40:
		5'd41:
		5'd42:
		5'd43:
		5'd44:
		5'd45:
		5'd46:
		5'd47:
		5'd48:
		5'd49:
		seg1 = 7'b0011001; //to display 4
		5'd50:
		5'd51:
		5'd52:
		5'd53:
		5'd54:
		5'd55:
		5'd56:
		5'd57:
		5'd58:
		5'd59:
		seg1 = 7'b0010010; //to display 5
		endcase
		case(min)
		5'd0:
		5'd1:
		5'd2:
		5'd3:
		5'd4:
		5'd5:
		5'd6:
		5'd7:
		5'd8:
		5'd9:
		min1 = 7'b1000000;
		5'd10:
		5'd11:
		5'd12:
		5'd13:
		5'd14:
		5'd15:
		5'd16:
		5'd17:
		5'd18:
		5'd19:
		min1 = 7'b1111001; //to display 1
		5'd20:
		5'd21:
		5'd22:
		5'd23:
		5'd24:
		5'd25:
		5'd26:
		5'd27:
		5'd28:
		5'd29:
		min1 = 7'b0100100; //to display 2
		5'd30:
		5'd31:
		5'd32:
		5'd33:
		5'd34:
		5'd35:
		5'd36:
		5'd37:
		5'd38:
		5'd39:
		min1 = 7'b0110000; //to display 3
		5'd40:
		5'd41:
		5'd42:
		5'd43:
		5'd44:
		5'd45:
		5'd46:
		5'd47:
		5'd48:
		5'd49:
		min1 = 7'b0011001; //to display 4
		5'd50:
		5'd51:
		5'd52:
		5'd53:
		5'd54:
		5'd55:
		5'd56:
		5'd57:
		5'd58:
		5'd59:
		min1 = 7'b0010010; //to display 5
		endcase
		case(hour)
		5'd0:
		5'd1:
		5'd2:
		5'd3:
		5'd4:
		5'd5:
		5'd6:
		5'd7:
		5'd8:
		5'd9:
		hor1 = 7'b1000000;
		5'd10:
		5'd11:
		5'd12:
		5'd13:
		5'd14:
		5'd15:
		5'd16:
		5'd17:
		5'd18:
		5'd19:
		hor1 = 7'b1111001; //to display 1
		5'd20:
		5'd21:
		5'd22:
		5'd23:
		5'd24:
		hor1 = 7'b0100100; //to display 2
		endcase
	end
				
endmodule

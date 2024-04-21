module wrapper (                        // anh  yeu dan harem cua anh Uy ba ngan. Mai yeu!!!
					input logic [7:0] SW,
					input logic [1:0] KEY,
					output logic [9:0] LEDR,
					output logic [6:0] HEX0,HEX1,HEX2,HEX3);
					
acc wrapp (.a(SW),.clk(KEY[0]),.s(LEDR[7:0]),.cary(LEDR[8]),.overflow_1(LEDR[9]));


always_comb begin
case (SW[3:0])
	    4'b0000: HEX0 = 7'b1000000;//0
	    4'b0001: HEX0 = 7'b1111001;//1
	    4'b0010: HEX0 = 7'b0100100;//2
	    4'b0011: HEX0 = 7'b0110000;//3
	    4'b0100: HEX0 = 7'b0011001;//4
	    4'b0101: HEX0 = 7'b0010010;//5
	    4'b0110: HEX0 = 7'b0000010;//6
	    4'b0111: HEX0 = 7'b1111000;//7
	    4'b1000: HEX0 = 7'b0000000;//8
	    4'b1001: HEX0 = 7'b0010000;//9
	   default: HEX0 =  7'b1000000;
	endcase 

case (SW[7:4])
	    4'b0000: HEX1 = 7'b1000000;//0
	    4'b0001: HEX1 = 7'b1111001;//1
	    4'b0010: HEX1 = 7'b0100100;//2
	    4'b0011: HEX1 = 7'b0110000;//3
	    4'b0100: HEX1 = 7'b0011001;//4
	    4'b0101: HEX1 = 7'b0010010;//5
	    4'b0110: HEX1 = 7'b0000010;//6
	    4'b0111: HEX1 = 7'b1111000;//7
	    4'b1000: HEX1 = 7'b0000000;//8
	    4'b1001: HEX1 = 7'b0010000;//9
	   default: HEX1 =  7'b1000000;
	endcase
	
case (LEDR[3:0])
	    4'b0000: HEX2 = 7'b1000000;//0
	    4'b0001: HEX2 = 7'b1111001;//1
	    4'b0010: HEX2 = 7'b0100100;//2
	    4'b0011: HEX2 = 7'b0110000;//3
	    4'b0100: HEX2 = 7'b0011001;//4
	    4'b0101: HEX2 = 7'b0010010;//5
	    4'b0110: HEX2 = 7'b0000010;//6
	    4'b0111: HEX2 = 7'b1111000;//7
	    4'b1000: HEX2 = 7'b0000000;//8
	    4'b1001: HEX2 = 7'b0010000;//9
	   default: HEX2 =  7'b1000000;
	endcase 
	
case (LEDR[7:4])
	    4'b0000: HEX3 = 7'b1000000;//0
	    4'b0001: HEX3 = 7'b1111001;//1
	    4'b0010: HEX3 = 7'b0100100;//2
	    4'b0011: HEX3 = 7'b0110000;//3
	    4'b0100: HEX3 = 7'b0011001;//4
	    4'b0101: HEX3 = 7'b0010010;//5
	    4'b0110: HEX3 = 7'b0000010;//6
	    4'b0111: HEX3 = 7'b1111000;//7
	    4'b1000: HEX3 = 7'b0000000;//8
	    4'b1001: HEX3 = 7'b0010000;//9
	   default: HEX3 =  7'b1000000;
	endcase 
end 
endmodule 
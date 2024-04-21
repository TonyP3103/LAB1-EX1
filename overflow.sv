
	
module overflow 
	#(parameter N = 8)

(
			input logic [7:0] a,b,
			output logic cary,
			output logic [7:0] sum,
			output logic v);
			
			 logic [7:0] c_out;
	
	adder add0 ( .a(a[0]),
					.b(b[0]),
					.c_in (1'b0),
					.c_out (c_out[0]),
					.sum (sum[0]) );
	
	genvar i;
	generate
	for ( i = 1; i < N ; i++) begin : overflow2
	
	adder add ( .a(a[i]),
					.b(b[i]),
					.c_in (c_out[i-1]),
					.c_out (c_out[i]),
					.sum (sum[i]) );				
	end 
   endgenerate
	
	assign v = c_out[6] ^ c_out[7];
	assign cary = c_out[7];
	endmodule 
	
	
	module adder (
					input logic a,b,c_in,
					output logic c_out,sum);
					
	assign {c_out,sum} = a + b + c_in;

	
	endmodule 
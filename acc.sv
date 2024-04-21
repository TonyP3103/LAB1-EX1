module acc (
	input logic clk,
	input logic [7:0] a,
	output logic [7:0] s,
	output logic cary,overflow_1);
	
	logic [7:0] tmpa;
	logic [7:0] tmps;
	logic tmpover,tmpc;
	always_ff @(posedge clk) begin
	tmpa <= a;
	s <= tmps;
   overflow_1 <= tmpover;
	cary <= tmpc;
	end 
	
	overflow overflow1 (.a(tmpa),.b(s),.sum(tmps),.v(tmpover),.cary(tmpc));
	endmodule 
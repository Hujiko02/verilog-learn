`timescale 1ns/1ps

module gates_tb;

	reg  a, b;
	wire y_and, y_or, y_not, y_xor;

	gates dut(
		.a    (a),
		.b    (b),
		.y_and(y_and),
		.y_or (y_or),
		.y_not(y_not),
		.y_xor(y_xor)	
	);

	initial begin
		$dumpfile("gates.vcd");
		$dumpvars(0, gates_tb);

		$display("	a	b 	| y_and  y_or  y_not  y_xor");

		a = 0; b = 0; #10;
		$display("%b %b | %b %b %b %b ", a, b, y_and, y_or, y_not, y_xor); 
		a = 0; b = 1; #10;
		$display("%b %b | %b %b %b %b ", a, b, y_and, y_or, y_not, y_xor); 
		a = 1; b = 0; #10;
		$display("%b %b | %b %b %b %b ", a, b, y_and, y_or, y_not, y_xor); 		
		a = 1; b = 1; #10;
		$display("%b %b | %b %b %b %b ", a, b, y_and, y_or, y_not, y_xor);
		$finish;
	end
endmodule






		 		

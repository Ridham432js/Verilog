//Testbench for combinational logic assignment 1

`timescale 1ns/1ps

module comb_logic_tb();
	reg clk;
	reg[2:0]cnt;
	wire out;

	initial begin
	clk = 1;
	cnt = -1;
	
	end
	always #5 clk = ~clk;
	always @(posedge clk) cnt=cnt+1;

	design_module UUT(cnt[2], cnt[1],cnt[0], out);
	
endmodule//comb_logic_tb
	

module switch_level_inverter_tb;
reg in;
wire out;
switch_level_inverter d(in,out);
initial begin
	$monitor("@time=%0t in=%b out=%b",$time,in,out);
	in=1'b0;
	#5 in=1'b1;
	#5 in=1'bx;
	#5 in=1'bz;
	#5 $finish;
end
endmodule

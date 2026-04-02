module sr_d_flipflop_tb;
reg clk,rst,D;
wire q;
sr_d_flipflop DUT(clk,rst,D,q);
always #5
clk=~clk;
initial begin
$monitor("time=%0t clk=%b D=%b q=%b",$time,clk,D,q);
$dumpfile("dump.vcd");
$dumpvars(0);

clk=0;
rst=1; D=0;#10
rst=0; D=0;#10
D=1; #10
D=0; #10
D=1; #10
$finish;
end
endmodule

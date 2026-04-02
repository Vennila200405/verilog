module sr_JK_flipflop_tb;
reg clk,rst,J,K;
wire q;
sr_JK_flipflop DUT(clk,rst,J,K,q);
always #5
clk=~clk;
initial begin
$monitor("time=%0t clk=%b J=%b K=%b q=%b",$time,clk,J,K,q);
$dumpfile("dump.vcd");
$dumpvars(0);

clk=0;
rst=1; J=0;K=0; #10
rst=0;
J = 0; K = 0; #10;  // No change
J = 0; K = 1; #10;  // Reset
J = 1; K = 0; #10;  // Set
J = 1; K = 1; #10;  // Toggle
J = 1; K = 1; #10;  // Toggle again
J = 0; K = 0; #10;  // Hold
$finish;
end
endmodule

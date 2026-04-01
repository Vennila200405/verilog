module sr_flipflop_tb;
reg clk,rst,s,r;
wire q;
sr_flipflop DUT(clk,rst,q,s,r);
always #5
clk=~clk;
initial begin
        $monitor("time=%0t clk=%b rst=%b s=%b r=%b q=%b", $time, clk, rst, s, r, q);
        $dumpfile("dump.vcd");
        $dumpvars(0);
clk = 0;
rst=1;s=0;r=0;   // initialize
 #10 rst = 0;
#10 s=1;r=0;   // SET → q=1
#10 s=0;r=0;   // HOLD
#10 s=0;r=1;   // RESET → q=0
#10 s=0;r=0;   // HOLD
#10 s=1;r=1;   // INVALID
#10 $finish;
end
endmodule

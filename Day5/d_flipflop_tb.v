module d_flipflop_tb;
reg clk,rst,d;
wire q;
d_flipflop uut(clk,rst,d,q);
always #5
        clk=~clk;
initial begin
        $monitor("time=%0t clk=%b rst=%b d=%b q=%b", $time, clk, rst, d, q);
        $dumpfile("dump.vcd");
        $dumpvars(0);
        clk = 0;
        rst = 1; // start with reset active
        d = 0;
        #10 rst = 0; // release reset, flip-flop can store d
        #10 d = 1;   // d=1 while reset=0
        #10 rst = 1; // reset again
        #10 rst = 0; // release reset
        #10 d = 0;   // normal d=0 operation
        $finish;
end
endmodule

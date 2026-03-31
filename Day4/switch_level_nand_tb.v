module switch_level_nand_tb;
reg a,b;
wire y;
switch_level_nand d(a,b,y);
initial begin
        a=1'b0;b=1'b0;#5
        a=1'b0;b=1'b1;#5
        a=1'b1;b=1'b0;#5
        a=1'b1;b=1'b1;#5
        a=1'b0;b=1'bx;#5
        a=1'b1;b=1'bx;#5
        a=1'b0;b=1'bz;#5
        a=1'b1;b=1'bx;#5
        $finish;
end
initial begin
        $monitor("@time=%0t in1=%b in2=%b out=%b",$time,a,b,y);
end
endmodule

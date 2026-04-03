module g_1bit_comparator_tb;
reg p,q;
wire gt,lt,eq;
g_1bit_comparator DUT(p,q,gt,lt,eq);
initial begin
$dumpfile("dump.vcd");
$dumpvars();
$monitor("p=%b q=%b gt=%b eq=%b lt=%b",p,q,gt,eq,lt);
p=0;q=0; #10
p=0;q=1; #10
p=1;q=0; #10
p=1;q=1; #10
$finish;
end
endmodule

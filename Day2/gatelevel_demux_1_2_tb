module demux1_2_tb;
reg i, s;
wire y0, y1;
demux1_2 DUT(i, s, y0, y1);
initial begin
    $dumpfile("dump.vcd");
  $dumpvars(0, demux1_2_tb);
  $monitor("i=%b s=%b | y0=%b y1=%b", i, s, y0, y1);
  
  i = 1;
  s = 0; #10;
  s = 1; #10;
  
  i = 0;
  s = 0; #10;
  s = 1; #10;
  $finish;
end
endmodule

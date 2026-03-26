module mux_2_1_tb;
  reg i0,i1;
  reg sel;
  wire y;
  mux_2_1 DUT(sel,i0,i1,y);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("sel=%b,i0=%b,i1=%b,y=%b",sel,i0,i1,y);
    i0=0;i1=1;
    sel=0;#10
    sel=1;
  end
endmodule

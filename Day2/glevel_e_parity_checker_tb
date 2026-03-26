module e_parity_checker_tb;
  reg a,b,c;
  wire p;
  e_parity_checker DUT(a,b,c,p);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
    $monitor("a=%b b=%b c=%b p=%b",a,b,c,p);
             a=0;b=0;c=0; #10
             a=0;b=0;c=1; #10
             a=0;b=1;c=0; #10
             a=0;b=1;c=1; #10
             a=1;b=0;c=0; #10
             a=1;b=0;c=1; #10
             a=1;b=1;c=0; #10
             a=1;b=1;c=1;
    $finish;
  end
endmodule

module unsized_numbers;
reg[3:0]a;
reg[7:0]b;
initial begin
a=5;
b=100;
$display("4-bit a=%b(decimal%d)",a,a);
$display("8-bit b=%b(decimal%d)",b,b);

a=20;
b=300;
$display("4-bit a=%b(decimal%d)",a,a);
$display("8-bit b=%b(decimal%d)",b,b);
$finish;
end
endmodule

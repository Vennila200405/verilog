module jk_latch(j,k,enable,q);
input j,k,enable;
output reg q;
initial q=0;
always @(*)begin
if(enable) begin
if  (j==0 && k==0)
q=q;
else if(j==0 && k==1)
q=0;
else if(j==1 && k==0)
q=1;
else if(j==1 && k==1)
q=~q;
else
q=q;
end
end
endmodule

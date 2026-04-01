module sr_flipflop(clk,rst,q,s,r);
input clk,rst,s,r;
output reg q;
always @(posedge clk)begin
        if(rst)
                q<=0;
        else if(s==0 && r==0)
        q<=q;
else if(s==0 && r==1)
        q<=0;
else if(s==1 && r==0)
        q<=1;
else if (s==1 && r==1)
        q<=1'bx;
end
endmodule

module mealy_1001 (
    input clk,
    input rst,
    input x,
    output reg y);

parameter s0 = 2'b00,
          s1 = 2'b01,
          s2 = 2'b10,
          s3 = 2'b11;
reg [1:0] state, next_state;


always @(posedge clk or posedge rst) begin
    if (rst)
        state <= s0;
    else
        state <= next_state;
end
always @(*) begin
     next_state = state;
     y = 0;
case (state)
 s0: begin
         if (x == 1)
                next_state = s1;
        end

        s1: begin
            if (x == 0)
                next_state = s2;
        end

        s2: begin
            if (x == 0)
                next_state = s3;
            else
                next_state = s1;
        end

        s3: begin
            if (x == 1) begin
                next_state = s1;
                y = 1;
end
            else
                next_state = s0;
        end

        default: begin
            next_state = s0;
            y = 0;
        end

    endcase
end

endmodule

module top_module (
    input clk,
    input reset,
    input [7:0] d,
    output [7:0] q
);
    always@(negedge clk) begin
        if(reset==1'b1) q[7:0]<=8'h34;
        else q[7:0]<=d[7:0];
    end
endmodule

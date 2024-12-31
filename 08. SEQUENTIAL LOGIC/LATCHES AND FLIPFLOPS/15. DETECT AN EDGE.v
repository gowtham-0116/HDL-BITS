module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0] inbetween;
    always@(posedge clk) begin
        inbetween <= in;
        pedge <= ~inbetween & in;
    end

endmodule

module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    wire y;
    assign y = ~(in1^in2);
    assign out = y^in3;
endmodule

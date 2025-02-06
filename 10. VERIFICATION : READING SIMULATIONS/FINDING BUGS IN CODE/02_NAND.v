module top_module (input a, input b, input c, output out);//
        wire x;
    andgate inst1 ( x,a, b, c, 1,1 );
    assign out = ~x;

endmodule

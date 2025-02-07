module top_module;
    reg [1:0] in;
    wire out;
    
    andgate gate(in, out);
    
    initial begin
        in[1] = 0; in[0] = 0; #10;
        in[1] = 0; in[0] = 1; #10;
        in[1] = 1; in[0] = 0; #10;
        in[1] = 1; in[0] = 1; #10;
    end
    
endmodule

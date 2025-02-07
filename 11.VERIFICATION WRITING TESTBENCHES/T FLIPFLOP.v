module top_module ();
    reg clk;
    reg reset;
    reg t;
    wire q;
    
    tff dut(clk, reset, t, q);
    
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        reset = 1; #10;
        reset = 0; #10;
    end
    
    always @(posedge clk) begin
        if(reset)
            t <= 1'b0;
        else
            t <= ~q;
    end
endmodule

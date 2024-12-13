module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );
	
    always@(*) begin 
        case (sel)
            'h0 : out = a;
            'h1 : out = b;
            'h2 : out = c;
            'h3 : out = d;
            'h4 : out = e;
            'h5 : out = f;
            'h6 : out = g;
            'h7 : out = h;
            'h8 : out = i;
            default out = {16{1'b1}};
        endcase
    end
    
endmodule

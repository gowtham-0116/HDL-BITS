  module top_module (input x, input y, output z);
    wire z1,z2,z3,z4,l,m;
    
    module_A IA1(x,y,z1);
    module_B IB1(x,y,z2);
    module_A IA2(x,y,z3);
    module_B IB2(x,y,z4);
    
    assign l = z1 | z2;
    assign m = z3 & z4;
    assign z = l^m;
    
endmodule

module module_A (input x, input y, output z);
    assign z=(x^y) & x;
endmodule

module module_B ( input x, input y, output z );
    assign z = ~(x^y); 
endmodule

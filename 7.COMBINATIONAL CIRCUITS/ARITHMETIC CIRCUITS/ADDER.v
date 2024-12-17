module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
  	wire c0,c1,c2,c3;
    assign sum[4]=c3;
    FA fadd1(x[0],y[0],0,sum[0],c0);
    FA fadd2(x[1],y[1],c0,sum[1],c1);
    FA fadd3(x[2],y[2],c1,sum[2],c2);
    FA fadd4(x[3],y[3],c2,sum[3],c3);
endmodule

module FA(input x,y,z,output sum,cout);
    assign sum = x^y^z;
    assign cout = (x*y)+(y*z)+(z*x);
endmodule

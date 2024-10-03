module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire con1,con2,y;
    wire[15:0] sum1,sum2;
    add16 Add1(a[15:0],b[15:0],0,sum[15:0],con1);
    add16 Add2(a[31:16],b[31:16],0,sum1,con2);
    add16 Add3(a[31:16],b[31:16],1,sum2,con2);
    
    always@(con1,sum1,sum2) begin
        case(con1)
            0:sum[31:16]=sum1;
            1:sum[31:16]=sum2;
        endcase
    end        
endmodule

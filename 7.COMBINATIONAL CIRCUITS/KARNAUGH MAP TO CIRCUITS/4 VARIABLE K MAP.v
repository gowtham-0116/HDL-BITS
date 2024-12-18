module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  );
  
    assign out = (b&c&d) | (a&(~b)&d) | ((~a)&(~d)) | ((~b)&(~c));  
  
endmodule

//SOP form 

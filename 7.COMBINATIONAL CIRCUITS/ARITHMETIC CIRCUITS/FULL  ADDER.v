module full_adder( 
    input a, b, cin,
    output cout, sum );
	
    assign cout = (a*b)+(b*cin)+(cin*a);
    assign sum = a^b^cin;
    
endmodule

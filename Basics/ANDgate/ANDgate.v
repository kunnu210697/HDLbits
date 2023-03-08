module top_module( 
    input a, 
    input b, 
    output out );
    
    assign out = a & b;	//& is bitwise AND operation
    //assign out = a && b; is logical and operation meaning it accepts entire value of a variable
	//and(out, a, b);

endmodule

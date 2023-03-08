module top_module( 
    input a,b,c,
    output w,x,y,z );
	//Verilog by defaut makes all the inputs and outputs as wire unless stated as reg
    assign w = a;
    assign x = b;
    assign y = b;
    assign z = c;
    
endmodule
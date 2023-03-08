module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
	);//
	wire res1, res2;    
    add16 a1(a[15:0], b[15:0], 0, sum[15:0], res1);
    add16 a2(a[31:16], b[31:16], res1, sum[31:16], res2);
    
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | ((a ^ b)&cin);

endmodule

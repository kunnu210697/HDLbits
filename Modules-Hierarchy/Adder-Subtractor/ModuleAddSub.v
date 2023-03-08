module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
	);
    wire [31:0]xor_out;
    wire cout1, cout2;
    
    assign xor_out = b ^ {32{sub}};
    add16 a1(.a(a[15:0]), .b(xor_out[15:0]), .cin(sub), .cout(cout1), .sum(sum[15:0]));
    add16 a2(.a(a[31:16]), .b(xor_out[31:16]), .cin(cout1), .cout(cout2), .sum(sum[31:16]));
    
endmodule

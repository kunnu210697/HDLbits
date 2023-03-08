module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire cout1, cout2, cout3;
    
    Fadder m1(.a(x[0]), .b(y[0]), .cin(0), .cout(cout1), .sum(sum[0]));
    Fadder m2(.a(x[1]), .b(y[1]), .cin(cout1), .cout(cout2), .sum(sum[1]));
    Fadder m3(.a(x[2]), .b(y[2]), .cin(cout2), .cout(cout3), .sum(sum[2]));
    Fadder m4(.a(x[3]), .b(y[3]), .cin(cout3), .cout(sum[4]), .sum(sum[3]));

endmodule

module Fadder(
    input a, b, cin,
    output cout, sum );
    
    assign sum  = a^b^cin;
	assign cout = a&b | b&cin | a&cin;
	
endmodule

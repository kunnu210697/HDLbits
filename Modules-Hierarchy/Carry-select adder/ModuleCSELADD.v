module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
	);
    wire [15:0] cout, cout1, cout2;
    wire [15:0] sum2, sum3, sum4;
    add16 a1(.a(a[15:0]), .b(b[15:0]), .cin(0), .cout(cout), .sum(sum[15:0])); 
    add16 a2(.a(a[31:16]), .b(b[31:16]), .cin(0), .cout(cout1), .sum(sum2));
    add16 a3(.a(a[31:16]), .b(b[31:16]), .cin(1), .cout(cout2), .sum(sum3));
    
    always@(*)begin
        case(cout)
            0: sum[31:16] = sum2;
            1: sum[31:16] = sum3;
            default : sum[31:16] = 16'bx;	//To remove warning of Latch 
        endcase
    end
    
endmodule

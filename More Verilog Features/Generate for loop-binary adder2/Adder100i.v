module add_FA(
    input a,b,cin,
    output cout,sum);
    assign sum = a ^ b ^ cin;
    assign cout = (a&b)|(b&cin)|(cin&a);
endmodule
    
module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
   /* 
    integer i;
    add_FA a0(.a(a[0]), .b(b[0]), .cin(cin), .cout(cout[0]), .sum(sum[0]));
    always@(*)begin
        for(i=1;i<100;i=i+1)begin : Full_Adder
            
            add_FA j(.a(a[i]), .b(b[i]), .cin(cout[i-1]), .cout(cout[i]), .sum(sum[i]));
        end
    end
	*/
    integer i;
    always @(*) begin
        sum[0] = a[0] ^ b[0] ^ cin;
        cout[0] = a[0] & b[0] | cin & (a[0]|b[0]);
        for (i = 1; i<100; i++) begin
            sum[i] = a[i] ^ b[i] ^ cout[i-1];
            cout[i] = a[i] & b[i] | cout[i-1] & (a[i]|b[i]);
        end
    end
    
endmodule



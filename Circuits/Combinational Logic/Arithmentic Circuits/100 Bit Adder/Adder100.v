module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    wire [99:0] cout_temp;
    integer i;
    assign sum[0]  = a[0]^b[0]^cin;
    assign cout_temp[0] = (a[0]&b[0]) | (cin&(a[0]^b[0]));
    
    always@(*)begin
    	for(i=1;i<100;i=i+1)begin
            sum[i]  = a[i]^b[i]^cout_temp[i-1];
            cout_temp[i] = (a[i]&b[i]) | (cout_temp[i-1]&(a[i]^b[i]));
        end
    end
    assign cout = cout_temp[99];

endmodule


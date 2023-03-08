module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
    integer i;
    always@(*)begin
        for(i=0;i<8;i=i+4)begin
            out = in[sel*i +: 4]; 
            //[<start_bit> +: <width.] -->Part select increment from start bit
            //[<start_bit> -: <width.] -->Part select decrement from start bit
            //https://www.chipverify.com/verilog/verilog-scalar-vector
        end
    end

endmodule

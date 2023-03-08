module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    assign out = (((~b)&(~c)) | (c & d & b) | (a & c & d) | ((~a) & c & (~d)) | ((~a)&b&(~d)));

endmodule

`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire two_wire1;
    wire two_wire2;
    
    
    assign two_wire1 = a & b;
    assign two_wire2 = c & d;
    
    assign out = two_wire1 | two_wire2;
    
    assign out_n = ~out;

endmodule

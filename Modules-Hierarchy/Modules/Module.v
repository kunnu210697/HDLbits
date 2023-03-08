module top_module ( input a, input b, output out );
    //mod_a m1(.in1(a), .in2(b), .out(out));
    mod_a m2(a, b, out);
    
endmodule

module mt2015_q4a(input x, input y, output z);
    assign z = (x^y) & x;
endmodule

module mt2015_q4b( input x, input y, output z );
    always@(*)begin
        if(x == y)
            z = 1;
        else
            z = 0;
    end
endmodule
    
module top_module (input x, input y, output z);
    wire z1, z2, z3, z4;
    wire w1, w2;
    mt2015_q4a IA1(x, y, z1);
    mt2015_q4a IA2(x, y, z2);
    mt2015_q4b IB1(x, y, z3);
    mt2015_q4b IB2(x, y, z4);
    
    assign w1 = z1 | z2;
    assign w2 = z3 & z4;
    assign z = w1 ^ w2;
    
    

endmodule

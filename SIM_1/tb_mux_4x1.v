`timescale 1ns / 1ps

module tb_mux_4x1(

    );
    reg a,b,c,d,s1,s2;
    wire y;
    
    mux_4x1 uut(a, b, c, d, s1, s2, y);
    initial begin
     // Set data inputs
    a = 1; b = 0; c = 1; d = 1;

    // Test each select combination
    s1 = 0; s2 = 0; 
    #10   // y = a
    s1 = 0; s2 = 1; 
    #10   // y = b
    s1 = 1; s2 = 0; 
    #10   // y = c
    s1 = 1; s2 = 1; 
    #10   // y = d

    $finish;
end
endmodule

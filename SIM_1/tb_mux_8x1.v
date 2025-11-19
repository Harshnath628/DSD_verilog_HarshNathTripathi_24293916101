`timescale 1ns / 1ps

module tb_mux_8x1(

    );
    reg x1, x2, x3, x4, x5, x6, x7, x8;
    reg s1, s2, s3;
    wire y;
    
    mux_8x1 uut(x1, x2, x3, x4, x5, x6, x7, x8, s1, s2, s3, y);
    
    initial begin
        // Set data inputs
        x1 = 0; 
        x2 = 1; 
        x3 = 0; 
        x4 = 1; 
        x5 = 1; 
        x6 = 0; 
        x7 = 1; 
        x8 = 0;

        // Test each select combination
        s1 = 0; s2 = 0; s3 = 0; #10;  // y = x1
        s1 = 0; s2 = 0; s3 = 1; #10;  // y = x2
        s1 = 0; s2 = 1; s3 = 0; #10;  // y = x3
        s1 = 0; s2 = 1; s3 = 1; #10;  // y = x4
        s1 = 1; s2 = 0; s3 = 0; #10;  // y = x5
        s1 = 1; s2 = 0; s3 = 1; #10;  // y = x6
        s1 = 1; s2 = 1; s3 = 0; #10;  // y = x7
        s1 = 1; s2 = 1; s3 = 1; #10;  // y = x8

        $finish;
    end

endmodule

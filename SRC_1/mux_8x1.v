`timescale 1ns / 1ps

module mux_8x1(
    input x1, x2, x3, x4, x5, x6, x7, x8,
    input s1, s2, s3,
    output reg y
);

    always @(*) begin
        if      (s1==0 && s2==0 && s3==0) y = x1;
        else if (s1==0 && s2==0 && s3==1) y = x2;
        else if (s1==0 && s2==1 && s3==0) y = x3;
        else if (s1==0 && s2==1 && s3==1) y = x4;
        else if (s1==1 && s2==0 && s3==0) y = x5;
        else if (s1==1 && s2==0 && s3==1) y = x6;
        else if (s1==1 && s2==1 && s3==0) y = x7;
        else                               y = x8;
    end

endmodule

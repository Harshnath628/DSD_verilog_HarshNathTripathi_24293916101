`timescale 1ns / 1ps


module mux_4x1(
input a,b,c,d,
input s1,s2,
output reg y

    );
    always @(*)begin
        if (s1==0 &&s2==0) y=a;
        else if (s1==0 && s2==1) y=b;
        else if (s1==1 && s2==0) y=c;
        else y=d;
    end
endmodule

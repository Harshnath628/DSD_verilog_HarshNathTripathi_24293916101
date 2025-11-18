`timescale 1ns / 1ps


module tb_nor(

    );
    reg a,b;
    wire res;
    nor_gate uut(a,b,res);
    initial begin
    a=0;b=0;
    #10
    a=0;b=1;
    #10
    a=1;b=0;
    #10
    a=1;b=1;
    #10
    $finish;
    end
endmodule

`timescale 1ns / 1ps


module nand_gate(
input a,b,
output res
    );
    assign res=~(a&b);
endmodule

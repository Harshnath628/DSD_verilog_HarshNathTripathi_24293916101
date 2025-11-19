`timescale 1ns / 1ps


module boolean(
input a,b,
output res    );
assign res=~(a|b)|~(a^b);
endmodule

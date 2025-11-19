`timescale 1ns / 1ps


module decoder(
input a,b,
output l,m,n,o
    );
assign l=(~a)&(~b);
assign m=(~a)&b;
assign n=a&(~b);
assign o=a&b;
endmodule
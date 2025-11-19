`timescale 1ns / 1ps

module Half_Subtractor(
    input a, b,
    output diff, borrow
);

assign diff   = a ^ b;  
assign borrow = (~a) & b; 

endmodule

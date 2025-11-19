`timescale 1ns / 1ps

module Full_Adder(
    input a, b, cin,
    output sum, carry
);

assign sum   = a ^ b ^ cin;               // XOR for sum
assign carry = (a & b) | cin&(a^b);  // A B + C-IN (A ⊕ B)

endmodule

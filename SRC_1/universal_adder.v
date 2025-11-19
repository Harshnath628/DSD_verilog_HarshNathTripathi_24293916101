`timescale 1ns / 1ps
module universal_adder(
    input  [3:0] A,
    input  [3:0] B,
    input        MODE,       // 0 = Add, 1 = Subtract
    output [3:0] RESULT,
    output       CARRY_BORROW  // Carry for addition / Borrow for subtraction
);

wire [3:0] B_mod;
wire       Cin;

// For ADD: B_mod = B, Cin = 0
// For SUB: B_mod = ~B, Cin = 1   (2's complement subtraction)
assign B_mod = MODE ? ~B : B;
assign Cin   = MODE; 

assign {CARRY_BORROW, RESULT} = A + B_mod + Cin;

endmodule

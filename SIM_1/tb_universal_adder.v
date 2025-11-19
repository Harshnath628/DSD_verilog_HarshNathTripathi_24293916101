`timescale 1ns / 1ps
module tb();

reg  [3:0] A, B;
reg        MODE;
wire [3:0] RESULT;
wire       CARRY_BORROW;

universal_adder uut(A, B, MODE, RESULT, CARRY_BORROW);



initial begin
    // Test 1: Add 5 + 3 = 8
    MODE = 0; A = 4'b0101; B = 4'b0011;
    #10;

    // Test 2: Add 7 + 9 = Carry
    MODE = 0; A = 4'b0111; B = 4'b1001;
    #10;

    // Test 3: Sub 9 - 2 = 7
    MODE = 1; A = 4'b1001; B = 4'b0010;
    #10;

    // Test 4: Sub 4 - 9 = negative → borrow
    MODE = 1; A = 4'b0100; B = 4'b1001;
    #10;

    $finish;
end

endmodule

`timescale 1ns / 1ps
module tb;

reg D, CLK, RESET;
wire Q;
D_ff uut(
    D,CLK,RESET,Q
);
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;   
end
initial begin
    RESET = 1;
    D = 0;
    #10;

    RESET = 0;
    D = 1;   #10;
    D = 0;   #10;
    D = 1;   #10;

    RESET = 1;   #8;
    RESET = 0;   #12;

    D = 0;   #10;
    D = 1;   #10;

    $finish;
end

endmodule

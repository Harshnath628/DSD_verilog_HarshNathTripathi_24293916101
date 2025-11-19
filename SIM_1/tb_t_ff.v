`timescale 1ns / 1ps
module tb_t_ff();

reg T, CLK, RESET;
wire Q;

T_ff uut(T, CLK, RESET, Q);

initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial begin
    RESET = 1;
    T = 0;
    #12;

    RESET = 0;

    T = 1;
    #10;

    T = 0;
    #10;

    T = 1;
    #10;

    T = 1;
    #10;

    $finish;
end

endmodule

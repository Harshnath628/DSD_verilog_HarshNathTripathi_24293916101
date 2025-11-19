`timescale 1ns / 1ps
module T_ff(
    input T,
    input CLK,
    input RESET,
    output reg Q
);

always @(posedge CLK or posedge RESET) begin
    if (RESET)
        Q <= 1'b0;
    else if (T)
        Q <= ~Q;
    else
        Q <= Q;
end

endmodule

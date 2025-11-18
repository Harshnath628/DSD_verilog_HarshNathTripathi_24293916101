`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 08:26:15 PM
// Design Name: 
// Module Name: tb_not
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_not(

    );
    reg a;
    wire res;
    not_gate uut(a,res);
    initial begin
    a=0;
    #10
    a=1;
    #10
    $finish;
    end
endmodule

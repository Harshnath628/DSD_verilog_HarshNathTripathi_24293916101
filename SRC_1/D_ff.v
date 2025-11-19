`timescale 1ns / 1ps 
module D_ff( 
input  D, 
input  CLK, 
input  RESET, 
output reg Q 
); 
always @(posedge CLK or posedge RESET) begin 
if (RESET) 
Q <= 1'b0;      
else 
Q <= D;        
end 
endmodule
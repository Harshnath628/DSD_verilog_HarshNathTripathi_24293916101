`timescale 1ns / 1ps 
module sr_ff( 
input  S, R, CLK, 
output reg Q, 
output Qbar 
); 
assign Qbar = ~Q;  
always @(posedge CLK) begin 
    case ({S, R}) 
    2'b10: Q <= 1'b1;   
    2'b01: Q <= 1'b0;   
    2'b00: Q <= Q;       
    2'b11: Q <= 1'bx;    
    endcase 
end 
endmodule
`timescale 1ns / 1ps

module Full_Subtractor(
    input a, b, bin,
    output diff, bout
);

assign diff = a ^ b ^ bin;
assign bout = (bin & ~(a ^ b)) | (~a & b);

endmodule

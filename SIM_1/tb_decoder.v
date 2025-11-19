`timescale 1ns / 1ps


module decoder_test(

    );
reg a,b;
wire l,m,n,o;
decoder uut(a,b,l,m,n,o);
initial begin
a=0;b=0;#10;
a=0;b=1;#10;
a=0;b=1;#10;
a=1;b=1;#10;
$finish;
end
endmodule
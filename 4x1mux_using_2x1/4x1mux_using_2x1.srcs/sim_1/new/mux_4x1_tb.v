`timescale 1ns / 1ps
module mux4x1_tb;
reg I1,I2,I3,I4,S0,S1;
wire Y;
mux4x1 uut(
.I1(I1),
.I2(I2),
.I3(I3),
.I4(I4),
.S0(S0),
.S1(S1),
.Y(Y)
); 
initial begin
        I1=1; I2=1; I3=0; I4=1;
        S0 = 0; S1 = 0; #10;
        S0 = 0; S1 = 1; #10;
        S0 = 1; S1 = 0; #10;
        S0 = 1; S1 = 1; #10;
        $finish;
end  
endmodule

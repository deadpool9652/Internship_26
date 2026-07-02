`timescale 1ns / 1ps
module mux_2x1(
input i0,i1,s,
output y
 );
 assign y = (~s&i0)| (s&i1);
endmodule

module mux4x1(
input I1,I2,I3,I4,S0,S1,
output Y
);
wire w1,w2;
mux_2x1 m1(I1,I2,S0,w1);
mux_2x1 m2(I2,I3,S0,w2);
mux_2x1 m3(w1,w2,S1,Y);
endmodule
`timescale 1ns / 1ps
module comparator(
input a,b,
output y1,y2,y3
);
assign y1 = ~(a ^ b);
assign y2 = (a&~b);
assign y3 = (~a&b);
endmodule

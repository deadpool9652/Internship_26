`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2026 11:36:17
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder;
reg A;
reg B;
reg Cin;
wire Cout;
wire sum;
full_adder uut(
.A(A),
.B(B),
.Cin(Cin),
.Cout(Cout),
.sum(sum)
);
initial begin 
    A=0; B=0; Cin=0; #10;
    A=0; B=0; Cin=1; #10;
    A=0; B=1; Cin=0; #10;
    A=0; B=1; Cin=1; #10;
    A=1; B=0; Cin=0; #10;
    A=1; B=0; Cin=0; #10;
    A=1; B=1; Cin=0; #10;
    A=1; B=1; Cin=1; #10;
    $finish;
end 
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2022 10:27:25 AM
// Design Name: 
// Module Name: state11
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


module state11(
input rst,
input en,
output [1:0] bit_out_7,
output [1:0] bit_out_8,
output reg_out7,
output reg_out8
    );
assign bit_out_7 = 2'b01;
assign bit_out_8 = 2'b10;
assign reg_out7 = 0;
assign reg_out8 = 1;
endmodule


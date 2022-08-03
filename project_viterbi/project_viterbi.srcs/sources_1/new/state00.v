`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2022 10:16:39 AM
// Design Name: 
// Module Name: state00
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


module state00(
input rst,
input en,
output [1:0] bit_out_1,
output [1:0] bit_out_2,
output reg_out1,
output reg_out2
    );
assign bit_out_1 = 2'b00;
assign bit_out_2 = 2'b11;
assign reg_out1 = 0;
assign reg_out2 = 1;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2022 09:43:16 PM
// Design Name: 
// Module Name: comparer_4
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


module comparer_4(
input clk,
input rst,
input en,
input [1:0] count6,
input [1:0] count8,
input reg_out6,
input reg_out8,
input [4:0] differsum3,
input flag,
output reg [4:0] differsum4,
output reg [7:0] mem_reg_4,
output reg [15:0] pre_state_4 
    );
reg [2:0] i;
reg [4:0] k;
reg [4:0] k_dl;
reg flag_compare;
always @(posedge clk)
begin
if(rst)
begin
    differsum4 <= 5'd0;
    pre_state_4 = 16'b0000000000000000;
    i <= 3'd7;
    mem_reg_4 <= 8'b00000000;
    flag_compare <= 0;
end
else
begin
    flag_compare <= flag;
begin
if(flag_compare == 0)
begin
    if(!en)
begin
    differsum4 <= 5'd0;
    pre_state_4 = 16'b0000000000000000;
    i <= 3'd7;
    mem_reg_4 <= 8'b00000000;
    flag_compare <= 0;
end
else
begin
     if(i >= 0)
        begin
           k <= 2 *i + 1;
           k_dl <= k;
           if(differsum3 + count6 <= differsum4 + count8)
           begin
              differsum4 <= differsum3 + count6;
              mem_reg_4[i] <= reg_out6;
              pre_state_4[k_dl] <= 1;
              pre_state_4[k_dl - 1] <= 0;
           end
           else
           begin
              differsum4 <= differsum4 + count8;
              mem_reg_4[i] <= reg_out8;
              pre_state_4[k_dl] <= 1;
              pre_state_4[k_dl - 1] <= 1;
           end
           i <= i - 1;
         end
         else
         begin
            flag_compare <= 1;
         end
end
end
else
begin
    //differsum4 <= 5'd0;
    //pre_state_4 = 16'b0000000000000000;
    i <= 3'd7;
    //mem_reg_4 <= 8'b00000000;
end
end
end
end
endmodule
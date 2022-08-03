`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2022 10:39:12 AM
// Design Name: 
// Module Name: compare_1
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


module compare_1(
input clk,
input rst,
input en,
input [1:0] count1,
input [1:0] count3,
input reg_out1,
input reg_out3,
input [4:0] differsum2,
input flag,
output reg [4:0] differsum1,
output reg [7:0] mem_reg_1,
output reg [15:0] pre_state_1
    );
reg [2:0] i;
reg [4:0] k;
reg [4:0] k_dl;
reg flag_compare;
always @(posedge clk)
begin
if(rst)
begin
    differsum1 <= 5'd0;
    //pre_state_1 = 16'b0000000000000000;
    pre_state_1 = 16'bxxxxxxxxxxxxxxxx;
    i <= 3'd7;
    mem_reg_1 <= 8'b00000000;
    flag_compare <= 0;
    //k <= 4'd15;
end
else
begin
    flag_compare <= flag;
if(flag_compare == 0)
begin
    if(!en)
    begin
        differsum1 <= 5'd0;
        //pre_state_1 = 16'b0000000000000000;
        pre_state_1 = 16'bxxxxxxxxxxxxxxxx;
        i <= 3'd7;
        mem_reg_1 <= 8'b00000000;
        flag_compare <= 0;
        //k <= 4'd15;
    end
    else
    begin
         if(i >= 0)
         begin
            k <= i*2 + 1;
            k_dl <= k;
            //k <= 4'd15;
            if(differsum1 + count1 <= differsum2 + count3)
            begin
            differsum1 <= differsum1 + count1;
            mem_reg_1[i] <= reg_out1;
            pre_state_1[k_dl] <= 0;
            pre_state_1[k_dl - 1] <= 0;
            end
         else
         begin
            differsum1 <= differsum2 + count3;
            mem_reg_1[i] <= reg_out3;
            pre_state_1[k_dl] <= 0;
            pre_state_1[k_dl-1] <= 1;
         end
            i <= i - 1;
            //k <= k - 2;
         end
      else
      begin
      flag_compare <= 1;
      end
    end
end
else
begin
    //differsum1 <= 5'd0;
    //pre_state_1 = 16'b0000000000000000;
    //pre_state_1 = 16'bxxxxxxxxxxxxxxxx;
    i <= 3'd7;
    //mem_reg_1 <= 8'b00000000;
end
end
end
endmodule

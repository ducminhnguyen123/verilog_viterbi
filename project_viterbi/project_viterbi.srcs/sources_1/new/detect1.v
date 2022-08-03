`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2022 08:18:56 PM
// Design Name: 
// Module Name: detect1
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


module detect1(
input clk,
input rst,
input en,
input flag,
input [1:0] bit_in,
input [1:0] bit_out_1,
input [1:0] bit_out_3,
output reg [1:0] count1,
output reg [1:0] count3
    );
reg flag_detect;
always @(posedge clk)
begin
    if(rst)
    begin
        count1 <= 0;
        count3 <= 0;
    end
    else
    begin
        flag_detect <= flag;
    if(flag_detect == 0)
    begin
        if(!en)
        begin
            count1 <= 0;
            count3 <= 0;
        end
        else
        begin
            case(bit_in)
            2'b00:
            begin
                count1 <= 2'd0;
                count3 <= 2'd2;
            end
            2'b01:
            begin
                count1 <= 2'd1;
                count3 <= 2'd1;
            end
            2'b10:
            begin
                count1 <= 2'd1;
                count3 <= 2'd1;
            end
            default:
            begin
                count1 <= 2'd2;
                count3 <= 2'd0;
            end
            endcase
        end
    end
    else
    begin
        count1 <= 0;
        count3 <= 0;
    end
end
end
endmodule

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


module detect2(
input clk,
input rst,
input en,
input flag,
input [1:0] bit_in,
input [1:0] bit_out_5,
input [1:0] bit_out_7,
output reg [1:0] count5,
output reg [1:0] count7
    );
reg flag_detect;
always @(posedge clk)
begin
    if(rst)
    begin
        count5 <= 0;
        count7 <= 0;
    end
    else
    begin
        flag_detect <= flag;
    if(flag_detect == 0)
    begin
        if(!en)
        begin
            count5 <= 0;
            count7 <= 0;
        end
        else
        begin
            case(bit_in)
            2'b00:
            begin
                count5 <= 2'd1;
                count7 <= 2'd1;
            end
            2'b01:
            begin
                count5 <= 2'd2;
                count7 <= 2'd0;
            end
            2'b10:
            begin
                count5 <= 2'd0;
                count7 <= 2'd2;
            end
            default:
            begin
                count5 <= 2'd1;
                count7 <= 2'd1;
            end
            endcase
        end
    end
    else
    begin
        count5 <= 0;
        count7 <= 0;
    end
end
end
endmodule

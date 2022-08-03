`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2022 10:20:35 PM
// Design Name: 
// Module Name: control
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


module control(
input clk,
input rst,
input en,
output reg flag
    );
reg [5:0] count;
always @(posedge clk)
if(rst)
begin
    count <= 0;
    flag <= 0;
end
else
begin
    if(!en)
    begin
        count <= 0;
        flag <= 0;
    end
    else 
    begin
        if(count <= 7)
        begin
            flag <= 0;
            count = count + 1;
        end
        else 
        begin
            flag <= 1;
        end
    end
end
endmodule

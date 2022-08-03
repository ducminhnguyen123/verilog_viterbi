`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2022 08:26:55 AM
// Design Name: 
// Module Name: splitstring
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


module splitstring(
input rst,
input clk,
input en,
input [15:0] data_in,
input flag,
output reg [1:0] bit_in
   );
reg [4:0] i;
reg flag_split;
always @(posedge clk, posedge rst)
begin
flag_split <= flag;
if(rst)
begin
     bit_in <= 2'b00;
     i <= 15;
end
else
begin
    if (flag_split == 1)
    begin
        bit_in <= 2'b00;
        i <= 15;
    end
    else
        if (!en)
        begin
            bit_in <= 2'b00;
            i <= 15;
        end
        else
        begin
            if(i >= 0)
            begin
                i <= i - 2;
                bit_in[1] <= data_in[i];
                bit_in[0] <= data_in[i-1];
            end
            else
            begin
                i <= 15;
                bit_in[1] <= 0;
                bit_in[0] <= 0;
            end
        end
    end
end   

endmodule

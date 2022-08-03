`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2022 09:26:28 AM
// Design Name: 
// Module Name: tb_splitstring
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


module tb_splitstring(
    );
reg rst;
reg clk;
reg en;
reg [15:0] data_in;
wire done;
wire [7:0] mem_out;
decode_wrapper decode_i
       (.clk(clk),
        .data_in(data_in),
        .done(done),
        .en(en),
        .mem_out(mem_out),
        .rst(rst));
initial
begin
    clk = 0;
end
initial
begin
    en = 0;
    rst = 0;
    #10 
    en = 1;
    data_in = 16'b0010000000111011;
end
always #1 clk = ~clk;
endmodule

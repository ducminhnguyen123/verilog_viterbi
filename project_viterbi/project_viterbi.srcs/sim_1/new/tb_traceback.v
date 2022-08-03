`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2022 07:20:42 PM
// Design Name: 
// Module Name: tb_traceback
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


module tb_traceback(

    );
reg [4:0] differsum1;
reg [7:0] mem_reg_1;
reg [1:0] pre_state1;
reg [4:0] differsum2;
reg [7:0] mem_reg_2;
reg [1:0] pre_state2;
reg [4:0] differsum3;
reg [7:0] mem_reg_3;
reg [1:0] pre_state3;
reg [4:0] differsum4;
reg [7:0] mem_reg_4;
reg [1:0] pre_state4;
reg flag;
wire [7:0] mem_out;
wire done;
traceback trace(.differsum1(differsum1), .differsum2(differsum2), .differsum3(differsum3), .differsum4(differsum4), 
                .mem_reg_1(mem_reg_1), .mem_reg_2(mem_reg_2), .mem_reg_3(mem_reg_3), .mem_reg_4(mem_reg_4), .pre_state1(pre_state1),
                .pre_state2(pre_state2), .pre_state3(pre_state3), .pre_state4(pre_state4), .flag(flag), .mem_out(mem_out), .done(done));
initial
begin
     flag = 1;
     differsum1 = 5'd15;
     mem_reg_1 = 8'b01010101;
     pre_state1 = 2'b00;
     differsum2 = 5'd17;
     mem_reg_2 = 8'b11100110;
     pre_state2 = 2'b01;
     differsum3 = 5'd16;
     mem_reg_3 = 8'b00111100;
     pre_state3 = 2'b10;
     differsum4 = 5'd18;
     mem_reg_4 = 8'b11000011;
     pre_state4 = 2'b11;
end 
endmodule

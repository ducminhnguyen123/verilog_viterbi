`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2022 09:39:26 PM
// Design Name: 
// Module Name: traceback
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


module traceback(
input clk,
input rst,
input en,
input [4:0] differsum1,
input [7:0] mem_reg_1,
input [15:0] pre_state1,
input [4:0] differsum2,
input [7:0] mem_reg_2,
input [15:0] pre_state2,
input [4:0] differsum3,
input [7:0] mem_reg_3,
input [15:0] pre_state3,
input [4:0] differsum4,
input [7:0] mem_reg_4,
input [15:0] pre_state4,
input flag,
output reg [7:0] mem_out,
output reg done
    );
wire [4:0] A[3:0];
wire [1:0] B[3:0];
reg [1:0] cur_state = 0;
reg [4:0] min; 
reg [1:0] count = 0;
reg [3:0] i = 0;
reg [4:0] k = 0;
reg flag_dl;
reg [7:0] pre_mem_out;
assign A[3] = (flag_dl == 1)?differsum1:A[3];
assign A[2] = (flag_dl == 1)?differsum2:A[2];
assign A[1] = (flag_dl == 1)?differsum3:A[1];
assign A[0] = (flag_dl == 1)?differsum4:A[0];
assign B[3] = 2'b00;
assign B[2] = 2'b01;
assign B[1] = 2'b10;
assign B[0] = 2'b11;
always @(posedge clk)
begin
    flag_dl <= flag;
end
always @(posedge clk)
if(rst)
begin
    done <= 0;
    //mem_out <= 8'b00000000;
    pre_mem_out <= 8'bxxxxxxxx;
    mem_out <= 8'bxxxxxxxx;
    count <= 2'd3;
    min <= A[3];
    i <= 0;
end
else  
begin
    if(!en)
    begin
        done <= 0;
        //mem_out <= 8'b00000000;
        pre_mem_out <= 8'bxxxxxxxx;
        mem_out <= 8'bxxxxxxxx;
        count <= 2'd3;
        min <= A[3];
        i <= 0;
    end
    else
        if(flag_dl)
        begin
            if(count >= 0)
            begin
                if(min <= A[count])
                begin
                    min <= min;
                    cur_state <= B[3];
                end
                else
                begin
                    min <= A[count];
                    cur_state <= B[count];
                end
                count <= count - 1;
            end
            else
            begin
                min <= A[count];
                cur_state <= B[count];
            end
        
        if(i <= 7)
        begin
            k = i * 2 + 1;
            done <= 0;
            case(cur_state)
            2'b00:
            begin
                pre_mem_out[i] <= mem_reg_1[i];
                cur_state[1] <= pre_state1[k];
                cur_state[0] <= pre_state1[k - 1];
            end
            2'b01:
            begin
                pre_mem_out[i] <= mem_reg_2[i];
                cur_state[1] <= pre_state2[k];
                cur_state[0] <= pre_state2[k - 1];
            end
            2'b10:
            begin
                pre_mem_out[i] <= mem_reg_3[i];
                cur_state[1] <= pre_state3[k];
                cur_state[0] <= pre_state3[k - 1];
            end
            default:
            begin
                pre_mem_out[i] <= mem_reg_4[i];
                cur_state[1] <= pre_state4[k];
                cur_state[0] <= pre_state4[k - 1];
            end
            endcase
            i <= i + 1;
        end
        else
        begin
            done <= 1;
            mem_out <= pre_mem_out;
        end
    end
        else
        begin
            done <= 0;
            //mem_out <= 8'b00000000;
            pre_mem_out <= 8'bxxxxxxxx;
            mem_out <= 8'bxxxxxxxx;
            count <= 2'd3;
        end
end

endmodule

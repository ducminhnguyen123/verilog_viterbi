module compare_3(
input clk,
input rst,
input en,
input [1:0] count2,
input [1:0] count4,
input reg_out2,
input reg_out4,
input [4:0] differsum1,
input [4:0] differsum2,
input flag,
output reg [4:0] differsum3,
output reg [7:0] mem_reg_3,
output reg [15:0] pre_state_3
    );
reg [2:0] i;
reg [4:0] k;
reg [4:0] k_dl;
reg flag_compare;
always @(posedge clk)
begin
if(rst)
begin
    differsum3 <= 5'd0;
    pre_state_3 = 16'b0000000000000000;
    i <= 3'd7;
    mem_reg_3 <= 8'b00000000;
    flag_compare <= 0;
end
else
begin
    flag_compare <= flag;
if(flag_compare == 0)
begin
    if(!en)
begin
    differsum3 <= 5'd0;
    pre_state_3 = 16'b0000000000000000;
    i <= 3'd7;
    mem_reg_3 <= 8'b00000000;
    flag_compare <= 0;
end
else
begin
     if(i >= 0)
        begin
        k <= 2 * i + 1;
        k_dl <= k;
           if(differsum1 + count2 <= differsum2 + count4)
           begin
              differsum3 <= differsum1 + count2;
              mem_reg_3[i] <= reg_out2;
              pre_state_3[k_dl] <= 0;
              pre_state_3[k_dl - 1] <= 0;
           end
           else
           begin
              differsum3 <= differsum2 + count4;
              mem_reg_3[i] <= reg_out4;
              pre_state_3[k_dl] <= 0;
              pre_state_3[k_dl - 1] <= 1;
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
//differsum3 <= 5'd0;
    //pre_state_3 = 16'b0000000000000000;
    i <= 3'd7;
    //mem_reg_3 <= 8'b00000000;
end
end
end
endmodule
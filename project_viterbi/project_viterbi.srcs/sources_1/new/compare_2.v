module compare_2(
input clk,
input rst,
input en,
input [1:0] count5,
input [1:0] count7,
input reg_out5,
input reg_out7,
input flag,
input [4:0] differsum3,
input [4:0] differsum4,
output reg [4:0] differsum2,
output reg [7:0] mem_reg_2,
output reg [15:0] pre_state_2
    );
reg [2:0] i;
reg [4:0] k;
reg [4:0] k_dl;
reg flag_compare;
always @(posedge clk)
begin
if(rst)
begin
    differsum2 <= 5'd0;
    pre_state_2 = 16'b0000000000000000;
    i <= 3'd7;
    mem_reg_2 <= 8'b00000000;
    flag_compare <= 0;
end
else
begin
    flag_compare <= flag;
if(flag_compare == 0)
begin
    if(!en)
begin
    differsum2 <= 5'd0;
    pre_state_2 = 16'b0000000000000000;
    i <= 3'd7;
    mem_reg_2 <= 8'b00000000;
    flag_compare <= 0;
end
else
begin
     if(i >= 0)
        begin
        k <= i * 2 + 1;
        k_dl <= k;
           if(differsum3 + count5 <= differsum4 + count7)
           begin
              differsum2 <= differsum3 + count5;
              mem_reg_2[i] <= reg_out5;
              pre_state_2[k_dl] <= 1;
              pre_state_2[k_dl - 1] <= 0;
           end
           else
           begin
              differsum2 <= differsum4 + count7;
              mem_reg_2[i] <= reg_out7;
              pre_state_2[k_dl] <= 1;
              pre_state_2[k_dl - 1] <= 1;
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
    //differsum2 <= 5'd0;
    //pre_state_2 = 16'b0000000000000000;
    i <= 3'd7;
    //mem_reg_2 <= 8'b00000000;
end
end
end
endmodule
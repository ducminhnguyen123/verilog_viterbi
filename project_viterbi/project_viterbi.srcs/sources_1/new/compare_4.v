module compare_4(
input clk,
input en,
input [1:0] bit_in,
input [1:0] bit_out_6,
input [1:0] bit_out_8,
input reg_out6,
input reg_out8,
input [4:0] differsum3,
input flag,
output reg [4:0] differsum4,
output reg [7:0] mem_reg_4,
output reg [15:0] pre_state_4 
    );
reg [4:0] dif3;
reg [4:0] dif4;
reg [1:0] count6;
reg [1:0] count8;
reg [2:0] i;
reg [4:0] k;
reg flag_compare;
always @(posedge clk)
begin
flag_compare <= flag;
begin
if(flag_compare == 1)
begin
    if(!en)
begin
    differsum4 <= 5'd0;
    pre_state_4 = 16'b0000000000000000;
    count6 <= 0;
    count8 <= 0;
    i <= 3'd7;
    dif3 <= differsum3 + count6;
    dif4 <= differsum4 + count8;
    mem_reg_4 <= 8'b00000000;
end
else
begin
    case(bit_in)
    2'b00:
    begin
        count6 <= 2'd1;
        count8 <= 2'd1;
        dif3 <= differsum3 + count6;
        dif4 <= differsum4 + count8;
     end
     2'b01:
     begin
         count6 <= 2'd0;
         count8 <= 2'd2;
         dif3 <= differsum3 + count6;
         dif4 <= differsum4 + count8;
     end
     2'b10:
     begin
         count6 <= 2'd2;
         count8 <= 2'd0;
         dif3 <= differsum3 + count6;
         dif4 <= differsum4 + count8;
     end
     default:
     begin
         count6 <= 2'd1;
         count8 <= 2'd1;
         dif3 <= differsum3 + count6;
         dif4 <= differsum4 + count8;
     end
     endcase
     if(i >= 0)
        begin
           k = 2 *i + 1;
           if(dif3 <= dif4)
           begin
              differsum4 <= dif3;
              mem_reg_4[i] <= reg_out6;
              pre_state_4[k] <= 1;
              pre_state_4[k - 1] <= 0;
           end
           else
           begin
              differsum4 <= dif4;
              mem_reg_4[i] <= reg_out8;
              pre_state_4[k] <= 1;
              pre_state_4[k - 1] <= 1;
           end
           i <= i - 1;
         end
         else
         begin
            flag_compare <= 0;
         end
end
end
else
begin
    differsum4 <= 5'd0;
    pre_state_4 = 16'b0000000000000000;
    count6 <= 0;
    count8 <= 0;
end
end
end
endmodule
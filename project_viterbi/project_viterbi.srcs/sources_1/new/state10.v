module state10(
input rst,
input en,
output [1:0] bit_out_5,
output [1:0] bit_out_6,
output reg_out5,
output reg_out6
    );
assign bit_out_5 = 2'b10;
assign bit_out_6 = 2'b01;
assign reg_out5 = 0;
assign reg_out6 = 1;
endmodule
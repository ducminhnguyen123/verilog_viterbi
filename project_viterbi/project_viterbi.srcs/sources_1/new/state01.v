module state01(
input rst,
input en,
output [1:0] bit_out_3,
output [1:0] bit_out_4,
output reg_out3,
output reg_out4
    );
assign bit_out_3 = 2'b11;
assign bit_out_4 = 2'b00;
assign reg_out3 = 0;
assign reg_out4 = 1;
endmodule
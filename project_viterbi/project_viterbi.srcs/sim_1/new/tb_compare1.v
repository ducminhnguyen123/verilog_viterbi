`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2022 11:26:46 AM
// Design Name: 
// Module Name: tb_compare1
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


module tb_compare1(
    );
reg rst;
reg clk;
reg en;
reg [15:0] data_in;
wire done;
wire [7:0] mem_out;
reg [11:0] index;
integer file_outputs; 
viter_wrapper viter_i
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
/*initial
begin
    en = 0;
    rst = 1;
    #10
    rst = 0;
    en = 1;
    //data_in = 16'b0010000000111011;
    data_in = 16'b0000000011000111;
end*/
reg [15:0] in_ram [0:1024];

always @ (posedge done )begin
    begin
        index <= index+1;
        data_in <= in_ram [index];
       $fwrite(file_outputs, "%b\n", mem_out);
       if(index >=1025)begin
        $fclose(file_outputs);
        $finish;
       end
	   #1 rst = 1;
	   #5 rst = 0;
    end
    end


     initial begin
        clk =0;
        rst =1;
        en =0;
        index <=1;
        $readmemb("F:/verilog/tb_viterbi/input.txt", in_ram);
        file_outputs = $fopen("F:/verilog/tb_viterbi/tb_output.txt", "w");
        data_in =in_ram[0];
        #100 rst=0;
        #20 en=1;
     end 
always #1 clk = ~clk;
endmodule

//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Fri Jul 22 21:36:51 2022
//Host        : DESKTOP-R78F55E running 64-bit major release  (build 9200)
//Command     : generate_target decode_wrapper.bd
//Design      : decode_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decode_wrapper
   (clk,
    data_in,
    done,
    en,
    mem_out,
    rst);
  input clk;
  input [15:0]data_in;
  output done;
  input en;
  output [7:0]mem_out;
  input rst;

  wire clk;
  wire [15:0]data_in;
  wire done;
  wire en;
  wire [7:0]mem_out;
  wire rst;

  decode decode_i
       (.clk(clk),
        .data_in(data_in),
        .done(done),
        .en(en),
        .mem_out(mem_out),
        .rst(rst));
endmodule

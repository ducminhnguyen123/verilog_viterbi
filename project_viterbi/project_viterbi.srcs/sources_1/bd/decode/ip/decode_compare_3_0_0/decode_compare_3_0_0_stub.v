// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jul 22 22:40:04 2022
// Host        : DESKTOP-R78F55E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/verilog/project_viterbi/project_viterbi.srcs/sources_1/bd/decode/ip/decode_compare_3_0_0/decode_compare_3_0_0_stub.v
// Design      : decode_compare_3_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "compare_3,Vivado 2018.3" *)
module decode_compare_3_0_0(clk, rst, en, count2, count4, reg_out2, reg_out4, 
  differsum1, differsum2, flag, differsum3, mem_reg_3, pre_state_3)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,en,count2[1:0],count4[1:0],reg_out2,reg_out4,differsum1[4:0],differsum2[4:0],flag,differsum3[4:0],mem_reg_3[7:0],pre_state_3[15:0]" */;
  input clk;
  input rst;
  input en;
  input [1:0]count2;
  input [1:0]count4;
  input reg_out2;
  input reg_out4;
  input [4:0]differsum1;
  input [4:0]differsum2;
  input flag;
  output [4:0]differsum3;
  output [7:0]mem_reg_3;
  output [15:0]pre_state_3;
endmodule

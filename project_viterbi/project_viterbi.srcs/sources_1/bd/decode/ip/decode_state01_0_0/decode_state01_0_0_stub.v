// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jul 14 09:50:13 2022
// Host        : DESKTOP-R78F55E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/verilog/project_viterbi/project_viterbi.srcs/sources_1/bd/decode/ip/decode_state01_0_0/decode_state01_0_0_stub.v
// Design      : decode_state01_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "state01,Vivado 2018.3" *)
module decode_state01_0_0(rst, en, bit_out_3, bit_out_4, reg_out3, reg_out4)
/* synthesis syn_black_box black_box_pad_pin="rst,en,bit_out_3[1:0],bit_out_4[1:0],reg_out3,reg_out4" */;
  input rst;
  input en;
  output [1:0]bit_out_3;
  output [1:0]bit_out_4;
  output reg_out3;
  output reg_out4;
endmodule

//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Jul 13 09:32:30 2022
//Host        : DESKTOP-R78F55E running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=11,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk,
    data_in,
    done,
    en,
    mem_out,
    rst);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  input [15:0]data_in;
  output done;
  input en;
  output [7:0]mem_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst;

  wire clk_0_1;
  wire [4:0]compare_1_0_differsum1;
  wire [7:0]compare_1_0_mem_reg_1;
  wire [1:0]compare_1_0_pre_state_1;
  wire [4:0]compare_2_0_differsum2;
  wire [7:0]compare_2_0_mem_reg_2;
  wire [1:0]compare_2_0_pre_state_2;
  wire [4:0]compare_3_0_differsum3;
  wire [7:0]compare_3_0_mem_reg_3;
  wire [1:0]compare_3_0_pre_state_3;
  wire [4:0]compare_4_0_differsum4;
  wire [7:0]compare_4_0_mem_reg_4;
  wire [1:0]compare_4_0_pre_state_4;
  wire control_0_flag;
  wire [15:0]data_in_0_1;
  wire en_0_1;
  wire rst_0_1;
  wire [1:0]splitstring_0_bit_in;
  wire [1:0]state00_0_bit_out_1;
  wire [1:0]state00_0_bit_out_2;
  wire state00_0_reg_out1;
  wire state00_0_reg_out2;
  wire [1:0]state01_0_bit_out_3;
  wire [1:0]state01_0_bit_out_4;
  wire state01_0_reg_out3;
  wire state01_0_reg_out4;
  wire [1:0]state10_0_bit_out_5;
  wire [1:0]state10_0_bit_out_6;
  wire state10_0_reg_out5;
  wire state10_0_reg_out6;
  wire [1:0]state11_0_bit_out_7;
  wire state11_0_reg_out7;
  wire [1:0]state11_bit_out_8;
  wire state11_reg_out8;
  wire traceback_0_done;
  wire [7:0]traceback_0_mem_out;

  assign clk_0_1 = clk;
  assign data_in_0_1 = data_in[15:0];
  assign done = traceback_0_done;
  assign en_0_1 = en;
  assign mem_out[7:0] = traceback_0_mem_out;
  assign rst_0_1 = rst;
  design_1_compare_1_0_0 compare_1
       (.bit_in(splitstring_0_bit_in),
        .bit_out_1(state00_0_bit_out_1),
        .bit_out_3(state01_0_bit_out_3),
        .clk(clk_0_1),
        .differsum1(compare_1_0_differsum1),
        .differsum2(compare_2_0_differsum2),
        .en(en_0_1),
        .flag(control_0_flag),
        .mem_reg_1(compare_1_0_mem_reg_1),
        .pre_state_1(compare_1_0_pre_state_1),
        .reg_out1(state00_0_reg_out1),
        .reg_out3(state01_0_reg_out3));
  design_1_compare_2_0_0 compare_2
       (.bit_in(splitstring_0_bit_in),
        .bit_out_5(state10_0_bit_out_5),
        .bit_out_7(state11_0_bit_out_7),
        .clk(clk_0_1),
        .differsum2(compare_2_0_differsum2),
        .differsum3(compare_3_0_differsum3),
        .differsum4(compare_4_0_differsum4),
        .en(en_0_1),
        .flag(control_0_flag),
        .mem_reg_2(compare_2_0_mem_reg_2),
        .pre_state_2(compare_2_0_pre_state_2),
        .reg_out5(state10_0_reg_out5),
        .reg_out7(state11_0_reg_out7));
  design_1_compare_3_0_0 compare_3
       (.bit_in(splitstring_0_bit_in),
        .bit_out_2(state00_0_bit_out_2),
        .bit_out_4(state01_0_bit_out_4),
        .clk(clk_0_1),
        .differsum1(compare_1_0_differsum1),
        .differsum2(compare_2_0_differsum2),
        .differsum3(compare_3_0_differsum3),
        .en(en_0_1),
        .flag(control_0_flag),
        .mem_reg_3(compare_3_0_mem_reg_3),
        .pre_state_3(compare_3_0_pre_state_3),
        .reg_out2(state00_0_reg_out2),
        .reg_out4(state01_0_reg_out4));
  design_1_compare_4_0_0 compare_4
       (.bit_in(splitstring_0_bit_in),
        .bit_out_6(state10_0_bit_out_6),
        .bit_out_8(state11_bit_out_8),
        .clk(clk_0_1),
        .differsum3(compare_3_0_differsum3),
        .differsum4(compare_4_0_differsum4),
        .en(en_0_1),
        .flag(control_0_flag),
        .mem_reg_4(compare_4_0_mem_reg_4),
        .pre_state_4(compare_4_0_pre_state_4),
        .reg_out6(state10_0_reg_out6),
        .reg_out8(state11_reg_out8));
  design_1_control_0_0 control
       (.clk(clk_0_1),
        .flag(control_0_flag));
  design_1_splitstring_0_0 splitstring
       (.bit_in(splitstring_0_bit_in),
        .clk(clk_0_1),
        .data_in(data_in_0_1),
        .en(en_0_1),
        .flag(control_0_flag),
        .rst(rst_0_1));
  design_1_state00_0_0 state00
       (.bit_out_1(state00_0_bit_out_1),
        .bit_out_2(state00_0_bit_out_2),
        .en(en_0_1),
        .reg_out1(state00_0_reg_out1),
        .reg_out2(state00_0_reg_out2),
        .rst(rst_0_1));
  design_1_state01_0_0 state01
       (.bit_out_3(state01_0_bit_out_3),
        .bit_out_4(state01_0_bit_out_4),
        .en(en_0_1),
        .reg_out3(state01_0_reg_out3),
        .reg_out4(state01_0_reg_out4),
        .rst(rst_0_1));
  design_1_state10_0_0 state10
       (.bit_out_5(state10_0_bit_out_5),
        .bit_out_6(state10_0_bit_out_6),
        .en(en_0_1),
        .reg_out5(state10_0_reg_out5),
        .reg_out6(state10_0_reg_out6),
        .rst(rst_0_1));
  design_1_state11_0_0 state11
       (.bit_out_7(state11_0_bit_out_7),
        .bit_out_8(state11_bit_out_8),
        .en(en_0_1),
        .reg_out7(state11_0_reg_out7),
        .reg_out8(state11_reg_out8),
        .rst(rst_0_1));
  design_1_traceback_0_0 traceback
       (.differsum1(compare_1_0_differsum1),
        .differsum2(compare_2_0_differsum2),
        .differsum3(compare_3_0_differsum3),
        .differsum4(compare_4_0_differsum4),
        .done(traceback_0_done),
        .flag(control_0_flag),
        .mem_out(traceback_0_mem_out),
        .mem_reg_1(compare_1_0_mem_reg_1),
        .mem_reg_2(compare_2_0_mem_reg_2),
        .mem_reg_3(compare_3_0_mem_reg_3),
        .mem_reg_4(compare_4_0_mem_reg_4),
        .pre_state1(compare_1_0_pre_state_1),
        .pre_state2(compare_2_0_pre_state_2),
        .pre_state3(compare_3_0_pre_state_3),
        .pre_state4(compare_4_0_pre_state_4));
endmodule

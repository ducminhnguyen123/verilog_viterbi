// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jul 22 22:40:04 2022
// Host        : DESKTOP-R78F55E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/verilog/project_viterbi/project_viterbi.srcs/sources_1/bd/decode/ip/decode_comparer_4_0_0/decode_comparer_4_0_0_sim_netlist.v
// Design      : decode_comparer_4_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "decode_comparer_4_0_0,comparer_4,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "comparer_4,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decode_comparer_4_0_0
   (clk,
    rst,
    en,
    count6,
    count8,
    reg_out6,
    reg_out8,
    differsum3,
    flag,
    differsum4,
    mem_reg_4,
    pre_state_4);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN decode_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input en;
  input [1:0]count6;
  input [1:0]count8;
  input reg_out6;
  input reg_out8;
  input [4:0]differsum3;
  input flag;
  output [4:0]differsum4;
  output [7:0]mem_reg_4;
  output [15:0]pre_state_4;

  wire clk;
  wire [1:0]count6;
  wire [1:0]count8;
  wire [4:0]differsum3;
  wire [4:0]differsum4;
  wire en;
  wire flag;
  wire [7:0]mem_reg_4;
  wire [15:0]pre_state_4;
  wire reg_out6;
  wire reg_out8;
  wire rst;

  decode_comparer_4_0_0_comparer_4 inst
       (.clk(clk),
        .count6(count6),
        .count8(count8),
        .differsum3(differsum3),
        .differsum4(differsum4),
        .en(en),
        .flag(flag),
        .mem_reg_4(mem_reg_4),
        .pre_state_4(pre_state_4),
        .reg_out6(reg_out6),
        .reg_out8(reg_out8),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "comparer_4" *) 
module decode_comparer_4_0_0_comparer_4
   (mem_reg_4,
    pre_state_4,
    differsum4,
    clk,
    reg_out6,
    reg_out8,
    differsum3,
    count6,
    count8,
    en,
    rst,
    flag);
  output [7:0]mem_reg_4;
  output [15:0]pre_state_4;
  output [4:0]differsum4;
  input clk;
  input reg_out6;
  input reg_out8;
  input [4:0]differsum3;
  input [1:0]count6;
  input [1:0]count8;
  input en;
  input rst;
  input flag;

  wire clk;
  wire [1:0]count6;
  wire [1:0]count8;
  wire [4:1]data;
  wire [4:0]differsum3;
  wire [4:0]differsum4;
  wire [4:1]differsum42;
  wire \differsum4[4]_i_11_n_0 ;
  wire \differsum4[4]_i_1_n_0 ;
  wire \differsum4[4]_i_4_n_0 ;
  wire \differsum4[4]_i_6_n_0 ;
  wire \differsum4[4]_i_7_n_0 ;
  wire \differsum4[4]_i_8_n_0 ;
  wire \differsum4[4]_i_9_n_0 ;
  wire en;
  wire flag;
  wire flag_compare;
  wire flag_compare_i_1_n_0;
  wire [2:0]i;
  wire [2:0]i0;
  wire [7:0]mem_reg_4;
  wire \mem_reg_4[0]_i_1_n_0 ;
  wire \mem_reg_4[0]_i_2_n_0 ;
  wire \mem_reg_4[1]_i_1_n_0 ;
  wire \mem_reg_4[1]_i_2_n_0 ;
  wire \mem_reg_4[2]_i_1_n_0 ;
  wire \mem_reg_4[2]_i_2_n_0 ;
  wire \mem_reg_4[3]_i_1_n_0 ;
  wire \mem_reg_4[3]_i_2_n_0 ;
  wire \mem_reg_4[4]_i_1_n_0 ;
  wire \mem_reg_4[4]_i_2_n_0 ;
  wire \mem_reg_4[5]_i_1_n_0 ;
  wire \mem_reg_4[5]_i_2_n_0 ;
  wire \mem_reg_4[6]_i_1_n_0 ;
  wire \mem_reg_4[6]_i_2_n_0 ;
  wire \mem_reg_4[7]_i_1_n_0 ;
  wire \mem_reg_4[7]_i_2_n_0 ;
  wire [4:0]p_0_in;
  wire [15:0]pre_state_4;
  wire \pre_state_4[0]_i_1_n_0 ;
  wire \pre_state_4[10]_i_1_n_0 ;
  wire \pre_state_4[11]_i_1_n_0 ;
  wire \pre_state_4[12]_i_1_n_0 ;
  wire \pre_state_4[13]_i_1_n_0 ;
  wire \pre_state_4[14]_i_1_n_0 ;
  wire \pre_state_4[15]_i_1_n_0 ;
  wire \pre_state_4[1]_i_1_n_0 ;
  wire \pre_state_4[2]_i_1_n_0 ;
  wire \pre_state_4[3]_i_1_n_0 ;
  wire \pre_state_4[4]_i_1_n_0 ;
  wire \pre_state_4[5]_i_1_n_0 ;
  wire \pre_state_4[6]_i_1_n_0 ;
  wire \pre_state_4[7]_i_1_n_0 ;
  wire \pre_state_4[8]_i_1_n_0 ;
  wire \pre_state_4[9]_i_1_n_0 ;
  wire reg_out6;
  wire reg_out8;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \differsum4[0]_i_1 
       (.I0(differsum3[0]),
        .I1(count6[0]),
        .I2(\differsum4[4]_i_4_n_0 ),
        .I3(differsum4[0]),
        .I4(count8[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h8778FFFF87780000)) 
    \differsum4[1]_i_1 
       (.I0(differsum3[0]),
        .I1(count6[0]),
        .I2(count6[1]),
        .I3(differsum3[1]),
        .I4(\differsum4[4]_i_4_n_0 ),
        .I5(differsum42[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \differsum4[1]_i_2 
       (.I0(differsum4[0]),
        .I1(count8[0]),
        .I2(count8[1]),
        .I3(differsum4[1]),
        .O(differsum42[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \differsum4[2]_i_1 
       (.I0(data[2]),
        .I1(\differsum4[4]_i_4_n_0 ),
        .I2(differsum42[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h1777E888)) 
    \differsum4[2]_i_2 
       (.I0(differsum3[1]),
        .I1(count6[1]),
        .I2(count6[0]),
        .I3(differsum3[0]),
        .I4(differsum3[2]),
        .O(data[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h1777E888)) 
    \differsum4[2]_i_3 
       (.I0(differsum4[1]),
        .I1(count8[1]),
        .I2(count8[0]),
        .I3(differsum4[0]),
        .I4(differsum4[2]),
        .O(differsum42[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \differsum4[3]_i_1 
       (.I0(data[3]),
        .I1(\differsum4[4]_i_4_n_0 ),
        .I2(differsum42[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h077FFFFFF8800000)) 
    \differsum4[3]_i_2 
       (.I0(differsum3[0]),
        .I1(count6[0]),
        .I2(count6[1]),
        .I3(differsum3[1]),
        .I4(differsum3[2]),
        .I5(differsum3[3]),
        .O(data[3]));
  LUT6 #(
    .INIT(64'h077FFFFFF8800000)) 
    \differsum4[3]_i_3 
       (.I0(differsum4[0]),
        .I1(count8[0]),
        .I2(count8[1]),
        .I3(differsum4[1]),
        .I4(differsum4[2]),
        .I5(differsum4[3]),
        .O(differsum42[3]));
  LUT3 #(
    .INIT(8'hFD)) 
    \differsum4[4]_i_1 
       (.I0(en),
        .I1(rst),
        .I2(flag_compare),
        .O(\differsum4[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \differsum4[4]_i_10 
       (.I0(differsum3[0]),
        .I1(count6[0]),
        .I2(count6[1]),
        .I3(differsum3[1]),
        .O(data[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF66F)) 
    \differsum4[4]_i_11 
       (.I0(count8[0]),
        .I1(differsum4[0]),
        .I2(count6[0]),
        .I3(differsum3[0]),
        .O(\differsum4[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \differsum4[4]_i_2 
       (.I0(data[4]),
        .I1(\differsum4[4]_i_4_n_0 ),
        .I2(differsum42[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h577FFFFFA8800000)) 
    \differsum4[4]_i_3 
       (.I0(differsum3[2]),
        .I1(differsum3[1]),
        .I2(count6[1]),
        .I3(\differsum4[4]_i_6_n_0 ),
        .I4(differsum3[3]),
        .I5(differsum3[4]),
        .O(data[4]));
  LUT6 #(
    .INIT(64'hEDDDE44DE44D8444)) 
    \differsum4[4]_i_4 
       (.I0(differsum3[4]),
        .I1(differsum42[4]),
        .I2(differsum3[3]),
        .I3(\differsum4[4]_i_7_n_0 ),
        .I4(differsum42[3]),
        .I5(\differsum4[4]_i_8_n_0 ),
        .O(\differsum4[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h577FFFFFA8800000)) 
    \differsum4[4]_i_5 
       (.I0(differsum4[2]),
        .I1(differsum4[1]),
        .I2(count8[1]),
        .I3(\differsum4[4]_i_9_n_0 ),
        .I4(differsum4[3]),
        .I5(differsum4[4]),
        .O(differsum42[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \differsum4[4]_i_6 
       (.I0(count6[0]),
        .I1(differsum3[0]),
        .O(\differsum4[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hA8808080)) 
    \differsum4[4]_i_7 
       (.I0(differsum3[2]),
        .I1(differsum3[1]),
        .I2(count6[1]),
        .I3(count6[0]),
        .I4(differsum3[0]),
        .O(\differsum4[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hDD4D4D44)) 
    \differsum4[4]_i_8 
       (.I0(data[2]),
        .I1(differsum42[2]),
        .I2(data[1]),
        .I3(differsum42[1]),
        .I4(\differsum4[4]_i_11_n_0 ),
        .O(\differsum4[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \differsum4[4]_i_9 
       (.I0(count8[0]),
        .I1(differsum4[0]),
        .O(\differsum4[4]_i_9_n_0 ));
  FDRE \differsum4_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(differsum4[0]),
        .R(\differsum4[4]_i_1_n_0 ));
  FDRE \differsum4_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(differsum4[1]),
        .R(\differsum4[4]_i_1_n_0 ));
  FDRE \differsum4_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(differsum4[2]),
        .R(\differsum4[4]_i_1_n_0 ));
  FDRE \differsum4_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(differsum4[3]),
        .R(\differsum4[4]_i_1_n_0 ));
  FDRE \differsum4_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(differsum4[4]),
        .R(\differsum4[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    flag_compare_i_1
       (.I0(flag_compare),
        .I1(rst),
        .I2(flag),
        .O(flag_compare_i_1_n_0));
  FDRE flag_compare_reg
       (.C(clk),
        .CE(1'b1),
        .D(flag_compare_i_1_n_0),
        .Q(flag_compare),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_1 
       (.I0(i[0]),
        .O(i0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \i[1]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .O(i0[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \i[2]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .O(i0[2]));
  FDSE \i_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(i0[0]),
        .Q(i[0]),
        .S(\differsum4[4]_i_1_n_0 ));
  FDSE \i_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(i0[1]),
        .Q(i[1]),
        .S(\differsum4[4]_i_1_n_0 ));
  FDSE \i_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(i0[2]),
        .Q(i[2]),
        .S(\differsum4[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mem_reg_4[0]_i_1 
       (.I0(reg_out6),
        .I1(\differsum4[4]_i_4_n_0 ),
        .I2(reg_out8),
        .I3(\mem_reg_4[0]_i_2_n_0 ),
        .I4(mem_reg_4[0]),
        .O(\mem_reg_4[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \mem_reg_4[0]_i_2 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .O(\mem_reg_4[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mem_reg_4[1]_i_1 
       (.I0(reg_out6),
        .I1(\differsum4[4]_i_4_n_0 ),
        .I2(reg_out8),
        .I3(\mem_reg_4[1]_i_2_n_0 ),
        .I4(mem_reg_4[1]),
        .O(\mem_reg_4[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \mem_reg_4[1]_i_2 
       (.I0(i[1]),
        .I1(i[0]),
        .I2(i[2]),
        .O(\mem_reg_4[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mem_reg_4[2]_i_1 
       (.I0(reg_out6),
        .I1(\differsum4[4]_i_4_n_0 ),
        .I2(reg_out8),
        .I3(\mem_reg_4[2]_i_2_n_0 ),
        .I4(mem_reg_4[2]),
        .O(\mem_reg_4[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \mem_reg_4[2]_i_2 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .O(\mem_reg_4[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mem_reg_4[3]_i_1 
       (.I0(reg_out6),
        .I1(\differsum4[4]_i_4_n_0 ),
        .I2(reg_out8),
        .I3(\mem_reg_4[3]_i_2_n_0 ),
        .I4(mem_reg_4[3]),
        .O(\mem_reg_4[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \mem_reg_4[3]_i_2 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .O(\mem_reg_4[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mem_reg_4[4]_i_1 
       (.I0(reg_out6),
        .I1(\differsum4[4]_i_4_n_0 ),
        .I2(reg_out8),
        .I3(\mem_reg_4[4]_i_2_n_0 ),
        .I4(mem_reg_4[4]),
        .O(\mem_reg_4[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mem_reg_4[4]_i_2 
       (.I0(i[2]),
        .I1(i[0]),
        .I2(i[1]),
        .O(\mem_reg_4[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mem_reg_4[5]_i_1 
       (.I0(reg_out6),
        .I1(\differsum4[4]_i_4_n_0 ),
        .I2(reg_out8),
        .I3(\mem_reg_4[5]_i_2_n_0 ),
        .I4(mem_reg_4[5]),
        .O(\mem_reg_4[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \mem_reg_4[5]_i_2 
       (.I0(i[1]),
        .I1(i[0]),
        .I2(i[2]),
        .O(\mem_reg_4[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mem_reg_4[6]_i_1 
       (.I0(reg_out6),
        .I1(\differsum4[4]_i_4_n_0 ),
        .I2(reg_out8),
        .I3(\mem_reg_4[6]_i_2_n_0 ),
        .I4(mem_reg_4[6]),
        .O(\mem_reg_4[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \mem_reg_4[6]_i_2 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .O(\mem_reg_4[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \mem_reg_4[7]_i_1 
       (.I0(reg_out6),
        .I1(\differsum4[4]_i_4_n_0 ),
        .I2(reg_out8),
        .I3(\mem_reg_4[7]_i_2_n_0 ),
        .I4(mem_reg_4[7]),
        .O(\mem_reg_4[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mem_reg_4[7]_i_2 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .O(\mem_reg_4[7]_i_2_n_0 ));
  FDRE \mem_reg_4_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_4[0]_i_1_n_0 ),
        .Q(mem_reg_4[0]),
        .R(\differsum4[4]_i_1_n_0 ));
  FDRE \mem_reg_4_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_4[1]_i_1_n_0 ),
        .Q(mem_reg_4[1]),
        .R(\differsum4[4]_i_1_n_0 ));
  FDRE \mem_reg_4_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_4[2]_i_1_n_0 ),
        .Q(mem_reg_4[2]),
        .R(\differsum4[4]_i_1_n_0 ));
  FDRE \mem_reg_4_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_4[3]_i_1_n_0 ),
        .Q(mem_reg_4[3]),
        .R(\differsum4[4]_i_1_n_0 ));
  FDRE \mem_reg_4_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_4[4]_i_1_n_0 ),
        .Q(mem_reg_4[4]),
        .R(\differsum4[4]_i_1_n_0 ));
  FDRE \mem_reg_4_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_4[5]_i_1_n_0 ),
        .Q(mem_reg_4[5]),
        .R(\differsum4[4]_i_1_n_0 ));
  FDRE \mem_reg_4_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_4[6]_i_1_n_0 ),
        .Q(mem_reg_4[6]),
        .R(\differsum4[4]_i_1_n_0 ));
  FDRE \mem_reg_4_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_4[7]_i_1_n_0 ),
        .Q(mem_reg_4[7]),
        .R(\differsum4[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFD00000001)) 
    \pre_state_4[0]_i_1 
       (.I0(\differsum4[4]_i_4_n_0 ),
        .I1(i[0]),
        .I2(i[1]),
        .I3(i[2]),
        .I4(\differsum4[4]_i_1_n_0 ),
        .I5(pre_state_4[0]),
        .O(\pre_state_4[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000040)) 
    \pre_state_4[10]_i_1 
       (.I0(\differsum4[4]_i_4_n_0 ),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(\differsum4[4]_i_1_n_0 ),
        .I5(pre_state_4[10]),
        .O(\pre_state_4[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \pre_state_4[11]_i_1 
       (.I0(i[2]),
        .I1(i[0]),
        .I2(i[1]),
        .I3(\differsum4[4]_i_1_n_0 ),
        .I4(pre_state_4[11]),
        .O(\pre_state_4[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000040)) 
    \pre_state_4[12]_i_1 
       (.I0(\differsum4[4]_i_4_n_0 ),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(\differsum4[4]_i_1_n_0 ),
        .I5(pre_state_4[12]),
        .O(\pre_state_4[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \pre_state_4[13]_i_1 
       (.I0(i[2]),
        .I1(i[1]),
        .I2(i[0]),
        .I3(\differsum4[4]_i_1_n_0 ),
        .I4(pre_state_4[13]),
        .O(\pre_state_4[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00004000)) 
    \pre_state_4[14]_i_1 
       (.I0(\differsum4[4]_i_4_n_0 ),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(\differsum4[4]_i_1_n_0 ),
        .I5(pre_state_4[14]),
        .O(\pre_state_4[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \pre_state_4[15]_i_1 
       (.I0(i[2]),
        .I1(i[1]),
        .I2(i[0]),
        .I3(\differsum4[4]_i_1_n_0 ),
        .I4(pre_state_4[15]),
        .O(\pre_state_4[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \pre_state_4[1]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(\differsum4[4]_i_1_n_0 ),
        .I4(pre_state_4[1]),
        .O(\pre_state_4[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000010)) 
    \pre_state_4[2]_i_1 
       (.I0(\differsum4[4]_i_4_n_0 ),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(\differsum4[4]_i_1_n_0 ),
        .I5(pre_state_4[2]),
        .O(\pre_state_4[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    \pre_state_4[3]_i_1 
       (.I0(i[2]),
        .I1(i[0]),
        .I2(i[1]),
        .I3(\differsum4[4]_i_1_n_0 ),
        .I4(pre_state_4[3]),
        .O(\pre_state_4[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000010)) 
    \pre_state_4[4]_i_1 
       (.I0(\differsum4[4]_i_4_n_0 ),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(\differsum4[4]_i_1_n_0 ),
        .I5(pre_state_4[4]),
        .O(\pre_state_4[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    \pre_state_4[5]_i_1 
       (.I0(i[2]),
        .I1(i[1]),
        .I2(i[0]),
        .I3(\differsum4[4]_i_1_n_0 ),
        .I4(pre_state_4[5]),
        .O(\pre_state_4[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFF00001000)) 
    \pre_state_4[6]_i_1 
       (.I0(\differsum4[4]_i_4_n_0 ),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(\differsum4[4]_i_1_n_0 ),
        .I5(pre_state_4[6]),
        .O(\pre_state_4[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \pre_state_4[7]_i_1 
       (.I0(i[2]),
        .I1(i[1]),
        .I2(i[0]),
        .I3(\differsum4[4]_i_1_n_0 ),
        .I4(pre_state_4[7]),
        .O(\pre_state_4[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000100)) 
    \pre_state_4[8]_i_1 
       (.I0(\differsum4[4]_i_4_n_0 ),
        .I1(i[1]),
        .I2(i[0]),
        .I3(i[2]),
        .I4(\differsum4[4]_i_1_n_0 ),
        .I5(pre_state_4[8]),
        .O(\pre_state_4[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \pre_state_4[9]_i_1 
       (.I0(i[1]),
        .I1(i[0]),
        .I2(i[2]),
        .I3(\differsum4[4]_i_1_n_0 ),
        .I4(pre_state_4[9]),
        .O(\pre_state_4[9]_i_1_n_0 ));
  FDRE \pre_state_4_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[0]_i_1_n_0 ),
        .Q(pre_state_4[0]),
        .R(1'b0));
  FDRE \pre_state_4_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[10]_i_1_n_0 ),
        .Q(pre_state_4[10]),
        .R(1'b0));
  FDRE \pre_state_4_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[11]_i_1_n_0 ),
        .Q(pre_state_4[11]),
        .R(1'b0));
  FDRE \pre_state_4_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[12]_i_1_n_0 ),
        .Q(pre_state_4[12]),
        .R(1'b0));
  FDRE \pre_state_4_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[13]_i_1_n_0 ),
        .Q(pre_state_4[13]),
        .R(1'b0));
  FDRE \pre_state_4_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[14]_i_1_n_0 ),
        .Q(pre_state_4[14]),
        .R(1'b0));
  FDRE \pre_state_4_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[15]_i_1_n_0 ),
        .Q(pre_state_4[15]),
        .R(1'b0));
  FDRE \pre_state_4_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[1]_i_1_n_0 ),
        .Q(pre_state_4[1]),
        .R(1'b0));
  FDRE \pre_state_4_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[2]_i_1_n_0 ),
        .Q(pre_state_4[2]),
        .R(1'b0));
  FDRE \pre_state_4_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[3]_i_1_n_0 ),
        .Q(pre_state_4[3]),
        .R(1'b0));
  FDRE \pre_state_4_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[4]_i_1_n_0 ),
        .Q(pre_state_4[4]),
        .R(1'b0));
  FDRE \pre_state_4_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[5]_i_1_n_0 ),
        .Q(pre_state_4[5]),
        .R(1'b0));
  FDRE \pre_state_4_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[6]_i_1_n_0 ),
        .Q(pre_state_4[6]),
        .R(1'b0));
  FDRE \pre_state_4_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[7]_i_1_n_0 ),
        .Q(pre_state_4[7]),
        .R(1'b0));
  FDRE \pre_state_4_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[8]_i_1_n_0 ),
        .Q(pre_state_4[8]),
        .R(1'b0));
  FDRE \pre_state_4_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_4[9]_i_1_n_0 ),
        .Q(pre_state_4[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

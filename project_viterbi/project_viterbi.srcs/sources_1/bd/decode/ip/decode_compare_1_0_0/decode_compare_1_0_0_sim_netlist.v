// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jul 22 22:40:04 2022
// Host        : DESKTOP-R78F55E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/verilog/project_viterbi/project_viterbi.srcs/sources_1/bd/decode/ip/decode_compare_1_0_0/decode_compare_1_0_0_sim_netlist.v
// Design      : decode_compare_1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "decode_compare_1_0_0,compare_1,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "compare_1,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decode_compare_1_0_0
   (clk,
    rst,
    en,
    count1,
    count3,
    reg_out1,
    reg_out3,
    differsum2,
    flag,
    differsum1,
    mem_reg_1,
    pre_state_1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN decode_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input en;
  input [1:0]count1;
  input [1:0]count3;
  input reg_out1;
  input reg_out3;
  input [4:0]differsum2;
  input flag;
  output [4:0]differsum1;
  output [7:0]mem_reg_1;
  output [15:0]pre_state_1;

  wire clk;
  wire [1:0]count1;
  wire [1:0]count3;
  wire [4:0]differsum1;
  wire [4:0]differsum2;
  wire en;
  wire flag;
  wire [7:0]mem_reg_1;
  wire [15:0]pre_state_1;
  wire reg_out1;
  wire reg_out3;
  wire rst;

  decode_compare_1_0_0_compare_1 inst
       (.clk(clk),
        .count1(count1),
        .count3(count3),
        .differsum1(differsum1),
        .differsum2(differsum2),
        .en(en),
        .flag(flag),
        .mem_reg_1(mem_reg_1),
        .pre_state_1(pre_state_1),
        .reg_out1(reg_out1),
        .reg_out3(reg_out3),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "compare_1" *) 
module decode_compare_1_0_0_compare_1
   (mem_reg_1,
    pre_state_1,
    differsum1,
    clk,
    reg_out1,
    reg_out3,
    rst,
    en,
    count1,
    differsum2,
    count3,
    flag);
  output [7:0]mem_reg_1;
  output [15:0]pre_state_1;
  output [4:0]differsum1;
  input clk;
  input reg_out1;
  input reg_out3;
  input rst;
  input en;
  input [1:0]count1;
  input [4:0]differsum2;
  input [1:0]count3;
  input flag;

  wire \_inferred__2/i__n_0 ;
  wire clk;
  wire [1:0]count1;
  wire [1:0]count3;
  wire [4:1]data;
  wire [4:0]differsum1;
  wire [4:1]differsum12;
  wire \differsum1[4]_i_10_n_0 ;
  wire \differsum1[4]_i_1_n_0 ;
  wire \differsum1[4]_i_4_n_0 ;
  wire \differsum1[4]_i_6_n_0 ;
  wire \differsum1[4]_i_7_n_0 ;
  wire \differsum1[4]_i_8_n_0 ;
  wire \differsum1[4]_i_9_n_0 ;
  wire [4:0]differsum2;
  wire en;
  wire flag;
  wire flag_compare;
  wire flag_compare_i_1_n_0;
  wire [2:0]i;
  wire [0:0]i0;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \k[1]_i_1_n_0 ;
  wire \k[2]_i_1_n_0 ;
  wire \k[3]_i_1_n_0 ;
  wire [3:1]k_reg;
  wire [7:0]mem_reg_1;
  wire \mem_reg_1[0]_i_1_n_0 ;
  wire \mem_reg_1[1]_i_1_n_0 ;
  wire \mem_reg_1[2]_i_1_n_0 ;
  wire \mem_reg_1[3]_i_1_n_0 ;
  wire \mem_reg_1[4]_i_1_n_0 ;
  wire \mem_reg_1[4]_i_2_n_0 ;
  wire \mem_reg_1[5]_i_1_n_0 ;
  wire \mem_reg_1[5]_i_2_n_0 ;
  wire \mem_reg_1[6]_i_1_n_0 ;
  wire \mem_reg_1[6]_i_2_n_0 ;
  wire \mem_reg_1[7]_i_1_n_0 ;
  wire [4:0]p_0_in;
  wire [15:0]pre_state_1;
  wire \pre_state_1[0]_i_1_n_0 ;
  wire \pre_state_1[10]_i_1_n_0 ;
  wire \pre_state_1[11]_i_1_n_0 ;
  wire \pre_state_1[12]_i_1_n_0 ;
  wire \pre_state_1[13]_i_1_n_0 ;
  wire \pre_state_1[14]_i_1_n_0 ;
  wire \pre_state_1[14]_i_2_n_0 ;
  wire \pre_state_1[15]_i_1_n_0 ;
  wire \pre_state_1[1]_i_1_n_0 ;
  wire \pre_state_1[2]_i_1_n_0 ;
  wire \pre_state_1[3]_i_1_n_0 ;
  wire \pre_state_1[4]_i_1_n_0 ;
  wire \pre_state_1[5]_i_1_n_0 ;
  wire \pre_state_1[6]_i_1_n_0 ;
  wire \pre_state_1[7]_i_1_n_0 ;
  wire \pre_state_1[8]_i_1_n_0 ;
  wire \pre_state_1[9]_i_1_n_0 ;
  wire reg_out1;
  wire reg_out3;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \_inferred__2/i_ 
       (.I0(i[1]),
        .I1(i[0]),
        .O(\_inferred__2/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \differsum1[0]_i_1 
       (.I0(differsum1[0]),
        .I1(count1[0]),
        .I2(\differsum1[4]_i_4_n_0 ),
        .I3(differsum2[0]),
        .I4(count3[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h8778FFFF87780000)) 
    \differsum1[1]_i_1 
       (.I0(differsum1[0]),
        .I1(count1[0]),
        .I2(count1[1]),
        .I3(differsum1[1]),
        .I4(\differsum1[4]_i_4_n_0 ),
        .I5(data[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \differsum1[1]_i_2 
       (.I0(differsum2[0]),
        .I1(count3[0]),
        .I2(count3[1]),
        .I3(differsum2[1]),
        .O(data[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \differsum1[2]_i_1 
       (.I0(differsum12[2]),
        .I1(\differsum1[4]_i_4_n_0 ),
        .I2(data[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h157FEA80)) 
    \differsum1[2]_i_2 
       (.I0(differsum1[1]),
        .I1(differsum1[0]),
        .I2(count1[0]),
        .I3(count1[1]),
        .I4(differsum1[2]),
        .O(differsum12[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h157FEA80)) 
    \differsum1[2]_i_3 
       (.I0(differsum2[1]),
        .I1(differsum2[0]),
        .I2(count3[0]),
        .I3(count3[1]),
        .I4(differsum2[2]),
        .O(data[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \differsum1[3]_i_1 
       (.I0(differsum12[3]),
        .I1(\differsum1[4]_i_4_n_0 ),
        .I2(data[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h157FFFFFEA800000)) 
    \differsum1[3]_i_2 
       (.I0(count1[1]),
        .I1(count1[0]),
        .I2(differsum1[0]),
        .I3(differsum1[1]),
        .I4(differsum1[2]),
        .I5(differsum1[3]),
        .O(differsum12[3]));
  LUT6 #(
    .INIT(64'h157FFFFFEA800000)) 
    \differsum1[3]_i_3 
       (.I0(count3[1]),
        .I1(count3[0]),
        .I2(differsum2[0]),
        .I3(differsum2[1]),
        .I4(differsum2[2]),
        .I5(differsum2[3]),
        .O(data[3]));
  LUT3 #(
    .INIT(8'hFD)) 
    \differsum1[4]_i_1 
       (.I0(en),
        .I1(rst),
        .I2(flag_compare),
        .O(\differsum1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF66F)) 
    \differsum1[4]_i_10 
       (.I0(count3[0]),
        .I1(differsum2[0]),
        .I2(count1[0]),
        .I3(differsum1[0]),
        .O(\differsum1[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \differsum1[4]_i_11 
       (.I0(differsum1[0]),
        .I1(count1[0]),
        .I2(count1[1]),
        .I3(differsum1[1]),
        .O(differsum12[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \differsum1[4]_i_2 
       (.I0(differsum12[4]),
        .I1(\differsum1[4]_i_4_n_0 ),
        .I2(data[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7F77FF7F80880080)) 
    \differsum1[4]_i_3 
       (.I0(differsum1[3]),
        .I1(differsum1[2]),
        .I2(differsum1[1]),
        .I3(\differsum1[4]_i_6_n_0 ),
        .I4(count1[1]),
        .I5(differsum1[4]),
        .O(differsum12[4]));
  LUT6 #(
    .INIT(64'hDDED4DE44DE44484)) 
    \differsum1[4]_i_4 
       (.I0(differsum1[4]),
        .I1(data[4]),
        .I2(differsum1[3]),
        .I3(\differsum1[4]_i_7_n_0 ),
        .I4(data[3]),
        .I5(\differsum1[4]_i_8_n_0 ),
        .O(\differsum1[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7F77FF7F80880080)) 
    \differsum1[4]_i_5 
       (.I0(differsum2[3]),
        .I1(differsum2[2]),
        .I2(differsum2[1]),
        .I3(\differsum1[4]_i_9_n_0 ),
        .I4(count3[1]),
        .I5(differsum2[4]),
        .O(data[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \differsum1[4]_i_6 
       (.I0(count1[0]),
        .I1(differsum1[0]),
        .O(\differsum1[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h57777FFF)) 
    \differsum1[4]_i_7 
       (.I0(differsum1[2]),
        .I1(differsum1[1]),
        .I2(differsum1[0]),
        .I3(count1[0]),
        .I4(count1[1]),
        .O(\differsum1[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hD4DD44D4)) 
    \differsum1[4]_i_8 
       (.I0(differsum12[2]),
        .I1(data[2]),
        .I2(\differsum1[4]_i_10_n_0 ),
        .I3(differsum12[1]),
        .I4(data[1]),
        .O(\differsum1[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \differsum1[4]_i_9 
       (.I0(count3[0]),
        .I1(differsum2[0]),
        .O(\differsum1[4]_i_9_n_0 ));
  FDRE \differsum1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(differsum1[0]),
        .R(\differsum1[4]_i_1_n_0 ));
  FDRE \differsum1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(differsum1[1]),
        .R(\differsum1[4]_i_1_n_0 ));
  FDRE \differsum1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(differsum1[2]),
        .R(\differsum1[4]_i_1_n_0 ));
  FDRE \differsum1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(differsum1[3]),
        .R(\differsum1[4]_i_1_n_0 ));
  FDRE \differsum1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(differsum1[4]),
        .R(\differsum1[4]_i_1_n_0 ));
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
        .O(i0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \i[1]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \i[2]_i_1 
       (.I0(i[1]),
        .I1(i[0]),
        .I2(i[2]),
        .O(\i[2]_i_1_n_0 ));
  FDSE \i_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(i0),
        .Q(i[0]),
        .S(\differsum1[4]_i_1_n_0 ));
  FDSE \i_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\i[1]_i_1_n_0 ),
        .Q(i[1]),
        .S(\differsum1[4]_i_1_n_0 ));
  FDSE \i_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\i[2]_i_1_n_0 ),
        .Q(i[2]),
        .S(\differsum1[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \k[1]_i_1 
       (.I0(i[0]),
        .I1(flag_compare),
        .I2(rst),
        .I3(en),
        .I4(k_reg[1]),
        .O(\k[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \k[2]_i_1 
       (.I0(i[1]),
        .I1(flag_compare),
        .I2(rst),
        .I3(en),
        .I4(k_reg[2]),
        .O(\k[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \k[3]_i_1 
       (.I0(i[2]),
        .I1(flag_compare),
        .I2(rst),
        .I3(en),
        .I4(k_reg[3]),
        .O(\k[3]_i_1_n_0 ));
  FDRE \k_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\k[1]_i_1_n_0 ),
        .Q(k_reg[1]),
        .R(1'b0));
  FDRE \k_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\k[2]_i_1_n_0 ),
        .Q(k_reg[2]),
        .R(1'b0));
  FDRE \k_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\k[3]_i_1_n_0 ),
        .Q(k_reg[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \mem_reg_1[0]_i_1 
       (.I0(reg_out1),
        .I1(\differsum1[4]_i_4_n_0 ),
        .I2(reg_out3),
        .I3(i[2]),
        .I4(\mem_reg_1[4]_i_2_n_0 ),
        .I5(mem_reg_1[0]),
        .O(\mem_reg_1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \mem_reg_1[1]_i_1 
       (.I0(reg_out1),
        .I1(\differsum1[4]_i_4_n_0 ),
        .I2(reg_out3),
        .I3(i[2]),
        .I4(\mem_reg_1[5]_i_2_n_0 ),
        .I5(mem_reg_1[1]),
        .O(\mem_reg_1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \mem_reg_1[2]_i_1 
       (.I0(reg_out1),
        .I1(\differsum1[4]_i_4_n_0 ),
        .I2(reg_out3),
        .I3(i[2]),
        .I4(\mem_reg_1[6]_i_2_n_0 ),
        .I5(mem_reg_1[2]),
        .O(\mem_reg_1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \mem_reg_1[3]_i_1 
       (.I0(reg_out1),
        .I1(\differsum1[4]_i_4_n_0 ),
        .I2(reg_out3),
        .I3(i[2]),
        .I4(\_inferred__2/i__n_0 ),
        .I5(mem_reg_1[3]),
        .O(\mem_reg_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \mem_reg_1[4]_i_1 
       (.I0(reg_out1),
        .I1(\differsum1[4]_i_4_n_0 ),
        .I2(reg_out3),
        .I3(i[2]),
        .I4(\mem_reg_1[4]_i_2_n_0 ),
        .I5(mem_reg_1[4]),
        .O(\mem_reg_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mem_reg_1[4]_i_2 
       (.I0(i[1]),
        .I1(i[0]),
        .O(\mem_reg_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \mem_reg_1[5]_i_1 
       (.I0(reg_out1),
        .I1(\differsum1[4]_i_4_n_0 ),
        .I2(reg_out3),
        .I3(i[2]),
        .I4(\mem_reg_1[5]_i_2_n_0 ),
        .I5(mem_reg_1[5]),
        .O(\mem_reg_1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem_reg_1[5]_i_2 
       (.I0(i[1]),
        .I1(i[0]),
        .O(\mem_reg_1[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \mem_reg_1[6]_i_1 
       (.I0(reg_out1),
        .I1(\differsum1[4]_i_4_n_0 ),
        .I2(reg_out3),
        .I3(i[2]),
        .I4(\mem_reg_1[6]_i_2_n_0 ),
        .I5(mem_reg_1[6]),
        .O(\mem_reg_1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem_reg_1[6]_i_2 
       (.I0(i[0]),
        .I1(i[1]),
        .O(\mem_reg_1[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \mem_reg_1[7]_i_1 
       (.I0(reg_out1),
        .I1(\differsum1[4]_i_4_n_0 ),
        .I2(reg_out3),
        .I3(i[2]),
        .I4(\_inferred__2/i__n_0 ),
        .I5(mem_reg_1[7]),
        .O(\mem_reg_1[7]_i_1_n_0 ));
  FDRE \mem_reg_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_1[0]_i_1_n_0 ),
        .Q(mem_reg_1[0]),
        .R(\differsum1[4]_i_1_n_0 ));
  FDRE \mem_reg_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_1[1]_i_1_n_0 ),
        .Q(mem_reg_1[1]),
        .R(\differsum1[4]_i_1_n_0 ));
  FDRE \mem_reg_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_1[2]_i_1_n_0 ),
        .Q(mem_reg_1[2]),
        .R(\differsum1[4]_i_1_n_0 ));
  FDRE \mem_reg_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_1[3]_i_1_n_0 ),
        .Q(mem_reg_1[3]),
        .R(\differsum1[4]_i_1_n_0 ));
  FDRE \mem_reg_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_1[4]_i_1_n_0 ),
        .Q(mem_reg_1[4]),
        .R(\differsum1[4]_i_1_n_0 ));
  FDRE \mem_reg_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_1[5]_i_1_n_0 ),
        .Q(mem_reg_1[5]),
        .R(\differsum1[4]_i_1_n_0 ));
  FDRE \mem_reg_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_1[6]_i_1_n_0 ),
        .Q(mem_reg_1[6]),
        .R(\differsum1[4]_i_1_n_0 ));
  FDRE \mem_reg_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_1[7]_i_1_n_0 ),
        .Q(mem_reg_1[7]),
        .R(\differsum1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFE00020002)) 
    \pre_state_1[0]_i_1 
       (.I0(\pre_state_1[14]_i_2_n_0 ),
        .I1(k_reg[1]),
        .I2(k_reg[2]),
        .I3(k_reg[3]),
        .I4(\differsum1[4]_i_1_n_0 ),
        .I5(pre_state_1[0]),
        .O(\pre_state_1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \pre_state_1[10]_i_1 
       (.I0(\pre_state_1[14]_i_2_n_0 ),
        .I1(k_reg[1]),
        .I2(k_reg[3]),
        .I3(k_reg[2]),
        .I4(\differsum1[4]_i_1_n_0 ),
        .I5(pre_state_1[10]),
        .O(\pre_state_1[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70000)) 
    \pre_state_1[11]_i_1 
       (.I0(k_reg[1]),
        .I1(k_reg[3]),
        .I2(k_reg[2]),
        .I3(\differsum1[4]_i_1_n_0 ),
        .I4(pre_state_1[11]),
        .O(\pre_state_1[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \pre_state_1[12]_i_1 
       (.I0(\pre_state_1[14]_i_2_n_0 ),
        .I1(k_reg[1]),
        .I2(k_reg[2]),
        .I3(k_reg[3]),
        .I4(\differsum1[4]_i_1_n_0 ),
        .I5(pre_state_1[12]),
        .O(\pre_state_1[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0000)) 
    \pre_state_1[13]_i_1 
       (.I0(k_reg[1]),
        .I1(k_reg[2]),
        .I2(k_reg[3]),
        .I3(\differsum1[4]_i_1_n_0 ),
        .I4(pre_state_1[13]),
        .O(\pre_state_1[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \pre_state_1[14]_i_1 
       (.I0(\pre_state_1[14]_i_2_n_0 ),
        .I1(k_reg[1]),
        .I2(k_reg[2]),
        .I3(k_reg[3]),
        .I4(\differsum1[4]_i_1_n_0 ),
        .I5(pre_state_1[14]),
        .O(\pre_state_1[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1501555500001501)) 
    \pre_state_1[14]_i_2 
       (.I0(\differsum1[4]_i_1_n_0 ),
        .I1(\differsum1[4]_i_8_n_0 ),
        .I2(data[3]),
        .I3(differsum12[3]),
        .I4(data[4]),
        .I5(differsum12[4]),
        .O(\pre_state_1[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0000)) 
    \pre_state_1[15]_i_1 
       (.I0(k_reg[1]),
        .I1(k_reg[2]),
        .I2(k_reg[3]),
        .I3(\differsum1[4]_i_1_n_0 ),
        .I4(pre_state_1[15]),
        .O(\pre_state_1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \pre_state_1[1]_i_1 
       (.I0(k_reg[1]),
        .I1(k_reg[2]),
        .I2(k_reg[3]),
        .I3(\differsum1[4]_i_1_n_0 ),
        .I4(pre_state_1[1]),
        .O(\pre_state_1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \pre_state_1[2]_i_1 
       (.I0(\pre_state_1[14]_i_2_n_0 ),
        .I1(k_reg[1]),
        .I2(k_reg[2]),
        .I3(k_reg[3]),
        .I4(\differsum1[4]_i_1_n_0 ),
        .I5(pre_state_1[2]),
        .O(\pre_state_1[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \pre_state_1[3]_i_1 
       (.I0(k_reg[1]),
        .I1(k_reg[2]),
        .I2(k_reg[3]),
        .I3(\differsum1[4]_i_1_n_0 ),
        .I4(pre_state_1[3]),
        .O(\pre_state_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \pre_state_1[4]_i_1 
       (.I0(\pre_state_1[14]_i_2_n_0 ),
        .I1(k_reg[1]),
        .I2(k_reg[2]),
        .I3(k_reg[3]),
        .I4(\differsum1[4]_i_1_n_0 ),
        .I5(pre_state_1[4]),
        .O(\pre_state_1[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \pre_state_1[5]_i_1 
       (.I0(k_reg[1]),
        .I1(k_reg[2]),
        .I2(k_reg[3]),
        .I3(\differsum1[4]_i_1_n_0 ),
        .I4(pre_state_1[5]),
        .O(\pre_state_1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \pre_state_1[6]_i_1 
       (.I0(\pre_state_1[14]_i_2_n_0 ),
        .I1(k_reg[1]),
        .I2(k_reg[2]),
        .I3(k_reg[3]),
        .I4(\differsum1[4]_i_1_n_0 ),
        .I5(pre_state_1[6]),
        .O(\pre_state_1[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70000)) 
    \pre_state_1[7]_i_1 
       (.I0(k_reg[1]),
        .I1(k_reg[2]),
        .I2(k_reg[3]),
        .I3(\differsum1[4]_i_1_n_0 ),
        .I4(pre_state_1[7]),
        .O(\pre_state_1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \pre_state_1[8]_i_1 
       (.I0(\pre_state_1[14]_i_2_n_0 ),
        .I1(k_reg[1]),
        .I2(k_reg[3]),
        .I3(k_reg[2]),
        .I4(\differsum1[4]_i_1_n_0 ),
        .I5(pre_state_1[8]),
        .O(\pre_state_1[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \pre_state_1[9]_i_1 
       (.I0(k_reg[1]),
        .I1(k_reg[3]),
        .I2(k_reg[2]),
        .I3(\differsum1[4]_i_1_n_0 ),
        .I4(pre_state_1[9]),
        .O(\pre_state_1[9]_i_1_n_0 ));
  FDRE \pre_state_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[0]_i_1_n_0 ),
        .Q(pre_state_1[0]),
        .R(1'b0));
  FDRE \pre_state_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[10]_i_1_n_0 ),
        .Q(pre_state_1[10]),
        .R(1'b0));
  FDRE \pre_state_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[11]_i_1_n_0 ),
        .Q(pre_state_1[11]),
        .R(1'b0));
  FDRE \pre_state_1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[12]_i_1_n_0 ),
        .Q(pre_state_1[12]),
        .R(1'b0));
  FDRE \pre_state_1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[13]_i_1_n_0 ),
        .Q(pre_state_1[13]),
        .R(1'b0));
  FDRE \pre_state_1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[14]_i_1_n_0 ),
        .Q(pre_state_1[14]),
        .R(1'b0));
  FDRE \pre_state_1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[15]_i_1_n_0 ),
        .Q(pre_state_1[15]),
        .R(1'b0));
  FDRE \pre_state_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[1]_i_1_n_0 ),
        .Q(pre_state_1[1]),
        .R(1'b0));
  FDRE \pre_state_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[2]_i_1_n_0 ),
        .Q(pre_state_1[2]),
        .R(1'b0));
  FDRE \pre_state_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[3]_i_1_n_0 ),
        .Q(pre_state_1[3]),
        .R(1'b0));
  FDRE \pre_state_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[4]_i_1_n_0 ),
        .Q(pre_state_1[4]),
        .R(1'b0));
  FDRE \pre_state_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[5]_i_1_n_0 ),
        .Q(pre_state_1[5]),
        .R(1'b0));
  FDRE \pre_state_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[6]_i_1_n_0 ),
        .Q(pre_state_1[6]),
        .R(1'b0));
  FDRE \pre_state_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[7]_i_1_n_0 ),
        .Q(pre_state_1[7]),
        .R(1'b0));
  FDRE \pre_state_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[8]_i_1_n_0 ),
        .Q(pre_state_1[8]),
        .R(1'b0));
  FDRE \pre_state_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_1[9]_i_1_n_0 ),
        .Q(pre_state_1[9]),
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

// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jul 22 22:40:04 2022
// Host        : DESKTOP-R78F55E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/verilog/project_viterbi/project_viterbi.srcs/sources_1/bd/decode/ip/decode_compare_3_0_0/decode_compare_3_0_0_sim_netlist.v
// Design      : decode_compare_3_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "decode_compare_3_0_0,compare_3,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "compare_3,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decode_compare_3_0_0
   (clk,
    rst,
    en,
    count2,
    count4,
    reg_out2,
    reg_out4,
    differsum1,
    differsum2,
    flag,
    differsum3,
    mem_reg_3,
    pre_state_3);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN decode_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
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

  wire clk;
  wire [1:0]count2;
  wire [1:0]count4;
  wire [4:0]differsum1;
  wire [4:0]differsum3;
  wire en;
  wire flag;
  wire [7:0]mem_reg_3;
  wire [15:0]pre_state_3;
  wire reg_out2;
  wire reg_out4;
  wire rst;

  decode_compare_3_0_0_compare_3 inst
       (.clk(clk),
        .count2(count2),
        .count4(count4),
        .differsum1(differsum1),
        .differsum3(differsum3),
        .en(en),
        .flag(flag),
        .mem_reg_3(mem_reg_3),
        .pre_state_3(pre_state_3),
        .reg_out2(reg_out2),
        .reg_out4(reg_out4),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "compare_3" *) 
module decode_compare_3_0_0_compare_3
   (mem_reg_3,
    pre_state_3,
    differsum3,
    rst,
    en,
    clk,
    count4,
    count2,
    differsum1,
    reg_out4,
    reg_out2,
    flag);
  output [7:0]mem_reg_3;
  output [15:0]pre_state_3;
  output [4:0]differsum3;
  input rst;
  input en;
  input clk;
  input [1:0]count4;
  input [1:0]count2;
  input [4:0]differsum1;
  input reg_out4;
  input reg_out2;
  input flag;

  wire clk;
  wire [1:0]count2;
  wire [1:0]count4;
  wire [4:0]differsum1;
  wire [4:0]differsum3;
  wire \differsum3[1]_i_2_n_0 ;
  wire \differsum3[2]_i_2_n_0 ;
  wire \differsum3[2]_i_3_n_0 ;
  wire \differsum3[3]_i_10_n_0 ;
  wire \differsum3[3]_i_2_n_0 ;
  wire \differsum3[3]_i_3_n_0 ;
  wire \differsum3[3]_i_4_n_0 ;
  wire \differsum3[3]_i_5_n_0 ;
  wire \differsum3[3]_i_6_n_0 ;
  wire \differsum3[3]_i_7_n_0 ;
  wire \differsum3[3]_i_8_n_0 ;
  wire \differsum3[3]_i_9_n_0 ;
  wire \differsum3[4]_i_1_n_0 ;
  wire \differsum3[4]_i_3_n_0 ;
  wire \differsum3[4]_i_4_n_0 ;
  wire en;
  wire flag;
  wire flag_compare;
  wire flag_compare_i_1_n_0;
  wire [2:0]i;
  wire [2:0]i0;
  wire \i[1]_i_1_n_0 ;
  wire [7:0]mem_reg_3;
  wire \mem_reg_3[0]_i_1_n_0 ;
  wire \mem_reg_3[1]_i_1_n_0 ;
  wire \mem_reg_3[2]_i_1_n_0 ;
  wire \mem_reg_3[3]_i_1_n_0 ;
  wire \mem_reg_3[4]_i_1_n_0 ;
  wire \mem_reg_3[5]_i_1_n_0 ;
  wire \mem_reg_3[6]_i_1_n_0 ;
  wire \mem_reg_3[7]_i_1_n_0 ;
  wire \mem_reg_3[7]_i_2_n_0 ;
  wire \mem_reg_3[7]_i_3_n_0 ;
  wire \mem_reg_3[7]_i_4_n_0 ;
  wire \mem_reg_3[7]_i_5_n_0 ;
  wire \mem_reg_3[7]_i_6_n_0 ;
  wire \mem_reg_3[7]_i_7_n_0 ;
  wire [4:0]p_0_in;
  wire [15:0]pre_state_3;
  wire \pre_state_3[0]_i_1_n_0 ;
  wire \pre_state_3[10]_i_1_n_0 ;
  wire \pre_state_3[11]_i_1_n_0 ;
  wire \pre_state_3[12]_i_1_n_0 ;
  wire \pre_state_3[13]_i_1_n_0 ;
  wire \pre_state_3[14]_i_1_n_0 ;
  wire \pre_state_3[15]_i_1_n_0 ;
  wire \pre_state_3[15]_i_2_n_0 ;
  wire \pre_state_3[1]_i_1_n_0 ;
  wire \pre_state_3[2]_i_1_n_0 ;
  wire \pre_state_3[3]_i_1_n_0 ;
  wire \pre_state_3[4]_i_1_n_0 ;
  wire \pre_state_3[5]_i_1_n_0 ;
  wire \pre_state_3[6]_i_1_n_0 ;
  wire \pre_state_3[7]_i_1_n_0 ;
  wire \pre_state_3[8]_i_1_n_0 ;
  wire \pre_state_3[9]_i_1_n_0 ;
  wire reg_out2;
  wire reg_out4;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \differsum3[0]_i_1 
       (.I0(differsum3[0]),
        .I1(count4[0]),
        .I2(\differsum3[3]_i_3_n_0 ),
        .I3(count2[0]),
        .I4(differsum1[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h8778FFFF87780000)) 
    \differsum3[1]_i_1 
       (.I0(count4[0]),
        .I1(differsum3[0]),
        .I2(count4[1]),
        .I3(differsum3[1]),
        .I4(\differsum3[3]_i_3_n_0 ),
        .I5(\differsum3[1]_i_2_n_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \differsum3[1]_i_2 
       (.I0(differsum1[0]),
        .I1(count2[0]),
        .I2(differsum1[1]),
        .I3(count2[1]),
        .O(\differsum3[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \differsum3[2]_i_1 
       (.I0(\differsum3[2]_i_2_n_0 ),
        .I1(\differsum3[3]_i_3_n_0 ),
        .I2(\differsum3[2]_i_3_n_0 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h556A6AAA)) 
    \differsum3[2]_i_2 
       (.I0(differsum3[2]),
        .I1(count4[0]),
        .I2(differsum3[0]),
        .I3(count4[1]),
        .I4(differsum3[1]),
        .O(\differsum3[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h566A6A6A)) 
    \differsum3[2]_i_3 
       (.I0(differsum1[2]),
        .I1(differsum1[1]),
        .I2(count2[1]),
        .I3(differsum1[0]),
        .I4(count2[0]),
        .O(\differsum3[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \differsum3[3]_i_1 
       (.I0(\differsum3[3]_i_2_n_0 ),
        .I1(\differsum3[3]_i_3_n_0 ),
        .I2(\differsum3[3]_i_4_n_0 ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \differsum3[3]_i_10 
       (.I0(differsum1[0]),
        .I1(count2[0]),
        .I2(count4[0]),
        .I3(differsum3[0]),
        .O(\differsum3[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h566A6A6AAAAAAAAA)) 
    \differsum3[3]_i_2 
       (.I0(differsum3[3]),
        .I1(differsum3[1]),
        .I2(count4[1]),
        .I3(differsum3[0]),
        .I4(count4[0]),
        .I5(differsum3[2]),
        .O(\differsum3[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4D444D444D44DD4D)) 
    \differsum3[3]_i_3 
       (.I0(\differsum3[3]_i_5_n_0 ),
        .I1(\differsum3[3]_i_6_n_0 ),
        .I2(\differsum3[3]_i_2_n_0 ),
        .I3(\differsum3[3]_i_4_n_0 ),
        .I4(\differsum3[3]_i_7_n_0 ),
        .I5(\differsum3[3]_i_8_n_0 ),
        .O(\differsum3[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h556A6AAAAAAAAAAA)) 
    \differsum3[3]_i_4 
       (.I0(differsum1[3]),
        .I1(count2[0]),
        .I2(differsum1[0]),
        .I3(count2[1]),
        .I4(differsum1[1]),
        .I5(differsum1[2]),
        .O(\differsum3[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \differsum3[3]_i_5 
       (.I0(differsum1[4]),
        .I1(\differsum3[4]_i_4_n_0 ),
        .I2(differsum1[3]),
        .O(\differsum3[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \differsum3[3]_i_6 
       (.I0(differsum3[4]),
        .I1(\differsum3[4]_i_3_n_0 ),
        .I2(differsum3[3]),
        .O(\differsum3[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000D0DDD)) 
    \differsum3[3]_i_7 
       (.I0(\differsum3[2]_i_3_n_0 ),
        .I1(\differsum3[2]_i_2_n_0 ),
        .I2(\differsum3[3]_i_9_n_0 ),
        .I3(\differsum3[1]_i_2_n_0 ),
        .I4(\differsum3[3]_i_10_n_0 ),
        .O(\differsum3[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000001777E888)) 
    \differsum3[3]_i_8 
       (.I0(differsum3[1]),
        .I1(count4[1]),
        .I2(differsum3[0]),
        .I3(count4[0]),
        .I4(differsum3[2]),
        .I5(\differsum3[2]_i_3_n_0 ),
        .O(\differsum3[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \differsum3[3]_i_9 
       (.I0(count4[0]),
        .I1(differsum3[0]),
        .I2(count4[1]),
        .I3(differsum3[1]),
        .O(\differsum3[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \differsum3[4]_i_1 
       (.I0(flag_compare),
        .I1(en),
        .I2(rst),
        .O(\differsum3[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0078787878000000)) 
    \differsum3[4]_i_2 
       (.I0(differsum3[3]),
        .I1(\differsum3[4]_i_3_n_0 ),
        .I2(differsum3[4]),
        .I3(differsum1[3]),
        .I4(\differsum3[4]_i_4_n_0 ),
        .I5(differsum1[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAA808000)) 
    \differsum3[4]_i_3 
       (.I0(differsum3[2]),
        .I1(count4[0]),
        .I2(differsum3[0]),
        .I3(count4[1]),
        .I4(differsum3[1]),
        .O(\differsum3[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA8808080)) 
    \differsum3[4]_i_4 
       (.I0(differsum1[2]),
        .I1(differsum1[1]),
        .I2(count2[1]),
        .I3(differsum1[0]),
        .I4(count2[0]),
        .O(\differsum3[4]_i_4_n_0 ));
  FDRE \differsum3_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(differsum3[0]),
        .R(\differsum3[4]_i_1_n_0 ));
  FDRE \differsum3_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(differsum3[1]),
        .R(\differsum3[4]_i_1_n_0 ));
  FDRE \differsum3_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(differsum3[2]),
        .R(\differsum3[4]_i_1_n_0 ));
  FDRE \differsum3_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(differsum3[3]),
        .R(\differsum3[4]_i_1_n_0 ));
  FDRE \differsum3_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(differsum3[4]),
        .R(\differsum3[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \i[1]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \i[2]_i_1 
       (.I0(i[2]),
        .I1(i[1]),
        .I2(i[0]),
        .O(i0[2]));
  FDSE \i_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(i0[0]),
        .Q(i[0]),
        .S(\differsum3[4]_i_1_n_0 ));
  FDSE \i_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\i[1]_i_1_n_0 ),
        .Q(i[1]),
        .S(\differsum3[4]_i_1_n_0 ));
  FDSE \i_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(i0[2]),
        .Q(i[2]),
        .S(\differsum3[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \mem_reg_3[0]_i_1 
       (.I0(\mem_reg_3[7]_i_2_n_0 ),
        .I1(i[1]),
        .I2(i[0]),
        .I3(i[2]),
        .I4(mem_reg_3[0]),
        .O(\mem_reg_3[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \mem_reg_3[1]_i_1 
       (.I0(\mem_reg_3[7]_i_2_n_0 ),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(mem_reg_3[1]),
        .O(\mem_reg_3[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \mem_reg_3[2]_i_1 
       (.I0(\mem_reg_3[7]_i_2_n_0 ),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(mem_reg_3[2]),
        .O(\mem_reg_3[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \mem_reg_3[3]_i_1 
       (.I0(\mem_reg_3[7]_i_2_n_0 ),
        .I1(i[1]),
        .I2(i[0]),
        .I3(i[2]),
        .I4(mem_reg_3[3]),
        .O(\mem_reg_3[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \mem_reg_3[4]_i_1 
       (.I0(\mem_reg_3[7]_i_2_n_0 ),
        .I1(i[1]),
        .I2(i[0]),
        .I3(i[2]),
        .I4(mem_reg_3[4]),
        .O(\mem_reg_3[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \mem_reg_3[5]_i_1 
       (.I0(\mem_reg_3[7]_i_2_n_0 ),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(mem_reg_3[5]),
        .O(\mem_reg_3[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \mem_reg_3[6]_i_1 
       (.I0(\mem_reg_3[7]_i_2_n_0 ),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(mem_reg_3[6]),
        .O(\mem_reg_3[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \mem_reg_3[7]_i_1 
       (.I0(\mem_reg_3[7]_i_2_n_0 ),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(mem_reg_3[7]),
        .O(\mem_reg_3[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBB80808088)) 
    \mem_reg_3[7]_i_2 
       (.I0(reg_out4),
        .I1(\mem_reg_3[7]_i_3_n_0 ),
        .I2(\mem_reg_3[7]_i_4_n_0 ),
        .I3(\differsum3[3]_i_7_n_0 ),
        .I4(\mem_reg_3[7]_i_5_n_0 ),
        .I5(reg_out2),
        .O(\mem_reg_3[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h87FFFFFFFF878787)) 
    \mem_reg_3[7]_i_3 
       (.I0(differsum3[3]),
        .I1(\differsum3[4]_i_3_n_0 ),
        .I2(differsum3[4]),
        .I3(differsum1[3]),
        .I4(\differsum3[4]_i_4_n_0 ),
        .I5(differsum1[4]),
        .O(\mem_reg_3[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4111F22FF22F8222)) 
    \mem_reg_3[7]_i_4 
       (.I0(differsum1[4]),
        .I1(differsum3[4]),
        .I2(differsum3[3]),
        .I3(\differsum3[4]_i_3_n_0 ),
        .I4(differsum1[3]),
        .I5(\differsum3[4]_i_4_n_0 ),
        .O(\mem_reg_3[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2111F44FF44F8444)) 
    \mem_reg_3[7]_i_5 
       (.I0(differsum1[3]),
        .I1(differsum3[3]),
        .I2(differsum1[2]),
        .I3(\mem_reg_3[7]_i_6_n_0 ),
        .I4(differsum3[2]),
        .I5(\mem_reg_3[7]_i_7_n_0 ),
        .O(\mem_reg_3[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \mem_reg_3[7]_i_6 
       (.I0(count2[0]),
        .I1(differsum1[0]),
        .I2(count2[1]),
        .I3(differsum1[1]),
        .O(\mem_reg_3[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \mem_reg_3[7]_i_7 
       (.I0(differsum3[1]),
        .I1(count4[1]),
        .I2(differsum3[0]),
        .I3(count4[0]),
        .O(\mem_reg_3[7]_i_7_n_0 ));
  FDRE \mem_reg_3_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_3[0]_i_1_n_0 ),
        .Q(mem_reg_3[0]),
        .R(\differsum3[4]_i_1_n_0 ));
  FDRE \mem_reg_3_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_3[1]_i_1_n_0 ),
        .Q(mem_reg_3[1]),
        .R(\differsum3[4]_i_1_n_0 ));
  FDRE \mem_reg_3_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_3[2]_i_1_n_0 ),
        .Q(mem_reg_3[2]),
        .R(\differsum3[4]_i_1_n_0 ));
  FDRE \mem_reg_3_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_3[3]_i_1_n_0 ),
        .Q(mem_reg_3[3]),
        .R(\differsum3[4]_i_1_n_0 ));
  FDRE \mem_reg_3_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_3[4]_i_1_n_0 ),
        .Q(mem_reg_3[4]),
        .R(\differsum3[4]_i_1_n_0 ));
  FDRE \mem_reg_3_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_3[5]_i_1_n_0 ),
        .Q(mem_reg_3[5]),
        .R(\differsum3[4]_i_1_n_0 ));
  FDRE \mem_reg_3_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_3[6]_i_1_n_0 ),
        .Q(mem_reg_3[6]),
        .R(\differsum3[4]_i_1_n_0 ));
  FDRE \mem_reg_3_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_reg_3[7]_i_1_n_0 ),
        .Q(mem_reg_3[7]),
        .R(\differsum3[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888C88888880)) 
    \pre_state_3[0]_i_1 
       (.I0(pre_state_3[0]),
        .I1(\pre_state_3[15]_i_2_n_0 ),
        .I2(i[2]),
        .I3(i[0]),
        .I4(i[1]),
        .I5(\differsum3[3]_i_3_n_0 ),
        .O(\pre_state_3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \pre_state_3[10]_i_1 
       (.I0(\differsum3[3]_i_3_n_0 ),
        .I1(\pre_state_3[15]_i_2_n_0 ),
        .I2(i[1]),
        .I3(i[0]),
        .I4(i[2]),
        .I5(pre_state_3[10]),
        .O(\pre_state_3[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF0000)) 
    \pre_state_3[11]_i_1 
       (.I0(\pre_state_3[15]_i_2_n_0 ),
        .I1(i[1]),
        .I2(i[0]),
        .I3(i[2]),
        .I4(pre_state_3[11]),
        .O(\pre_state_3[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \pre_state_3[12]_i_1 
       (.I0(\differsum3[3]_i_3_n_0 ),
        .I1(\pre_state_3[15]_i_2_n_0 ),
        .I2(i[0]),
        .I3(i[1]),
        .I4(i[2]),
        .I5(pre_state_3[12]),
        .O(\pre_state_3[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF0000)) 
    \pre_state_3[13]_i_1 
       (.I0(\pre_state_3[15]_i_2_n_0 ),
        .I1(i[0]),
        .I2(i[1]),
        .I3(i[2]),
        .I4(pre_state_3[13]),
        .O(\pre_state_3[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \pre_state_3[14]_i_1 
       (.I0(\differsum3[3]_i_3_n_0 ),
        .I1(\pre_state_3[15]_i_2_n_0 ),
        .I2(i[0]),
        .I3(i[1]),
        .I4(i[2]),
        .I5(pre_state_3[14]),
        .O(\pre_state_3[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \pre_state_3[15]_i_1 
       (.I0(\pre_state_3[15]_i_2_n_0 ),
        .I1(i[0]),
        .I2(i[1]),
        .I3(i[2]),
        .I4(pre_state_3[15]),
        .O(\pre_state_3[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pre_state_3[15]_i_2 
       (.I0(rst),
        .I1(en),
        .I2(flag_compare),
        .O(\pre_state_3[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \pre_state_3[1]_i_1 
       (.I0(\pre_state_3[15]_i_2_n_0 ),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(pre_state_3[1]),
        .O(\pre_state_3[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \pre_state_3[2]_i_1 
       (.I0(\differsum3[3]_i_3_n_0 ),
        .I1(\pre_state_3[15]_i_2_n_0 ),
        .I2(i[1]),
        .I3(i[0]),
        .I4(i[2]),
        .I5(pre_state_3[2]),
        .O(\pre_state_3[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFDF0000)) 
    \pre_state_3[3]_i_1 
       (.I0(\pre_state_3[15]_i_2_n_0 ),
        .I1(i[1]),
        .I2(i[0]),
        .I3(i[2]),
        .I4(pre_state_3[3]),
        .O(\pre_state_3[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \pre_state_3[4]_i_1 
       (.I0(\differsum3[3]_i_3_n_0 ),
        .I1(\pre_state_3[15]_i_2_n_0 ),
        .I2(i[0]),
        .I3(i[1]),
        .I4(i[2]),
        .I5(pre_state_3[4]),
        .O(\pre_state_3[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFDF0000)) 
    \pre_state_3[5]_i_1 
       (.I0(\pre_state_3[15]_i_2_n_0 ),
        .I1(i[0]),
        .I2(i[1]),
        .I3(i[2]),
        .I4(pre_state_3[5]),
        .O(\pre_state_3[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \pre_state_3[6]_i_1 
       (.I0(\differsum3[3]_i_3_n_0 ),
        .I1(\pre_state_3[15]_i_2_n_0 ),
        .I2(i[2]),
        .I3(i[0]),
        .I4(i[1]),
        .I5(pre_state_3[6]),
        .O(\pre_state_3[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF0000)) 
    \pre_state_3[7]_i_1 
       (.I0(\pre_state_3[15]_i_2_n_0 ),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(pre_state_3[7]),
        .O(\pre_state_3[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \pre_state_3[8]_i_1 
       (.I0(\differsum3[3]_i_3_n_0 ),
        .I1(\pre_state_3[15]_i_2_n_0 ),
        .I2(i[2]),
        .I3(i[0]),
        .I4(i[1]),
        .I5(pre_state_3[8]),
        .O(\pre_state_3[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70000)) 
    \pre_state_3[9]_i_1 
       (.I0(\pre_state_3[15]_i_2_n_0 ),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(pre_state_3[9]),
        .O(\pre_state_3[9]_i_1_n_0 ));
  FDRE \pre_state_3_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[0]_i_1_n_0 ),
        .Q(pre_state_3[0]),
        .R(1'b0));
  FDRE \pre_state_3_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[10]_i_1_n_0 ),
        .Q(pre_state_3[10]),
        .R(1'b0));
  FDRE \pre_state_3_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[11]_i_1_n_0 ),
        .Q(pre_state_3[11]),
        .R(1'b0));
  FDRE \pre_state_3_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[12]_i_1_n_0 ),
        .Q(pre_state_3[12]),
        .R(1'b0));
  FDRE \pre_state_3_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[13]_i_1_n_0 ),
        .Q(pre_state_3[13]),
        .R(1'b0));
  FDRE \pre_state_3_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[14]_i_1_n_0 ),
        .Q(pre_state_3[14]),
        .R(1'b0));
  FDRE \pre_state_3_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[15]_i_1_n_0 ),
        .Q(pre_state_3[15]),
        .R(1'b0));
  FDRE \pre_state_3_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[1]_i_1_n_0 ),
        .Q(pre_state_3[1]),
        .R(1'b0));
  FDRE \pre_state_3_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[2]_i_1_n_0 ),
        .Q(pre_state_3[2]),
        .R(1'b0));
  FDRE \pre_state_3_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[3]_i_1_n_0 ),
        .Q(pre_state_3[3]),
        .R(1'b0));
  FDRE \pre_state_3_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[4]_i_1_n_0 ),
        .Q(pre_state_3[4]),
        .R(1'b0));
  FDRE \pre_state_3_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[5]_i_1_n_0 ),
        .Q(pre_state_3[5]),
        .R(1'b0));
  FDRE \pre_state_3_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[6]_i_1_n_0 ),
        .Q(pre_state_3[6]),
        .R(1'b0));
  FDRE \pre_state_3_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[7]_i_1_n_0 ),
        .Q(pre_state_3[7]),
        .R(1'b0));
  FDRE \pre_state_3_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[8]_i_1_n_0 ),
        .Q(pre_state_3[8]),
        .R(1'b0));
  FDRE \pre_state_3_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\pre_state_3[9]_i_1_n_0 ),
        .Q(pre_state_3[9]),
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

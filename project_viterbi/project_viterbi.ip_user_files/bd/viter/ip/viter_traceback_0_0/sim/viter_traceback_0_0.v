// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:traceback:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module viter_traceback_0_0 (
  clk,
  rst,
  en,
  differsum1,
  mem_reg_1,
  pre_state1,
  differsum2,
  mem_reg_2,
  pre_state2,
  differsum3,
  mem_reg_3,
  pre_state3,
  differsum4,
  mem_reg_4,
  pre_state4,
  flag,
  mem_out,
  done
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN viter_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire en;
input wire [4 : 0] differsum1;
input wire [7 : 0] mem_reg_1;
input wire [15 : 0] pre_state1;
input wire [4 : 0] differsum2;
input wire [7 : 0] mem_reg_2;
input wire [15 : 0] pre_state2;
input wire [4 : 0] differsum3;
input wire [7 : 0] mem_reg_3;
input wire [15 : 0] pre_state3;
input wire [4 : 0] differsum4;
input wire [7 : 0] mem_reg_4;
input wire [15 : 0] pre_state4;
input wire flag;
output wire [7 : 0] mem_out;
output wire done;

  traceback inst (
    .clk(clk),
    .rst(rst),
    .en(en),
    .differsum1(differsum1),
    .mem_reg_1(mem_reg_1),
    .pre_state1(pre_state1),
    .differsum2(differsum2),
    .mem_reg_2(mem_reg_2),
    .pre_state2(pre_state2),
    .differsum3(differsum3),
    .mem_reg_3(mem_reg_3),
    .pre_state3(pre_state3),
    .differsum4(differsum4),
    .mem_reg_4(mem_reg_4),
    .pre_state4(pre_state4),
    .flag(flag),
    .mem_out(mem_out),
    .done(done)
  );
endmodule

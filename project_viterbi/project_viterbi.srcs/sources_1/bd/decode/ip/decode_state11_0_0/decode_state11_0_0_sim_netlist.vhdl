-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jul 14 09:51:31 2022
-- Host        : DESKTOP-R78F55E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               F:/verilog/project_viterbi/project_viterbi.srcs/sources_1/bd/decode/ip/decode_state11_0_0/decode_state11_0_0_sim_netlist.vhdl
-- Design      : decode_state11_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decode_state11_0_0 is
  port (
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    bit_out_7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bit_out_8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    reg_out7 : out STD_LOGIC;
    reg_out8 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decode_state11_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decode_state11_0_0 : entity is "decode_state11_0_0,state11,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decode_state11_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decode_state11_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decode_state11_0_0 : entity is "state11,Vivado 2018.3";
end decode_state11_0_0;

architecture STRUCTURE of decode_state11_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  bit_out_7(1) <= \<const0>\;
  bit_out_7(0) <= \<const1>\;
  bit_out_8(1) <= \<const1>\;
  bit_out_8(0) <= \<const0>\;
  reg_out7 <= \<const0>\;
  reg_out8 <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;

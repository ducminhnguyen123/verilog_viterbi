-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jul 14 09:50:13 2022
-- Host        : DESKTOP-R78F55E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/verilog/project_viterbi/project_viterbi.srcs/sources_1/bd/decode/ip/decode_state01_0_0/decode_state01_0_0_stub.vhdl
-- Design      : decode_state01_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decode_state01_0_0 is
  Port ( 
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    bit_out_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bit_out_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    reg_out3 : out STD_LOGIC;
    reg_out4 : out STD_LOGIC
  );

end decode_state01_0_0;

architecture stub of decode_state01_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,en,bit_out_3[1:0],bit_out_4[1:0],reg_out3,reg_out4";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "state01,Vivado 2018.3";
begin
end;

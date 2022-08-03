-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Jul 22 22:40:04 2022
-- Host        : DESKTOP-R78F55E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/verilog/project_viterbi/project_viterbi.srcs/sources_1/bd/decode/ip/decode_comparer_4_0_0/decode_comparer_4_0_0_stub.vhdl
-- Design      : decode_comparer_4_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decode_comparer_4_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    count6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    count8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reg_out6 : in STD_LOGIC;
    reg_out8 : in STD_LOGIC;
    differsum3 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    flag : in STD_LOGIC;
    differsum4 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    mem_reg_4 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pre_state_4 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decode_comparer_4_0_0;

architecture stub of decode_comparer_4_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,en,count6[1:0],count8[1:0],reg_out6,reg_out8,differsum3[4:0],flag,differsum4[4:0],mem_reg_4[7:0],pre_state_4[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "comparer_4,Vivado 2018.3";
begin
end;

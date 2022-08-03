-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Jul 22 22:40:04 2022
-- Host        : DESKTOP-R78F55E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               F:/verilog/project_viterbi/project_viterbi.srcs/sources_1/bd/decode/ip/decode_compare_3_0_0/decode_compare_3_0_0_sim_netlist.vhdl
-- Design      : decode_compare_3_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decode_compare_3_0_0_compare_3 is
  port (
    mem_reg_3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pre_state_3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    differsum3 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    count4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    count2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    differsum1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reg_out4 : in STD_LOGIC;
    reg_out2 : in STD_LOGIC;
    flag : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decode_compare_3_0_0_compare_3 : entity is "compare_3";
end decode_compare_3_0_0_compare_3;

architecture STRUCTURE of decode_compare_3_0_0_compare_3 is
  signal \^differsum3\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \differsum3[1]_i_2_n_0\ : STD_LOGIC;
  signal \differsum3[2]_i_2_n_0\ : STD_LOGIC;
  signal \differsum3[2]_i_3_n_0\ : STD_LOGIC;
  signal \differsum3[3]_i_10_n_0\ : STD_LOGIC;
  signal \differsum3[3]_i_2_n_0\ : STD_LOGIC;
  signal \differsum3[3]_i_3_n_0\ : STD_LOGIC;
  signal \differsum3[3]_i_4_n_0\ : STD_LOGIC;
  signal \differsum3[3]_i_5_n_0\ : STD_LOGIC;
  signal \differsum3[3]_i_6_n_0\ : STD_LOGIC;
  signal \differsum3[3]_i_7_n_0\ : STD_LOGIC;
  signal \differsum3[3]_i_8_n_0\ : STD_LOGIC;
  signal \differsum3[3]_i_9_n_0\ : STD_LOGIC;
  signal \differsum3[4]_i_1_n_0\ : STD_LOGIC;
  signal \differsum3[4]_i_3_n_0\ : STD_LOGIC;
  signal \differsum3[4]_i_4_n_0\ : STD_LOGIC;
  signal flag_compare : STD_LOGIC;
  signal flag_compare_i_1_n_0 : STD_LOGIC;
  signal i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i[1]_i_1_n_0\ : STD_LOGIC;
  signal \^mem_reg_3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mem_reg_3[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_3[1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_3[2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_3[3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_3[4]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_3[5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_3[6]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_3[7]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_3[7]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg_3[7]_i_3_n_0\ : STD_LOGIC;
  signal \mem_reg_3[7]_i_4_n_0\ : STD_LOGIC;
  signal \mem_reg_3[7]_i_5_n_0\ : STD_LOGIC;
  signal \mem_reg_3[7]_i_6_n_0\ : STD_LOGIC;
  signal \mem_reg_3[7]_i_7_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^pre_state_3\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pre_state_3[0]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[10]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[11]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[12]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[13]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[14]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[15]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[15]_i_2_n_0\ : STD_LOGIC;
  signal \pre_state_3[1]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[2]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[3]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[4]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[5]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[6]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[7]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[8]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_3[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \differsum3[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \differsum3[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \differsum3[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \differsum3[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \differsum3[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \differsum3[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \differsum3[3]_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \differsum3[3]_i_9\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \differsum3[4]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \differsum3[4]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of flag_compare_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mem_reg_3[7]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mem_reg_3[7]_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pre_state_3[15]_i_2\ : label is "soft_lutpair6";
begin
  differsum3(4 downto 0) <= \^differsum3\(4 downto 0);
  mem_reg_3(7 downto 0) <= \^mem_reg_3\(7 downto 0);
  pre_state_3(15 downto 0) <= \^pre_state_3\(15 downto 0);
\differsum3[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \^differsum3\(0),
      I1 => count4(0),
      I2 => \differsum3[3]_i_3_n_0\,
      I3 => count2(0),
      I4 => differsum1(0),
      O => p_0_in(0)
    );
\differsum3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8778FFFF87780000"
    )
        port map (
      I0 => count4(0),
      I1 => \^differsum3\(0),
      I2 => count4(1),
      I3 => \^differsum3\(1),
      I4 => \differsum3[3]_i_3_n_0\,
      I5 => \differsum3[1]_i_2_n_0\,
      O => p_0_in(1)
    );
\differsum3[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => differsum1(0),
      I1 => count2(0),
      I2 => differsum1(1),
      I3 => count2(1),
      O => \differsum3[1]_i_2_n_0\
    );
\differsum3[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \differsum3[2]_i_2_n_0\,
      I1 => \differsum3[3]_i_3_n_0\,
      I2 => \differsum3[2]_i_3_n_0\,
      O => p_0_in(2)
    );
\differsum3[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556A6AAA"
    )
        port map (
      I0 => \^differsum3\(2),
      I1 => count4(0),
      I2 => \^differsum3\(0),
      I3 => count4(1),
      I4 => \^differsum3\(1),
      O => \differsum3[2]_i_2_n_0\
    );
\differsum3[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"566A6A6A"
    )
        port map (
      I0 => differsum1(2),
      I1 => differsum1(1),
      I2 => count2(1),
      I3 => differsum1(0),
      I4 => count2(0),
      O => \differsum3[2]_i_3_n_0\
    );
\differsum3[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \differsum3[3]_i_2_n_0\,
      I1 => \differsum3[3]_i_3_n_0\,
      I2 => \differsum3[3]_i_4_n_0\,
      O => p_0_in(3)
    );
\differsum3[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => differsum1(0),
      I1 => count2(0),
      I2 => count4(0),
      I3 => \^differsum3\(0),
      O => \differsum3[3]_i_10_n_0\
    );
\differsum3[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566A6A6AAAAAAAAA"
    )
        port map (
      I0 => \^differsum3\(3),
      I1 => \^differsum3\(1),
      I2 => count4(1),
      I3 => \^differsum3\(0),
      I4 => count4(0),
      I5 => \^differsum3\(2),
      O => \differsum3[3]_i_2_n_0\
    );
\differsum3[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D444D444D44DD4D"
    )
        port map (
      I0 => \differsum3[3]_i_5_n_0\,
      I1 => \differsum3[3]_i_6_n_0\,
      I2 => \differsum3[3]_i_2_n_0\,
      I3 => \differsum3[3]_i_4_n_0\,
      I4 => \differsum3[3]_i_7_n_0\,
      I5 => \differsum3[3]_i_8_n_0\,
      O => \differsum3[3]_i_3_n_0\
    );
\differsum3[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556A6AAAAAAAAAAA"
    )
        port map (
      I0 => differsum1(3),
      I1 => count2(0),
      I2 => differsum1(0),
      I3 => count2(1),
      I4 => differsum1(1),
      I5 => differsum1(2),
      O => \differsum3[3]_i_4_n_0\
    );
\differsum3[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => differsum1(4),
      I1 => \differsum3[4]_i_4_n_0\,
      I2 => differsum1(3),
      O => \differsum3[3]_i_5_n_0\
    );
\differsum3[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \^differsum3\(4),
      I1 => \differsum3[4]_i_3_n_0\,
      I2 => \^differsum3\(3),
      O => \differsum3[3]_i_6_n_0\
    );
\differsum3[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000D0DDD"
    )
        port map (
      I0 => \differsum3[2]_i_3_n_0\,
      I1 => \differsum3[2]_i_2_n_0\,
      I2 => \differsum3[3]_i_9_n_0\,
      I3 => \differsum3[1]_i_2_n_0\,
      I4 => \differsum3[3]_i_10_n_0\,
      O => \differsum3[3]_i_7_n_0\
    );
\differsum3[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001777E888"
    )
        port map (
      I0 => \^differsum3\(1),
      I1 => count4(1),
      I2 => \^differsum3\(0),
      I3 => count4(0),
      I4 => \^differsum3\(2),
      I5 => \differsum3[2]_i_3_n_0\,
      O => \differsum3[3]_i_8_n_0\
    );
\differsum3[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => count4(0),
      I1 => \^differsum3\(0),
      I2 => count4(1),
      I3 => \^differsum3\(1),
      O => \differsum3[3]_i_9_n_0\
    );
\differsum3[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => flag_compare,
      I1 => en,
      I2 => rst,
      O => \differsum3[4]_i_1_n_0\
    );
\differsum3[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0078787878000000"
    )
        port map (
      I0 => \^differsum3\(3),
      I1 => \differsum3[4]_i_3_n_0\,
      I2 => \^differsum3\(4),
      I3 => differsum1(3),
      I4 => \differsum3[4]_i_4_n_0\,
      I5 => differsum1(4),
      O => p_0_in(4)
    );
\differsum3[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808000"
    )
        port map (
      I0 => \^differsum3\(2),
      I1 => count4(0),
      I2 => \^differsum3\(0),
      I3 => count4(1),
      I4 => \^differsum3\(1),
      O => \differsum3[4]_i_3_n_0\
    );
\differsum3[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8808080"
    )
        port map (
      I0 => differsum1(2),
      I1 => differsum1(1),
      I2 => count2(1),
      I3 => differsum1(0),
      I4 => count2(0),
      O => \differsum3[4]_i_4_n_0\
    );
\differsum3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => \^differsum3\(0),
      R => \differsum3[4]_i_1_n_0\
    );
\differsum3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => \^differsum3\(1),
      R => \differsum3[4]_i_1_n_0\
    );
\differsum3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => \^differsum3\(2),
      R => \differsum3[4]_i_1_n_0\
    );
\differsum3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => \^differsum3\(3),
      R => \differsum3[4]_i_1_n_0\
    );
\differsum3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => \^differsum3\(4),
      R => \differsum3[4]_i_1_n_0\
    );
flag_compare_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => flag_compare,
      I1 => rst,
      I2 => flag,
      O => flag_compare_i_1_n_0
    );
flag_compare_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => flag_compare_i_1_n_0,
      Q => flag_compare,
      R => '0'
    );
\i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(0),
      O => i0(0)
    );
\i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      O => \i[1]_i_1_n_0\
    );
\i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => i(2),
      I1 => i(1),
      I2 => i(0),
      O => i0(2)
    );
\i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => i0(0),
      Q => i(0),
      S => \differsum3[4]_i_1_n_0\
    );
\i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \i[1]_i_1_n_0\,
      Q => i(1),
      S => \differsum3[4]_i_1_n_0\
    );
\i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => i0(2),
      Q => i(2),
      S => \differsum3[4]_i_1_n_0\
    );
\mem_reg_3[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => \mem_reg_3[7]_i_2_n_0\,
      I1 => i(1),
      I2 => i(0),
      I3 => i(2),
      I4 => \^mem_reg_3\(0),
      O => \mem_reg_3[0]_i_1_n_0\
    );
\mem_reg_3[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => \mem_reg_3[7]_i_2_n_0\,
      I1 => i(2),
      I2 => i(0),
      I3 => i(1),
      I4 => \^mem_reg_3\(1),
      O => \mem_reg_3[1]_i_1_n_0\
    );
\mem_reg_3[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => \mem_reg_3[7]_i_2_n_0\,
      I1 => i(2),
      I2 => i(1),
      I3 => i(0),
      I4 => \^mem_reg_3\(2),
      O => \mem_reg_3[2]_i_1_n_0\
    );
\mem_reg_3[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \mem_reg_3[7]_i_2_n_0\,
      I1 => i(1),
      I2 => i(0),
      I3 => i(2),
      I4 => \^mem_reg_3\(3),
      O => \mem_reg_3[3]_i_1_n_0\
    );
\mem_reg_3[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => \mem_reg_3[7]_i_2_n_0\,
      I1 => i(1),
      I2 => i(0),
      I3 => i(2),
      I4 => \^mem_reg_3\(4),
      O => \mem_reg_3[4]_i_1_n_0\
    );
\mem_reg_3[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \mem_reg_3[7]_i_2_n_0\,
      I1 => i(2),
      I2 => i(0),
      I3 => i(1),
      I4 => \^mem_reg_3\(5),
      O => \mem_reg_3[5]_i_1_n_0\
    );
\mem_reg_3[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \mem_reg_3[7]_i_2_n_0\,
      I1 => i(2),
      I2 => i(1),
      I3 => i(0),
      I4 => \^mem_reg_3\(6),
      O => \mem_reg_3[6]_i_1_n_0\
    );
\mem_reg_3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \mem_reg_3[7]_i_2_n_0\,
      I1 => i(2),
      I2 => i(1),
      I3 => i(0),
      I4 => \^mem_reg_3\(7),
      O => \mem_reg_3[7]_i_1_n_0\
    );
\mem_reg_3[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBB80808088"
    )
        port map (
      I0 => reg_out4,
      I1 => \mem_reg_3[7]_i_3_n_0\,
      I2 => \mem_reg_3[7]_i_4_n_0\,
      I3 => \differsum3[3]_i_7_n_0\,
      I4 => \mem_reg_3[7]_i_5_n_0\,
      I5 => reg_out2,
      O => \mem_reg_3[7]_i_2_n_0\
    );
\mem_reg_3[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87FFFFFFFF878787"
    )
        port map (
      I0 => \^differsum3\(3),
      I1 => \differsum3[4]_i_3_n_0\,
      I2 => \^differsum3\(4),
      I3 => differsum1(3),
      I4 => \differsum3[4]_i_4_n_0\,
      I5 => differsum1(4),
      O => \mem_reg_3[7]_i_3_n_0\
    );
\mem_reg_3[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4111F22FF22F8222"
    )
        port map (
      I0 => differsum1(4),
      I1 => \^differsum3\(4),
      I2 => \^differsum3\(3),
      I3 => \differsum3[4]_i_3_n_0\,
      I4 => differsum1(3),
      I5 => \differsum3[4]_i_4_n_0\,
      O => \mem_reg_3[7]_i_4_n_0\
    );
\mem_reg_3[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2111F44FF44F8444"
    )
        port map (
      I0 => differsum1(3),
      I1 => \^differsum3\(3),
      I2 => differsum1(2),
      I3 => \mem_reg_3[7]_i_6_n_0\,
      I4 => \^differsum3\(2),
      I5 => \mem_reg_3[7]_i_7_n_0\,
      O => \mem_reg_3[7]_i_5_n_0\
    );
\mem_reg_3[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => count2(0),
      I1 => differsum1(0),
      I2 => count2(1),
      I3 => differsum1(1),
      O => \mem_reg_3[7]_i_6_n_0\
    );
\mem_reg_3[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => \^differsum3\(1),
      I1 => count4(1),
      I2 => \^differsum3\(0),
      I3 => count4(0),
      O => \mem_reg_3[7]_i_7_n_0\
    );
\mem_reg_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_3[0]_i_1_n_0\,
      Q => \^mem_reg_3\(0),
      R => \differsum3[4]_i_1_n_0\
    );
\mem_reg_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_3[1]_i_1_n_0\,
      Q => \^mem_reg_3\(1),
      R => \differsum3[4]_i_1_n_0\
    );
\mem_reg_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_3[2]_i_1_n_0\,
      Q => \^mem_reg_3\(2),
      R => \differsum3[4]_i_1_n_0\
    );
\mem_reg_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_3[3]_i_1_n_0\,
      Q => \^mem_reg_3\(3),
      R => \differsum3[4]_i_1_n_0\
    );
\mem_reg_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_3[4]_i_1_n_0\,
      Q => \^mem_reg_3\(4),
      R => \differsum3[4]_i_1_n_0\
    );
\mem_reg_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_3[5]_i_1_n_0\,
      Q => \^mem_reg_3\(5),
      R => \differsum3[4]_i_1_n_0\
    );
\mem_reg_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_3[6]_i_1_n_0\,
      Q => \^mem_reg_3\(6),
      R => \differsum3[4]_i_1_n_0\
    );
\mem_reg_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_3[7]_i_1_n_0\,
      Q => \^mem_reg_3\(7),
      R => \differsum3[4]_i_1_n_0\
    );
\pre_state_3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888C88888880"
    )
        port map (
      I0 => \^pre_state_3\(0),
      I1 => \pre_state_3[15]_i_2_n_0\,
      I2 => i(2),
      I3 => i(0),
      I4 => i(1),
      I5 => \differsum3[3]_i_3_n_0\,
      O => \pre_state_3[0]_i_1_n_0\
    );
\pre_state_3[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => \differsum3[3]_i_3_n_0\,
      I1 => \pre_state_3[15]_i_2_n_0\,
      I2 => i(1),
      I3 => i(0),
      I4 => i(2),
      I5 => \^pre_state_3\(10),
      O => \pre_state_3[10]_i_1_n_0\
    );
\pre_state_3[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF0000"
    )
        port map (
      I0 => \pre_state_3[15]_i_2_n_0\,
      I1 => i(1),
      I2 => i(0),
      I3 => i(2),
      I4 => \^pre_state_3\(11),
      O => \pre_state_3[11]_i_1_n_0\
    );
\pre_state_3[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => \differsum3[3]_i_3_n_0\,
      I1 => \pre_state_3[15]_i_2_n_0\,
      I2 => i(0),
      I3 => i(1),
      I4 => i(2),
      I5 => \^pre_state_3\(12),
      O => \pre_state_3[12]_i_1_n_0\
    );
\pre_state_3[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF0000"
    )
        port map (
      I0 => \pre_state_3[15]_i_2_n_0\,
      I1 => i(0),
      I2 => i(1),
      I3 => i(2),
      I4 => \^pre_state_3\(13),
      O => \pre_state_3[13]_i_1_n_0\
    );
\pre_state_3[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \differsum3[3]_i_3_n_0\,
      I1 => \pre_state_3[15]_i_2_n_0\,
      I2 => i(0),
      I3 => i(1),
      I4 => i(2),
      I5 => \^pre_state_3\(14),
      O => \pre_state_3[14]_i_1_n_0\
    );
\pre_state_3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \pre_state_3[15]_i_2_n_0\,
      I1 => i(0),
      I2 => i(1),
      I3 => i(2),
      I4 => \^pre_state_3\(15),
      O => \pre_state_3[15]_i_1_n_0\
    );
\pre_state_3[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => flag_compare,
      O => \pre_state_3[15]_i_2_n_0\
    );
\pre_state_3[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => \pre_state_3[15]_i_2_n_0\,
      I1 => i(2),
      I2 => i(0),
      I3 => i(1),
      I4 => \^pre_state_3\(1),
      O => \pre_state_3[1]_i_1_n_0\
    );
\pre_state_3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => \differsum3[3]_i_3_n_0\,
      I1 => \pre_state_3[15]_i_2_n_0\,
      I2 => i(1),
      I3 => i(0),
      I4 => i(2),
      I5 => \^pre_state_3\(2),
      O => \pre_state_3[2]_i_1_n_0\
    );
\pre_state_3[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0000"
    )
        port map (
      I0 => \pre_state_3[15]_i_2_n_0\,
      I1 => i(1),
      I2 => i(0),
      I3 => i(2),
      I4 => \^pre_state_3\(3),
      O => \pre_state_3[3]_i_1_n_0\
    );
\pre_state_3[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => \differsum3[3]_i_3_n_0\,
      I1 => \pre_state_3[15]_i_2_n_0\,
      I2 => i(0),
      I3 => i(1),
      I4 => i(2),
      I5 => \^pre_state_3\(4),
      O => \pre_state_3[4]_i_1_n_0\
    );
\pre_state_3[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0000"
    )
        port map (
      I0 => \pre_state_3[15]_i_2_n_0\,
      I1 => i(0),
      I2 => i(1),
      I3 => i(2),
      I4 => \^pre_state_3\(5),
      O => \pre_state_3[5]_i_1_n_0\
    );
\pre_state_3[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => \differsum3[3]_i_3_n_0\,
      I1 => \pre_state_3[15]_i_2_n_0\,
      I2 => i(2),
      I3 => i(0),
      I4 => i(1),
      I5 => \^pre_state_3\(6),
      O => \pre_state_3[6]_i_1_n_0\
    );
\pre_state_3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF0000"
    )
        port map (
      I0 => \pre_state_3[15]_i_2_n_0\,
      I1 => i(2),
      I2 => i(0),
      I3 => i(1),
      I4 => \^pre_state_3\(7),
      O => \pre_state_3[7]_i_1_n_0\
    );
\pre_state_3[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => \differsum3[3]_i_3_n_0\,
      I1 => \pre_state_3[15]_i_2_n_0\,
      I2 => i(2),
      I3 => i(0),
      I4 => i(1),
      I5 => \^pre_state_3\(8),
      O => \pre_state_3[8]_i_1_n_0\
    );
\pre_state_3[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70000"
    )
        port map (
      I0 => \pre_state_3[15]_i_2_n_0\,
      I1 => i(2),
      I2 => i(0),
      I3 => i(1),
      I4 => \^pre_state_3\(9),
      O => \pre_state_3[9]_i_1_n_0\
    );
\pre_state_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[0]_i_1_n_0\,
      Q => \^pre_state_3\(0),
      R => '0'
    );
\pre_state_3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[10]_i_1_n_0\,
      Q => \^pre_state_3\(10),
      R => '0'
    );
\pre_state_3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[11]_i_1_n_0\,
      Q => \^pre_state_3\(11),
      R => '0'
    );
\pre_state_3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[12]_i_1_n_0\,
      Q => \^pre_state_3\(12),
      R => '0'
    );
\pre_state_3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[13]_i_1_n_0\,
      Q => \^pre_state_3\(13),
      R => '0'
    );
\pre_state_3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[14]_i_1_n_0\,
      Q => \^pre_state_3\(14),
      R => '0'
    );
\pre_state_3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[15]_i_1_n_0\,
      Q => \^pre_state_3\(15),
      R => '0'
    );
\pre_state_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[1]_i_1_n_0\,
      Q => \^pre_state_3\(1),
      R => '0'
    );
\pre_state_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[2]_i_1_n_0\,
      Q => \^pre_state_3\(2),
      R => '0'
    );
\pre_state_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[3]_i_1_n_0\,
      Q => \^pre_state_3\(3),
      R => '0'
    );
\pre_state_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[4]_i_1_n_0\,
      Q => \^pre_state_3\(4),
      R => '0'
    );
\pre_state_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[5]_i_1_n_0\,
      Q => \^pre_state_3\(5),
      R => '0'
    );
\pre_state_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[6]_i_1_n_0\,
      Q => \^pre_state_3\(6),
      R => '0'
    );
\pre_state_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[7]_i_1_n_0\,
      Q => \^pre_state_3\(7),
      R => '0'
    );
\pre_state_3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[8]_i_1_n_0\,
      Q => \^pre_state_3\(8),
      R => '0'
    );
\pre_state_3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_3[9]_i_1_n_0\,
      Q => \^pre_state_3\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decode_compare_3_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    count2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    count4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reg_out2 : in STD_LOGIC;
    reg_out4 : in STD_LOGIC;
    differsum1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    differsum2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    flag : in STD_LOGIC;
    differsum3 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    mem_reg_3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pre_state_3 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decode_compare_3_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decode_compare_3_0_0 : entity is "decode_compare_3_0_0,compare_3,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decode_compare_3_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decode_compare_3_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decode_compare_3_0_0 : entity is "compare_3,Vivado 2018.3";
end decode_compare_3_0_0;

architecture STRUCTURE of decode_compare_3_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN decode_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decode_compare_3_0_0_compare_3
     port map (
      clk => clk,
      count2(1 downto 0) => count2(1 downto 0),
      count4(1 downto 0) => count4(1 downto 0),
      differsum1(4 downto 0) => differsum1(4 downto 0),
      differsum3(4 downto 0) => differsum3(4 downto 0),
      en => en,
      flag => flag,
      mem_reg_3(7 downto 0) => mem_reg_3(7 downto 0),
      pre_state_3(15 downto 0) => pre_state_3(15 downto 0),
      reg_out2 => reg_out2,
      reg_out4 => reg_out4,
      rst => rst
    );
end STRUCTURE;

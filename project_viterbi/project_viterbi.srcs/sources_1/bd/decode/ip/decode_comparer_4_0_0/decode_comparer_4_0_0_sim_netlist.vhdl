-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Jul 22 22:40:04 2022
-- Host        : DESKTOP-R78F55E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               F:/verilog/project_viterbi/project_viterbi.srcs/sources_1/bd/decode/ip/decode_comparer_4_0_0/decode_comparer_4_0_0_sim_netlist.vhdl
-- Design      : decode_comparer_4_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decode_comparer_4_0_0_comparer_4 is
  port (
    mem_reg_4 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pre_state_4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    differsum4 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    reg_out6 : in STD_LOGIC;
    reg_out8 : in STD_LOGIC;
    differsum3 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    count6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    count8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    flag : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decode_comparer_4_0_0_comparer_4 : entity is "comparer_4";
end decode_comparer_4_0_0_comparer_4;

architecture STRUCTURE of decode_comparer_4_0_0_comparer_4 is
  signal data : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^differsum4\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal differsum42 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \differsum4[4]_i_11_n_0\ : STD_LOGIC;
  signal \differsum4[4]_i_1_n_0\ : STD_LOGIC;
  signal \differsum4[4]_i_4_n_0\ : STD_LOGIC;
  signal \differsum4[4]_i_6_n_0\ : STD_LOGIC;
  signal \differsum4[4]_i_7_n_0\ : STD_LOGIC;
  signal \differsum4[4]_i_8_n_0\ : STD_LOGIC;
  signal \differsum4[4]_i_9_n_0\ : STD_LOGIC;
  signal flag_compare : STD_LOGIC;
  signal flag_compare_i_1_n_0 : STD_LOGIC;
  signal i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^mem_reg_4\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mem_reg_4[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_4[0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg_4[1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_4[1]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg_4[2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_4[2]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg_4[3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_4[3]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg_4[4]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_4[4]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg_4[5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_4[5]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg_4[6]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_4[6]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg_4[7]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_4[7]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^pre_state_4\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pre_state_4[0]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[10]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[11]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[12]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[13]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[14]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[15]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[1]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[2]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[3]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[4]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[5]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[6]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[7]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[8]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_4[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \differsum4[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \differsum4[1]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \differsum4[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \differsum4[2]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \differsum4[2]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \differsum4[4]_i_10\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \differsum4[4]_i_11\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \differsum4[4]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \differsum4[4]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \differsum4[4]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mem_reg_4[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mem_reg_4[1]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \mem_reg_4[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mem_reg_4[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mem_reg_4[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mem_reg_4[5]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mem_reg_4[6]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mem_reg_4[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pre_state_4[11]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pre_state_4[13]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pre_state_4[15]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pre_state_4[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pre_state_4[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \pre_state_4[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pre_state_4[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pre_state_4[9]_i_1\ : label is "soft_lutpair5";
begin
  differsum4(4 downto 0) <= \^differsum4\(4 downto 0);
  mem_reg_4(7 downto 0) <= \^mem_reg_4\(7 downto 0);
  pre_state_4(15 downto 0) <= \^pre_state_4\(15 downto 0);
\differsum4[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => differsum3(0),
      I1 => count6(0),
      I2 => \differsum4[4]_i_4_n_0\,
      I3 => \^differsum4\(0),
      I4 => count8(0),
      O => p_0_in(0)
    );
\differsum4[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8778FFFF87780000"
    )
        port map (
      I0 => differsum3(0),
      I1 => count6(0),
      I2 => count6(1),
      I3 => differsum3(1),
      I4 => \differsum4[4]_i_4_n_0\,
      I5 => differsum42(1),
      O => p_0_in(1)
    );
\differsum4[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \^differsum4\(0),
      I1 => count8(0),
      I2 => count8(1),
      I3 => \^differsum4\(1),
      O => differsum42(1)
    );
\differsum4[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(2),
      I1 => \differsum4[4]_i_4_n_0\,
      I2 => differsum42(2),
      O => p_0_in(2)
    );
\differsum4[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1777E888"
    )
        port map (
      I0 => differsum3(1),
      I1 => count6(1),
      I2 => count6(0),
      I3 => differsum3(0),
      I4 => differsum3(2),
      O => data(2)
    );
\differsum4[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1777E888"
    )
        port map (
      I0 => \^differsum4\(1),
      I1 => count8(1),
      I2 => count8(0),
      I3 => \^differsum4\(0),
      I4 => \^differsum4\(2),
      O => differsum42(2)
    );
\differsum4[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(3),
      I1 => \differsum4[4]_i_4_n_0\,
      I2 => differsum42(3),
      O => p_0_in(3)
    );
\differsum4[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"077FFFFFF8800000"
    )
        port map (
      I0 => differsum3(0),
      I1 => count6(0),
      I2 => count6(1),
      I3 => differsum3(1),
      I4 => differsum3(2),
      I5 => differsum3(3),
      O => data(3)
    );
\differsum4[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"077FFFFFF8800000"
    )
        port map (
      I0 => \^differsum4\(0),
      I1 => count8(0),
      I2 => count8(1),
      I3 => \^differsum4\(1),
      I4 => \^differsum4\(2),
      I5 => \^differsum4\(3),
      O => differsum42(3)
    );
\differsum4[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => en,
      I1 => rst,
      I2 => flag_compare,
      O => \differsum4[4]_i_1_n_0\
    );
\differsum4[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => differsum3(0),
      I1 => count6(0),
      I2 => count6(1),
      I3 => differsum3(1),
      O => data(1)
    );
\differsum4[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F66F"
    )
        port map (
      I0 => count8(0),
      I1 => \^differsum4\(0),
      I2 => count6(0),
      I3 => differsum3(0),
      O => \differsum4[4]_i_11_n_0\
    );
\differsum4[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(4),
      I1 => \differsum4[4]_i_4_n_0\,
      I2 => differsum42(4),
      O => p_0_in(4)
    );
\differsum4[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"577FFFFFA8800000"
    )
        port map (
      I0 => differsum3(2),
      I1 => differsum3(1),
      I2 => count6(1),
      I3 => \differsum4[4]_i_6_n_0\,
      I4 => differsum3(3),
      I5 => differsum3(4),
      O => data(4)
    );
\differsum4[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDDDE44DE44D8444"
    )
        port map (
      I0 => differsum3(4),
      I1 => differsum42(4),
      I2 => differsum3(3),
      I3 => \differsum4[4]_i_7_n_0\,
      I4 => differsum42(3),
      I5 => \differsum4[4]_i_8_n_0\,
      O => \differsum4[4]_i_4_n_0\
    );
\differsum4[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"577FFFFFA8800000"
    )
        port map (
      I0 => \^differsum4\(2),
      I1 => \^differsum4\(1),
      I2 => count8(1),
      I3 => \differsum4[4]_i_9_n_0\,
      I4 => \^differsum4\(3),
      I5 => \^differsum4\(4),
      O => differsum42(4)
    );
\differsum4[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count6(0),
      I1 => differsum3(0),
      O => \differsum4[4]_i_6_n_0\
    );
\differsum4[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8808080"
    )
        port map (
      I0 => differsum3(2),
      I1 => differsum3(1),
      I2 => count6(1),
      I3 => count6(0),
      I4 => differsum3(0),
      O => \differsum4[4]_i_7_n_0\
    );
\differsum4[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => data(2),
      I1 => differsum42(2),
      I2 => data(1),
      I3 => differsum42(1),
      I4 => \differsum4[4]_i_11_n_0\,
      O => \differsum4[4]_i_8_n_0\
    );
\differsum4[4]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count8(0),
      I1 => \^differsum4\(0),
      O => \differsum4[4]_i_9_n_0\
    );
\differsum4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => \^differsum4\(0),
      R => \differsum4[4]_i_1_n_0\
    );
\differsum4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => \^differsum4\(1),
      R => \differsum4[4]_i_1_n_0\
    );
\differsum4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => \^differsum4\(2),
      R => \differsum4[4]_i_1_n_0\
    );
\differsum4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => \^differsum4\(3),
      R => \differsum4[4]_i_1_n_0\
    );
\differsum4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => \^differsum4\(4),
      R => \differsum4[4]_i_1_n_0\
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
      O => i0(1)
    );
\i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      O => i0(2)
    );
\i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => i0(0),
      Q => i(0),
      S => \differsum4[4]_i_1_n_0\
    );
\i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => i0(1),
      Q => i(1),
      S => \differsum4[4]_i_1_n_0\
    );
\i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => i0(2),
      Q => i(2),
      S => \differsum4[4]_i_1_n_0\
    );
\mem_reg_4[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => reg_out6,
      I1 => \differsum4[4]_i_4_n_0\,
      I2 => reg_out8,
      I3 => \mem_reg_4[0]_i_2_n_0\,
      I4 => \^mem_reg_4\(0),
      O => \mem_reg_4[0]_i_1_n_0\
    );
\mem_reg_4[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      O => \mem_reg_4[0]_i_2_n_0\
    );
\mem_reg_4[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => reg_out6,
      I1 => \differsum4[4]_i_4_n_0\,
      I2 => reg_out8,
      I3 => \mem_reg_4[1]_i_2_n_0\,
      I4 => \^mem_reg_4\(1),
      O => \mem_reg_4[1]_i_1_n_0\
    );
\mem_reg_4[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i(1),
      I1 => i(0),
      I2 => i(2),
      O => \mem_reg_4[1]_i_2_n_0\
    );
\mem_reg_4[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => reg_out6,
      I1 => \differsum4[4]_i_4_n_0\,
      I2 => reg_out8,
      I3 => \mem_reg_4[2]_i_2_n_0\,
      I4 => \^mem_reg_4\(2),
      O => \mem_reg_4[2]_i_1_n_0\
    );
\mem_reg_4[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      O => \mem_reg_4[2]_i_2_n_0\
    );
\mem_reg_4[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => reg_out6,
      I1 => \differsum4[4]_i_4_n_0\,
      I2 => reg_out8,
      I3 => \mem_reg_4[3]_i_2_n_0\,
      I4 => \^mem_reg_4\(3),
      O => \mem_reg_4[3]_i_1_n_0\
    );
\mem_reg_4[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      O => \mem_reg_4[3]_i_2_n_0\
    );
\mem_reg_4[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => reg_out6,
      I1 => \differsum4[4]_i_4_n_0\,
      I2 => reg_out8,
      I3 => \mem_reg_4[4]_i_2_n_0\,
      I4 => \^mem_reg_4\(4),
      O => \mem_reg_4[4]_i_1_n_0\
    );
\mem_reg_4[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => i(2),
      I1 => i(0),
      I2 => i(1),
      O => \mem_reg_4[4]_i_2_n_0\
    );
\mem_reg_4[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => reg_out6,
      I1 => \differsum4[4]_i_4_n_0\,
      I2 => reg_out8,
      I3 => \mem_reg_4[5]_i_2_n_0\,
      I4 => \^mem_reg_4\(5),
      O => \mem_reg_4[5]_i_1_n_0\
    );
\mem_reg_4[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => i(1),
      I1 => i(0),
      I2 => i(2),
      O => \mem_reg_4[5]_i_2_n_0\
    );
\mem_reg_4[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => reg_out6,
      I1 => \differsum4[4]_i_4_n_0\,
      I2 => reg_out8,
      I3 => \mem_reg_4[6]_i_2_n_0\,
      I4 => \^mem_reg_4\(6),
      O => \mem_reg_4[6]_i_1_n_0\
    );
\mem_reg_4[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      O => \mem_reg_4[6]_i_2_n_0\
    );
\mem_reg_4[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => reg_out6,
      I1 => \differsum4[4]_i_4_n_0\,
      I2 => reg_out8,
      I3 => \mem_reg_4[7]_i_2_n_0\,
      I4 => \^mem_reg_4\(7),
      O => \mem_reg_4[7]_i_1_n_0\
    );
\mem_reg_4[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      O => \mem_reg_4[7]_i_2_n_0\
    );
\mem_reg_4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_4[0]_i_1_n_0\,
      Q => \^mem_reg_4\(0),
      R => \differsum4[4]_i_1_n_0\
    );
\mem_reg_4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_4[1]_i_1_n_0\,
      Q => \^mem_reg_4\(1),
      R => \differsum4[4]_i_1_n_0\
    );
\mem_reg_4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_4[2]_i_1_n_0\,
      Q => \^mem_reg_4\(2),
      R => \differsum4[4]_i_1_n_0\
    );
\mem_reg_4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_4[3]_i_1_n_0\,
      Q => \^mem_reg_4\(3),
      R => \differsum4[4]_i_1_n_0\
    );
\mem_reg_4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_4[4]_i_1_n_0\,
      Q => \^mem_reg_4\(4),
      R => \differsum4[4]_i_1_n_0\
    );
\mem_reg_4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_4[5]_i_1_n_0\,
      Q => \^mem_reg_4\(5),
      R => \differsum4[4]_i_1_n_0\
    );
\mem_reg_4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_4[6]_i_1_n_0\,
      Q => \^mem_reg_4\(6),
      R => \differsum4[4]_i_1_n_0\
    );
\mem_reg_4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_4[7]_i_1_n_0\,
      Q => \^mem_reg_4\(7),
      R => \differsum4[4]_i_1_n_0\
    );
\pre_state_4[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFD00000001"
    )
        port map (
      I0 => \differsum4[4]_i_4_n_0\,
      I1 => i(0),
      I2 => i(1),
      I3 => i(2),
      I4 => \differsum4[4]_i_1_n_0\,
      I5 => \^pre_state_4\(0),
      O => \pre_state_4[0]_i_1_n_0\
    );
\pre_state_4[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000040"
    )
        port map (
      I0 => \differsum4[4]_i_4_n_0\,
      I1 => i(2),
      I2 => i(0),
      I3 => i(1),
      I4 => \differsum4[4]_i_1_n_0\,
      I5 => \^pre_state_4\(10),
      O => \pre_state_4[10]_i_1_n_0\
    );
\pre_state_4[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => i(2),
      I1 => i(0),
      I2 => i(1),
      I3 => \differsum4[4]_i_1_n_0\,
      I4 => \^pre_state_4\(11),
      O => \pre_state_4[11]_i_1_n_0\
    );
\pre_state_4[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000040"
    )
        port map (
      I0 => \differsum4[4]_i_4_n_0\,
      I1 => i(2),
      I2 => i(1),
      I3 => i(0),
      I4 => \differsum4[4]_i_1_n_0\,
      I5 => \^pre_state_4\(12),
      O => \pre_state_4[12]_i_1_n_0\
    );
\pre_state_4[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => i(2),
      I1 => i(1),
      I2 => i(0),
      I3 => \differsum4[4]_i_1_n_0\,
      I4 => \^pre_state_4\(13),
      O => \pre_state_4[13]_i_1_n_0\
    );
\pre_state_4[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00004000"
    )
        port map (
      I0 => \differsum4[4]_i_4_n_0\,
      I1 => i(2),
      I2 => i(1),
      I3 => i(0),
      I4 => \differsum4[4]_i_1_n_0\,
      I5 => \^pre_state_4\(14),
      O => \pre_state_4[14]_i_1_n_0\
    );
\pre_state_4[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => i(2),
      I1 => i(1),
      I2 => i(0),
      I3 => \differsum4[4]_i_1_n_0\,
      I4 => \^pre_state_4\(15),
      O => \pre_state_4[15]_i_1_n_0\
    );
\pre_state_4[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => \differsum4[4]_i_1_n_0\,
      I4 => \^pre_state_4\(1),
      O => \pre_state_4[1]_i_1_n_0\
    );
\pre_state_4[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000010"
    )
        port map (
      I0 => \differsum4[4]_i_4_n_0\,
      I1 => i(2),
      I2 => i(0),
      I3 => i(1),
      I4 => \differsum4[4]_i_1_n_0\,
      I5 => \^pre_state_4\(2),
      O => \pre_state_4[2]_i_1_n_0\
    );
\pre_state_4[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => i(2),
      I1 => i(0),
      I2 => i(1),
      I3 => \differsum4[4]_i_1_n_0\,
      I4 => \^pre_state_4\(3),
      O => \pre_state_4[3]_i_1_n_0\
    );
\pre_state_4[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000010"
    )
        port map (
      I0 => \differsum4[4]_i_4_n_0\,
      I1 => i(2),
      I2 => i(1),
      I3 => i(0),
      I4 => \differsum4[4]_i_1_n_0\,
      I5 => \^pre_state_4\(4),
      O => \pre_state_4[4]_i_1_n_0\
    );
\pre_state_4[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => i(2),
      I1 => i(1),
      I2 => i(0),
      I3 => \differsum4[4]_i_1_n_0\,
      I4 => \^pre_state_4\(5),
      O => \pre_state_4[5]_i_1_n_0\
    );
\pre_state_4[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00001000"
    )
        port map (
      I0 => \differsum4[4]_i_4_n_0\,
      I1 => i(2),
      I2 => i(1),
      I3 => i(0),
      I4 => \differsum4[4]_i_1_n_0\,
      I5 => \^pre_state_4\(6),
      O => \pre_state_4[6]_i_1_n_0\
    );
\pre_state_4[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => i(2),
      I1 => i(1),
      I2 => i(0),
      I3 => \differsum4[4]_i_1_n_0\,
      I4 => \^pre_state_4\(7),
      O => \pre_state_4[7]_i_1_n_0\
    );
\pre_state_4[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000100"
    )
        port map (
      I0 => \differsum4[4]_i_4_n_0\,
      I1 => i(1),
      I2 => i(0),
      I3 => i(2),
      I4 => \differsum4[4]_i_1_n_0\,
      I5 => \^pre_state_4\(8),
      O => \pre_state_4[8]_i_1_n_0\
    );
\pre_state_4[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => i(1),
      I1 => i(0),
      I2 => i(2),
      I3 => \differsum4[4]_i_1_n_0\,
      I4 => \^pre_state_4\(9),
      O => \pre_state_4[9]_i_1_n_0\
    );
\pre_state_4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[0]_i_1_n_0\,
      Q => \^pre_state_4\(0),
      R => '0'
    );
\pre_state_4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[10]_i_1_n_0\,
      Q => \^pre_state_4\(10),
      R => '0'
    );
\pre_state_4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[11]_i_1_n_0\,
      Q => \^pre_state_4\(11),
      R => '0'
    );
\pre_state_4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[12]_i_1_n_0\,
      Q => \^pre_state_4\(12),
      R => '0'
    );
\pre_state_4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[13]_i_1_n_0\,
      Q => \^pre_state_4\(13),
      R => '0'
    );
\pre_state_4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[14]_i_1_n_0\,
      Q => \^pre_state_4\(14),
      R => '0'
    );
\pre_state_4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[15]_i_1_n_0\,
      Q => \^pre_state_4\(15),
      R => '0'
    );
\pre_state_4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[1]_i_1_n_0\,
      Q => \^pre_state_4\(1),
      R => '0'
    );
\pre_state_4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[2]_i_1_n_0\,
      Q => \^pre_state_4\(2),
      R => '0'
    );
\pre_state_4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[3]_i_1_n_0\,
      Q => \^pre_state_4\(3),
      R => '0'
    );
\pre_state_4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[4]_i_1_n_0\,
      Q => \^pre_state_4\(4),
      R => '0'
    );
\pre_state_4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[5]_i_1_n_0\,
      Q => \^pre_state_4\(5),
      R => '0'
    );
\pre_state_4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[6]_i_1_n_0\,
      Q => \^pre_state_4\(6),
      R => '0'
    );
\pre_state_4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[7]_i_1_n_0\,
      Q => \^pre_state_4\(7),
      R => '0'
    );
\pre_state_4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[8]_i_1_n_0\,
      Q => \^pre_state_4\(8),
      R => '0'
    );
\pre_state_4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_4[9]_i_1_n_0\,
      Q => \^pre_state_4\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decode_comparer_4_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decode_comparer_4_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decode_comparer_4_0_0 : entity is "decode_comparer_4_0_0,comparer_4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decode_comparer_4_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decode_comparer_4_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decode_comparer_4_0_0 : entity is "comparer_4,Vivado 2018.3";
end decode_comparer_4_0_0;

architecture STRUCTURE of decode_comparer_4_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN decode_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decode_comparer_4_0_0_comparer_4
     port map (
      clk => clk,
      count6(1 downto 0) => count6(1 downto 0),
      count8(1 downto 0) => count8(1 downto 0),
      differsum3(4 downto 0) => differsum3(4 downto 0),
      differsum4(4 downto 0) => differsum4(4 downto 0),
      en => en,
      flag => flag,
      mem_reg_4(7 downto 0) => mem_reg_4(7 downto 0),
      pre_state_4(15 downto 0) => pre_state_4(15 downto 0),
      reg_out6 => reg_out6,
      reg_out8 => reg_out8,
      rst => rst
    );
end STRUCTURE;

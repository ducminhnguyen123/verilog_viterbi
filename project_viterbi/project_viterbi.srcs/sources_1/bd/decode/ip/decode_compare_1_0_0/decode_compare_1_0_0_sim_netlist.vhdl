-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Jul 22 22:40:04 2022
-- Host        : DESKTOP-R78F55E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               F:/verilog/project_viterbi/project_viterbi.srcs/sources_1/bd/decode/ip/decode_compare_1_0_0/decode_compare_1_0_0_sim_netlist.vhdl
-- Design      : decode_compare_1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decode_compare_1_0_0_compare_1 is
  port (
    mem_reg_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pre_state_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    differsum1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    reg_out1 : in STD_LOGIC;
    reg_out3 : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    count1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    differsum2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    count3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    flag : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decode_compare_1_0_0_compare_1 : entity is "compare_1";
end decode_compare_1_0_0_compare_1;

architecture STRUCTURE of decode_compare_1_0_0_compare_1 is
  signal \_inferred__2/i__n_0\ : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^differsum1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal differsum12 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \differsum1[4]_i_10_n_0\ : STD_LOGIC;
  signal \differsum1[4]_i_1_n_0\ : STD_LOGIC;
  signal \differsum1[4]_i_4_n_0\ : STD_LOGIC;
  signal \differsum1[4]_i_6_n_0\ : STD_LOGIC;
  signal \differsum1[4]_i_7_n_0\ : STD_LOGIC;
  signal \differsum1[4]_i_8_n_0\ : STD_LOGIC;
  signal \differsum1[4]_i_9_n_0\ : STD_LOGIC;
  signal flag_compare : STD_LOGIC;
  signal flag_compare_i_1_n_0 : STD_LOGIC;
  signal i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \i[1]_i_1_n_0\ : STD_LOGIC;
  signal \i[2]_i_1_n_0\ : STD_LOGIC;
  signal \k[1]_i_1_n_0\ : STD_LOGIC;
  signal \k[2]_i_1_n_0\ : STD_LOGIC;
  signal \k[3]_i_1_n_0\ : STD_LOGIC;
  signal k_reg : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^mem_reg_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mem_reg_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_1[4]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_1[4]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg_1[5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_1[5]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg_1[6]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg_1[6]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg_1[7]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^pre_state_1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pre_state_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[10]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[11]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[12]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[13]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[14]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[14]_i_2_n_0\ : STD_LOGIC;
  signal \pre_state_1[15]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[4]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[5]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[6]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[7]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[8]_i_1_n_0\ : STD_LOGIC;
  signal \pre_state_1[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \_inferred__2/i_\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \differsum1[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \differsum1[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \differsum1[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \differsum1[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \differsum1[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \differsum1[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \differsum1[4]_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \differsum1[4]_i_11\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \differsum1[4]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \differsum1[4]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mem_reg_1[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mem_reg_1[5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \mem_reg_1[6]_i_2\ : label is "soft_lutpair5";
begin
  differsum1(4 downto 0) <= \^differsum1\(4 downto 0);
  mem_reg_1(7 downto 0) <= \^mem_reg_1\(7 downto 0);
  pre_state_1(15 downto 0) <= \^pre_state_1\(15 downto 0);
\_inferred__2/i_\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i(1),
      I1 => i(0),
      O => \_inferred__2/i__n_0\
    );
\differsum1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => \^differsum1\(0),
      I1 => count1(0),
      I2 => \differsum1[4]_i_4_n_0\,
      I3 => differsum2(0),
      I4 => count3(0),
      O => p_0_in(0)
    );
\differsum1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8778FFFF87780000"
    )
        port map (
      I0 => \^differsum1\(0),
      I1 => count1(0),
      I2 => count1(1),
      I3 => \^differsum1\(1),
      I4 => \differsum1[4]_i_4_n_0\,
      I5 => data(1),
      O => p_0_in(1)
    );
\differsum1[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => differsum2(0),
      I1 => count3(0),
      I2 => count3(1),
      I3 => differsum2(1),
      O => data(1)
    );
\differsum1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => differsum12(2),
      I1 => \differsum1[4]_i_4_n_0\,
      I2 => data(2),
      O => p_0_in(2)
    );
\differsum1[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"157FEA80"
    )
        port map (
      I0 => \^differsum1\(1),
      I1 => \^differsum1\(0),
      I2 => count1(0),
      I3 => count1(1),
      I4 => \^differsum1\(2),
      O => differsum12(2)
    );
\differsum1[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"157FEA80"
    )
        port map (
      I0 => differsum2(1),
      I1 => differsum2(0),
      I2 => count3(0),
      I3 => count3(1),
      I4 => differsum2(2),
      O => data(2)
    );
\differsum1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => differsum12(3),
      I1 => \differsum1[4]_i_4_n_0\,
      I2 => data(3),
      O => p_0_in(3)
    );
\differsum1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"157FFFFFEA800000"
    )
        port map (
      I0 => count1(1),
      I1 => count1(0),
      I2 => \^differsum1\(0),
      I3 => \^differsum1\(1),
      I4 => \^differsum1\(2),
      I5 => \^differsum1\(3),
      O => differsum12(3)
    );
\differsum1[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"157FFFFFEA800000"
    )
        port map (
      I0 => count3(1),
      I1 => count3(0),
      I2 => differsum2(0),
      I3 => differsum2(1),
      I4 => differsum2(2),
      I5 => differsum2(3),
      O => data(3)
    );
\differsum1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => en,
      I1 => rst,
      I2 => flag_compare,
      O => \differsum1[4]_i_1_n_0\
    );
\differsum1[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F66F"
    )
        port map (
      I0 => count3(0),
      I1 => differsum2(0),
      I2 => count1(0),
      I3 => \^differsum1\(0),
      O => \differsum1[4]_i_10_n_0\
    );
\differsum1[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \^differsum1\(0),
      I1 => count1(0),
      I2 => count1(1),
      I3 => \^differsum1\(1),
      O => differsum12(1)
    );
\differsum1[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => differsum12(4),
      I1 => \differsum1[4]_i_4_n_0\,
      I2 => data(4),
      O => p_0_in(4)
    );
\differsum1[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F77FF7F80880080"
    )
        port map (
      I0 => \^differsum1\(3),
      I1 => \^differsum1\(2),
      I2 => \^differsum1\(1),
      I3 => \differsum1[4]_i_6_n_0\,
      I4 => count1(1),
      I5 => \^differsum1\(4),
      O => differsum12(4)
    );
\differsum1[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDED4DE44DE44484"
    )
        port map (
      I0 => \^differsum1\(4),
      I1 => data(4),
      I2 => \^differsum1\(3),
      I3 => \differsum1[4]_i_7_n_0\,
      I4 => data(3),
      I5 => \differsum1[4]_i_8_n_0\,
      O => \differsum1[4]_i_4_n_0\
    );
\differsum1[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F77FF7F80880080"
    )
        port map (
      I0 => differsum2(3),
      I1 => differsum2(2),
      I2 => differsum2(1),
      I3 => \differsum1[4]_i_9_n_0\,
      I4 => count3(1),
      I5 => differsum2(4),
      O => data(4)
    );
\differsum1[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count1(0),
      I1 => \^differsum1\(0),
      O => \differsum1[4]_i_6_n_0\
    );
\differsum1[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57777FFF"
    )
        port map (
      I0 => \^differsum1\(2),
      I1 => \^differsum1\(1),
      I2 => \^differsum1\(0),
      I3 => count1(0),
      I4 => count1(1),
      O => \differsum1[4]_i_7_n_0\
    );
\differsum1[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D4DD44D4"
    )
        port map (
      I0 => differsum12(2),
      I1 => data(2),
      I2 => \differsum1[4]_i_10_n_0\,
      I3 => differsum12(1),
      I4 => data(1),
      O => \differsum1[4]_i_8_n_0\
    );
\differsum1[4]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count3(0),
      I1 => differsum2(0),
      O => \differsum1[4]_i_9_n_0\
    );
\differsum1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => \^differsum1\(0),
      R => \differsum1[4]_i_1_n_0\
    );
\differsum1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => \^differsum1\(1),
      R => \differsum1[4]_i_1_n_0\
    );
\differsum1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => \^differsum1\(2),
      R => \differsum1[4]_i_1_n_0\
    );
\differsum1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => \^differsum1\(3),
      R => \differsum1[4]_i_1_n_0\
    );
\differsum1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => \^differsum1\(4),
      R => \differsum1[4]_i_1_n_0\
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
      INIT => X"E1"
    )
        port map (
      I0 => i(1),
      I1 => i(0),
      I2 => i(2),
      O => \i[2]_i_1_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => i0(0),
      Q => i(0),
      S => \differsum1[4]_i_1_n_0\
    );
\i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \i[1]_i_1_n_0\,
      Q => i(1),
      S => \differsum1[4]_i_1_n_0\
    );
\i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \i[2]_i_1_n_0\,
      Q => i(2),
      S => \differsum1[4]_i_1_n_0\
    );
\k[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => i(0),
      I1 => flag_compare,
      I2 => rst,
      I3 => en,
      I4 => k_reg(1),
      O => \k[1]_i_1_n_0\
    );
\k[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => i(1),
      I1 => flag_compare,
      I2 => rst,
      I3 => en,
      I4 => k_reg(2),
      O => \k[2]_i_1_n_0\
    );
\k[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => i(2),
      I1 => flag_compare,
      I2 => rst,
      I3 => en,
      I4 => k_reg(3),
      O => \k[3]_i_1_n_0\
    );
\k_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \k[1]_i_1_n_0\,
      Q => k_reg(1),
      R => '0'
    );
\k_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \k[2]_i_1_n_0\,
      Q => k_reg(2),
      R => '0'
    );
\k_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \k[3]_i_1_n_0\,
      Q => k_reg(3),
      R => '0'
    );
\mem_reg_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
        port map (
      I0 => reg_out1,
      I1 => \differsum1[4]_i_4_n_0\,
      I2 => reg_out3,
      I3 => i(2),
      I4 => \mem_reg_1[4]_i_2_n_0\,
      I5 => \^mem_reg_1\(0),
      O => \mem_reg_1[0]_i_1_n_0\
    );
\mem_reg_1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
        port map (
      I0 => reg_out1,
      I1 => \differsum1[4]_i_4_n_0\,
      I2 => reg_out3,
      I3 => i(2),
      I4 => \mem_reg_1[5]_i_2_n_0\,
      I5 => \^mem_reg_1\(1),
      O => \mem_reg_1[1]_i_1_n_0\
    );
\mem_reg_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
        port map (
      I0 => reg_out1,
      I1 => \differsum1[4]_i_4_n_0\,
      I2 => reg_out3,
      I3 => i(2),
      I4 => \mem_reg_1[6]_i_2_n_0\,
      I5 => \^mem_reg_1\(2),
      O => \mem_reg_1[2]_i_1_n_0\
    );
\mem_reg_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
        port map (
      I0 => reg_out1,
      I1 => \differsum1[4]_i_4_n_0\,
      I2 => reg_out3,
      I3 => i(2),
      I4 => \_inferred__2/i__n_0\,
      I5 => \^mem_reg_1\(3),
      O => \mem_reg_1[3]_i_1_n_0\
    );
\mem_reg_1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => reg_out1,
      I1 => \differsum1[4]_i_4_n_0\,
      I2 => reg_out3,
      I3 => i(2),
      I4 => \mem_reg_1[4]_i_2_n_0\,
      I5 => \^mem_reg_1\(4),
      O => \mem_reg_1[4]_i_1_n_0\
    );
\mem_reg_1[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i(1),
      I1 => i(0),
      O => \mem_reg_1[4]_i_2_n_0\
    );
\mem_reg_1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => reg_out1,
      I1 => \differsum1[4]_i_4_n_0\,
      I2 => reg_out3,
      I3 => i(2),
      I4 => \mem_reg_1[5]_i_2_n_0\,
      I5 => \^mem_reg_1\(5),
      O => \mem_reg_1[5]_i_1_n_0\
    );
\mem_reg_1[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i(1),
      I1 => i(0),
      O => \mem_reg_1[5]_i_2_n_0\
    );
\mem_reg_1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => reg_out1,
      I1 => \differsum1[4]_i_4_n_0\,
      I2 => reg_out3,
      I3 => i(2),
      I4 => \mem_reg_1[6]_i_2_n_0\,
      I5 => \^mem_reg_1\(6),
      O => \mem_reg_1[6]_i_1_n_0\
    );
\mem_reg_1[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      O => \mem_reg_1[6]_i_2_n_0\
    );
\mem_reg_1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => reg_out1,
      I1 => \differsum1[4]_i_4_n_0\,
      I2 => reg_out3,
      I3 => i(2),
      I4 => \_inferred__2/i__n_0\,
      I5 => \^mem_reg_1\(7),
      O => \mem_reg_1[7]_i_1_n_0\
    );
\mem_reg_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_1[0]_i_1_n_0\,
      Q => \^mem_reg_1\(0),
      R => \differsum1[4]_i_1_n_0\
    );
\mem_reg_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_1[1]_i_1_n_0\,
      Q => \^mem_reg_1\(1),
      R => \differsum1[4]_i_1_n_0\
    );
\mem_reg_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_1[2]_i_1_n_0\,
      Q => \^mem_reg_1\(2),
      R => \differsum1[4]_i_1_n_0\
    );
\mem_reg_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_1[3]_i_1_n_0\,
      Q => \^mem_reg_1\(3),
      R => \differsum1[4]_i_1_n_0\
    );
\mem_reg_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_1[4]_i_1_n_0\,
      Q => \^mem_reg_1\(4),
      R => \differsum1[4]_i_1_n_0\
    );
\mem_reg_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_1[5]_i_1_n_0\,
      Q => \^mem_reg_1\(5),
      R => \differsum1[4]_i_1_n_0\
    );
\mem_reg_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_1[6]_i_1_n_0\,
      Q => \^mem_reg_1\(6),
      R => \differsum1[4]_i_1_n_0\
    );
\mem_reg_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_reg_1[7]_i_1_n_0\,
      Q => \^mem_reg_1\(7),
      R => \differsum1[4]_i_1_n_0\
    );
\pre_state_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFE00020002"
    )
        port map (
      I0 => \pre_state_1[14]_i_2_n_0\,
      I1 => k_reg(1),
      I2 => k_reg(2),
      I3 => k_reg(3),
      I4 => \differsum1[4]_i_1_n_0\,
      I5 => \^pre_state_1\(0),
      O => \pre_state_1[0]_i_1_n_0\
    );
\pre_state_1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => \pre_state_1[14]_i_2_n_0\,
      I1 => k_reg(1),
      I2 => k_reg(3),
      I3 => k_reg(2),
      I4 => \differsum1[4]_i_1_n_0\,
      I5 => \^pre_state_1\(10),
      O => \pre_state_1[10]_i_1_n_0\
    );
\pre_state_1[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70000"
    )
        port map (
      I0 => k_reg(1),
      I1 => k_reg(3),
      I2 => k_reg(2),
      I3 => \differsum1[4]_i_1_n_0\,
      I4 => \^pre_state_1\(11),
      O => \pre_state_1[11]_i_1_n_0\
    );
\pre_state_1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \pre_state_1[14]_i_2_n_0\,
      I1 => k_reg(1),
      I2 => k_reg(2),
      I3 => k_reg(3),
      I4 => \differsum1[4]_i_1_n_0\,
      I5 => \^pre_state_1\(12),
      O => \pre_state_1[12]_i_1_n_0\
    );
\pre_state_1[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0000"
    )
        port map (
      I0 => k_reg(1),
      I1 => k_reg(2),
      I2 => k_reg(3),
      I3 => \differsum1[4]_i_1_n_0\,
      I4 => \^pre_state_1\(13),
      O => \pre_state_1[13]_i_1_n_0\
    );
\pre_state_1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => \pre_state_1[14]_i_2_n_0\,
      I1 => k_reg(1),
      I2 => k_reg(2),
      I3 => k_reg(3),
      I4 => \differsum1[4]_i_1_n_0\,
      I5 => \^pre_state_1\(14),
      O => \pre_state_1[14]_i_1_n_0\
    );
\pre_state_1[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1501555500001501"
    )
        port map (
      I0 => \differsum1[4]_i_1_n_0\,
      I1 => \differsum1[4]_i_8_n_0\,
      I2 => data(3),
      I3 => differsum12(3),
      I4 => data(4),
      I5 => differsum12(4),
      O => \pre_state_1[14]_i_2_n_0\
    );
\pre_state_1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0000"
    )
        port map (
      I0 => k_reg(1),
      I1 => k_reg(2),
      I2 => k_reg(3),
      I3 => \differsum1[4]_i_1_n_0\,
      I4 => \^pre_state_1\(15),
      O => \pre_state_1[15]_i_1_n_0\
    );
\pre_state_1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => k_reg(1),
      I1 => k_reg(2),
      I2 => k_reg(3),
      I3 => \differsum1[4]_i_1_n_0\,
      I4 => \^pre_state_1\(1),
      O => \pre_state_1[1]_i_1_n_0\
    );
\pre_state_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => \pre_state_1[14]_i_2_n_0\,
      I1 => k_reg(1),
      I2 => k_reg(2),
      I3 => k_reg(3),
      I4 => \differsum1[4]_i_1_n_0\,
      I5 => \^pre_state_1\(2),
      O => \pre_state_1[2]_i_1_n_0\
    );
\pre_state_1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => k_reg(1),
      I1 => k_reg(2),
      I2 => k_reg(3),
      I3 => \differsum1[4]_i_1_n_0\,
      I4 => \^pre_state_1\(3),
      O => \pre_state_1[3]_i_1_n_0\
    );
\pre_state_1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => \pre_state_1[14]_i_2_n_0\,
      I1 => k_reg(1),
      I2 => k_reg(2),
      I3 => k_reg(3),
      I4 => \differsum1[4]_i_1_n_0\,
      I5 => \^pre_state_1\(4),
      O => \pre_state_1[4]_i_1_n_0\
    );
\pre_state_1[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0000"
    )
        port map (
      I0 => k_reg(1),
      I1 => k_reg(2),
      I2 => k_reg(3),
      I3 => \differsum1[4]_i_1_n_0\,
      I4 => \^pre_state_1\(5),
      O => \pre_state_1[5]_i_1_n_0\
    );
\pre_state_1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => \pre_state_1[14]_i_2_n_0\,
      I1 => k_reg(1),
      I2 => k_reg(2),
      I3 => k_reg(3),
      I4 => \differsum1[4]_i_1_n_0\,
      I5 => \^pre_state_1\(6),
      O => \pre_state_1[6]_i_1_n_0\
    );
\pre_state_1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70000"
    )
        port map (
      I0 => k_reg(1),
      I1 => k_reg(2),
      I2 => k_reg(3),
      I3 => \differsum1[4]_i_1_n_0\,
      I4 => \^pre_state_1\(7),
      O => \pre_state_1[7]_i_1_n_0\
    );
\pre_state_1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => \pre_state_1[14]_i_2_n_0\,
      I1 => k_reg(1),
      I2 => k_reg(3),
      I3 => k_reg(2),
      I4 => \differsum1[4]_i_1_n_0\,
      I5 => \^pre_state_1\(8),
      O => \pre_state_1[8]_i_1_n_0\
    );
\pre_state_1[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0000"
    )
        port map (
      I0 => k_reg(1),
      I1 => k_reg(3),
      I2 => k_reg(2),
      I3 => \differsum1[4]_i_1_n_0\,
      I4 => \^pre_state_1\(9),
      O => \pre_state_1[9]_i_1_n_0\
    );
\pre_state_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[0]_i_1_n_0\,
      Q => \^pre_state_1\(0),
      R => '0'
    );
\pre_state_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[10]_i_1_n_0\,
      Q => \^pre_state_1\(10),
      R => '0'
    );
\pre_state_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[11]_i_1_n_0\,
      Q => \^pre_state_1\(11),
      R => '0'
    );
\pre_state_1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[12]_i_1_n_0\,
      Q => \^pre_state_1\(12),
      R => '0'
    );
\pre_state_1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[13]_i_1_n_0\,
      Q => \^pre_state_1\(13),
      R => '0'
    );
\pre_state_1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[14]_i_1_n_0\,
      Q => \^pre_state_1\(14),
      R => '0'
    );
\pre_state_1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[15]_i_1_n_0\,
      Q => \^pre_state_1\(15),
      R => '0'
    );
\pre_state_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[1]_i_1_n_0\,
      Q => \^pre_state_1\(1),
      R => '0'
    );
\pre_state_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[2]_i_1_n_0\,
      Q => \^pre_state_1\(2),
      R => '0'
    );
\pre_state_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[3]_i_1_n_0\,
      Q => \^pre_state_1\(3),
      R => '0'
    );
\pre_state_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[4]_i_1_n_0\,
      Q => \^pre_state_1\(4),
      R => '0'
    );
\pre_state_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[5]_i_1_n_0\,
      Q => \^pre_state_1\(5),
      R => '0'
    );
\pre_state_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[6]_i_1_n_0\,
      Q => \^pre_state_1\(6),
      R => '0'
    );
\pre_state_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[7]_i_1_n_0\,
      Q => \^pre_state_1\(7),
      R => '0'
    );
\pre_state_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[8]_i_1_n_0\,
      Q => \^pre_state_1\(8),
      R => '0'
    );
\pre_state_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pre_state_1[9]_i_1_n_0\,
      Q => \^pre_state_1\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decode_compare_1_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    count1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    count3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reg_out1 : in STD_LOGIC;
    reg_out3 : in STD_LOGIC;
    differsum2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    flag : in STD_LOGIC;
    differsum1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    mem_reg_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pre_state_1 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decode_compare_1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decode_compare_1_0_0 : entity is "decode_compare_1_0_0,compare_1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decode_compare_1_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decode_compare_1_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decode_compare_1_0_0 : entity is "compare_1,Vivado 2018.3";
end decode_compare_1_0_0;

architecture STRUCTURE of decode_compare_1_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN decode_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decode_compare_1_0_0_compare_1
     port map (
      clk => clk,
      count1(1 downto 0) => count1(1 downto 0),
      count3(1 downto 0) => count3(1 downto 0),
      differsum1(4 downto 0) => differsum1(4 downto 0),
      differsum2(4 downto 0) => differsum2(4 downto 0),
      en => en,
      flag => flag,
      mem_reg_1(7 downto 0) => mem_reg_1(7 downto 0),
      pre_state_1(15 downto 0) => pre_state_1(15 downto 0),
      reg_out1 => reg_out1,
      reg_out3 => reg_out3,
      rst => rst
    );
end STRUCTURE;

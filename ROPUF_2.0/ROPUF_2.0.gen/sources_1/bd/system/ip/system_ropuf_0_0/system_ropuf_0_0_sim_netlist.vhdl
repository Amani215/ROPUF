-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Dec  1 18:35:52 2021
-- Host        : LAPTOP-5PQ60LVJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/asus/Desktop/Studies/ropuf/ROPUF_2.0/ROPUF_2.0.gen/sources_1/bd/system/ip/system_ropuf_0_0/system_ropuf_0_0_sim_netlist.vhdl
-- Design      : system_ropuf_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12tcpg238-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_comparator is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    output0_carry_0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_comparator : entity is "comparator";
end system_ropuf_0_0_comparator;

architecture STRUCTURE of system_ropuf_0_0_comparator is
  signal output0_carry_i_1_n_0 : STD_LOGIC;
  signal output0_carry_i_2_n_0 : STD_LOGIC;
  signal output0_carry_i_3_n_0 : STD_LOGIC;
  signal output0_carry_i_4_n_0 : STD_LOGIC;
  signal output0_carry_i_5_n_0 : STD_LOGIC;
  signal output0_carry_i_6_n_0 : STD_LOGIC;
  signal output0_carry_i_7_n_0 : STD_LOGIC;
  signal output0_carry_i_8_n_0 : STD_LOGIC;
  signal output0_carry_n_1 : STD_LOGIC;
  signal output0_carry_n_2 : STD_LOGIC;
  signal output0_carry_n_3 : STD_LOGIC;
  signal NLW_output0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of output0_carry : label is 11;
begin
output0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => output0_carry_n_1,
      CO(1) => output0_carry_n_2,
      CO(0) => output0_carry_n_3,
      CYINIT => '0',
      DI(3) => output0_carry_i_1_n_0,
      DI(2) => output0_carry_i_2_n_0,
      DI(1) => output0_carry_i_3_n_0,
      DI(0) => output0_carry_i_4_n_0,
      O(3 downto 0) => NLW_output0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => output0_carry_i_5_n_0,
      S(2) => output0_carry_i_6_n_0,
      S(1) => output0_carry_i_7_n_0,
      S(0) => output0_carry_i_8_n_0
    );
output0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \out\(6),
      I1 => output0_carry_0(6),
      I2 => output0_carry_0(7),
      I3 => \out\(7),
      O => output0_carry_i_1_n_0
    );
output0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \out\(4),
      I1 => output0_carry_0(4),
      I2 => output0_carry_0(5),
      I3 => \out\(5),
      O => output0_carry_i_2_n_0
    );
output0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \out\(2),
      I1 => output0_carry_0(2),
      I2 => output0_carry_0(3),
      I3 => \out\(3),
      O => output0_carry_i_3_n_0
    );
output0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \out\(0),
      I1 => output0_carry_0(0),
      I2 => output0_carry_0(1),
      I3 => \out\(1),
      O => output0_carry_i_4_n_0
    );
output0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out\(6),
      I1 => output0_carry_0(6),
      I2 => \out\(7),
      I3 => output0_carry_0(7),
      O => output0_carry_i_5_n_0
    );
output0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out\(4),
      I1 => output0_carry_0(4),
      I2 => \out\(5),
      I3 => output0_carry_0(5),
      O => output0_carry_i_6_n_0
    );
output0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out\(2),
      I1 => output0_carry_0(2),
      I2 => \out\(3),
      I3 => output0_carry_0(3),
      O => output0_carry_i_7_n_0
    );
output0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \out\(0),
      I1 => output0_carry_0(0),
      I2 => \out\(1),
      I3 => output0_carry_0(1),
      O => output0_carry_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_counter : entity is "counter";
end system_ropuf_0_0_counter;

architecture STRUCTURE of system_ropuf_0_0_counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair1";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => plusOp(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => plusOp(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count[7]_i_2_n_0\,
      I1 => \^q\(6),
      O => plusOp(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count[7]_i_2_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => plusOp(7)
    );
\count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \count[7]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst,
      D => plusOp(0),
      Q => \^q\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst,
      D => plusOp(1),
      Q => \^q\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst,
      D => plusOp(2),
      Q => \^q\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst,
      D => plusOp(3),
      Q => \^q\(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst,
      D => plusOp(4),
      Q => \^q\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst,
      D => plusOp(5),
      Q => \^q\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst,
      D => plusOp(6),
      Q => \^q\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst,
      D => plusOp(7),
      Q => \^q\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_counter_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I13 : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_counter_0 : entity is "counter";
end system_ropuf_0_0_counter_0;

architecture STRUCTURE of system_ropuf_0_0_counter_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[2]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[3]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[4]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[6]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[7]_i_1__0\ : label is "soft_lutpair4";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__0\(0)
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__0\(1)
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \plusOp__0\(2)
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \plusOp__0\(3)
    );
\count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \plusOp__0\(4)
    );
\count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \plusOp__0\(5)
    );
\count[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count[7]_i_2__0_n_0\,
      I1 => \^q\(6),
      O => \plusOp__0\(6)
    );
\count[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count[7]_i_2__0_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => \plusOp__0\(7)
    );
\count[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \count[7]_i_2__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => I13,
      CE => '1',
      CLR => rst,
      D => \plusOp__0\(0),
      Q => \^q\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => I13,
      CE => '1',
      CLR => rst,
      D => \plusOp__0\(1),
      Q => \^q\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => I13,
      CE => '1',
      CLR => rst,
      D => \plusOp__0\(2),
      Q => \^q\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => I13,
      CE => '1',
      CLR => rst,
      D => \plusOp__0\(3),
      Q => \^q\(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => I13,
      CE => '1',
      CLR => rst,
      D => \plusOp__0\(4),
      Q => \^q\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => I13,
      CE => '1',
      CLR => rst,
      D => \plusOp__0\(5),
      Q => \^q\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => I13,
      CE => '1',
      CLR => rst,
      D => \plusOp__0\(6),
      Q => \^q\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => I13,
      CE => '1',
      CLR => rst,
      D => \plusOp__0\(7),
      Q => \^q\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_delay_line is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_delay_line : entity is "delay_line";
end system_ropuf_0_0_delay_line;

architecture STRUCTURE of system_ropuf_0_0_delay_line is
  signal inverter_chain : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inverter_chain : signal is std.standard.true;
begin
  \out\(0) <= inverter_chain(3);
\inverter_chain_inferred_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(2),
      O => inverter_chain(3)
    );
\inverter_chain_inferred_i_2__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(1),
      O => inverter_chain(2)
    );
\inverter_chain_inferred_i_3__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(0),
      O => inverter_chain(1)
    );
\inverter_chain_inferred_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => inverter_chain(3),
      O => inverter_chain(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_delay_line_3 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_delay_line_3 : entity is "delay_line";
end system_ropuf_0_0_delay_line_3;

architecture STRUCTURE of system_ropuf_0_0_delay_line_3 is
  signal inverter_chain : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inverter_chain : signal is std.standard.true;
begin
  \out\(0) <= inverter_chain(3);
\inverter_chain_inferred_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(2),
      O => inverter_chain(3)
    );
\inverter_chain_inferred_i_2__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(1),
      O => inverter_chain(2)
    );
\inverter_chain_inferred_i_3__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(0),
      O => inverter_chain(1)
    );
\inverter_chain_inferred_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => inverter_chain(3),
      O => inverter_chain(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_delay_line_4 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_delay_line_4 : entity is "delay_line";
end system_ropuf_0_0_delay_line_4;

architecture STRUCTURE of system_ropuf_0_0_delay_line_4 is
  signal inverter_chain : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inverter_chain : signal is std.standard.true;
begin
  \out\(0) <= inverter_chain(3);
\inverter_chain_inferred_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(2),
      O => inverter_chain(3)
    );
\inverter_chain_inferred_i_2__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(1),
      O => inverter_chain(2)
    );
\inverter_chain_inferred_i_3__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(0),
      O => inverter_chain(1)
    );
\inverter_chain_inferred_i_4__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => inverter_chain(3),
      O => inverter_chain(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_delay_line_5 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_delay_line_5 : entity is "delay_line";
end system_ropuf_0_0_delay_line_5;

architecture STRUCTURE of system_ropuf_0_0_delay_line_5 is
  signal inverter_chain : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inverter_chain : signal is std.standard.true;
begin
  \out\(0) <= inverter_chain(3);
\inverter_chain_inferred_i_1__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(2),
      O => inverter_chain(3)
    );
\inverter_chain_inferred_i_2__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(1),
      O => inverter_chain(2)
    );
\inverter_chain_inferred_i_3__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(0),
      O => inverter_chain(1)
    );
\inverter_chain_inferred_i_4__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => inverter_chain(3),
      O => inverter_chain(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_delay_line_6 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_delay_line_6 : entity is "delay_line";
end system_ropuf_0_0_delay_line_6;

architecture STRUCTURE of system_ropuf_0_0_delay_line_6 is
  signal inverter_chain : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inverter_chain : signal is std.standard.true;
begin
  \out\(0) <= inverter_chain(3);
inverter_chain_inferred_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(2),
      O => inverter_chain(3)
    );
inverter_chain_inferred_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(1),
      O => inverter_chain(2)
    );
inverter_chain_inferred_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(0),
      O => inverter_chain(1)
    );
inverter_chain_inferred_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => inverter_chain(3),
      O => inverter_chain(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_delay_line_7 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_delay_line_7 : entity is "delay_line";
end system_ropuf_0_0_delay_line_7;

architecture STRUCTURE of system_ropuf_0_0_delay_line_7 is
  signal inverter_chain : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inverter_chain : signal is std.standard.true;
begin
  \out\(0) <= inverter_chain(3);
\inverter_chain_inferred_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(2),
      O => inverter_chain(3)
    );
\inverter_chain_inferred_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(1),
      O => inverter_chain(2)
    );
\inverter_chain_inferred_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(0),
      O => inverter_chain(1)
    );
\inverter_chain_inferred_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => inverter_chain(3),
      O => inverter_chain(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_delay_line_8 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_delay_line_8 : entity is "delay_line";
end system_ropuf_0_0_delay_line_8;

architecture STRUCTURE of system_ropuf_0_0_delay_line_8 is
  signal inverter_chain : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inverter_chain : signal is std.standard.true;
begin
  \out\(0) <= inverter_chain(3);
\inverter_chain_inferred_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(2),
      O => inverter_chain(3)
    );
\inverter_chain_inferred_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(1),
      O => inverter_chain(2)
    );
\inverter_chain_inferred_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(0),
      O => inverter_chain(1)
    );
\inverter_chain_inferred_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => inverter_chain(3),
      O => inverter_chain(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_delay_line_9 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_delay_line_9 : entity is "delay_line";
end system_ropuf_0_0_delay_line_9;

architecture STRUCTURE of system_ropuf_0_0_delay_line_9 is
  signal inverter_chain : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inverter_chain : signal is std.standard.true;
begin
  \out\(0) <= inverter_chain(3);
\inverter_chain_inferred_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(2),
      O => inverter_chain(3)
    );
\inverter_chain_inferred_i_2__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(1),
      O => inverter_chain(2)
    );
\inverter_chain_inferred_i_3__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => inverter_chain(0),
      O => inverter_chain(1)
    );
\inverter_chain_inferred_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => inverter_chain(3),
      O => inverter_chain(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_multiplexer is
  port (
    in0 : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    challenge : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_multiplexer : entity is "multiplexer";
end system_ropuf_0_0_multiplexer;

architecture STRUCTURE of system_ropuf_0_0_multiplexer is
begin
output: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(3),
      I3 => challenge(1),
      I4 => challenge(0),
      I5 => \out\(2),
      O => in0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_multiplexer_1 is
  port (
    in0 : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    challenge : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_multiplexer_1 : entity is "multiplexer";
end system_ropuf_0_0_multiplexer_1;

architecture STRUCTURE of system_ropuf_0_0_multiplexer_1 is
begin
output: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(3),
      I3 => challenge(1),
      I4 => challenge(0),
      I5 => \out\(2),
      O => in0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_ring_oscillator is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_ring_oscillator : entity is "ring_oscillator";
end system_ropuf_0_0_ring_oscillator;

architecture STRUCTURE of system_ropuf_0_0_ring_oscillator is
begin
\inst_delay_lines[0].inst_delay_line\: entity work.system_ropuf_0_0_delay_line_6
     port map (
      enable => enable,
      \out\(0) => \out\(0)
    );
\inst_delay_lines[1].inst_delay_line\: entity work.system_ropuf_0_0_delay_line_7
     port map (
      enable => enable,
      \out\(0) => \out\(1)
    );
\inst_delay_lines[2].inst_delay_line\: entity work.system_ropuf_0_0_delay_line_8
     port map (
      enable => enable,
      \out\(0) => \out\(2)
    );
\inst_delay_lines[3].inst_delay_line\: entity work.system_ropuf_0_0_delay_line_9
     port map (
      enable => enable,
      \out\(0) => \out\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_ring_oscillator_2 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_ring_oscillator_2 : entity is "ring_oscillator";
end system_ropuf_0_0_ring_oscillator_2;

architecture STRUCTURE of system_ropuf_0_0_ring_oscillator_2 is
begin
\inst_delay_lines[0].inst_delay_line\: entity work.system_ropuf_0_0_delay_line
     port map (
      enable => enable,
      \out\(0) => \out\(0)
    );
\inst_delay_lines[1].inst_delay_line\: entity work.system_ropuf_0_0_delay_line_3
     port map (
      enable => enable,
      \out\(0) => \out\(1)
    );
\inst_delay_lines[2].inst_delay_line\: entity work.system_ropuf_0_0_delay_line_4
     port map (
      enable => enable,
      \out\(0) => \out\(2)
    );
\inst_delay_lines[3].inst_delay_line\: entity work.system_ropuf_0_0_delay_line_5
     port map (
      enable => enable,
      \out\(0) => \out\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0_ropuf is
  port (
    finalResult : out STD_LOGIC;
    challenge : in STD_LOGIC_VECTOR ( 3 downto 0 );
    enable : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ropuf_0_0_ropuf : entity is "ropuf";
end system_ropuf_0_0_ropuf;

architecture STRUCTURE of system_ropuf_0_0_ropuf is
  signal c1_output : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of c1_output : signal is std.standard.true;
  signal c2_output : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH of c2_output : signal is std.standard.true;
  signal comp_n_0 : STD_LOGIC;
  signal mux1_output : STD_LOGIC;
  attribute DONT_TOUCH of mux1_output : signal is std.standard.true;
  signal mux2_output : STD_LOGIC;
  attribute DONT_TOUCH of mux2_output : signal is std.standard.true;
  signal ro1_output : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DONT_TOUCH of ro1_output : signal is std.standard.true;
  signal ro2_output : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DONT_TOUCH of ro2_output : signal is std.standard.true;
begin
c1: entity work.system_ropuf_0_0_counter
     port map (
      CLK => mux1_output,
      Q(7 downto 0) => c1_output(7 downto 0),
      rst => rst
    );
c2: entity work.system_ropuf_0_0_counter_0
     port map (
      I13 => mux2_output,
      Q(7 downto 0) => c2_output(7 downto 0),
      rst => rst
    );
comp: entity work.system_ropuf_0_0_comparator
     port map (
      CO(0) => comp_n_0,
      \out\(7 downto 0) => c2_output(7 downto 0),
      output0_carry_0(7 downto 0) => c1_output(7 downto 0)
    );
finalResult_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => comp_n_0,
      I1 => rst,
      O => finalResult
    );
mux1: entity work.system_ropuf_0_0_multiplexer
     port map (
      challenge(1 downto 0) => challenge(1 downto 0),
      in0 => mux1_output,
      \out\(3 downto 0) => ro1_output(3 downto 0)
    );
mux2: entity work.system_ropuf_0_0_multiplexer_1
     port map (
      challenge(1 downto 0) => challenge(3 downto 2),
      in0 => mux2_output,
      \out\(3 downto 0) => ro2_output(3 downto 0)
    );
ro1: entity work.system_ropuf_0_0_ring_oscillator
     port map (
      enable => enable,
      \out\(3 downto 0) => ro1_output(3 downto 0)
    );
ro2: entity work.system_ropuf_0_0_ring_oscillator_2
     port map (
      enable => enable,
      \out\(3 downto 0) => ro2_output(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ropuf_0_0 is
  port (
    enable : in STD_LOGIC;
    challenge : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC;
    finalResult : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_ropuf_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_ropuf_0_0 : entity is "system_ropuf_0_0,ropuf,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_ropuf_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_ropuf_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_ropuf_0_0 : entity is "ropuf,Vivado 2020.2";
end system_ropuf_0_0;

architecture STRUCTURE of system_ropuf_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.system_ropuf_0_0_ropuf
     port map (
      challenge(3 downto 0) => challenge(3 downto 0),
      enable => enable,
      finalResult => finalResult,
      rst => rst
    );
end STRUCTURE;

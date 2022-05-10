-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/10/2022 17:46:34"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ropuf IS
    PORT (
	enable : IN std_logic;
	challenge : IN std_logic_vector(3 DOWNTO 0);
	rst : IN std_logic;
	finalResult : OUT std_logic
	);
END ropuf;

-- Design Ports Information
-- finalResult	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rst	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- challenge[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- challenge[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- challenge[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- challenge[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ropuf IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_challenge : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_finalResult : std_logic;
SIGNAL \mux2|Mux0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux1|Mux0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c1|count[1]~7_combout\ : std_logic;
SIGNAL \c1|count[3]~11_combout\ : std_logic;
SIGNAL \c1|count[5]~15_combout\ : std_logic;
SIGNAL \c1|count[6]~17_combout\ : std_logic;
SIGNAL \mux1|Mux0~0_combout\ : std_logic;
SIGNAL \mux1|Mux0~1_combout\ : std_logic;
SIGNAL \mux1|Mux0~combout\ : std_logic;
SIGNAL \mux2|Mux0~0_combout\ : std_logic;
SIGNAL \mux2|Mux0~1_combout\ : std_logic;
SIGNAL \mux2|Mux0~combout\ : std_logic;
SIGNAL \ro1|inst_delay_lines:0:inst_delay_line|andg|output~combout\ : std_logic;
SIGNAL \ro1|inst_delay_lines:1:inst_delay_line|andg|output~combout\ : std_logic;
SIGNAL \ro1|inst_delay_lines:2:inst_delay_line|andg|output~combout\ : std_logic;
SIGNAL \ro1|inst_delay_lines:3:inst_delay_line|andg|output~combout\ : std_logic;
SIGNAL \ro2|inst_delay_lines:0:inst_delay_line|andg|output~combout\ : std_logic;
SIGNAL \ro2|inst_delay_lines:1:inst_delay_line|andg|output~combout\ : std_logic;
SIGNAL \ro2|inst_delay_lines:2:inst_delay_line|andg|output~combout\ : std_logic;
SIGNAL \ro2|inst_delay_lines:3:inst_delay_line|andg|output~combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \mux2|Mux0~clkctrl_outclk\ : std_logic;
SIGNAL \mux1|Mux0~clkctrl_outclk\ : std_logic;
SIGNAL \c2|count[0]~21_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \c2|count[1]~8\ : std_logic;
SIGNAL \c2|count[2]~9_combout\ : std_logic;
SIGNAL \c2|count[2]~10\ : std_logic;
SIGNAL \c2|count[3]~12\ : std_logic;
SIGNAL \c2|count[4]~13_combout\ : std_logic;
SIGNAL \c2|count[4]~14\ : std_logic;
SIGNAL \c2|count[5]~16\ : std_logic;
SIGNAL \c2|count[6]~18\ : std_logic;
SIGNAL \c2|count[7]~19_combout\ : std_logic;
SIGNAL \c1|count[0]~21_combout\ : std_logic;
SIGNAL \c1|count[1]~8\ : std_logic;
SIGNAL \c1|count[2]~9_combout\ : std_logic;
SIGNAL \c1|count[2]~10\ : std_logic;
SIGNAL \c1|count[3]~12\ : std_logic;
SIGNAL \c1|count[4]~13_combout\ : std_logic;
SIGNAL \c1|count[4]~14\ : std_logic;
SIGNAL \c1|count[5]~16\ : std_logic;
SIGNAL \c1|count[6]~18\ : std_logic;
SIGNAL \c1|count[7]~19_combout\ : std_logic;
SIGNAL \c2|count[6]~17_combout\ : std_logic;
SIGNAL \c2|count[5]~15_combout\ : std_logic;
SIGNAL \c2|count[3]~11_combout\ : std_logic;
SIGNAL \c2|count[1]~7_combout\ : std_logic;
SIGNAL \comp|LessThan0~1_cout\ : std_logic;
SIGNAL \comp|LessThan0~3_cout\ : std_logic;
SIGNAL \comp|LessThan0~5_cout\ : std_logic;
SIGNAL \comp|LessThan0~7_cout\ : std_logic;
SIGNAL \comp|LessThan0~9_cout\ : std_logic;
SIGNAL \comp|LessThan0~11_cout\ : std_logic;
SIGNAL \comp|LessThan0~13_cout\ : std_logic;
SIGNAL \comp|LessThan0~14_combout\ : std_logic;
SIGNAL \comp|output~0_combout\ : std_logic;
SIGNAL \challenge~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c2|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c1|count\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_enable <= enable;
ww_challenge <= challenge;
ww_rst <= rst;
finalResult <= ww_finalResult;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mux2|Mux0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \mux2|Mux0~combout\);

\mux1|Mux0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \mux1|Mux0~combout\);

-- Location: LCFF_X63_Y19_N13
\c1|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux1|Mux0~clkctrl_outclk\,
	datain => \c1|count[6]~17_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c1|count\(6));

-- Location: LCFF_X63_Y19_N11
\c1|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux1|Mux0~clkctrl_outclk\,
	datain => \c1|count[5]~15_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c1|count\(5));

-- Location: LCFF_X63_Y19_N7
\c1|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux1|Mux0~clkctrl_outclk\,
	datain => \c1|count[3]~11_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c1|count\(3));

-- Location: LCFF_X63_Y19_N3
\c1|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux1|Mux0~clkctrl_outclk\,
	datain => \c1|count[1]~7_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c1|count\(1));

-- Location: LCCOMB_X63_Y19_N2
\c1|count[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|count[1]~7_combout\ = (\c1|count\(1) & (\c1|count\(0) $ (VCC))) # (!\c1|count\(1) & (\c1|count\(0) & VCC))
-- \c1|count[1]~8\ = CARRY((\c1|count\(1) & \c1|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|count\(1),
	datab => \c1|count\(0),
	datad => VCC,
	combout => \c1|count[1]~7_combout\,
	cout => \c1|count[1]~8\);

-- Location: LCCOMB_X63_Y19_N6
\c1|count[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|count[3]~11_combout\ = (\c1|count\(3) & (\c1|count[2]~10\ $ (GND))) # (!\c1|count\(3) & (!\c1|count[2]~10\ & VCC))
-- \c1|count[3]~12\ = CARRY((\c1|count\(3) & !\c1|count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|count\(3),
	datad => VCC,
	cin => \c1|count[2]~10\,
	combout => \c1|count[3]~11_combout\,
	cout => \c1|count[3]~12\);

-- Location: LCCOMB_X63_Y19_N10
\c1|count[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|count[5]~15_combout\ = (\c1|count\(5) & (\c1|count[4]~14\ $ (GND))) # (!\c1|count\(5) & (!\c1|count[4]~14\ & VCC))
-- \c1|count[5]~16\ = CARRY((\c1|count\(5) & !\c1|count[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|count\(5),
	datad => VCC,
	cin => \c1|count[4]~14\,
	combout => \c1|count[5]~15_combout\,
	cout => \c1|count[5]~16\);

-- Location: LCCOMB_X63_Y19_N12
\c1|count[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|count[6]~17_combout\ = (\c1|count\(6) & (!\c1|count[5]~16\)) # (!\c1|count\(6) & ((\c1|count[5]~16\) # (GND)))
-- \c1|count[6]~18\ = CARRY((!\c1|count[5]~16\) # (!\c1|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|count\(6),
	datad => VCC,
	cin => \c1|count[5]~16\,
	combout => \c1|count[6]~17_combout\,
	cout => \c1|count[6]~18\);

-- Location: LCCOMB_X62_Y19_N2
\mux1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux0~0_combout\ = (\challenge~combout\(0) & (\ro1|inst_delay_lines:1:inst_delay_line|andg|output~combout\)) # (!\challenge~combout\(0) & ((\ro1|inst_delay_lines:0:inst_delay_line|andg|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ro1|inst_delay_lines:1:inst_delay_line|andg|output~combout\,
	datac => \ro1|inst_delay_lines:0:inst_delay_line|andg|output~combout\,
	datad => \challenge~combout\(0),
	combout => \mux1|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y19_N4
\mux1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux0~1_combout\ = (\challenge~combout\(0) & ((\ro1|inst_delay_lines:3:inst_delay_line|andg|output~combout\))) # (!\challenge~combout\(0) & (\ro1|inst_delay_lines:2:inst_delay_line|andg|output~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ro1|inst_delay_lines:2:inst_delay_line|andg|output~combout\,
	datac => \ro1|inst_delay_lines:3:inst_delay_line|andg|output~combout\,
	datad => \challenge~combout\(0),
	combout => \mux1|Mux0~1_combout\);

-- Location: LCCOMB_X62_Y19_N0
\mux1|Mux0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux0~combout\ = LCELL((\challenge~combout\(1) & (!\mux1|Mux0~1_combout\)) # (!\challenge~combout\(1) & ((!\mux1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \challenge~combout\(1),
	datac => \mux1|Mux0~1_combout\,
	datad => \mux1|Mux0~0_combout\,
	combout => \mux1|Mux0~combout\);

-- Location: LCCOMB_X62_Y18_N2
\mux2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2|Mux0~0_combout\ = (\challenge~combout\(2) & (\ro2|inst_delay_lines:1:inst_delay_line|andg|output~combout\)) # (!\challenge~combout\(2) & ((\ro2|inst_delay_lines:0:inst_delay_line|andg|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ro2|inst_delay_lines:1:inst_delay_line|andg|output~combout\,
	datac => \ro2|inst_delay_lines:0:inst_delay_line|andg|output~combout\,
	datad => \challenge~combout\(2),
	combout => \mux2|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y18_N4
\mux2|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2|Mux0~1_combout\ = (\challenge~combout\(2) & (\ro2|inst_delay_lines:3:inst_delay_line|andg|output~combout\)) # (!\challenge~combout\(2) & ((\ro2|inst_delay_lines:2:inst_delay_line|andg|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ro2|inst_delay_lines:3:inst_delay_line|andg|output~combout\,
	datac => \ro2|inst_delay_lines:2:inst_delay_line|andg|output~combout\,
	datad => \challenge~combout\(2),
	combout => \mux2|Mux0~1_combout\);

-- Location: LCCOMB_X62_Y18_N0
\mux2|Mux0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2|Mux0~combout\ = LCELL((\challenge~combout\(3) & (!\mux2|Mux0~1_combout\)) # (!\challenge~combout\(3) & ((!\mux2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \challenge~combout\(3),
	datac => \mux2|Mux0~1_combout\,
	datad => \mux2|Mux0~0_combout\,
	combout => \mux2|Mux0~combout\);

-- Location: LCCOMB_X61_Y19_N0
\ro1|inst_delay_lines:0:inst_delay_line|andg|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \ro1|inst_delay_lines:0:inst_delay_line|andg|output~combout\ = (!\ro1|inst_delay_lines:0:inst_delay_line|andg|output~combout\ & \enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ro1|inst_delay_lines:0:inst_delay_line|andg|output~combout\,
	datac => \enable~combout\,
	combout => \ro1|inst_delay_lines:0:inst_delay_line|andg|output~combout\);

-- Location: LCCOMB_X61_Y19_N2
\ro1|inst_delay_lines:1:inst_delay_line|andg|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \ro1|inst_delay_lines:1:inst_delay_line|andg|output~combout\ = (!\ro1|inst_delay_lines:1:inst_delay_line|andg|output~combout\ & \enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ro1|inst_delay_lines:1:inst_delay_line|andg|output~combout\,
	datac => \enable~combout\,
	combout => \ro1|inst_delay_lines:1:inst_delay_line|andg|output~combout\);

-- Location: LCCOMB_X61_Y19_N4
\ro1|inst_delay_lines:2:inst_delay_line|andg|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \ro1|inst_delay_lines:2:inst_delay_line|andg|output~combout\ = (\enable~combout\ & !\ro1|inst_delay_lines:2:inst_delay_line|andg|output~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datac => \ro1|inst_delay_lines:2:inst_delay_line|andg|output~combout\,
	combout => \ro1|inst_delay_lines:2:inst_delay_line|andg|output~combout\);

-- Location: LCCOMB_X61_Y19_N6
\ro1|inst_delay_lines:3:inst_delay_line|andg|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \ro1|inst_delay_lines:3:inst_delay_line|andg|output~combout\ = (!\ro1|inst_delay_lines:3:inst_delay_line|andg|output~combout\ & \enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ro1|inst_delay_lines:3:inst_delay_line|andg|output~combout\,
	datac => \enable~combout\,
	combout => \ro1|inst_delay_lines:3:inst_delay_line|andg|output~combout\);

-- Location: LCCOMB_X61_Y18_N0
\ro2|inst_delay_lines:0:inst_delay_line|andg|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \ro2|inst_delay_lines:0:inst_delay_line|andg|output~combout\ = (!\ro2|inst_delay_lines:0:inst_delay_line|andg|output~combout\ & \enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ro2|inst_delay_lines:0:inst_delay_line|andg|output~combout\,
	datad => \enable~combout\,
	combout => \ro2|inst_delay_lines:0:inst_delay_line|andg|output~combout\);

-- Location: LCCOMB_X61_Y18_N2
\ro2|inst_delay_lines:1:inst_delay_line|andg|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \ro2|inst_delay_lines:1:inst_delay_line|andg|output~combout\ = (!\ro2|inst_delay_lines:1:inst_delay_line|andg|output~combout\ & \enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ro2|inst_delay_lines:1:inst_delay_line|andg|output~combout\,
	datad => \enable~combout\,
	combout => \ro2|inst_delay_lines:1:inst_delay_line|andg|output~combout\);

-- Location: LCCOMB_X61_Y18_N4
\ro2|inst_delay_lines:2:inst_delay_line|andg|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \ro2|inst_delay_lines:2:inst_delay_line|andg|output~combout\ = (!\ro2|inst_delay_lines:2:inst_delay_line|andg|output~combout\ & \enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ro2|inst_delay_lines:2:inst_delay_line|andg|output~combout\,
	datad => \enable~combout\,
	combout => \ro2|inst_delay_lines:2:inst_delay_line|andg|output~combout\);

-- Location: LCCOMB_X61_Y18_N6
\ro2|inst_delay_lines:3:inst_delay_line|andg|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \ro2|inst_delay_lines:3:inst_delay_line|andg|output~combout\ = (!\ro2|inst_delay_lines:3:inst_delay_line|andg|output~combout\ & \enable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ro2|inst_delay_lines:3:inst_delay_line|andg|output~combout\,
	datad => \enable~combout\,
	combout => \ro2|inst_delay_lines:3:inst_delay_line|andg|output~combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\challenge[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_challenge(0),
	combout => \challenge~combout\(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\challenge[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_challenge(1),
	combout => \challenge~combout\(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\challenge[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_challenge(2),
	combout => \challenge~combout\(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\challenge[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_challenge(3),
	combout => \challenge~combout\(3));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: CLKCTRL_G4
\mux2|Mux0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mux2|Mux0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mux2|Mux0~clkctrl_outclk\);

-- Location: CLKCTRL_G6
\mux1|Mux0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mux1|Mux0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mux1|Mux0~clkctrl_outclk\);

-- Location: LCCOMB_X63_Y18_N0
\c2|count[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|count[0]~21_combout\ = !\c2|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c2|count\(0),
	combout => \c2|count[0]~21_combout\);

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCFF_X63_Y18_N1
\c2|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux2|Mux0~clkctrl_outclk\,
	datain => \c2|count[0]~21_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c2|count\(0));

-- Location: LCCOMB_X63_Y18_N2
\c2|count[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|count[1]~7_combout\ = (\c2|count\(1) & (\c2|count\(0) $ (VCC))) # (!\c2|count\(1) & (\c2|count\(0) & VCC))
-- \c2|count[1]~8\ = CARRY((\c2|count\(1) & \c2|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2|count\(1),
	datab => \c2|count\(0),
	datad => VCC,
	combout => \c2|count[1]~7_combout\,
	cout => \c2|count[1]~8\);

-- Location: LCCOMB_X63_Y18_N4
\c2|count[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|count[2]~9_combout\ = (\c2|count\(2) & (!\c2|count[1]~8\)) # (!\c2|count\(2) & ((\c2|count[1]~8\) # (GND)))
-- \c2|count[2]~10\ = CARRY((!\c2|count[1]~8\) # (!\c2|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c2|count\(2),
	datad => VCC,
	cin => \c2|count[1]~8\,
	combout => \c2|count[2]~9_combout\,
	cout => \c2|count[2]~10\);

-- Location: LCFF_X63_Y18_N5
\c2|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux2|Mux0~clkctrl_outclk\,
	datain => \c2|count[2]~9_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c2|count\(2));

-- Location: LCCOMB_X63_Y18_N6
\c2|count[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|count[3]~11_combout\ = (\c2|count\(3) & (\c2|count[2]~10\ $ (GND))) # (!\c2|count\(3) & (!\c2|count[2]~10\ & VCC))
-- \c2|count[3]~12\ = CARRY((\c2|count\(3) & !\c2|count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c2|count\(3),
	datad => VCC,
	cin => \c2|count[2]~10\,
	combout => \c2|count[3]~11_combout\,
	cout => \c2|count[3]~12\);

-- Location: LCCOMB_X63_Y18_N8
\c2|count[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|count[4]~13_combout\ = (\c2|count\(4) & (!\c2|count[3]~12\)) # (!\c2|count\(4) & ((\c2|count[3]~12\) # (GND)))
-- \c2|count[4]~14\ = CARRY((!\c2|count[3]~12\) # (!\c2|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c2|count\(4),
	datad => VCC,
	cin => \c2|count[3]~12\,
	combout => \c2|count[4]~13_combout\,
	cout => \c2|count[4]~14\);

-- Location: LCFF_X63_Y18_N9
\c2|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux2|Mux0~clkctrl_outclk\,
	datain => \c2|count[4]~13_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c2|count\(4));

-- Location: LCCOMB_X63_Y18_N10
\c2|count[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|count[5]~15_combout\ = (\c2|count\(5) & (\c2|count[4]~14\ $ (GND))) # (!\c2|count\(5) & (!\c2|count[4]~14\ & VCC))
-- \c2|count[5]~16\ = CARRY((\c2|count\(5) & !\c2|count[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c2|count\(5),
	datad => VCC,
	cin => \c2|count[4]~14\,
	combout => \c2|count[5]~15_combout\,
	cout => \c2|count[5]~16\);

-- Location: LCCOMB_X63_Y18_N12
\c2|count[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|count[6]~17_combout\ = (\c2|count\(6) & (!\c2|count[5]~16\)) # (!\c2|count\(6) & ((\c2|count[5]~16\) # (GND)))
-- \c2|count[6]~18\ = CARRY((!\c2|count[5]~16\) # (!\c2|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c2|count\(6),
	datad => VCC,
	cin => \c2|count[5]~16\,
	combout => \c2|count[6]~17_combout\,
	cout => \c2|count[6]~18\);

-- Location: LCCOMB_X63_Y18_N14
\c2|count[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|count[7]~19_combout\ = \c2|count\(7) $ (!\c2|count[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c2|count\(7),
	cin => \c2|count[6]~18\,
	combout => \c2|count[7]~19_combout\);

-- Location: LCFF_X63_Y18_N15
\c2|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux2|Mux0~clkctrl_outclk\,
	datain => \c2|count[7]~19_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c2|count\(7));

-- Location: LCCOMB_X63_Y19_N0
\c1|count[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|count[0]~21_combout\ = !\c1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1|count\(0),
	combout => \c1|count[0]~21_combout\);

-- Location: LCFF_X63_Y19_N1
\c1|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux1|Mux0~clkctrl_outclk\,
	datain => \c1|count[0]~21_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c1|count\(0));

-- Location: LCCOMB_X63_Y19_N4
\c1|count[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|count[2]~9_combout\ = (\c1|count\(2) & (!\c1|count[1]~8\)) # (!\c1|count\(2) & ((\c1|count[1]~8\) # (GND)))
-- \c1|count[2]~10\ = CARRY((!\c1|count[1]~8\) # (!\c1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c1|count\(2),
	datad => VCC,
	cin => \c1|count[1]~8\,
	combout => \c1|count[2]~9_combout\,
	cout => \c1|count[2]~10\);

-- Location: LCFF_X63_Y19_N5
\c1|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux1|Mux0~clkctrl_outclk\,
	datain => \c1|count[2]~9_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c1|count\(2));

-- Location: LCCOMB_X63_Y19_N8
\c1|count[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|count[4]~13_combout\ = (\c1|count\(4) & (!\c1|count[3]~12\)) # (!\c1|count\(4) & ((\c1|count[3]~12\) # (GND)))
-- \c1|count[4]~14\ = CARRY((!\c1|count[3]~12\) # (!\c1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c1|count\(4),
	datad => VCC,
	cin => \c1|count[3]~12\,
	combout => \c1|count[4]~13_combout\,
	cout => \c1|count[4]~14\);

-- Location: LCFF_X63_Y19_N9
\c1|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux1|Mux0~clkctrl_outclk\,
	datain => \c1|count[4]~13_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c1|count\(4));

-- Location: LCCOMB_X63_Y19_N14
\c1|count[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \c1|count[7]~19_combout\ = \c1|count\(7) $ (!\c1|count[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c1|count\(7),
	cin => \c1|count[6]~18\,
	combout => \c1|count[7]~19_combout\);

-- Location: LCFF_X63_Y19_N15
\c1|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux1|Mux0~clkctrl_outclk\,
	datain => \c1|count[7]~19_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c1|count\(7));

-- Location: LCFF_X63_Y18_N13
\c2|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux2|Mux0~clkctrl_outclk\,
	datain => \c2|count[6]~17_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c2|count\(6));

-- Location: LCFF_X63_Y18_N11
\c2|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux2|Mux0~clkctrl_outclk\,
	datain => \c2|count[5]~15_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c2|count\(5));

-- Location: LCFF_X63_Y18_N7
\c2|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux2|Mux0~clkctrl_outclk\,
	datain => \c2|count[3]~11_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c2|count\(3));

-- Location: LCFF_X63_Y18_N3
\c2|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mux2|Mux0~clkctrl_outclk\,
	datain => \c2|count[1]~7_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \c2|count\(1));

-- Location: LCCOMB_X64_Y19_N0
\comp|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~1_cout\ = CARRY((!\c1|count\(0) & \c2|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|count\(0),
	datab => \c2|count\(0),
	datad => VCC,
	cout => \comp|LessThan0~1_cout\);

-- Location: LCCOMB_X64_Y19_N2
\comp|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~3_cout\ = CARRY((\c1|count\(1) & ((!\comp|LessThan0~1_cout\) # (!\c2|count\(1)))) # (!\c1|count\(1) & (!\c2|count\(1) & !\comp|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|count\(1),
	datab => \c2|count\(1),
	datad => VCC,
	cin => \comp|LessThan0~1_cout\,
	cout => \comp|LessThan0~3_cout\);

-- Location: LCCOMB_X64_Y19_N4
\comp|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~5_cout\ = CARRY((\c2|count\(2) & ((!\comp|LessThan0~3_cout\) # (!\c1|count\(2)))) # (!\c2|count\(2) & (!\c1|count\(2) & !\comp|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c2|count\(2),
	datab => \c1|count\(2),
	datad => VCC,
	cin => \comp|LessThan0~3_cout\,
	cout => \comp|LessThan0~5_cout\);

-- Location: LCCOMB_X64_Y19_N6
\comp|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~7_cout\ = CARRY((\c1|count\(3) & ((!\comp|LessThan0~5_cout\) # (!\c2|count\(3)))) # (!\c1|count\(3) & (!\c2|count\(3) & !\comp|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|count\(3),
	datab => \c2|count\(3),
	datad => VCC,
	cin => \comp|LessThan0~5_cout\,
	cout => \comp|LessThan0~7_cout\);

-- Location: LCCOMB_X64_Y19_N8
\comp|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~9_cout\ = CARRY((\c1|count\(4) & (\c2|count\(4) & !\comp|LessThan0~7_cout\)) # (!\c1|count\(4) & ((\c2|count\(4)) # (!\comp|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|count\(4),
	datab => \c2|count\(4),
	datad => VCC,
	cin => \comp|LessThan0~7_cout\,
	cout => \comp|LessThan0~9_cout\);

-- Location: LCCOMB_X64_Y19_N10
\comp|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~11_cout\ = CARRY((\c1|count\(5) & ((!\comp|LessThan0~9_cout\) # (!\c2|count\(5)))) # (!\c1|count\(5) & (!\c2|count\(5) & !\comp|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|count\(5),
	datab => \c2|count\(5),
	datad => VCC,
	cin => \comp|LessThan0~9_cout\,
	cout => \comp|LessThan0~11_cout\);

-- Location: LCCOMB_X64_Y19_N12
\comp|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~13_cout\ = CARRY((\c1|count\(6) & (\c2|count\(6) & !\comp|LessThan0~11_cout\)) # (!\c1|count\(6) & ((\c2|count\(6)) # (!\comp|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|count\(6),
	datab => \c2|count\(6),
	datad => VCC,
	cin => \comp|LessThan0~11_cout\,
	cout => \comp|LessThan0~13_cout\);

-- Location: LCCOMB_X64_Y19_N14
\comp|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~14_combout\ = (\c2|count\(7) & ((\comp|LessThan0~13_cout\) # (!\c1|count\(7)))) # (!\c2|count\(7) & (\comp|LessThan0~13_cout\ & !\c1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c2|count\(7),
	datad => \c1|count\(7),
	cin => \comp|LessThan0~13_cout\,
	combout => \comp|LessThan0~14_combout\);

-- Location: LCCOMB_X64_Y19_N16
\comp|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|output~0_combout\ = (\comp|LessThan0~14_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comp|LessThan0~14_combout\,
	datad => \rst~combout\,
	combout => \comp|output~0_combout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\finalResult~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comp|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_finalResult);
END structure;



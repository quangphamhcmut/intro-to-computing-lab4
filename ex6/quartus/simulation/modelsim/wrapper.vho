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

-- DATE "11/15/2023 14:17:18"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	wrapper IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END wrapper;

-- Design Ports Information
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF wrapper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \dut|blue_button|state~6_combout\ : std_logic;
SIGNAL \dut|blue_button|state.IDLE~regout\ : std_logic;
SIGNAL \dut|blue_button|state~5_combout\ : std_logic;
SIGNAL \dut|blue_button|state.PRESS~regout\ : std_logic;
SIGNAL \dut|red_button|state~6_combout\ : std_logic;
SIGNAL \dut|red_button|state.IDLE~regout\ : std_logic;
SIGNAL \dut|red_button|state~5_combout\ : std_logic;
SIGNAL \dut|red_button|state.PRESS~regout\ : std_logic;
SIGNAL \dut|current_state~12_combout\ : std_logic;
SIGNAL \dut|current_state~11_combout\ : std_logic;
SIGNAL \dut|current_state~13_combout\ : std_logic;
SIGNAL \dut|current_state.S2~regout\ : std_logic;
SIGNAL \dut|current_state~22_combout\ : std_logic;
SIGNAL \dut|current_state~23_combout\ : std_logic;
SIGNAL \dut|current_state.S3~regout\ : std_logic;
SIGNAL \dut|current_state~16_combout\ : std_logic;
SIGNAL \dut|current_state~14_combout\ : std_logic;
SIGNAL \dut|current_state~17_combout\ : std_logic;
SIGNAL \dut|current_state.S4~regout\ : std_logic;
SIGNAL \dut|current_state~18_combout\ : std_logic;
SIGNAL \dut|current_state~25_combout\ : std_logic;
SIGNAL \dut|current_state.S1~regout\ : std_logic;
SIGNAL \dut|current_state~15_combout\ : std_logic;
SIGNAL \dut|current_state~24_combout\ : std_logic;
SIGNAL \dut|current_state.S5~regout\ : std_logic;
SIGNAL \dut|current_state~19_combout\ : std_logic;
SIGNAL \dut|current_state~20_combout\ : std_logic;
SIGNAL \dut|current_state~21_combout\ : std_logic;
SIGNAL \dut|current_state.S0~regout\ : std_logic;
SIGNAL \dut|WideOr0~0_combout\ : std_logic;
SIGNAL \dut|present_state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(3 DOWNTO 3);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\dut|ALT_INV_WideOr0~0_combout\ <= NOT \dut|WideOr0~0_combout\;
\ALT_INV_KEY~combout\(3) <= NOT \KEY~combout\(3);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
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
	padio => ww_KEY(3),
	combout => \KEY~combout\(3));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X61_Y4_N0
\dut|blue_button|state~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|blue_button|state~6_combout\ = (\KEY~combout\(3) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(3),
	datad => \KEY~combout\(0),
	combout => \dut|blue_button|state~6_combout\);

-- Location: LCFF_X61_Y4_N1
\dut|blue_button|state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|blue_button|state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|blue_button|state.IDLE~regout\);

-- Location: LCCOMB_X61_Y4_N14
\dut|blue_button|state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|blue_button|state~5_combout\ = (\KEY~combout\(0) & (\KEY~combout\(3) & !\dut|blue_button|state.IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => \KEY~combout\(3),
	datad => \dut|blue_button|state.IDLE~regout\,
	combout => \dut|blue_button|state~5_combout\);

-- Location: LCFF_X60_Y4_N19
\dut|blue_button|state.PRESS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \dut|blue_button|state~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|blue_button|state.PRESS~regout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCCOMB_X61_Y4_N12
\dut|red_button|state~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|red_button|state~6_combout\ = (\KEY~combout\(3) & \KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(3),
	datad => \KEY~combout\(1),
	combout => \dut|red_button|state~6_combout\);

-- Location: LCFF_X61_Y4_N13
\dut|red_button|state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|red_button|state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|red_button|state.IDLE~regout\);

-- Location: LCCOMB_X61_Y4_N26
\dut|red_button|state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|red_button|state~5_combout\ = (\KEY~combout\(1) & (\KEY~combout\(3) & !\dut|red_button|state.IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(1),
	datac => \KEY~combout\(3),
	datad => \dut|red_button|state.IDLE~regout\,
	combout => \dut|red_button|state~5_combout\);

-- Location: LCFF_X60_Y4_N25
\dut|red_button|state.PRESS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \dut|red_button|state~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|red_button|state.PRESS~regout\);

-- Location: LCCOMB_X60_Y4_N26
\dut|current_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~12_combout\ = (\KEY~combout\(3) & (\dut|red_button|state.PRESS~regout\ $ (!\dut|blue_button|state.PRESS~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(3),
	datac => \dut|red_button|state.PRESS~regout\,
	datad => \dut|blue_button|state.PRESS~regout\,
	combout => \dut|current_state~12_combout\);

-- Location: LCCOMB_X60_Y4_N16
\dut|current_state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~11_combout\ = (\KEY~combout\(3) & (\dut|red_button|state.PRESS~regout\ & !\dut|blue_button|state.PRESS~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(3),
	datac => \dut|red_button|state.PRESS~regout\,
	datad => \dut|blue_button|state.PRESS~regout\,
	combout => \dut|current_state~11_combout\);

-- Location: LCCOMB_X60_Y4_N8
\dut|current_state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~13_combout\ = (\dut|current_state.S1~regout\ & ((\dut|current_state~11_combout\) # ((\dut|current_state~12_combout\ & \dut|current_state.S2~regout\)))) # (!\dut|current_state.S1~regout\ & (\dut|current_state~12_combout\ & 
-- (\dut|current_state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|current_state.S1~regout\,
	datab => \dut|current_state~12_combout\,
	datac => \dut|current_state.S2~regout\,
	datad => \dut|current_state~11_combout\,
	combout => \dut|current_state~13_combout\);

-- Location: LCFF_X60_Y4_N9
\dut|current_state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|current_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|current_state.S2~regout\);

-- Location: LCCOMB_X60_Y4_N22
\dut|current_state~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~22_combout\ = (\KEY~combout\(3) & ((\dut|red_button|state.PRESS~regout\ & ((\dut|current_state.S2~regout\))) # (!\dut|red_button|state.PRESS~regout\ & (\dut|current_state.S3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|current_state.S3~regout\,
	datab => \KEY~combout\(3),
	datac => \dut|current_state.S2~regout\,
	datad => \dut|red_button|state.PRESS~regout\,
	combout => \dut|current_state~22_combout\);

-- Location: LCCOMB_X60_Y4_N14
\dut|current_state~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~23_combout\ = (!\dut|blue_button|state.PRESS~regout\ & \dut|current_state~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|blue_button|state.PRESS~regout\,
	datad => \dut|current_state~22_combout\,
	combout => \dut|current_state~23_combout\);

-- Location: LCFF_X60_Y4_N15
\dut|current_state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|current_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|current_state.S3~regout\);

-- Location: LCCOMB_X60_Y4_N12
\dut|current_state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~16_combout\ = (\dut|current_state.S5~regout\) # ((\dut|current_state.S3~regout\) # (!\dut|current_state.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|current_state.S5~regout\,
	datac => \dut|current_state.S3~regout\,
	datad => \dut|current_state.S0~regout\,
	combout => \dut|current_state~16_combout\);

-- Location: LCCOMB_X60_Y4_N20
\dut|current_state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~14_combout\ = (\KEY~combout\(3) & (\dut|current_state.S4~regout\ & (\dut|red_button|state.PRESS~regout\ $ (!\dut|blue_button|state.PRESS~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(3),
	datab => \dut|current_state.S4~regout\,
	datac => \dut|red_button|state.PRESS~regout\,
	datad => \dut|blue_button|state.PRESS~regout\,
	combout => \dut|current_state~14_combout\);

-- Location: LCCOMB_X60_Y4_N30
\dut|current_state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~17_combout\ = (\dut|current_state~14_combout\) # ((\dut|current_state~15_combout\ & (\dut|blue_button|state.PRESS~regout\ & \dut|current_state~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|current_state~15_combout\,
	datab => \dut|blue_button|state.PRESS~regout\,
	datac => \dut|current_state~16_combout\,
	datad => \dut|current_state~14_combout\,
	combout => \dut|current_state~17_combout\);

-- Location: LCFF_X60_Y4_N31
\dut|current_state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|current_state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|current_state.S4~regout\);

-- Location: LCCOMB_X60_Y4_N18
\dut|current_state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~18_combout\ = (\dut|red_button|state.PRESS~regout\ & ((\dut|blue_button|state.PRESS~regout\ & ((!\dut|current_state.S0~regout\))) # (!\dut|blue_button|state.PRESS~regout\ & (\dut|current_state.S4~regout\)))) # 
-- (!\dut|red_button|state.PRESS~regout\ & (((!\dut|blue_button|state.PRESS~regout\ & !\dut|current_state.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|red_button|state.PRESS~regout\,
	datab => \dut|current_state.S4~regout\,
	datac => \dut|blue_button|state.PRESS~regout\,
	datad => \dut|current_state.S0~regout\,
	combout => \dut|current_state~18_combout\);

-- Location: LCCOMB_X60_Y4_N4
\dut|current_state~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~25_combout\ = (\dut|current_state~11_combout\ & ((\dut|current_state~16_combout\) # ((\dut|current_state~12_combout\ & \dut|current_state.S1~regout\)))) # (!\dut|current_state~11_combout\ & (\dut|current_state~12_combout\ & 
-- (\dut|current_state.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|current_state~11_combout\,
	datab => \dut|current_state~12_combout\,
	datac => \dut|current_state.S1~regout\,
	datad => \dut|current_state~16_combout\,
	combout => \dut|current_state~25_combout\);

-- Location: LCFF_X60_Y4_N5
\dut|current_state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|current_state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|current_state.S1~regout\);

-- Location: LCCOMB_X60_Y4_N10
\dut|current_state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~15_combout\ = (\KEY~combout\(3) & !\dut|red_button|state.PRESS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(3),
	datac => \dut|red_button|state.PRESS~regout\,
	combout => \dut|current_state~15_combout\);

-- Location: LCCOMB_X60_Y4_N6
\dut|current_state~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~24_combout\ = (\dut|current_state~15_combout\ & ((\dut|blue_button|state.PRESS~regout\ & (\dut|current_state.S4~regout\)) # (!\dut|blue_button|state.PRESS~regout\ & ((\dut|current_state.S5~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|blue_button|state.PRESS~regout\,
	datab => \dut|current_state.S4~regout\,
	datac => \dut|current_state.S5~regout\,
	datad => \dut|current_state~15_combout\,
	combout => \dut|current_state~24_combout\);

-- Location: LCFF_X60_Y4_N7
\dut|current_state.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|current_state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|current_state.S5~regout\);

-- Location: LCCOMB_X60_Y4_N2
\dut|current_state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~19_combout\ = (\dut|red_button|state.PRESS~regout\ & ((\dut|current_state.S3~regout\) # (\dut|current_state.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|current_state.S3~regout\,
	datac => \dut|red_button|state.PRESS~regout\,
	datad => \dut|current_state.S5~regout\,
	combout => \dut|current_state~19_combout\);

-- Location: LCCOMB_X60_Y4_N28
\dut|current_state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~20_combout\ = (\dut|current_state~19_combout\) # ((!\dut|red_button|state.PRESS~regout\ & ((\dut|current_state.S2~regout\) # (\dut|current_state.S1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|red_button|state.PRESS~regout\,
	datab => \dut|current_state.S2~regout\,
	datac => \dut|current_state.S1~regout\,
	datad => \dut|current_state~19_combout\,
	combout => \dut|current_state~20_combout\);

-- Location: LCCOMB_X60_Y4_N0
\dut|current_state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|current_state~21_combout\ = (\KEY~combout\(3) & (!\dut|current_state~18_combout\ & ((!\dut|current_state~20_combout\) # (!\dut|blue_button|state.PRESS~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|blue_button|state.PRESS~regout\,
	datab => \KEY~combout\(3),
	datac => \dut|current_state~18_combout\,
	datad => \dut|current_state~20_combout\,
	combout => \dut|current_state~21_combout\);

-- Location: LCFF_X60_Y4_N1
\dut|current_state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \dut|current_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|current_state.S0~regout\);

-- Location: LCCOMB_X59_Y4_N12
\dut|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|WideOr0~0_combout\ = ((\dut|current_state.S2~regout\) # (\dut|current_state.S4~regout\)) # (!\dut|current_state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|current_state.S0~regout\,
	datac => \dut|current_state.S2~regout\,
	datad => \dut|current_state.S4~regout\,
	combout => \dut|WideOr0~0_combout\);

-- Location: LCCOMB_X60_Y4_N24
\dut|present_state[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|present_state\(1) = (\dut|current_state.S3~regout\) # (\dut|current_state.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|current_state.S3~regout\,
	datab => \dut|current_state.S2~regout\,
	combout => \dut|present_state\(1));

-- Location: LCCOMB_X59_Y4_N10
\dut|present_state[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|present_state\(2) = (\dut|current_state.S5~regout\) # (\dut|current_state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|current_state.S5~regout\,
	datad => \dut|current_state.S4~regout\,
	combout => \dut|present_state\(2));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
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
	padio => ww_KEY(2));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => \dut|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
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
	datain => \dut|present_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
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
	datain => \dut|present_state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
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
	datain => \dut|current_state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
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
	datain => \dut|current_state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
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
	datain => \ALT_INV_KEY~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));
END structure;



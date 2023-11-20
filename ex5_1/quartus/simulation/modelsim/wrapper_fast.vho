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

-- DATE "11/15/2023 07:38:36"

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
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END wrapper;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[3]~clkctrl_outclk\ : std_logic;
SIGNAL \dut|state~24_combout\ : std_logic;
SIGNAL \dut|state.S6~regout\ : std_logic;
SIGNAL \dut|state~26_combout\ : std_logic;
SIGNAL \dut|state.S0~regout\ : std_logic;
SIGNAL \dut|state~25_combout\ : std_logic;
SIGNAL \dut|state.S3~regout\ : std_logic;
SIGNAL \dut|state~22_combout\ : std_logic;
SIGNAL \dut|state.S5~regout\ : std_logic;
SIGNAL \dut|state~16_combout\ : std_logic;
SIGNAL \dut|state~17_combout\ : std_logic;
SIGNAL \dut|state.S4~regout\ : std_logic;
SIGNAL \dut|state~18_combout\ : std_logic;
SIGNAL \dut|state~19_combout\ : std_logic;
SIGNAL \dut|state.S7~regout\ : std_logic;
SIGNAL \dut|state~23_combout\ : std_logic;
SIGNAL \dut|state.S8~regout\ : std_logic;
SIGNAL \dut|state~20_combout\ : std_logic;
SIGNAL \dut|state~21_combout\ : std_logic;
SIGNAL \dut|state.S1~regout\ : std_logic;
SIGNAL \dut|state~15_combout\ : std_logic;
SIGNAL \dut|state.S2~regout\ : std_logic;
SIGNAL \dut|WideOr3~0_combout\ : std_logic;
SIGNAL \dut|WideOr2~0_combout\ : std_logic;
SIGNAL \dut|WideOr1~combout\ : std_logic;
SIGNAL \dut|WideOr0~combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY[3]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \dut|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \dut|ALT_INV_WideOr1~combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\KEY[3]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY~combout\(3));
\ALT_INV_KEY[3]~clkctrl_outclk\ <= NOT \KEY[3]~clkctrl_outclk\;
\ALT_INV_KEY~combout\(3) <= NOT \KEY~combout\(3);
\ALT_INV_KEY~combout\(2) <= NOT \KEY~combout\(2);
\dut|ALT_INV_WideOr0~combout\ <= NOT \dut|WideOr0~combout\;
\dut|ALT_INV_WideOr1~combout\ <= NOT \dut|WideOr1~combout\;

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
\KEY[3]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[3]~clkctrl_outclk\);

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: LCCOMB_X64_Y14_N16
\dut|state~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|state~24_combout\ = (\KEY~combout\(2) & (\SW~combout\(0) & \dut|state.S3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \SW~combout\(0),
	datad => \dut|state.S3~regout\,
	combout => \dut|state~24_combout\);

-- Location: LCFF_X64_Y14_N17
\dut|state.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[3]~clkctrl_outclk\,
	datain => \dut|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|state.S6~regout\);

-- Location: LCCOMB_X64_Y14_N24
\dut|state~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|state~26_combout\ = (\KEY~combout\(2) & ((!\dut|state.S6~regout\) # (!\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datac => \SW~combout\(0),
	datad => \dut|state.S6~regout\,
	combout => \dut|state~26_combout\);

-- Location: LCFF_X64_Y14_N25
\dut|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[3]~clkctrl_outclk\,
	datain => \dut|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|state.S0~regout\);

-- Location: LCCOMB_X64_Y14_N8
\dut|state~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|state~25_combout\ = (\KEY~combout\(2) & (\SW~combout\(0) & !\dut|state.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datac => \SW~combout\(0),
	datad => \dut|state.S0~regout\,
	combout => \dut|state~25_combout\);

-- Location: LCFF_X64_Y14_N9
\dut|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[3]~clkctrl_outclk\,
	datain => \dut|state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|state.S3~regout\);

-- Location: LCCOMB_X64_Y14_N6
\dut|state~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|state~22_combout\ = (\KEY~combout\(2) & ((\SW~combout\(0) & (\dut|state.S2~regout\)) # (!\SW~combout\(0) & ((\dut|state.S4~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \SW~combout\(0),
	datac => \dut|state.S2~regout\,
	datad => \dut|state.S4~regout\,
	combout => \dut|state~22_combout\);

-- Location: LCFF_X64_Y14_N7
\dut|state.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[3]~clkctrl_outclk\,
	datain => \dut|state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|state.S5~regout\);

-- Location: LCCOMB_X64_Y14_N28
\dut|state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|state~16_combout\ = (\KEY~combout\(2) & (!\SW~combout\(0) & ((\dut|state.S3~regout\) # (\dut|state.S5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \SW~combout\(0),
	datac => \dut|state.S3~regout\,
	datad => \dut|state.S5~regout\,
	combout => \dut|state~16_combout\);

-- Location: LCCOMB_X64_Y14_N26
\dut|state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|state~17_combout\ = (\dut|state~16_combout\) # ((\dut|state.S1~regout\ & (\KEY~combout\(2) & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.S1~regout\,
	datab => \KEY~combout\(2),
	datac => \SW~combout\(0),
	datad => \dut|state~16_combout\,
	combout => \dut|state~17_combout\);

-- Location: LCFF_X64_Y14_N27
\dut|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[3]~clkctrl_outclk\,
	datain => \dut|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|state.S4~regout\);

-- Location: LCCOMB_X64_Y14_N18
\dut|state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|state~18_combout\ = (\KEY~combout\(2) & (!\SW~combout\(0) & ((\dut|state.S6~regout\) # (\dut|state.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \SW~combout\(0),
	datac => \dut|state.S6~regout\,
	datad => \dut|state.S8~regout\,
	combout => \dut|state~18_combout\);

-- Location: LCCOMB_X64_Y14_N20
\dut|state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|state~19_combout\ = (\dut|state~18_combout\) # ((\KEY~combout\(2) & (\dut|state.S4~regout\ & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \dut|state.S4~regout\,
	datac => \SW~combout\(0),
	datad => \dut|state~18_combout\,
	combout => \dut|state~19_combout\);

-- Location: LCFF_X64_Y14_N21
\dut|state.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[3]~clkctrl_outclk\,
	datain => \dut|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|state.S7~regout\);

-- Location: LCCOMB_X64_Y14_N12
\dut|state~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|state~23_combout\ = (\KEY~combout\(2) & ((\SW~combout\(0) & ((\dut|state.S5~regout\))) # (!\SW~combout\(0) & (\dut|state.S7~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \SW~combout\(0),
	datac => \dut|state.S7~regout\,
	datad => \dut|state.S5~regout\,
	combout => \dut|state~23_combout\);

-- Location: LCFF_X64_Y14_N13
\dut|state.S8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[3]~clkctrl_outclk\,
	datain => \dut|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|state.S8~regout\);

-- Location: LCCOMB_X64_Y14_N2
\dut|state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|state~20_combout\ = (\KEY~combout\(2) & (!\SW~combout\(0) & ((\dut|state.S2~regout\) # (!\dut|state.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \SW~combout\(0),
	datac => \dut|state.S0~regout\,
	datad => \dut|state.S2~regout\,
	combout => \dut|state~20_combout\);

-- Location: LCCOMB_X64_Y14_N10
\dut|state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|state~21_combout\ = (\dut|state~20_combout\) # ((\KEY~combout\(2) & (\SW~combout\(0) & \dut|state.S7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \SW~combout\(0),
	datac => \dut|state.S7~regout\,
	datad => \dut|state~20_combout\,
	combout => \dut|state~21_combout\);

-- Location: LCFF_X64_Y14_N11
\dut|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[3]~clkctrl_outclk\,
	datain => \dut|state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|state.S1~regout\);

-- Location: LCCOMB_X64_Y14_N0
\dut|state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|state~15_combout\ = (\KEY~combout\(2) & ((\SW~combout\(0) & (\dut|state.S8~regout\)) # (!\SW~combout\(0) & ((\dut|state.S1~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \SW~combout\(0),
	datac => \dut|state.S8~regout\,
	datad => \dut|state.S1~regout\,
	combout => \dut|state~15_combout\);

-- Location: LCFF_X64_Y14_N1
\dut|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY[3]~clkctrl_outclk\,
	datain => \dut|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|state.S2~regout\);

-- Location: LCCOMB_X64_Y14_N4
\dut|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|WideOr3~0_combout\ = (\dut|state.S4~regout\) # ((\dut|state.S7~regout\) # (\dut|state.S1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|state.S4~regout\,
	datac => \dut|state.S7~regout\,
	datad => \dut|state.S1~regout\,
	combout => \dut|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y14_N30
\dut|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|WideOr2~0_combout\ = (\dut|state.S2~regout\) # ((\dut|state.S5~regout\) # (\dut|state.S8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.S2~regout\,
	datab => \dut|state.S5~regout\,
	datac => \dut|state.S8~regout\,
	combout => \dut|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y14_N22
\dut|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|WideOr1~combout\ = (\dut|state.S7~regout\) # ((\dut|state.S8~regout\) # (\dut|state.S6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.S7~regout\,
	datab => \dut|state.S8~regout\,
	datad => \dut|state.S6~regout\,
	combout => \dut|WideOr1~combout\);

-- Location: LCCOMB_X64_Y14_N14
\dut|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|WideOr0~combout\ = (\dut|state.S3~regout\) # ((\dut|state.S5~regout\) # (\dut|state.S4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.S3~regout\,
	datab => \dut|state.S5~regout\,
	datad => \dut|state.S4~regout\,
	combout => \dut|WideOr0~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_KEY(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_KEY(1));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	datain => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dut|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dut|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dut|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dut|ALT_INV_WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dut|ALT_INV_WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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



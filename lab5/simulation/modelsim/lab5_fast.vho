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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/02/2022 13:31:02"

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

ENTITY 	lab5 IS
    PORT (
	clk : IN std_logic;
	data_in : IN std_logic;
	reset : IN std_logic;
	student_id : OUT std_logic_vector(3 DOWNTO 0);
	current_state : OUT std_logic_vector(3 DOWNTO 0)
	);
END lab5;

-- Design Ports Information
-- student_id[0]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[1]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[2]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[3]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- current_state[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- current_state[1]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- current_state[2]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- current_state[3]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_in	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_student_id : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_current_state : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \yfsm.s6~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \yfsm.s6~regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \yfsm.s7~regout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \yfsm.s5~regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \yfsm.s8~regout\ : std_logic;
SIGNAL \yfsm.s0~0_combout\ : std_logic;
SIGNAL \yfsm.s0~regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \yfsm.s4~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \yfsm.s1~regout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \yfsm.s3~regout\ : std_logic;
SIGNAL \yfsm.s2~0_combout\ : std_logic;
SIGNAL \yfsm.s2~regout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \student_id~0_combout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \WideOr11~combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr11~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_data_in <= data_in;
ww_reset <= reset;
student_id <= ww_student_id;
current_state <= ww_current_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\ALT_INV_WideOr11~0_combout\ <= NOT \WideOr11~0_combout\;

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : cycloneii_io
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
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: LCCOMB_X1_Y33_N18
\yfsm.s6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \yfsm.s6~0_combout\ = (\data_in~combout\ & (\yfsm.s6~regout\)) # (!\data_in~combout\ & ((\yfsm.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \yfsm.s6~regout\,
	datad => \yfsm.s7~regout\,
	combout => \yfsm.s6~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X1_Y33_N19
\yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \yfsm.s6~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yfsm.s6~regout\);

-- Location: LCCOMB_X1_Y33_N6
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\data_in~combout\ & (\yfsm.s5~regout\)) # (!\data_in~combout\ & ((\yfsm.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \yfsm.s5~regout\,
	datac => \data_in~combout\,
	datad => \yfsm.s6~regout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X1_Y33_N7
\yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yfsm.s7~regout\);

-- Location: LCCOMB_X1_Y33_N28
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\data_in~combout\ & ((\yfsm.s7~regout\))) # (!\data_in~combout\ & (\yfsm.s8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \yfsm.s8~regout\,
	datad => \yfsm.s7~regout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X1_Y33_N29
\yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yfsm.s5~regout\);

-- Location: LCCOMB_X1_Y33_N14
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\data_in~combout\ & (\yfsm.s4~regout\)) # (!\data_in~combout\ & ((\yfsm.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \yfsm.s4~regout\,
	datac => \data_in~combout\,
	datad => \yfsm.s5~regout\,
	combout => \Selector8~0_combout\);

-- Location: LCFF_X1_Y33_N15
\yfsm.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yfsm.s8~regout\);

-- Location: LCCOMB_X1_Y33_N16
\yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \yfsm.s0~0_combout\ = (\data_in~combout\ & ((!\yfsm.s8~regout\))) # (!\data_in~combout\ & (\yfsm.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \yfsm.s0~regout\,
	datad => \yfsm.s8~regout\,
	combout => \yfsm.s0~0_combout\);

-- Location: LCFF_X1_Y33_N17
\yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \yfsm.s0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yfsm.s0~regout\);

-- Location: LCCOMB_X1_Y33_N26
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\data_in~combout\ & (!\yfsm.s0~regout\)) # (!\data_in~combout\ & ((\yfsm.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \yfsm.s0~regout\,
	datad => \yfsm.s1~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X1_Y33_N27
\yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yfsm.s4~regout\);

-- Location: LCCOMB_X1_Y33_N12
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\data_in~combout\ & (\yfsm.s3~regout\)) # (!\data_in~combout\ & ((\yfsm.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \yfsm.s3~regout\,
	datac => \data_in~combout\,
	datad => \yfsm.s4~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X1_Y33_N13
\yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yfsm.s1~regout\);

-- Location: LCCOMB_X1_Y33_N0
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\data_in~combout\ & ((\yfsm.s1~regout\))) # (!\data_in~combout\ & (\yfsm.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \yfsm.s2~regout\,
	datad => \yfsm.s1~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X1_Y33_N1
\yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yfsm.s3~regout\);

-- Location: LCCOMB_X1_Y33_N20
\yfsm.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \yfsm.s2~0_combout\ = (\data_in~combout\ & (\yfsm.s2~regout\)) # (!\data_in~combout\ & ((\yfsm.s3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \yfsm.s2~regout\,
	datad => \yfsm.s3~regout\,
	combout => \yfsm.s2~0_combout\);

-- Location: LCFF_X1_Y33_N21
\yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \yfsm.s2~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yfsm.s2~regout\);

-- Location: LCCOMB_X1_Y33_N30
\WideOr13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (\yfsm.s2~regout\) # ((\yfsm.s8~regout\) # (!\yfsm.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \yfsm.s2~regout\,
	datac => \yfsm.s0~regout\,
	datad => \yfsm.s8~regout\,
	combout => \WideOr13~0_combout\);

-- Location: LCCOMB_X1_Y33_N4
\student_id~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \student_id~0_combout\ = (\yfsm.s5~regout\) # (\yfsm.s7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \yfsm.s5~regout\,
	datac => \yfsm.s7~regout\,
	combout => \student_id~0_combout\);

-- Location: LCCOMB_X1_Y33_N24
\WideOr12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (\yfsm.s5~regout\) # ((\yfsm.s6~regout\) # (!\yfsm.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \yfsm.s5~regout\,
	datac => \yfsm.s0~regout\,
	datad => \yfsm.s6~regout\,
	combout => \WideOr12~0_combout\);

-- Location: LCCOMB_X1_Y33_N8
\WideOr11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (!\yfsm.s4~regout\ & !\yfsm.s8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yfsm.s4~regout\,
	datad => \yfsm.s8~regout\,
	combout => \WideOr11~0_combout\);

-- Location: LCCOMB_X1_Y33_N22
WideOr11 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr11~combout\ = (\yfsm.s8~regout\) # ((\yfsm.s2~regout\) # ((\yfsm.s4~regout\) # (\yfsm.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yfsm.s8~regout\,
	datab => \yfsm.s2~regout\,
	datac => \yfsm.s4~regout\,
	datad => \yfsm.s6~regout\,
	combout => \WideOr11~combout\);

-- Location: LCCOMB_X1_Y33_N2
\WideOr10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (\yfsm.s3~regout\) # ((\yfsm.s2~regout\) # ((\yfsm.s6~regout\) # (\yfsm.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yfsm.s3~regout\,
	datab => \yfsm.s2~regout\,
	datac => \yfsm.s6~regout\,
	datad => \yfsm.s7~regout\,
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X1_Y33_N10
\WideOr9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (\yfsm.s8~regout\) # ((\yfsm.s6~regout\) # ((\yfsm.s1~regout\) # (\yfsm.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yfsm.s8~regout\,
	datab => \yfsm.s6~regout\,
	datac => \yfsm.s1~regout\,
	datad => \yfsm.s7~regout\,
	combout => \WideOr9~0_combout\);

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[0]~I\ : cycloneii_io
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
	datain => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(0));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[1]~I\ : cycloneii_io
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
	datain => \student_id~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(1));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[2]~I\ : cycloneii_io
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
	datain => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(2));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[3]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(3));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\current_state[0]~I\ : cycloneii_io
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
	datain => \WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_current_state(0));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\current_state[1]~I\ : cycloneii_io
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
	datain => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_current_state(1));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\current_state[2]~I\ : cycloneii_io
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
	datain => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_current_state(2));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\current_state[3]~I\ : cycloneii_io
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
	datain => \yfsm.s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_current_state(3));
END structure;



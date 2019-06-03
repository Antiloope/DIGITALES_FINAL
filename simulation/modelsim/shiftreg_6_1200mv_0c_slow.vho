-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "06/03/2019 17:05:20"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SAR IS
    PORT (
	reset_bar : IN std_logic;
	soc : IN std_logic;
	clk : IN std_logic;
	comp_in : IN std_logic;
	eoc : OUT std_logic;
	result : OUT std_logic_vector(7 DOWNTO 0)
	);
END SAR;

-- Design Ports Information
-- eoc	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- soc	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_bar	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- comp_in	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SAR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_bar : std_logic;
SIGNAL ww_soc : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_comp_in : std_logic;
SIGNAL ww_eoc : std_logic;
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset_bar~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eoc~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \soc~input_o\ : std_logic;
SIGNAL \mySaadc_fsm|state~7_combout\ : std_logic;
SIGNAL \reset_bar~input_o\ : std_logic;
SIGNAL \reset_bar~inputclkctrl_outclk\ : std_logic;
SIGNAL \mySaadc_fsm|state.initial~q\ : std_logic;
SIGNAL \myShiftreg|r~0_combout\ : std_logic;
SIGNAL \mySaadc_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \mySaadc_fsm|state.shift~q\ : std_logic;
SIGNAL \mySaadc_fsm|Selector0~0_combout\ : std_logic;
SIGNAL \mySaadc_fsm|state.idle~q\ : std_logic;
SIGNAL \comp_in~input_o\ : std_logic;
SIGNAL \myApprox_reg|r~0_combout\ : std_logic;
SIGNAL \myApprox_reg|r~1_combout\ : std_logic;
SIGNAL \myApprox_reg|r~2_combout\ : std_logic;
SIGNAL or_out_signal : std_logic_vector(7 DOWNTO 0);
SIGNAL \myApprox_reg|r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \myShiftreg|r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mySaadc_fsm|ALT_INV_state.idle~q\ : std_logic;

BEGIN

ww_reset_bar <= reset_bar;
ww_soc <= soc;
ww_clk <= clk;
ww_comp_in <= comp_in;
eoc <= ww_eoc;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_bar~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_bar~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\mySaadc_fsm|ALT_INV_state.idle~q\ <= NOT \mySaadc_fsm|state.idle~q\;

-- Location: IOOBUF_X0_Y24_N16
\eoc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mySaadc_fsm|ALT_INV_state.idle~q\,
	devoe => ww_devoe,
	o => \eoc~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => or_out_signal(0),
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => or_out_signal(0),
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => or_out_signal(0),
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => or_out_signal(0),
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => or_out_signal(0),
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => or_out_signal(0),
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => or_out_signal(0),
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => or_out_signal(7),
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y26_N15
\soc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_soc,
	o => \soc~input_o\);

-- Location: LCCOMB_X1_Y24_N22
\mySaadc_fsm|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySaadc_fsm|state~7_combout\ = (\soc~input_o\ & !\mySaadc_fsm|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \soc~input_o\,
	datad => \mySaadc_fsm|state.idle~q\,
	combout => \mySaadc_fsm|state~7_combout\);

-- Location: IOIBUF_X0_Y16_N15
\reset_bar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_bar,
	o => \reset_bar~input_o\);

-- Location: CLKCTRL_G4
\reset_bar~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_bar~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_bar~inputclkctrl_outclk\);

-- Location: FF_X1_Y24_N23
\mySaadc_fsm|state.initial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySaadc_fsm|state~7_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySaadc_fsm|state.initial~q\);

-- Location: FF_X1_Y24_N31
\myShiftreg|r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mySaadc_fsm|state.initial~q\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mySaadc_fsm|state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myShiftreg|r\(7));

-- Location: LCCOMB_X1_Y24_N18
\myShiftreg|r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myShiftreg|r~0_combout\ = (!\mySaadc_fsm|state.initial~q\ & \myShiftreg|r\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mySaadc_fsm|state.initial~q\,
	datac => \myShiftreg|r\(7),
	combout => \myShiftreg|r~0_combout\);

-- Location: FF_X1_Y24_N19
\myShiftreg|r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \myShiftreg|r~0_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \mySaadc_fsm|state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myShiftreg|r\(6));

-- Location: LCCOMB_X1_Y24_N24
\mySaadc_fsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySaadc_fsm|Selector1~0_combout\ = (\mySaadc_fsm|state.initial~q\) # ((\mySaadc_fsm|state.shift~q\ & !\myShiftreg|r\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mySaadc_fsm|state.initial~q\,
	datac => \mySaadc_fsm|state.shift~q\,
	datad => \myShiftreg|r\(6),
	combout => \mySaadc_fsm|Selector1~0_combout\);

-- Location: FF_X1_Y24_N25
\mySaadc_fsm|state.shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySaadc_fsm|Selector1~0_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySaadc_fsm|state.shift~q\);

-- Location: LCCOMB_X1_Y24_N16
\mySaadc_fsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySaadc_fsm|Selector0~0_combout\ = (\soc~input_o\ & (((!\myShiftreg|r\(6))) # (!\mySaadc_fsm|state.shift~q\))) # (!\soc~input_o\ & (\mySaadc_fsm|state.idle~q\ & ((!\myShiftreg|r\(6)) # (!\mySaadc_fsm|state.shift~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soc~input_o\,
	datab => \mySaadc_fsm|state.shift~q\,
	datac => \mySaadc_fsm|state.idle~q\,
	datad => \myShiftreg|r\(6),
	combout => \mySaadc_fsm|Selector0~0_combout\);

-- Location: FF_X1_Y24_N17
\mySaadc_fsm|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySaadc_fsm|Selector0~0_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySaadc_fsm|state.idle~q\);

-- Location: IOIBUF_X0_Y25_N8
\comp_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_comp_in,
	o => \comp_in~input_o\);

-- Location: LCCOMB_X1_Y24_N12
\myApprox_reg|r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myApprox_reg|r~0_combout\ = (\comp_in~input_o\ & (!\mySaadc_fsm|state.initial~q\ & \mySaadc_fsm|state.shift~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp_in~input_o\,
	datac => \mySaadc_fsm|state.initial~q\,
	datad => \mySaadc_fsm|state.shift~q\,
	combout => \myApprox_reg|r~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\myApprox_reg|r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myApprox_reg|r~1_combout\ = (\mySaadc_fsm|state.initial~q\ & (\myShiftreg|r\(6) & ((\myApprox_reg|r~0_combout\)))) # (!\mySaadc_fsm|state.initial~q\ & ((\myApprox_reg|r\(0)) # ((\myShiftreg|r\(6) & \myApprox_reg|r~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mySaadc_fsm|state.initial~q\,
	datab => \myShiftreg|r\(6),
	datac => \myApprox_reg|r\(0),
	datad => \myApprox_reg|r~0_combout\,
	combout => \myApprox_reg|r~1_combout\);

-- Location: FF_X1_Y24_N29
\myApprox_reg|r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \myApprox_reg|r~1_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myApprox_reg|r\(0));

-- Location: LCCOMB_X1_Y24_N30
\or_out_signal[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- or_out_signal(0) = (\myApprox_reg|r\(0)) # (\myShiftreg|r\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myApprox_reg|r\(0),
	datad => \myShiftreg|r\(6),
	combout => or_out_signal(0));

-- Location: LCCOMB_X1_Y24_N20
\myApprox_reg|r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \myApprox_reg|r~2_combout\ = (\myShiftreg|r\(7) & ((\myApprox_reg|r~0_combout\) # ((!\mySaadc_fsm|state.initial~q\ & \myApprox_reg|r\(7))))) # (!\myShiftreg|r\(7) & (!\mySaadc_fsm|state.initial~q\ & (\myApprox_reg|r\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myShiftreg|r\(7),
	datab => \mySaadc_fsm|state.initial~q\,
	datac => \myApprox_reg|r\(7),
	datad => \myApprox_reg|r~0_combout\,
	combout => \myApprox_reg|r~2_combout\);

-- Location: FF_X1_Y24_N21
\myApprox_reg|r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \myApprox_reg|r~2_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myApprox_reg|r\(7));

-- Location: LCCOMB_X1_Y24_N14
\or_out_signal[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- or_out_signal(7) = (\myShiftreg|r\(7)) # (\myApprox_reg|r\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myShiftreg|r\(7),
	datad => \myApprox_reg|r\(7),
	combout => or_out_signal(7));

ww_eoc <= \eoc~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;
END structure;



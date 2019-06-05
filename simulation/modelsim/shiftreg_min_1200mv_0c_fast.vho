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

-- DATE "06/05/2019 19:12:42"

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

ENTITY 	AD_SAR IS
    PORT (
	reset_bar : IN std_logic;
	soc : IN std_logic;
	clk : IN std_logic;
	comp_in : IN std_logic;
	eoc : BUFFER std_logic;
	AD_result : BUFFER std_logic_vector(7 DOWNTO 0);
	digital_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END AD_SAR;

-- Design Ports Information
-- eoc	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[0]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[2]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- soc	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_bar	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- comp_in	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AD_SAR IS
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
SIGNAL ww_AD_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_digital_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset_bar~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mySAR|mySaadc_fsm|state.idle~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eoc~output_o\ : std_logic;
SIGNAL \AD_result[0]~output_o\ : std_logic;
SIGNAL \AD_result[1]~output_o\ : std_logic;
SIGNAL \AD_result[2]~output_o\ : std_logic;
SIGNAL \AD_result[3]~output_o\ : std_logic;
SIGNAL \AD_result[4]~output_o\ : std_logic;
SIGNAL \AD_result[5]~output_o\ : std_logic;
SIGNAL \AD_result[6]~output_o\ : std_logic;
SIGNAL \AD_result[7]~output_o\ : std_logic;
SIGNAL \digital_out[0]~output_o\ : std_logic;
SIGNAL \digital_out[1]~output_o\ : std_logic;
SIGNAL \digital_out[2]~output_o\ : std_logic;
SIGNAL \digital_out[3]~output_o\ : std_logic;
SIGNAL \digital_out[4]~output_o\ : std_logic;
SIGNAL \digital_out[5]~output_o\ : std_logic;
SIGNAL \digital_out[6]~output_o\ : std_logic;
SIGNAL \digital_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \soc~input_o\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|state~7_combout\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|state.initial~feeder_combout\ : std_logic;
SIGNAL \reset_bar~input_o\ : std_logic;
SIGNAL \reset_bar~inputclkctrl_outclk\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|state.initial~q\ : std_logic;
SIGNAL \mySAR|myShiftreg|r~0_combout\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|state.shift~q\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|Selector0~0_combout\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|state.idle~feeder_combout\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|state.idle~q\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\ : std_logic;
SIGNAL \comp_in~input_o\ : std_logic;
SIGNAL \mySAR|myApprox_reg|r~0_combout\ : std_logic;
SIGNAL \mySAR|myApprox_reg|r~1_combout\ : std_logic;
SIGNAL \mySAR|myApprox_reg|r~2_combout\ : std_logic;
SIGNAL \myLatch|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mySAR|or_out_signal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mySAR|myApprox_reg|r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mySAR|myShiftreg|r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mySAR|mySaadc_fsm|ALT_INV_state.idle~q\ : std_logic;

BEGIN

ww_reset_bar <= reset_bar;
ww_soc <= soc;
ww_clk <= clk;
ww_comp_in <= comp_in;
eoc <= ww_eoc;
AD_result <= ww_AD_result;
digital_out <= ww_digital_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_bar~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_bar~input_o\);

\mySAR|mySaadc_fsm|state.idle~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mySAR|mySaadc_fsm|state.idle~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\mySAR|mySaadc_fsm|ALT_INV_state.idle~q\ <= NOT \mySAR|mySaadc_fsm|state.idle~q\;

-- Location: IOOBUF_X53_Y16_N9
\eoc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mySAR|mySaadc_fsm|ALT_INV_state.idle~q\,
	devoe => ww_devoe,
	o => \eoc~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\AD_result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myLatch|q\(0),
	devoe => ww_devoe,
	o => \AD_result[0]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\AD_result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myLatch|q\(0),
	devoe => ww_devoe,
	o => \AD_result[1]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\AD_result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myLatch|q\(0),
	devoe => ww_devoe,
	o => \AD_result[2]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\AD_result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myLatch|q\(0),
	devoe => ww_devoe,
	o => \AD_result[3]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\AD_result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myLatch|q\(0),
	devoe => ww_devoe,
	o => \AD_result[4]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\AD_result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myLatch|q\(0),
	devoe => ww_devoe,
	o => \AD_result[5]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\AD_result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myLatch|q\(0),
	devoe => ww_devoe,
	o => \AD_result[6]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\AD_result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myLatch|q\(7),
	devoe => ww_devoe,
	o => \AD_result[7]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\digital_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mySAR|or_out_signal\(0),
	devoe => ww_devoe,
	o => \digital_out[0]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\digital_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mySAR|or_out_signal\(0),
	devoe => ww_devoe,
	o => \digital_out[1]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\digital_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mySAR|or_out_signal\(0),
	devoe => ww_devoe,
	o => \digital_out[2]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\digital_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mySAR|or_out_signal\(0),
	devoe => ww_devoe,
	o => \digital_out[3]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\digital_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mySAR|or_out_signal\(0),
	devoe => ww_devoe,
	o => \digital_out[4]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\digital_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mySAR|or_out_signal\(0),
	devoe => ww_devoe,
	o => \digital_out[5]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\digital_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mySAR|or_out_signal\(0),
	devoe => ww_devoe,
	o => \digital_out[6]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\digital_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mySAR|or_out_signal\(7),
	devoe => ww_devoe,
	o => \digital_out[7]~output_o\);

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

-- Location: IOIBUF_X53_Y20_N22
\soc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_soc,
	o => \soc~input_o\);

-- Location: LCCOMB_X52_Y17_N8
\mySAR|mySaadc_fsm|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|mySaadc_fsm|state~7_combout\ = (\soc~input_o\ & !\mySAR|mySaadc_fsm|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \soc~input_o\,
	datad => \mySAR|mySaadc_fsm|state.idle~q\,
	combout => \mySAR|mySaadc_fsm|state~7_combout\);

-- Location: LCCOMB_X52_Y17_N4
\mySAR|mySaadc_fsm|state.initial~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|mySaadc_fsm|state.initial~feeder_combout\ = \mySAR|mySaadc_fsm|state~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mySAR|mySaadc_fsm|state~7_combout\,
	combout => \mySAR|mySaadc_fsm|state.initial~feeder_combout\);

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

-- Location: FF_X52_Y17_N5
\mySAR|mySaadc_fsm|state.initial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|mySaadc_fsm|state.initial~feeder_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|mySaadc_fsm|state.initial~q\);

-- Location: FF_X52_Y17_N9
\mySAR|myShiftreg|r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mySAR|mySaadc_fsm|state.initial~q\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mySAR|mySaadc_fsm|state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myShiftreg|r\(7));

-- Location: LCCOMB_X52_Y17_N14
\mySAR|myShiftreg|r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myShiftreg|r~0_combout\ = (!\mySAR|mySaadc_fsm|state.initial~q\ & \mySAR|myShiftreg|r\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mySAR|mySaadc_fsm|state.initial~q\,
	datac => \mySAR|myShiftreg|r\(7),
	combout => \mySAR|myShiftreg|r~0_combout\);

-- Location: FF_X52_Y17_N15
\mySAR|myShiftreg|r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myShiftreg|r~0_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \mySAR|mySaadc_fsm|state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myShiftreg|r\(6));

-- Location: LCCOMB_X52_Y17_N24
\mySAR|mySaadc_fsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|mySaadc_fsm|Selector1~0_combout\ = (\mySAR|mySaadc_fsm|state.initial~q\) # ((!\mySAR|myShiftreg|r\(6) & \mySAR|mySaadc_fsm|state.shift~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mySAR|myShiftreg|r\(6),
	datac => \mySAR|mySaadc_fsm|state.shift~q\,
	datad => \mySAR|mySaadc_fsm|state.initial~q\,
	combout => \mySAR|mySaadc_fsm|Selector1~0_combout\);

-- Location: FF_X52_Y17_N25
\mySAR|mySaadc_fsm|state.shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|mySaadc_fsm|Selector1~0_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|mySaadc_fsm|state.shift~q\);

-- Location: LCCOMB_X52_Y17_N28
\mySAR|mySaadc_fsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|mySaadc_fsm|Selector0~0_combout\ = (\soc~input_o\ & (((!\mySAR|mySaadc_fsm|state.shift~q\) # (!\mySAR|myShiftreg|r\(6))))) # (!\soc~input_o\ & (\mySAR|mySaadc_fsm|state.idle~q\ & ((!\mySAR|mySaadc_fsm|state.shift~q\) # (!\mySAR|myShiftreg|r\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soc~input_o\,
	datab => \mySAR|mySaadc_fsm|state.idle~q\,
	datac => \mySAR|myShiftreg|r\(6),
	datad => \mySAR|mySaadc_fsm|state.shift~q\,
	combout => \mySAR|mySaadc_fsm|Selector0~0_combout\);

-- Location: LCCOMB_X52_Y17_N22
\mySAR|mySaadc_fsm|state.idle~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|mySaadc_fsm|state.idle~feeder_combout\ = \mySAR|mySaadc_fsm|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mySAR|mySaadc_fsm|Selector0~0_combout\,
	combout => \mySAR|mySaadc_fsm|state.idle~feeder_combout\);

-- Location: FF_X52_Y17_N23
\mySAR|mySaadc_fsm|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|mySaadc_fsm|state.idle~feeder_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|mySaadc_fsm|state.idle~q\);

-- Location: CLKCTRL_G5
\mySAR|mySaadc_fsm|state.idle~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mySAR|mySaadc_fsm|state.idle~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\);

-- Location: IOIBUF_X53_Y14_N8
\comp_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_comp_in,
	o => \comp_in~input_o\);

-- Location: LCCOMB_X52_Y17_N16
\mySAR|myApprox_reg|r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myApprox_reg|r~0_combout\ = (\comp_in~input_o\ & (!\mySAR|mySaadc_fsm|state.initial~q\ & \mySAR|mySaadc_fsm|state.shift~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp_in~input_o\,
	datac => \mySAR|mySaadc_fsm|state.initial~q\,
	datad => \mySAR|mySaadc_fsm|state.shift~q\,
	combout => \mySAR|myApprox_reg|r~0_combout\);

-- Location: LCCOMB_X52_Y17_N6
\mySAR|myApprox_reg|r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myApprox_reg|r~1_combout\ = (\mySAR|myShiftreg|r\(6) & ((\mySAR|myApprox_reg|r~0_combout\) # ((!\mySAR|mySaadc_fsm|state.initial~q\ & \mySAR|myApprox_reg|r\(0))))) # (!\mySAR|myShiftreg|r\(6) & (!\mySAR|mySaadc_fsm|state.initial~q\ & 
-- (\mySAR|myApprox_reg|r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mySAR|myShiftreg|r\(6),
	datab => \mySAR|mySaadc_fsm|state.initial~q\,
	datac => \mySAR|myApprox_reg|r\(0),
	datad => \mySAR|myApprox_reg|r~0_combout\,
	combout => \mySAR|myApprox_reg|r~1_combout\);

-- Location: FF_X52_Y17_N7
\mySAR|myApprox_reg|r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myApprox_reg|r~1_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myApprox_reg|r\(0));

-- Location: LCCOMB_X52_Y17_N10
\mySAR|or_out_signal[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|or_out_signal\(0) = (\mySAR|myShiftreg|r\(6)) # (\mySAR|myApprox_reg|r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mySAR|myShiftreg|r\(6),
	datad => \mySAR|myApprox_reg|r\(0),
	combout => \mySAR|or_out_signal\(0));

-- Location: LCCOMB_X52_Y17_N30
\myLatch|q[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \myLatch|q\(0) = (\reset_bar~input_o\ & ((GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & (\myLatch|q\(0))) # (!GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & ((\mySAR|or_out_signal\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myLatch|q\(0),
	datab => \reset_bar~input_o\,
	datac => \mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\,
	datad => \mySAR|or_out_signal\(0),
	combout => \myLatch|q\(0));

-- Location: LCCOMB_X52_Y17_N12
\mySAR|myApprox_reg|r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myApprox_reg|r~2_combout\ = (\mySAR|mySaadc_fsm|state.initial~q\ & (\mySAR|myShiftreg|r\(7) & ((\mySAR|myApprox_reg|r~0_combout\)))) # (!\mySAR|mySaadc_fsm|state.initial~q\ & ((\mySAR|myApprox_reg|r\(7)) # ((\mySAR|myShiftreg|r\(7) & 
-- \mySAR|myApprox_reg|r~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mySAR|mySaadc_fsm|state.initial~q\,
	datab => \mySAR|myShiftreg|r\(7),
	datac => \mySAR|myApprox_reg|r\(7),
	datad => \mySAR|myApprox_reg|r~0_combout\,
	combout => \mySAR|myApprox_reg|r~2_combout\);

-- Location: FF_X52_Y17_N13
\mySAR|myApprox_reg|r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myApprox_reg|r~2_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myApprox_reg|r\(7));

-- Location: LCCOMB_X52_Y17_N2
\mySAR|or_out_signal[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|or_out_signal\(7) = (\mySAR|myShiftreg|r\(7)) # (\mySAR|myApprox_reg|r\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mySAR|myShiftreg|r\(7),
	datad => \mySAR|myApprox_reg|r\(7),
	combout => \mySAR|or_out_signal\(7));

-- Location: LCCOMB_X52_Y17_N0
\myLatch|q[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \myLatch|q\(7) = (\reset_bar~input_o\ & ((GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & (\myLatch|q\(7))) # (!GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & ((\mySAR|or_out_signal\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myLatch|q\(7),
	datab => \reset_bar~input_o\,
	datac => \mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\,
	datad => \mySAR|or_out_signal\(7),
	combout => \myLatch|q\(7));

ww_eoc <= \eoc~output_o\;

ww_AD_result(0) <= \AD_result[0]~output_o\;

ww_AD_result(1) <= \AD_result[1]~output_o\;

ww_AD_result(2) <= \AD_result[2]~output_o\;

ww_AD_result(3) <= \AD_result[3]~output_o\;

ww_AD_result(4) <= \AD_result[4]~output_o\;

ww_AD_result(5) <= \AD_result[5]~output_o\;

ww_AD_result(6) <= \AD_result[6]~output_o\;

ww_AD_result(7) <= \AD_result[7]~output_o\;

ww_digital_out(0) <= \digital_out[0]~output_o\;

ww_digital_out(1) <= \digital_out[1]~output_o\;

ww_digital_out(2) <= \digital_out[2]~output_o\;

ww_digital_out(3) <= \digital_out[3]~output_o\;

ww_digital_out(4) <= \digital_out[4]~output_o\;

ww_digital_out(5) <= \digital_out[5]~output_o\;

ww_digital_out(6) <= \digital_out[6]~output_o\;

ww_digital_out(7) <= \digital_out[7]~output_o\;
END structure;



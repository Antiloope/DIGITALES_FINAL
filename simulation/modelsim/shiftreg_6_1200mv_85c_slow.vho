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
<<<<<<< HEAD
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Full Version"

-- DATE "06/07/2019 18:13:33"
=======
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "06/05/2019 19:12:41"
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194

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
<<<<<<< HEAD
	eoc : OUT std_logic;
	AD_result : OUT std_logic_vector(7 DOWNTO 0);
	digital_out : OUT std_logic_vector(7 DOWNTO 0)
=======
	eoc : BUFFER std_logic;
	AD_result : BUFFER std_logic_vector(7 DOWNTO 0);
	digital_out : BUFFER std_logic_vector(7 DOWNTO 0)
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
	);
END AD_SAR;

-- Design Ports Information
<<<<<<< HEAD
-- eoc	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_result[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digital_out[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- soc	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_bar	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- comp_in	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
=======
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
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194


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
<<<<<<< HEAD
SIGNAL \reset_bar~input_o\ : std_logic;
SIGNAL \reset_bar~inputclkctrl_outclk\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|state.initial~q\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|state.shift~q\ : std_logic;
SIGNAL \mySAR|myShiftreg|r~8_combout\ : std_logic;
SIGNAL \mySAR|myShiftreg|r~7_combout\ : std_logic;
SIGNAL \mySAR|myShiftreg|r[0]~1_combout\ : std_logic;
SIGNAL \mySAR|myShiftreg|r~6_combout\ : std_logic;
SIGNAL \mySAR|myShiftreg|r~5_combout\ : std_logic;
SIGNAL \mySAR|myShiftreg|r~4_combout\ : std_logic;
SIGNAL \mySAR|myShiftreg|r~3_combout\ : std_logic;
SIGNAL \mySAR|myShiftreg|r~2_combout\ : std_logic;
SIGNAL \mySAR|myShiftreg|r~0_combout\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|Selector0~0_combout\ : std_logic;
=======
SIGNAL \mySAR|mySaadc_fsm|state.initial~feeder_combout\ : std_logic;
SIGNAL \reset_bar~input_o\ : std_logic;
SIGNAL \reset_bar~inputclkctrl_outclk\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|state.initial~q\ : std_logic;
SIGNAL \mySAR|myShiftreg|r~0_combout\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|state.shift~q\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|Selector0~0_combout\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|state.idle~feeder_combout\ : std_logic;
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
SIGNAL \mySAR|mySaadc_fsm|state.idle~q\ : std_logic;
SIGNAL \mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\ : std_logic;
SIGNAL \comp_in~input_o\ : std_logic;
SIGNAL \mySAR|myApprox_reg|r~0_combout\ : std_logic;
SIGNAL \mySAR|myApprox_reg|r~1_combout\ : std_logic;
SIGNAL \mySAR|myApprox_reg|r~2_combout\ : std_logic;
<<<<<<< HEAD
SIGNAL \mySAR|myApprox_reg|r~3_combout\ : std_logic;
SIGNAL \mySAR|myApprox_reg|r~4_combout\ : std_logic;
SIGNAL \mySAR|myApprox_reg|r~5_combout\ : std_logic;
SIGNAL \mySAR|myApprox_reg|r~6_combout\ : std_logic;
SIGNAL \mySAR|myApprox_reg|r~7_combout\ : std_logic;
SIGNAL \mySAR|or_out_signal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mySAR|myApprox_reg|r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mySAR|myShiftreg|r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \myLatch|q\ : std_logic_vector(7 DOWNTO 0);
=======
SIGNAL \myLatch|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mySAR|or_out_signal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mySAR|myApprox_reg|r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mySAR|myShiftreg|r\ : std_logic_vector(7 DOWNTO 0);
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
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

<<<<<<< HEAD
-- Location: IOOBUF_X16_Y34_N2
=======
-- Location: IOOBUF_X53_Y16_N9
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
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

<<<<<<< HEAD
-- Location: IOOBUF_X18_Y34_N23
=======
-- Location: IOOBUF_X53_Y25_N2
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
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

<<<<<<< HEAD
-- Location: IOOBUF_X34_Y34_N16
=======
-- Location: IOOBUF_X53_Y22_N9
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\AD_result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \myLatch|q\(1),
	devoe => ww_devoe,
	o => \AD_result[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
=======
	i => \myLatch|q\(0),
	devoe => ww_devoe,
	o => \AD_result[1]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\AD_result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \myLatch|q\(2),
	devoe => ww_devoe,
	o => \AD_result[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
=======
	i => \myLatch|q\(0),
	devoe => ww_devoe,
	o => \AD_result[2]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\AD_result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \myLatch|q\(3),
	devoe => ww_devoe,
	o => \AD_result[3]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
=======
	i => \myLatch|q\(0),
	devoe => ww_devoe,
	o => \AD_result[3]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\AD_result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \myLatch|q\(4),
	devoe => ww_devoe,
	o => \AD_result[4]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
=======
	i => \myLatch|q\(0),
	devoe => ww_devoe,
	o => \AD_result[4]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\AD_result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \myLatch|q\(5),
	devoe => ww_devoe,
	o => \AD_result[5]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
=======
	i => \myLatch|q\(0),
	devoe => ww_devoe,
	o => \AD_result[5]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\AD_result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \myLatch|q\(6),
	devoe => ww_devoe,
	o => \AD_result[6]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
=======
	i => \myLatch|q\(0),
	devoe => ww_devoe,
	o => \AD_result[6]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
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

<<<<<<< HEAD
-- Location: IOOBUF_X18_Y34_N2
=======
-- Location: IOOBUF_X53_Y9_N9
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
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

<<<<<<< HEAD
-- Location: IOOBUF_X23_Y34_N16
=======
-- Location: IOOBUF_X53_Y11_N2
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\digital_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \mySAR|or_out_signal\(1),
	devoe => ww_devoe,
	o => \digital_out[1]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
=======
	i => \mySAR|or_out_signal\(0),
	devoe => ww_devoe,
	o => \digital_out[1]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\digital_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \mySAR|or_out_signal\(2),
	devoe => ww_devoe,
	o => \digital_out[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
=======
	i => \mySAR|or_out_signal\(0),
	devoe => ww_devoe,
	o => \digital_out[2]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\digital_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \mySAR|or_out_signal\(3),
	devoe => ww_devoe,
	o => \digital_out[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
=======
	i => \mySAR|or_out_signal\(0),
	devoe => ww_devoe,
	o => \digital_out[3]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\digital_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \mySAR|or_out_signal\(4),
	devoe => ww_devoe,
	o => \digital_out[4]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
=======
	i => \mySAR|or_out_signal\(0),
	devoe => ww_devoe,
	o => \digital_out[4]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\digital_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \mySAR|or_out_signal\(5),
	devoe => ww_devoe,
	o => \digital_out[5]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
=======
	i => \mySAR|or_out_signal\(0),
	devoe => ww_devoe,
	o => \digital_out[5]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\digital_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \mySAR|or_out_signal\(6),
	devoe => ww_devoe,
	o => \digital_out[6]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
=======
	i => \mySAR|or_out_signal\(0),
	devoe => ww_devoe,
	o => \digital_out[6]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
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

<<<<<<< HEAD
-- Location: IOIBUF_X20_Y34_N15
=======
-- Location: IOIBUF_X53_Y20_N22
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\soc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_soc,
	o => \soc~input_o\);

<<<<<<< HEAD
-- Location: LCCOMB_X31_Y30_N4
=======
-- Location: LCCOMB_X52_Y17_N8
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\mySAR|mySaadc_fsm|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|mySaadc_fsm|state~7_combout\ = (\soc~input_o\ & !\mySAR|mySaadc_fsm|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soc~input_o\,
	datab => \mySAR|mySaadc_fsm|state.idle~q\,
	combout => \mySAR|mySaadc_fsm|state~7_combout\);

=======
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

>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
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

<<<<<<< HEAD
-- Location: FF_X31_Y30_N7
=======
-- Location: FF_X52_Y17_N5
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\mySAR|mySaadc_fsm|state.initial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
	asdata => \mySAR|mySaadc_fsm|state~7_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sload => VCC,
=======
	d => \mySAR|mySaadc_fsm|state.initial~feeder_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|mySaadc_fsm|state.initial~q\);

<<<<<<< HEAD
-- Location: LCCOMB_X31_Y30_N16
\mySAR|mySaadc_fsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|mySaadc_fsm|Selector1~0_combout\ = (\mySAR|mySaadc_fsm|state.initial~q\) # ((\mySAR|mySaadc_fsm|state.shift~q\ & !\mySAR|myShiftreg|r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mySAR|mySaadc_fsm|state.initial~q\,
	datac => \mySAR|mySaadc_fsm|state.shift~q\,
	datad => \mySAR|myShiftreg|r\(0),
	combout => \mySAR|mySaadc_fsm|Selector1~0_combout\);

-- Location: FF_X31_Y30_N17
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

-- Location: LCCOMB_X29_Y30_N20
\mySAR|myShiftreg|r~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myShiftreg|r~8_combout\ = (\mySAR|myShiftreg|r\(7) & !\mySAR|mySaadc_fsm|state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mySAR|myShiftreg|r\(7),
	datad => \mySAR|mySaadc_fsm|state.shift~q\,
	combout => \mySAR|myShiftreg|r~8_combout\);

-- Location: FF_X29_Y30_N21
=======
-- Location: FF_X52_Y17_N9
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\mySAR|myShiftreg|r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
	d => \mySAR|myShiftreg|r~8_combout\,
	asdata => VCC,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sload => \mySAR|mySaadc_fsm|state.initial~q\,
=======
	asdata => \mySAR|mySaadc_fsm|state.initial~q\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mySAR|mySaadc_fsm|state.idle~q\,
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myShiftreg|r\(7));

<<<<<<< HEAD
-- Location: LCCOMB_X31_Y30_N24
\mySAR|myShiftreg|r~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myShiftreg|r~7_combout\ = (!\mySAR|mySaadc_fsm|state.initial~q\ & \mySAR|myShiftreg|r\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mySAR|mySaadc_fsm|state.initial~q\,
	datad => \mySAR|myShiftreg|r\(7),
	combout => \mySAR|myShiftreg|r~7_combout\);

-- Location: LCCOMB_X31_Y30_N6
\mySAR|myShiftreg|r[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myShiftreg|r[0]~1_combout\ = \mySAR|mySaadc_fsm|state.initial~q\ $ (\mySAR|mySaadc_fsm|state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mySAR|mySaadc_fsm|state.initial~q\,
	datad => \mySAR|mySaadc_fsm|state.shift~q\,
	combout => \mySAR|myShiftreg|r[0]~1_combout\);

-- Location: FF_X31_Y30_N25
=======
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
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\mySAR|myShiftreg|r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
	d => \mySAR|myShiftreg|r~7_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \mySAR|myShiftreg|r[0]~1_combout\,
=======
	d => \mySAR|myShiftreg|r~0_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \mySAR|mySaadc_fsm|state.idle~q\,
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myShiftreg|r\(6));

<<<<<<< HEAD
-- Location: LCCOMB_X31_Y30_N30
\mySAR|myShiftreg|r~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myShiftreg|r~6_combout\ = (!\mySAR|mySaadc_fsm|state.initial~q\ & \mySAR|myShiftreg|r\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mySAR|mySaadc_fsm|state.initial~q\,
	datad => \mySAR|myShiftreg|r\(6),
	combout => \mySAR|myShiftreg|r~6_combout\);

-- Location: FF_X31_Y30_N31
\mySAR|myShiftreg|r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myShiftreg|r~6_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \mySAR|myShiftreg|r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myShiftreg|r\(5));

-- Location: LCCOMB_X31_Y30_N18
\mySAR|myShiftreg|r~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myShiftreg|r~5_combout\ = (!\mySAR|mySaadc_fsm|state.initial~q\ & \mySAR|myShiftreg|r\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mySAR|mySaadc_fsm|state.initial~q\,
	datad => \mySAR|myShiftreg|r\(5),
	combout => \mySAR|myShiftreg|r~5_combout\);

-- Location: FF_X31_Y30_N19
\mySAR|myShiftreg|r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myShiftreg|r~5_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \mySAR|myShiftreg|r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myShiftreg|r\(4));

-- Location: LCCOMB_X31_Y30_N12
\mySAR|myShiftreg|r~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myShiftreg|r~4_combout\ = (!\mySAR|mySaadc_fsm|state.initial~q\ & \mySAR|myShiftreg|r\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mySAR|mySaadc_fsm|state.initial~q\,
	datad => \mySAR|myShiftreg|r\(4),
	combout => \mySAR|myShiftreg|r~4_combout\);

-- Location: FF_X31_Y30_N13
\mySAR|myShiftreg|r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myShiftreg|r~4_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \mySAR|myShiftreg|r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myShiftreg|r\(3));

-- Location: LCCOMB_X32_Y30_N22
\mySAR|myShiftreg|r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myShiftreg|r~3_combout\ = (\mySAR|myShiftreg|r\(3) & !\mySAR|mySaadc_fsm|state.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mySAR|myShiftreg|r\(3),
	datad => \mySAR|mySaadc_fsm|state.initial~q\,
	combout => \mySAR|myShiftreg|r~3_combout\);

-- Location: FF_X32_Y30_N23
\mySAR|myShiftreg|r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myShiftreg|r~3_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \mySAR|myShiftreg|r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myShiftreg|r\(2));

-- Location: LCCOMB_X31_Y30_N20
\mySAR|myShiftreg|r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myShiftreg|r~2_combout\ = (!\mySAR|mySaadc_fsm|state.initial~q\ & \mySAR|myShiftreg|r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mySAR|mySaadc_fsm|state.initial~q\,
	datad => \mySAR|myShiftreg|r\(2),
	combout => \mySAR|myShiftreg|r~2_combout\);

-- Location: FF_X31_Y30_N21
\mySAR|myShiftreg|r[1]\ : dffeas
=======
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
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
	d => \mySAR|myShiftreg|r~2_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \mySAR|myShiftreg|r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myShiftreg|r\(1));

-- Location: LCCOMB_X31_Y30_N14
\mySAR|myShiftreg|r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myShiftreg|r~0_combout\ = (\mySAR|myShiftreg|r\(1) & !\mySAR|mySaadc_fsm|state.initial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mySAR|myShiftreg|r\(1),
	datac => \mySAR|mySaadc_fsm|state.initial~q\,
	combout => \mySAR|myShiftreg|r~0_combout\);

-- Location: FF_X31_Y30_N15
\mySAR|myShiftreg|r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myShiftreg|r~0_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	ena => \mySAR|myShiftreg|r[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myShiftreg|r\(0));

-- Location: LCCOMB_X31_Y30_N8
\mySAR|mySaadc_fsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|mySaadc_fsm|Selector0~0_combout\ = (\soc~input_o\ & (((!\mySAR|mySaadc_fsm|state.shift~q\)) # (!\mySAR|myShiftreg|r\(0)))) # (!\soc~input_o\ & (\mySAR|mySaadc_fsm|state.idle~q\ & ((!\mySAR|mySaadc_fsm|state.shift~q\) # (!\mySAR|myShiftreg|r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soc~input_o\,
	datab => \mySAR|myShiftreg|r\(0),
	datac => \mySAR|mySaadc_fsm|state.idle~q\,
	datad => \mySAR|mySaadc_fsm|state.shift~q\,
	combout => \mySAR|mySaadc_fsm|Selector0~0_combout\);

-- Location: FF_X31_Y30_N29
=======
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
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\mySAR|mySaadc_fsm|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
	asdata => \mySAR|mySaadc_fsm|Selector0~0_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sload => VCC,
=======
	d => \mySAR|mySaadc_fsm|state.idle~feeder_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|mySaadc_fsm|state.idle~q\);

<<<<<<< HEAD
-- Location: CLKCTRL_G12
=======
-- Location: CLKCTRL_G5
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
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

<<<<<<< HEAD
-- Location: IOIBUF_X34_Y34_N1
=======
-- Location: IOIBUF_X53_Y14_N8
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\comp_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_comp_in,
	o => \comp_in~input_o\);

<<<<<<< HEAD
-- Location: LCCOMB_X32_Y30_N16
\mySAR|myApprox_reg|r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myApprox_reg|r~0_combout\ = (\mySAR|myApprox_reg|r\(0)) # ((\mySAR|myShiftreg|r\(0) & (\comp_in~input_o\ & \mySAR|mySaadc_fsm|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mySAR|myShiftreg|r\(0),
	datab => \comp_in~input_o\,
	datac => \mySAR|myApprox_reg|r\(0),
	datad => \mySAR|mySaadc_fsm|state.shift~q\,
	combout => \mySAR|myApprox_reg|r~0_combout\);

-- Location: FF_X32_Y30_N17
\mySAR|myApprox_reg|r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myApprox_reg|r~0_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \mySAR|mySaadc_fsm|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myApprox_reg|r\(0));

-- Location: LCCOMB_X31_Y30_N28
\mySAR|or_out_signal[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|or_out_signal\(0) = (\mySAR|myShiftreg|r\(0)) # (\mySAR|myApprox_reg|r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mySAR|myShiftreg|r\(0),
	datad => \mySAR|myApprox_reg|r\(0),
	combout => \mySAR|or_out_signal\(0));

-- Location: LCCOMB_X31_Y30_N10
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

-- Location: LCCOMB_X32_Y30_N6
\mySAR|myApprox_reg|r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myApprox_reg|r~1_combout\ = (\mySAR|myApprox_reg|r\(1)) # ((\mySAR|myShiftreg|r\(1) & (\comp_in~input_o\ & \mySAR|mySaadc_fsm|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mySAR|myShiftreg|r\(1),
	datab => \comp_in~input_o\,
	datac => \mySAR|myApprox_reg|r\(1),
	datad => \mySAR|mySaadc_fsm|state.shift~q\,
	combout => \mySAR|myApprox_reg|r~1_combout\);

-- Location: FF_X32_Y30_N7
\mySAR|myApprox_reg|r[1]\ : dffeas
=======
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
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myApprox_reg|r~1_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
<<<<<<< HEAD
	sclr => \mySAR|mySaadc_fsm|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myApprox_reg|r\(1));

-- Location: LCCOMB_X31_Y30_N2
\mySAR|or_out_signal[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|or_out_signal\(1) = (\mySAR|myShiftreg|r\(1)) # (\mySAR|myApprox_reg|r\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mySAR|myShiftreg|r\(1),
	datad => \mySAR|myApprox_reg|r\(1),
	combout => \mySAR|or_out_signal\(1));

-- Location: LCCOMB_X31_Y30_N22
\myLatch|q[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \myLatch|q\(1) = (\reset_bar~input_o\ & ((GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & (\myLatch|q\(1))) # (!GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & ((\mySAR|or_out_signal\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myLatch|q\(1),
	datab => \reset_bar~input_o\,
	datac => \mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\,
	datad => \mySAR|or_out_signal\(1),
	combout => \myLatch|q\(1));

-- Location: LCCOMB_X32_Y30_N8
\mySAR|myApprox_reg|r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myApprox_reg|r~2_combout\ = (\mySAR|myApprox_reg|r\(2)) # ((\comp_in~input_o\ & (\mySAR|myShiftreg|r\(2) & \mySAR|mySaadc_fsm|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp_in~input_o\,
	datab => \mySAR|myShiftreg|r\(2),
	datac => \mySAR|myApprox_reg|r\(2),
	datad => \mySAR|mySaadc_fsm|state.shift~q\,
	combout => \mySAR|myApprox_reg|r~2_combout\);

-- Location: FF_X32_Y30_N9
\mySAR|myApprox_reg|r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myApprox_reg|r~2_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \mySAR|mySaadc_fsm|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myApprox_reg|r\(2));

-- Location: LCCOMB_X32_Y30_N4
\mySAR|or_out_signal[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|or_out_signal\(2) = (\mySAR|myApprox_reg|r\(2)) # (\mySAR|myShiftreg|r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mySAR|myApprox_reg|r\(2),
	datad => \mySAR|myShiftreg|r\(2),
	combout => \mySAR|or_out_signal\(2));

-- Location: LCCOMB_X32_Y30_N20
\myLatch|q[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \myLatch|q\(2) = (\reset_bar~input_o\ & ((GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & (\myLatch|q\(2))) # (!GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & ((\mySAR|or_out_signal\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_bar~input_o\,
	datab => \myLatch|q\(2),
	datac => \mySAR|or_out_signal\(2),
	datad => \mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\,
	combout => \myLatch|q\(2));

-- Location: LCCOMB_X32_Y30_N26
\mySAR|myApprox_reg|r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myApprox_reg|r~3_combout\ = (\mySAR|myApprox_reg|r\(3)) # ((\mySAR|myShiftreg|r\(3) & (\comp_in~input_o\ & \mySAR|mySaadc_fsm|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mySAR|myShiftreg|r\(3),
	datab => \comp_in~input_o\,
	datac => \mySAR|myApprox_reg|r\(3),
	datad => \mySAR|mySaadc_fsm|state.shift~q\,
	combout => \mySAR|myApprox_reg|r~3_combout\);

-- Location: FF_X32_Y30_N27
\mySAR|myApprox_reg|r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myApprox_reg|r~3_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \mySAR|mySaadc_fsm|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myApprox_reg|r\(3));

-- Location: LCCOMB_X32_Y30_N30
\mySAR|or_out_signal[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|or_out_signal\(3) = (\mySAR|myApprox_reg|r\(3)) # (\mySAR|myShiftreg|r\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mySAR|myApprox_reg|r\(3),
	datad => \mySAR|myShiftreg|r\(3),
	combout => \mySAR|or_out_signal\(3));

-- Location: LCCOMB_X32_Y30_N10
\myLatch|q[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \myLatch|q\(3) = (\reset_bar~input_o\ & ((GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & (\myLatch|q\(3))) # (!GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & ((\mySAR|or_out_signal\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myLatch|q\(3),
	datab => \reset_bar~input_o\,
	datac => \mySAR|or_out_signal\(3),
	datad => \mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\,
	combout => \myLatch|q\(3));

-- Location: LCCOMB_X32_Y30_N28
\mySAR|myApprox_reg|r~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myApprox_reg|r~4_combout\ = (\mySAR|myApprox_reg|r\(4)) # ((\comp_in~input_o\ & (\mySAR|myShiftreg|r\(4) & \mySAR|mySaadc_fsm|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp_in~input_o\,
	datab => \mySAR|myShiftreg|r\(4),
	datac => \mySAR|myApprox_reg|r\(4),
	datad => \mySAR|mySaadc_fsm|state.shift~q\,
	combout => \mySAR|myApprox_reg|r~4_combout\);

-- Location: FF_X32_Y30_N29
\mySAR|myApprox_reg|r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myApprox_reg|r~4_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \mySAR|mySaadc_fsm|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myApprox_reg|r\(4));

-- Location: LCCOMB_X32_Y30_N12
\mySAR|or_out_signal[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|or_out_signal\(4) = (\mySAR|myApprox_reg|r\(4)) # (\mySAR|myShiftreg|r\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mySAR|myApprox_reg|r\(4),
	datad => \mySAR|myShiftreg|r\(4),
	combout => \mySAR|or_out_signal\(4));

-- Location: LCCOMB_X32_Y30_N0
\myLatch|q[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \myLatch|q\(4) = (\reset_bar~input_o\ & ((GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & (\myLatch|q\(4))) # (!GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & ((\mySAR|or_out_signal\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_bar~input_o\,
	datab => \myLatch|q\(4),
	datac => \mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\,
	datad => \mySAR|or_out_signal\(4),
	combout => \myLatch|q\(4));

-- Location: LCCOMB_X32_Y30_N14
\mySAR|myApprox_reg|r~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myApprox_reg|r~5_combout\ = (\mySAR|myApprox_reg|r\(5)) # ((\comp_in~input_o\ & (\mySAR|mySaadc_fsm|state.shift~q\ & \mySAR|myShiftreg|r\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp_in~input_o\,
	datab => \mySAR|mySaadc_fsm|state.shift~q\,
	datac => \mySAR|myApprox_reg|r\(5),
	datad => \mySAR|myShiftreg|r\(5),
	combout => \mySAR|myApprox_reg|r~5_combout\);

-- Location: FF_X32_Y30_N15
\mySAR|myApprox_reg|r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myApprox_reg|r~5_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \mySAR|mySaadc_fsm|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myApprox_reg|r\(5));

-- Location: LCCOMB_X32_Y30_N18
\mySAR|or_out_signal[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|or_out_signal\(5) = (\mySAR|myApprox_reg|r\(5)) # (\mySAR|myShiftreg|r\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mySAR|myApprox_reg|r\(5),
	datad => \mySAR|myShiftreg|r\(5),
	combout => \mySAR|or_out_signal\(5));

-- Location: LCCOMB_X32_Y30_N2
\myLatch|q[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \myLatch|q\(5) = (\reset_bar~input_o\ & ((GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & (\myLatch|q\(5))) # (!GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & ((\mySAR|or_out_signal\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_bar~input_o\,
	datab => \myLatch|q\(5),
	datac => \mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\,
	datad => \mySAR|or_out_signal\(5),
	combout => \myLatch|q\(5));

-- Location: LCCOMB_X32_Y30_N24
\mySAR|myApprox_reg|r~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myApprox_reg|r~6_combout\ = (\mySAR|myApprox_reg|r\(6)) # ((\mySAR|myShiftreg|r\(6) & (\comp_in~input_o\ & \mySAR|mySaadc_fsm|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mySAR|myShiftreg|r\(6),
	datab => \comp_in~input_o\,
	datac => \mySAR|myApprox_reg|r\(6),
	datad => \mySAR|mySaadc_fsm|state.shift~q\,
	combout => \mySAR|myApprox_reg|r~6_combout\);

-- Location: FF_X32_Y30_N25
\mySAR|myApprox_reg|r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mySAR|myApprox_reg|r~6_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \mySAR|mySaadc_fsm|state.initial~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myApprox_reg|r\(6));

-- Location: LCCOMB_X31_Y30_N0
\mySAR|or_out_signal[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|or_out_signal\(6) = (\mySAR|myShiftreg|r\(6)) # (\mySAR|myApprox_reg|r\(6))
=======
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myApprox_reg|r\(0));

-- Location: LCCOMB_X52_Y17_N10
\mySAR|or_out_signal[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|or_out_signal\(0) = (\mySAR|myShiftreg|r\(6)) # (\mySAR|myApprox_reg|r\(0))
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mySAR|myShiftreg|r\(6),
<<<<<<< HEAD
	datad => \mySAR|myApprox_reg|r\(6),
	combout => \mySAR|or_out_signal\(6));

-- Location: LCCOMB_X31_Y30_N26
\myLatch|q[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \myLatch|q\(6) = (\reset_bar~input_o\ & ((GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & (\myLatch|q\(6))) # (!GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & ((\mySAR|or_out_signal\(6))))))
=======
	datad => \mySAR|myApprox_reg|r\(0),
	combout => \mySAR|or_out_signal\(0));

-- Location: LCCOMB_X52_Y17_N30
\myLatch|q[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \myLatch|q\(0) = (\reset_bar~input_o\ & ((GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & (\myLatch|q\(0))) # (!GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & ((\mySAR|or_out_signal\(0))))))
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	dataa => \myLatch|q\(6),
	datab => \reset_bar~input_o\,
	datac => \mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\,
	datad => \mySAR|or_out_signal\(6),
	combout => \myLatch|q\(6));

-- Location: LCCOMB_X30_Y30_N24
\mySAR|myApprox_reg|r~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mySAR|myApprox_reg|r~7_combout\ = (\mySAR|myApprox_reg|r\(7)) # ((\mySAR|mySaadc_fsm|state.shift~q\ & (\comp_in~input_o\ & \mySAR|myShiftreg|r\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mySAR|mySaadc_fsm|state.shift~q\,
	datab => \comp_in~input_o\,
	datac => \mySAR|myApprox_reg|r\(7),
	datad => \mySAR|myShiftreg|r\(7),
	combout => \mySAR|myApprox_reg|r~7_combout\);

-- Location: FF_X30_Y30_N25
=======
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
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\mySAR|myApprox_reg|r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
<<<<<<< HEAD
	d => \mySAR|myApprox_reg|r~7_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
	sclr => \mySAR|mySaadc_fsm|state.initial~q\,
=======
	d => \mySAR|myApprox_reg|r~2_combout\,
	clrn => \reset_bar~inputclkctrl_outclk\,
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mySAR|myApprox_reg|r\(7));

<<<<<<< HEAD
-- Location: LCCOMB_X29_Y30_N6
=======
-- Location: LCCOMB_X52_Y17_N2
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
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

<<<<<<< HEAD
-- Location: LCCOMB_X29_Y30_N28
=======
-- Location: LCCOMB_X52_Y17_N0
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
\myLatch|q[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \myLatch|q\(7) = (\reset_bar~input_o\ & ((GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & (\myLatch|q\(7))) # (!GLOBAL(\mySAR|mySaadc_fsm|state.idle~clkctrl_outclk\) & ((\mySAR|or_out_signal\(7))))))

-- pragma translate_off
GENERIC MAP (
<<<<<<< HEAD
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_bar~input_o\,
	datab => \myLatch|q\(7),
=======
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myLatch|q\(7),
	datab => \reset_bar~input_o\,
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
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



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

-- DATE "06/03/2019 18:09:52"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	latch_1 IS
    PORT (
	reset_bar : IN std_logic;
	le : IN std_logic;
	d_in : IN std_logic_vector(7 DOWNTO 0);
	q : OUT std_logic_vector(7 DOWNTO 0)
	);
END latch_1;

-- Design Ports Information
-- q[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- le	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_bar	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[2]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[5]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF latch_1 IS
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
SIGNAL ww_le : std_logic;
SIGNAL ww_d_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(7 DOWNTO 0);
SIGNAL \le~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \d_in[0]~input_o\ : std_logic;
SIGNAL \reset_bar~input_o\ : std_logic;
SIGNAL \le~input_o\ : std_logic;
SIGNAL \le~inputclkctrl_outclk\ : std_logic;
SIGNAL \q[0]$latch~combout\ : std_logic;
SIGNAL \d_in[1]~input_o\ : std_logic;
SIGNAL \q[1]$latch~combout\ : std_logic;
SIGNAL \d_in[2]~input_o\ : std_logic;
SIGNAL \q[2]$latch~combout\ : std_logic;
SIGNAL \d_in[3]~input_o\ : std_logic;
SIGNAL \q[3]$latch~combout\ : std_logic;
SIGNAL \d_in[4]~input_o\ : std_logic;
SIGNAL \q[4]$latch~combout\ : std_logic;
SIGNAL \d_in[5]~input_o\ : std_logic;
SIGNAL \q[5]$latch~combout\ : std_logic;
SIGNAL \d_in[6]~input_o\ : std_logic;
SIGNAL \q[6]$latch~combout\ : std_logic;
SIGNAL \d_in[7]~input_o\ : std_logic;
SIGNAL \q[7]$latch~combout\ : std_logic;

BEGIN

ww_reset_bar <= reset_bar;
ww_le <= le;
ww_d_in <= d_in;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\le~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \le~input_o\);

-- Location: IOOBUF_X53_Y20_N23
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]$latch~combout\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]$latch~combout\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]$latch~combout\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]$latch~combout\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[4]$latch~combout\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[5]$latch~combout\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[6]$latch~combout\,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[7]$latch~combout\,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOIBUF_X53_Y17_N8
\d_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(0),
	o => \d_in[0]~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\reset_bar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_bar,
	o => \reset_bar~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\le~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_le,
	o => \le~input_o\);

-- Location: CLKCTRL_G2
\le~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \le~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \le~inputclkctrl_outclk\);

-- Location: LCCOMB_X52_Y13_N0
\q[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]$latch~combout\ = (\reset_bar~input_o\ & ((GLOBAL(\le~inputclkctrl_outclk\) & (\d_in[0]~input_o\)) # (!GLOBAL(\le~inputclkctrl_outclk\) & ((\q[0]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[0]~input_o\,
	datab => \reset_bar~input_o\,
	datac => \le~inputclkctrl_outclk\,
	datad => \q[0]$latch~combout\,
	combout => \q[0]$latch~combout\);

-- Location: IOIBUF_X53_Y13_N8
\d_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(1),
	o => \d_in[1]~input_o\);

-- Location: LCCOMB_X52_Y13_N26
\q[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[1]$latch~combout\ = (\reset_bar~input_o\ & ((GLOBAL(\le~inputclkctrl_outclk\) & (\d_in[1]~input_o\)) # (!GLOBAL(\le~inputclkctrl_outclk\) & ((\q[1]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[1]~input_o\,
	datab => \reset_bar~input_o\,
	datac => \q[1]$latch~combout\,
	datad => \le~inputclkctrl_outclk\,
	combout => \q[1]$latch~combout\);

-- Location: IOIBUF_X53_Y9_N8
\d_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(2),
	o => \d_in[2]~input_o\);

-- Location: LCCOMB_X52_Y13_N28
\q[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[2]$latch~combout\ = (\reset_bar~input_o\ & ((GLOBAL(\le~inputclkctrl_outclk\) & (\d_in[2]~input_o\)) # (!GLOBAL(\le~inputclkctrl_outclk\) & ((\q[2]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[2]~input_o\,
	datab => \reset_bar~input_o\,
	datac => \le~inputclkctrl_outclk\,
	datad => \q[2]$latch~combout\,
	combout => \q[2]$latch~combout\);

-- Location: IOIBUF_X53_Y8_N22
\d_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(3),
	o => \d_in[3]~input_o\);

-- Location: LCCOMB_X52_Y13_N30
\q[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[3]$latch~combout\ = (\reset_bar~input_o\ & ((GLOBAL(\le~inputclkctrl_outclk\) & (\d_in[3]~input_o\)) # (!GLOBAL(\le~inputclkctrl_outclk\) & ((\q[3]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[3]~input_o\,
	datab => \reset_bar~input_o\,
	datac => \q[3]$latch~combout\,
	datad => \le~inputclkctrl_outclk\,
	combout => \q[3]$latch~combout\);

-- Location: IOIBUF_X53_Y9_N22
\d_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(4),
	o => \d_in[4]~input_o\);

-- Location: LCCOMB_X52_Y13_N24
\q[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[4]$latch~combout\ = (\reset_bar~input_o\ & ((GLOBAL(\le~inputclkctrl_outclk\) & (\d_in[4]~input_o\)) # (!GLOBAL(\le~inputclkctrl_outclk\) & ((\q[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[4]~input_o\,
	datab => \reset_bar~input_o\,
	datac => \le~inputclkctrl_outclk\,
	datad => \q[4]$latch~combout\,
	combout => \q[4]$latch~combout\);

-- Location: IOIBUF_X0_Y8_N22
\d_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(5),
	o => \d_in[5]~input_o\);

-- Location: LCCOMB_X52_Y13_N10
\q[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[5]$latch~combout\ = (\reset_bar~input_o\ & ((GLOBAL(\le~inputclkctrl_outclk\) & ((\d_in[5]~input_o\))) # (!GLOBAL(\le~inputclkctrl_outclk\) & (\q[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]$latch~combout\,
	datab => \reset_bar~input_o\,
	datac => \d_in[5]~input_o\,
	datad => \le~inputclkctrl_outclk\,
	combout => \q[5]$latch~combout\);

-- Location: IOIBUF_X7_Y0_N8
\d_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(6),
	o => \d_in[6]~input_o\);

-- Location: LCCOMB_X52_Y13_N20
\q[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[6]$latch~combout\ = (\reset_bar~input_o\ & ((GLOBAL(\le~inputclkctrl_outclk\) & (\d_in[6]~input_o\)) # (!GLOBAL(\le~inputclkctrl_outclk\) & ((\q[6]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[6]~input_o\,
	datab => \reset_bar~input_o\,
	datac => \le~inputclkctrl_outclk\,
	datad => \q[6]$latch~combout\,
	combout => \q[6]$latch~combout\);

-- Location: IOIBUF_X53_Y15_N8
\d_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(7),
	o => \d_in[7]~input_o\);

-- Location: LCCOMB_X52_Y13_N22
\q[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[7]$latch~combout\ = (\reset_bar~input_o\ & ((GLOBAL(\le~inputclkctrl_outclk\) & (\d_in[7]~input_o\)) # (!GLOBAL(\le~inputclkctrl_outclk\) & ((\q[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[7]~input_o\,
	datab => \reset_bar~input_o\,
	datac => \q[7]$latch~combout\,
	datad => \le~inputclkctrl_outclk\,
	combout => \q[7]$latch~combout\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;
END structure;



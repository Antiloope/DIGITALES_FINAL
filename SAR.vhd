library ieee;
use ieee.std_logic_1164.all;

entity SAR is
	port(reset_bar,soc,clk,comp_in : in std_logic;
		eoc : out std_logic;	
		result : out std_logic_vector(7 downto 0));
end entity;

architecture behavior of SAR is
	signal last_bit_signal : std_logic;
	signal load_signal : std_logic;
	signal en_signal : std_logic;
	signal en2_signal : std_logic;
	signal qout_signal : std_logic_vector (7 downto 0);
	signal or_out_signal : std_logic_vector (7 downto 0);
	signal qar_signal : std_logic_vector (7 downto 0);
begin
	
	mySaadc_fsm : entity work.saadc_fsm port map (
		clk => clk,
		reset_bar => reset_bar,
		soc => soc,
		last_bit => last_bit_signal,
		load => load_signal,
		en => en_signal,
		en2 => en2_signal,	
		eoc => eoc
	);
	
	myShiftreg : entity work.shiftreg_1 port map (
		clr_bar => reset_bar,
		load => load_signal,
		en  => en_signal,
		clk => clk,
		qout => qout_signal
	);
	
	last_bit_signal <= qout_signal(0);
	
	myApprox_reg : entity work.approx_reg port map (
		reset_bar => reset_bar,
		load => load_signal,
		en1 => comp_in,
		en2 => en2_signal,
		clk=>clk,
		d => or_out_signal,
		qar=>qar_signal
	);
	or_out_signal <= qout_signal OR qar_signal; 
	
	result <= or_out_signal;
	
end architecture;
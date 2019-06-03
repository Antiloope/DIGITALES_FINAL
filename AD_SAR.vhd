library ieee;
use ieee.std_logic_1164.all;

entity AD_SAR is
	port(reset_bar,soc,clk,comp_in: in std_logic;
		eoc  : out std_logic;
		AD_result,digital_out : out std_logic_vector(7 downto 0));
end entity;

architecture behavior of AD_SAR is
	signal eoc_signal : std_logic;
	signal result_signal : std_logic_vector (7 downto 0);
begin
	mySAR: entity work.SAR port map (
		reset_bar => reset_bar,
		soc =>soc,
		clk =>clk,
		comp_in => comp_in,
		eoc => eoc_signal,
		result => result_signal		
	);
	
	eoc <= eoc_signal;
	digital_out <= result_signal;
	
	myLatch : entity work.latch_1 port map (
		reset_bar => reset_bar,
		le => eoc_signal,
		d_in => result_signal,
		q => AD_result
	);
	
end architecture;
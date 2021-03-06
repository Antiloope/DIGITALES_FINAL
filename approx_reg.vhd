library ieee;
use ieee.std_logic_1164.all;

entity approx_reg is
	port(reset_bar,load,en1,en2,clk : in std_logic;
		d : in std_logic_vector (7 downto 0);
		qar : out std_logic_vector(7 downto 0));
end entity;

architecture behavior of approx_reg is
begin
	process(reset_bar,clk)
		variable r:std_logic_vector(7 downto 0);
		begin
			if (reset_bar='0') THEN
				r := "00000000";
			elsif rising_edge(clk) then
				if (load='1') then
					r := "00000000";	
				elsif (en1='1' AND en2='1') then
					r:=d;
				end if;
			end if;
			qar<=r;
	end process;
end architecture;
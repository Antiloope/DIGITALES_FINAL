library ieee;
use ieee.std_logic_1164.all;

entity shiftreg_1 is
	port(clr_bar,load,en,clk : in std_logic;
		qout : out std_logic_vector(7 downto 0));
end entity;

architecture behavior of shiftreg_1 is
begin
	process(clr_bar,clk)
		variable r:std_logic_vector(7 downto 0);
		begin
			if (clr_bar='0') THEN
				r := "00000000";
			elsif rising_edge(clk) then
				if (load = '1') then
					r := "10000000";
				elsif (en = '1') then
					for i in 7 downto 1 loop
						r(i-1):=r(i);
					end loop;
					r(7) := '0';
				end if;
			end if;
			qout<=r;
	end process;
end architecture;
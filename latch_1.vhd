library ieee;
use ieee.std_logic_1164.all;

entity latch_1 is
	port(reset_bar,le: in std_logic;
		d_in  : in std_logic_vector(7 downto 0);
		q : out std_logic_vector(7 downto 0));
end entity;

architecture behavior of latch_1 is
begin
	process(reset_bar,le)
		begin
			if (reset_bar='0') THEN
				q <= "00000000";
			elsif (le = '1') then
				q <= d_in;
			end if;
	end process;
end architecture;
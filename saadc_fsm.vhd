library ieee;
use ieee.std_logic_1164.all;

entity saadc_fsm is
	port(clk,reset_bar,soc,last_bit : in std_logic;
		load,en,en2,eoc : out std_logic);
end entity;

-- Quartus II VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

architecture rtl of saadc_fsm is

	-- Build an enumerated type for the state machine
	type state_type is (idle, initial, shift);

	-- Register to hold the current state
	signal state   : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset_bar)
	begin
		if reset_bar = '0' then
			state <= idle;
		elsif (rising_edge(clk)) then
			case state is
				when idle=>
					if soc = '1' then
						state <= initial;
					else
						state <= idle;
					end if;
				when initial=>
					state <= shift;
				when shift=>
					if last_bit = '1' then
						state <= idle;
					else
						state <= shift;
					end if;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when idle =>
				en <= '0';
				en2 <= '0';
				eoc <= '1';
				load <= '0';
			when initial =>
				en <= '0';
				en2 <= '0';
				eoc <= '0';
				load <= '1';
			when shift =>
				en <= '1';
				en2 <= '1';
				eoc <= '0';
				load <= '0';
		end case;
	end process;
end rtl;

library ieee;
use ieee.std_logic_1164.all;
entity FSM is
	port
	(
		clk : in std_logic;
		data_in : in std_logic;
		reset : in std_logic;
		student_id : out std_logic_vector(3 downto 0);
		current_state : out std_logic_vector(3 downto 0)
		);
end entity;
architecture fsm of lab5 is
	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
	signal yfsm : state_type;
begin
	process (clk, reset)
	begin
		if reset = '1' then
				yfsm <= s0;
			elsif (clk'EVENT AND clk = '1') then
				case yfsm is -- 6429 % 13 = 7, FSM #7
					when s0 =>
						if data_in = '0' then
							yfsm <= s0;
						else yfsm <= s4;
					end if;
					when s4 =>
						if data_in = '0' then
							yfsm <= s4;
						else yfsm <= s3;
					end if;
					when s3 =>
						if data_in = '0' then
							yfsm <= s3;
						else yfsm <= s2;
					end if;	
					when s2 =>
						if data_in = '0' then
							yfsm <= s2;
						else yfsm <= s1;
					end if;
					when s1 =>
						if data_in = '0' then
							yfsm <= s1;
						else yfsm <= s8;	
					end if;
					when s8 =>
						if data_in = '0' then
							yfsm <= s8;
						else yfsm <= s7;
					end if;
					when s7 =>
						if data_in = '0' then
							yfsm <= s7;
						else yfsm <= s6;
					end if;
					when s6 =>
						if data_in = '0' then
							yfsm <= s6;
						else yfsm <= s5;
					end if;
					when s5 =>
						if data_in = '0' then
							yfsm <= s5;
						else yfsm <= s0;
					end if;
				end case;
			end if;
		end process;
		
		process (yfsm, data_in)
		begin
			case yfsm is -- 501086429
					when s0 =>
						current_state <= "0000"; -- S0
						student_id <= "0101"; -- 5
					when s4 =>
						current_state <= "0100"; -- S4
						student_id <= "1000"; -- 8
					when s3 =>
						current_state <= "0011"; -- S3
						student_id <= "0000"; -- 0
					when s2 =>
						current_state <= "0010"; -- S2
						student_id <= "0001"; -- 1
					when s1 =>
						current_state <= "0001"; -- S1
						student_id <= "0000"; -- 0
					when s8 =>
						current_state <= "1000"; -- S8
						student_id <= "1001"; -- 9
					when s7 =>
						current_state <= "0111"; -- S7
						student_id <= "0010"; -- 2
					when s6 =>
						current_state <= "0110"; -- S6
						student_id <= "0100"; -- 4
					when s5 =>
						current_state <= "0101"; -- S5
						student_id <= "0110"; -- 6			
				end case;
			end process;
		end fsm;
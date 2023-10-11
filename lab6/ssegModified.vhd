LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
ENTITY ssegModified IS

PORT (bcd : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		sign : IN STD_LOGIC;
		leds, ledss : OUT STD_LOGIC_VECTOR(1 TO 7));
end ssegModified;
		
ARCHITECTURE behavior OF ssegModified IS
BEGIN
	PROCESS (bcd)
	BEGIN
	if (bcd(0) = '0') THEN
		leds <= "1000100";
	elsif (bcd(0) = '1') THEN
		leds <= "0001001";
	end if;
CASE sign IS
	WHEN '1' => ledss <= "1111110";
	WHEN '0' => ledss <= "1111111";
	END CASE;
   END PROCESS;
 END Behavior;

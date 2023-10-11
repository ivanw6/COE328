LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY decod IS
	PORT (w0 , w1 : IN STD_LOGIC;
			En : IN STD_LOGIC ;
			s: OUT STD_LOGIC_VECTOR (0 TO 3)) ;
END decod ;

ARCHITECTURE Behavior OF decod IS
	SIGNAL Enw : STD_LOGIC_VECTOR(2 DOWNTO 0) ;
BEGIN
	Enw <= En & w0 & w1;
	WITH Enw SELECT
		s <= "1000" WHEN "100",
			  "0100" WHEN "101",
			  "0010" WHEN "110",
			  "0001" WHEN "111",
			  "0000" WHEN OTHERS ;
END Behavior ;

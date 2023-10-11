LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY ASU IS
	PORT (CTR : IN STD_LOGIC;
			X, Y : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			Cout, Overflow, Sign : OUT STD_LOGIC ) ;
END ASU ;

ARCHITECTURE Behavior OF ASU IS
	SIGNAL Sum : STD_LOGIC_VECTOR(4 DOWNTO 0) ;
	SIGNAL Sum2 : STD_LOGIC_VECTOR(4 DOWNTO 0) ;	
	SIGNAL Yc  : STD_LOGIC_VECTOR(3 DOWNTO 0) ;
	SIGNAL YYc  : STD_LOGIC_VECTOR(3 DOWNTO 0) ;
	SIGNAL Sum_Signal : STD_LOGIC_VECTOR(3 DOWNTO 0) ;
	SIGNAL Sign_Signal : STD_LOGIC ;
	SIGNAL Cout_Signal : STD_LOGIC ;
	
BEGIN
	Yc  <= Y XOR (CTR&CTR&CTR&CTR);
	Sum <= ('0' & X) + ('0' & Yc) + CTR;
	Sum_Signal <= Sum(3 DOWNTO 0) ;
	Cout_Signal <= Sum(4) ;
	Sign_Signal <= (NOT Cout_Signal) AND CTR ;
	Overflow <= Sum(4) XOR X(3) XOR Yc(3) XOR Sum(3) ;
	YYc <= Sum_Signal XOR (Sign_Signal & Sign_Signal & Sign_Signal & Sign_Signal) ;
	Sum2 <= ("00000" + ('0' & YYc)) + Sign_Signal;
	S <= Sum2(3 DOWNTO 0) ;
	Sign <= Sign_Signal;	
END Behavior ;
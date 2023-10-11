LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab2_vhdl IS
PORT (
x0, x1, x2, x3 : IN STD_LOGIC;
f : OUT STD_LOGIC );
end lab2_vhdl;

ARCHITECTURE Behavior OF lab2_vhdl IS
BEGIN
f <= ((NOT x0) AND (NOT x1) AND x2) OR (x1 AND x3) OR ((NOT x0) AND (NOT x2) AND x1);
END Behavior;
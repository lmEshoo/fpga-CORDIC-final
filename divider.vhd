
library IEEE;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;
use ieee.numeric_std.all;


entity divider is
	Port ( ain , zin, cin, sin : in std_logic;
			 aout, zout, cout, sout: out std_logic);
end divider;

architecture Behavioral of divider is
	signal L : std_logic;
	
begin
	
	L <= ain xor zin;
	sout <= L xor cin xor sin;
	cout <= (sin and L) or (L and cin) or (sin and cin);
	aout <= ain;
	zout <= zin;
	
end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FA is
    Port ( x,y,cin : in  STD_LOGIC;s,cout : out STD_LOGIC);
end FA;

architecture Behavioral of FA is
begin
	s<= x xor y xor cin;
	cout<= (x and y) or (x and cin) or (y and cin);
end Behavioral;



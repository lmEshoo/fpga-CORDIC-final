library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Adder_4 is
    Port ( x,y : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC; 
			  cout,ov : out  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0));
end Adder_4;
architecture Behavioral of Adder_4 is
signal c:std_logic_vector (4 downto 1);
component FA is
    Port ( x,y,cin : in  STD_LOGIC;s,cout : out  STD_LOGIC);
end component;
begin
FA0:FA Port map( x(0),y(0),cin, s(0),c(1));
FA1:FA Port map( x(1),y(1),C(1), s(1),c(2));
FA2:FA Port map( x(2),y(2),c(2), s(2),c(3));
FA3:FA Port map( x(3),y(3),c(3), s(3),c(4));
ov <= c(4) xor c(3);
cout <= c(4);
end Behavioral;

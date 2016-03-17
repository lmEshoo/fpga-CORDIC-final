library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AddSub is
    Port ( a,b : in  STD_LOGIC_VECTOR (3 downto 0);
           op : in  STD_LOGIC;
           ov, cout : out  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0));
end AddSub;

architecture Behavioral of AddSub is
signal z:std_logic_vector(3 downto 0);
component Adder_4 is
    Port ( x,y : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC; cout,ov : out  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
begin
z<= b xor op&op&op&op;
add:Adder_4 Port map( a,z ,op ,cout,ov ,s);

end Behavioral;

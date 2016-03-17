
library IEEE;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;
use ieee.numeric_std.all;



entity full_divider is
	Port (a,b: in std_logic_vector (3 downto 0);
			q1 : out std_logic_vector (3 downto 0));
end full_divider;

architecture Behavioral of full_divider is
Signal X : std_logic_vector (9 downto 1):= "000000000"; -- for souts
Signal Y:  std_logic_vector (12 downto 1):= "000000000000"; -- for aouts
--Signal Z : std_logic_vector (3 downto 1):= "000"; -- for 0's
Signal A1:  std_logic_vector (11 downto 1):= "00000000000"; -- for dont cares
--Signal B1 : std_logic_vector (2 downto 1):= "11"; -- for 1's
Signal B2 : std_logic_vector (16 downto 1):= "0000000000000000"; -- for 1's
Signal L:  std_logic_vector (12 downto 1):= "000000000000"; -- for couts
Signal q : std_logic_vector (4 downto 1):= "0000";

component  divider is
	Port ( ain , zin, cin, sin : in  std_logic;
			 aout, zout, cout, sout: out  std_logic);
end component;



begin

	Div0 : divider Port map (a(0), '1', '1', b(3),
									  Y(1), B2(1), L(1), X(1));
	Div1 : divider Port map (a(1), '1', L(1), '0',
									  Y(2), B2(2), L(2), X(2));
	Div2 : divider Port map (a(2), '1', L(2), '0',
									  Y(3),B2(3), L(3), X(3));
	Div3 : divider Port map (a(3), '1', L(3), '0',
									  Y(4), B2(4), q(4), A1(1));
	----------------------------------------------------------------
	Div4 : divider Port map (Y(1), q(4), q(4), b(2),
									  Y(5), B2(5), L(4), X(4));
	Div5 : divider Port map (Y(2), B2(5), L(4), X(1),
									  Y(6), B2(6), L(5), X(5));
	Div6 : divider Port map (Y(3), B2(6), L(5), X(2),
									  Y(7), B2(7), L(6), X(6));
	Div7 : divider Port map (Y(4), B2(7), L(6), X(3),
									  Y(8), B2(8), q(3), A1(2));
	-----------------------------------------------------------------
	Div8 : divider Port map (Y(5), q(3), q(3), b(1),
									  Y(9), B2(9), L(7), X(7));
	Div9 : divider Port map (Y(6), B2(9), L(7), X(4),
									  Y(10), B2(10), L(8), X(8));
	Div10 : divider Port map (Y(7), B2(10), L(8), X(5),
									  Y(11), B2(11), L(9), X(9));
	Div11 : divider Port map (Y(8), B2(11), L(9), X(6),
									  Y(12), B2(12), q(2), A1(3));
	------------------------------------------------------------------
	Div12 : divider Port map (Y(9), q(2), q(2), b(0),
									  A1(4), B2(13), L(10), A1(5));
	Div13 : divider Port map (Y(10), B2(13), L(10), X(7),
									  A1(6), B2(14), L(11), A1(7));
	Div14 : divider Port map (Y(11), B2(14), L(11), X(8),
									  A1(8), B2(15), L(12), A1(9));
	Div15 : divider Port map (Y(12), B2(15), L(12), X(9),
									  A1(10),B2(16), q(1), A1(11));
	--------------------------------------------------------------------
q1(3) <= q(4); 
q1(2) <= q(3);
q1(1) <= q(2);
q1(0) <= q(1);

end Behavioral;


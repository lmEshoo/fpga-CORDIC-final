library IEEE;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;
use ieee.numeric_std.all;


entity fourBit_multi is
	Port ( a,b : in std_logic_vector (3 downto 0);
			 p: out std_logic_vector (7 downto 0));
end fourBit_multi;

architecture Behavioral of fourBit_multi is


signal f : std_logic_vector(11 downto 1) := "00000000000"; -- to use 0 as a std_log_vector
signal c,y,z: std_logic_vector (12 downto 1) := "000000000000"; -- inner carryout, aout , bout
signal s : std_logic_vector (9 downto 1  ) := "000000000"; -- inner sums
signal x: std_logic_vector (12 downto 1) := "000000000000"; -- for dont care signals

component  multi is
	Port (ain, bin, cin, sin : in std_logic; 
			aout, bout, cout, sout : out std_logic);
end component;

begin

multi0 : multi Port map ( a(0), b(0), f(1) ,f(2),
								  y(1), z(1), c(1), p(0));
multi1 : multi Port map ( a(1), z(1), c(1) , f(3),
								  y(2), z(2), c(2), s(1));
multi2 : multi Port map ( a(2), z(2), c(2) , f(4),
								  y(3), z(3), c(3), s(2));						
multi3 : multi Port map ( a(3), z(3), c(3) , f(5),
								  y(4), x(1), x(2), s(3));
-------------------------------------------------------
multi4 : multi Port map ( y(1), b(1), f(6) , s(1),
								  y(5), z(4), c(4), p(1));
multi5 : multi Port map ( y(2), z(4), c(4) , s(2),
								  y(6), z(5), c(5), s(4));
multi6 : multi Port map ( y(3), z(5), c(5), s(3),
								  y(7), z(6), c(6), s(5));
multi7 : multi Port map ( y(4), z(6), c(6) , f(7),
								  y(8), x(3), x(4), s(6));
---------------------------------------------------------
multi8 : multi Port map ( y(5), b(2), f(8) , s(4),
								  y(9), z(7), c(7), p(2));
multi9 : multi Port map ( y(6), z(7), c(7) , s(5),
								  y(10), z(8), c(8), s(7));
multi10 : multi Port map ( y(7), z(8), c(8) , s(6),
								  y(11), z(9), c(9), s(8));
multi11 : multi Port map ( y(8), z(9), c(9) , f(9),
								  y(12), x(5), x(6), s(9));
----------------------------------------------------------
multi12 : multi Port map ( y(9), b(3), f(10) , s(7),
								  x(7), z(10), c(10), p(3));
multi13 : multi Port map ( y(10), z(10), c(10) , s(8),
								  x(8), z(11), c(11), p(4));
multi14 : multi Port map ( y(11), z(11), c(11) , s(9),
								  x(9), z(12), c(12), p(5));
multi15 : multi Port map ( y(12), z(12), c(12) , f(11),
								  x(10), x(11), x(12), p(6));	

p(7) <= x(12);								  

end Behavioral;


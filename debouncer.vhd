----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:07:39 01/14/2016 
-- Design Name: 
-- Module Name:    debouncer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.math_real.all; 

entity debouncer is
port(clk,pb:in std_logic; go:out std_logic);
end debouncer;
--enable is input
architecture Behavioral of debouncer is
constant D7:integer:=350000;
signal part:std_logic_vector(2 downto 0):="000";
signal dpb,spb:std_logic;
signal SDC:integer range 0 to D7;

Component DFF is
port(D, clk:in std_logic; Q:out std_logic);
end component;

begin
flopfirst:DFF port map(pb,clk,dpb);
flop2second:DFF port map(dpb,clk,spb);
process

begin
wait until (clk'event and clk='1');
	case (part) is 
		when "000"=>if(spb='1') then part<=part+1; SDC<=D7; end if;
		when "001"=> if(SDC=0) then
							part<=part+1;
						else SDC<=SDC-1;end if;
		when "010"=>if (spb='1') then part<=part+1;else part<="000"; end if;
		when "011"=>if (spb='0') then part<=part+1; SDC<=D7;   end if;
		when "100"=>if(SDC=0) then part<=part+1; else SDC<=SDC-1; end if;
		when "101"=> part<="000"; 
		when others=> part<="000";
		end case;
end process;

go<='1' when (part="101") else '0';
end Behavioral;


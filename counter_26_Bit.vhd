----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:23:40 01/12/2016 
-- Design Name: 
-- Module Name:    counter_26_Bit - Behavioral 
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
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;
use ieee.numeric_std.all;


entity counter_26_Bit is
	port (clk:in STD_LOGIC;
			COUNTER_26_BIT_OUT: out STD_LOGIC);
end counter_26_Bit;

architecture Behavioral of counter_26_Bit is
signal tempy: std_logic_vector(24 downto 0);
begin
	process(clk) begin
		if(rising_edge(clk)) then
			tempy<=tempy+1;
		end if;
	end process;
	COUNTER_26_BIT_OUT<='1' when tempy=0 else '0';
	
	

end Behavioral;


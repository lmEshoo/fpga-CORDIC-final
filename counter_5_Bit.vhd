----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:28:00 01/12/2016 
-- Design Name: 
-- Module Name:    counter_5_Bit - Behavioral 
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


entity counter_5_Bit is
	port (clk:in STD_LOGIC;
			inc: in STD_LOGIC;
			reset: in STD_LOGIC;
			COUNTER_5_BIT_OUT: out STD_LOGIC_VECTOR(4 downto 0));
end counter_5_Bit;

architecture Behavioral of counter_5_Bit is
signal tempy: std_logic_vector(4 downto 0):="00000";
begin
	process(clk, reset) begin
		if reset='1' then
			tempy<="00000";
		elsif(clk'event and clk='1') then
			if(inc = '1') then
				tempy<=tempy+1;
			end if;
		end if;
	end process;
	COUNTER_5_BIT_OUT<=tempy;

end Behavioral;


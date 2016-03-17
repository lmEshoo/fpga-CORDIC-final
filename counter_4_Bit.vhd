----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:15:20 01/12/2016 
-- Design Name: 
-- Module Name:    counter_4_Bit - Behavioral 
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

entity counter_4_Bit is
	port (clk:in STD_LOGIC;
			inc: in STD_LOGIC;
			COUNTER_4_BIT_OUT: out STD_LOGIC_VECTOR(3 downto 0));
end counter_4_Bit;

architecture Behavioral of counter_4_Bit is
	signal tempy: std_logic_vector(3 downto 0):="0000";
begin
	process(clk) begin
		if(rising_edge(clk)) then
			if(inc='1') then
				tempy<=tempy+1;
			end if;
		end if;
	end process;
	COUNTER_4_BIT_OUT<=tempy;
end Behavioral;


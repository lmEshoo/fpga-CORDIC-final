----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:04:21 01/11/2016 
-- Design Name: 
-- Module Name:    top - Behavioral 
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
use ieee.std_logic_arith.ALL;
--use ieee.std_logic_unsigned.ALL;
use ieee.std_logic_signed.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CORDIC is 
 port( clk,go:in STD_LOGIC;
		 done: out STD_LOGIC;
		angle : in signed( 8 downto 0 );
		sin, cos: out signed(12 downto 0) );
end CORDIC;
 
architecture Behavioral of CORDIC is


component look_up
	port( clk: in std_logic; 
			counter_lookup: in unsigned( 3 downto 0 );
			theta_in : out signed( 18 downto 0 ) );
end component;

component cordics
	PORT	( clk,go     : in std_logic;
				done     : out std_logic;
			  Theta   : in signed (18 downto 0);
			  Angle   : in signed(8 downto 0);
			  sin,cos : out signed (12 downto 0);
			  iii     : out unsigned( 3 downto 0 ));
end component;

signal look_up_in    :  unsigned( 3 downto 0 ):="0000"; 
signal theta_in 	   : signed( 18 downto 0 );
begin 


--counter_4_bit:  counter_4bits	  port map(clk,look_up_in);
LOOK_UP_table:		   look_up	  port map(clk, look_up_in, theta_in);
cord:				cordics	port map(clk=>clk,go=>go, done=>done, Theta=>theta_in, angle=>angle, sin=>sin, cos=>cos,iii=>look_up_in );
end Behavioral;


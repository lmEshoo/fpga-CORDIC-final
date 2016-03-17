----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:11:03 01/11/2016 
-- Design Name: 
-- Module Name:    DisplayInterface - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DisplayInterface is
            Port(clk:in STD_LOGIC;
            DIN:in STD_LOGIC_VECTOR(7 downto 0);
            W: in STD_LOGIC;
            WADD: in STD_LOGIC_VECTOR(4 downto 0);
             Dataout:out std_logic_vector(3 downto 0);
             Control:out std_logic_vector(2 downto 0));
            end DisplayInterface;
 
architecture Behavioral of DisplayInterface is
Component LCDI is
                 port(clk:in STD_logic;
                        DIN:in STD_LOGIC_VECTOR(7 downto 0);
                        W: in STD_LOGIC;
                        WADD: in STD_LOGIC_VECTOR(4 downto 0);
                        dataout: out STD_LOGIC_VECTOR(3 downto 0);
                        control: out STD_LOGIC_VECTOR(2 downto 0));
end component LCDI;
begin
 
dev: LCDI Port map(clk=>clk,DIN=>DIN,W=>W,WADD=>WADD,dataout=>dataout,control=>control);
                       
end Behavioral;


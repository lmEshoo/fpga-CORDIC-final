--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:59:47 02/22/2016
-- Design Name:   
-- Module Name:   H:/helloVHDL/b2bcd_test.vhd
-- Project Name:  helloVHDL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: B2BCD
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY b2bcd_test IS
END b2bcd_test;
 
ARCHITECTURE behavior OF b2bcd_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT B2BCD
    PORT(
         go : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         done : OUT  std_logic;
         BV : IN  std_logic_vector(12 downto 0);
         D0 : OUT  std_logic_vector(3 downto 0);
         D1 : OUT  std_logic_vector(3 downto 0);
         D2 : OUT  std_logic_vector(3 downto 0);
         D3 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal go : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal BV : std_logic_vector(12 downto 0) := (others => '0');

 	--Outputs
   signal done : std_logic;
   signal D0 : std_logic_vector(3 downto 0);
   signal D1 : std_logic_vector(3 downto 0);
   signal D2 : std_logic_vector(3 downto 0);
   signal D3 : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: B2BCD PORT MAP (
          go => go,
          reset => reset,
          clk => clk,
          done => done,
          BV => BV,
          D0 => D0,
          D1 => D1,
          D2 => D2,
          D3 => D3
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

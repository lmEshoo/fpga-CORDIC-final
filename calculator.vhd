
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity calculator is 
 port( sub,clk,reset:in STD_LOGIC;
		 cout:out STD_LOGIC;
		 a,b:in std_logic_vector(3 downto 0);
		 PD0,QD0,RD0,PD1,QD1,RD1,PD2: out std_logic_vector(3 downto 0));
end calculator;
 
architecture Behavioral of calculator is

component B2BCD
	port(p:in std_logic_vector(7 downto 0);
		Q,R: in std_logic_vector(3 downto 0);
		PD0,QD0,RD0,PD1,QD1,RD1,PD2: out std_logic_vector(3 downto 0);
		cout,clk,reset,sub:in std_logic
	);
end component;

component AddSub
	Port ( a,b : in  STD_LOGIC_VECTOR (3 downto 0);
           op : in  STD_LOGIC;
           ov, cout : out  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component fourBit_multi
	Port ( a,b : in std_logic_vector (3 downto 0);
			 p: out std_logic_vector (7 downto 0));
end component;

component full_divider
	Port (a,b: in std_logic_vector (3 downto 0);
			q1 : out std_logic_vector (3 downto 0));
end component;
--signal  						 :  std_logic_vector( 2 downto 0 ):="000";
--signal  						 :  std_logic_vector( 3 downto 0 ):="0000";
signal WADD, WADD_RAM,RADD_RAM    :  std_logic_vector( 4 downto 0 ):="00000";
signal B2BCD_R,B2BCD_Q			    :  std_logic_vector( 3 downto 0 ):="0000"; 
signal B2BCD_P					       :  std_logic_vector( 7 downto 0 ):="00000000"; 
signal cout_i,ov			 :  std_logic:='0';
--signal Dataout  :  std_logic_vector(3 downto 0);
--signal Control  :  std_logic_vector(2 downto 0); 
begin 

divider:			full_divider	 	  port map(a,b,B2BCD_Q);
--multiplier:		fourBit_multi	 	  port map(a,b,B2BCD_P);
AdderSubr:		AddSub			 	  port map(a,b,sub,ov,cout_i,B2BCD_R);
--B2BCD2:			B2BCD				 	  port map(B2BCD_P,B2BCD_Q,B2BCD_R,PD0,QD0,RD0,PD1,QD1,RD1,PD2,cout_i,clk,reset, sub);
cout<=cout_i;
end Behavioral;


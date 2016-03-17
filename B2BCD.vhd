library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use ieee.std_logic_arith.ALL;
use ieee.std_logic_signed.ALL;
 use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity B2BCD is
	port (
		go,reset, clk:in std_logic;
		done:out std_logic;
		BV: in signed(12 downto 0);
		D0,D1,D2,D3: out signed(3 downto 0));
end B2BCD;

architecture Behavioral of B2BCD is
signal state: unsigned (2 downto 0):="000";
signal R:	  signed  (12 downto 0):="0000000000000";
signal TD:	  signed  (3 downto 0):="0000";
begin
process
begin
wait until  (clk'event and clk='1');
if (reset='1') then 
	state<="000";
else 
	case state is
		when "000"=>  if(go='1') then
								R<=BV; TD<="0000"; state<="001";
							else
								state<="000";
							end if;
		when "001"=>  if(R<"0001111100111") then --R<999
							TD<="0000"; 
							D3<=TD;
							state<="010";	
						  else
							R<=R-"0001111101000"; 
							TD<=TD+"0001"; 
							state<="001"; 	
						  end if;
		when "010"=>  if(R<"0000001100011") then --R<99
							TD<="0000"; 
							D2<=TD;
							state<="011";	
						  else
							R<=R-"0000001100100"; 
							TD<=TD+"0001"; 
							state<="010"; 	
						  end if;
		when "011"=>  if(R<"0000000001001") then --R<9
							D0<=R(3 downto 0); 
							D1<=TD;
							state<="100";	
						  else
							R<=R-"0000000001010"; 
							TD<=TD+"0001"; 
							state<="011"; 	
						  end if;
		when "100"=> state<="000";
		when others=> state<="000";
	end case;
end if;
end process;
done <= '1' when (state= "100") else '0';
end Behavioral;


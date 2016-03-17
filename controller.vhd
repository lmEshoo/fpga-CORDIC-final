library ieee;
use ieee.std_logic_1164.ALL;
--use ieee.std_logic_arith.ALL;
use ieee.std_logic_signed.ALL;
use ieee.numeric_std.all;

entity controller is
  port(     clk,done_cordic, done_b2bcd   : in STD_LOGIC;
            DIN   : out std_logic_vector (7 downto 0);
            W,go_cordic, go_b2bcd     : out STD_LOGIC;
            WADD  : out std_logic_vector(4 downto 0);
				DOUT  : in std_logic_vector(7 downto 0);
				RADD  : out std_logic_vector(4 downto 0);
				reset : in STD_LOGIC;
				PWADD : in std_logic_vector(4 downto 0);
				PDOUT : in std_logic_vector(7 downto 0);
				cout  : in std_logic;
				a,b	: out std_logic_vector(3 downto 0);
				P_big: in std_logic_vector(7 downto 0);
				go		: in std_logic;
				led	:out std_logic_vector(7 downto 0);
				angle : out signed( 8 downto 0 );
				sin,cos: in signed(12 downto 0);
				BV: out signed(12 downto 0);
				D3,D2,D1,D0: in signed(3 downto 0));
end controller;

architecture controllerA of controller is
  --signal counter: natural range 0 to 24;
  signal i_WADD,i_RADD,state   :  std_logic_vector( 4 downto 0 ):="00000";
  signal SIGN_i:  std_logic_vector( 3 downto 0 ):="0000";
  signal LEAST_i  :  signed( 4 downto 0 ):="00000"; 
  signal MOST_i		: signed(8 downto 0):="000000000";  --i_r
  signal cos_i,sin_i    :  signed( 12 downto 0 ):="0000000000000"; 
  signal delay :std_logic_vector(6 downto 0):="0000000";
  --signal i_W      :  std_logic:='0'; 


begin
process
begin
--led(4 downto 0)<='0'&std_logic_vector(MOST_i(3 downto 0));
--led(7)<=done_cordic;
--	led(6)<=done_b2bcd;led(5)<='0';
--led<='0'&PD0;
led<=P_big;

wait until (clk'event and clk='1');
if (reset='1') then 
	state<="00000";
else 
case state is
	when "00000"=> i_RADD<="00000"; i_WADD<="00000"; state<="00001";
	when "00001"=> if (i_WADD=PWADD) then
							DIN<=PDOUT; state<="00010";
						else
							DIN<=DOUT; state<="00010";
						end if;
	--when "00010"=>  state<=state+1; --"00000"
	when "00010"=> if (i_RADD="0010") then
	                  if(go='1') then
								state<="00011";
							else
								state<="00000";
							end if;
						else 
							i_RADD<=i_RADD+"00001"; i_WADD<=i_WADD+"00001"; state<="00001"; --i_WADD
						end if;
	when "00011"=> i_RADD<="00000"; state<="00100"; --next state
	when "00100"=> SIGN_i<=DOUT(3 downto 0); i_RADD<=i_RADD+"00001"; state<="00101"; --DOUT(3 downto 0)
	when "00101"=> MOST_i<=signed("00000"&DOUT(3 downto 0)); i_RADD<=i_RADD+"00001"; state<="00110";
	when "00110"=> LEAST_i<=signed('0'&DOUT(3 downto 0)); i_RADD<=i_RADD+"00001"; delay<="1100011";  state<="00111";
	when "00111"=> if (delay="0000000") then
							MOST_i<= signed("0"&(std_logic_vector(LEAST_i)+P_big)); i_WADD<=i_WADD+"00010";
	                  state<="01000";
						else 
							delay<=delay-"0000001";
							state<="00111";
						end if;
						 
	when "01000"=>if (SIGN_i=x"D" ) then
	                  DIN<="00101101"; state<="11101";
						else 
							DIN<=x"2B"; state<="01001"; --i_WADD
						end if;
	when "01001"=> angle<=MOST_i; state<="01010"; --MOST_I
	when "01010"=> --if (delay="000000") then
							if (done_cordic='1' ) then
								cos_i<=cos; sin_i<=sin; state<="01011";
							else 
								state<="01010"; --i_WADD
							end if;
						--else 
						--	delay<=delay-"000001";
						--	state<="01010";
						--end if;
						
						
	when "01011"=> BV<=cos_i; i_WADD<="00100"; state<="01100"; --471 "0000111010111"
	when "01100"=> --if (delay="000000") then
							if (done_b2bcd='1' ) then
								DIN<="0011"&std_logic_vector(D3); i_WADD<=i_WADD+"00001"; state<="01101"; 
							else 
								state<="01100"; --i_WADD
							end if;
						--else 
						--	delay<=delay-"000001";
						--	state<="01100";
						--end if;
						
						
	when "01101"=> state<="01110"; --13
	when "01110"=> DIN<="0011"&std_logic_vector(D2); i_WADD<=i_WADD+"00001"; state<="01111";
	when "01111"=> state<="10000"; --15
	when "10000"=> DIN<="0011"&std_logic_vector(D1); i_WADD<=i_WADD+"00001"; state<="10001";
	when "10001"=> state<="10010"; --17
	when "10010"=> if( std_logic_vector(D0)="1111") then
							DIN<="00110000"; i_WADD<=i_WADD+"00001"; state<="10011";
						else
							DIN<="0011"&std_logic_vector(D0); i_WADD<=i_WADD+"00001"; state<="10011";
						end if;
						
	when "10011"=> i_WADD<="10100"; state<="10100"; --19
	
	when "10100"=> if (SIGN_i=x"D" ) then --cchanged
							BV<=("1111111111111"xor sin_i)+"000000000001"; DIN<=x"2B";--changed
	                  state<="10101";
						else 
							BV<=sin_i; DIN<=x"2B"; state<="10101"; --changed 123 "0000001111011"
						end if;
						
	when "10101"=> if (done_b2bcd='1' ) then --W
	                  DIN<="0011"&std_logic_vector(D3); i_WADD<=i_WADD+"00001"; state<="10110"; 
						else 
							state<="10101"; --i_WADD
						end if;
	when "10110"=> state<="10111"; --22
	when "10111"=> DIN<="0011"&std_logic_vector(D2); i_WADD<=i_WADD+"00001"; state<="11000";
	when "11000"=> state<="11001"; --24
	when "11001"=> DIN<="0011"&std_logic_vector(D1); i_WADD<=i_WADD+"00001"; state<="11010";
	when "11010"=> state<="11011"; --26
	when "11011"=> if( std_logic_vector(D0)="1111") then
							DIN<="00110000"; i_WADD<=i_WADD+"00001"; state<="11100";
						else
							DIN<="0011"&std_logic_vector(D0); i_WADD<=i_WADD+"00001"; state<="11100";
						end if;
	
						
	when "11100"=> state<="00000"; --28
	
	when "11101"=> MOST_i<=("111111111"xor Most_i)+"000000001"; state<="11110";--W
	when "11110"=> state<="01001";--MOST_i<=signed(tempyy+"00000001"); state<="01001";
	--when "11111"=> state<="00000";
	when others => state<="00000";
end case;
end if;

end process;
	go_cordic<='1' when(state="01001") else '0';
	go_b2bcd <='1' when(state="01011" or state="10100") else '0';
	
	W<='1' when (--state="00001" --1
					state="00010" --2
					--or state="00011" --3
					or state="01001" --9
					--or state="01101" --11
					or state="01101" --13
					or state="01111" --15
					or state="10001" --17
					or state="10011" --19
					or state="10110" --22
					or state="11000"--23
					or state="11010" --26
					or state="11100"--28
					--or (state>="01001" and state<="11001"))--9
					or state="10101" --21
					or state="11101") --
					--or state="10010" --18
					--or state="10100" --20
					--or state="10110" --22
					--or state<="11001")--24 
					else '0';
	WADD<=i_WADD; 
	RADD<=i_RADD; 
	a<="1010";
	b<=std_logic_vector(MOST_i(3 downto 0));
end controllerA;

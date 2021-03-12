library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
entity evidencia is
port(
	rs, op2 	: in std_logic_vector (3 downto 0); 
	opcion 	: in std_logic_vector (2 downto 0);
	cin 		: in std_logic;
	rd  		: out std_logic_vector (3 downto 0);
	salida 	: out std_logic_vector (6 downto 0); 
	salida1	: out std_logic_vector (6 downto 0);
	salida2	: out std_logic_vector (6 downto 0));
end evidencia;

architecture a of evidencia is
signal num : std_logic_vector (3 downto 0);
signal sum : std_logic_vector (4 downto 0);
signal cout: std_logic;
begin 
	process (opcion, num)
	begin
		if opcion = "000" then 
					num <= rs + op2;
						if num = "0000" then salida <= "1000000"; salida1 <= "1111111";
							elsif num = "0001" then salida <= "1111001";	salida1 <= "1111111"; salida2 <= "1111111"; rd <= "0001";
							elsif num = "0010" then salida <= "0100100"; salida1 <= "1111111"; salida2 <= "1111111"; rd <= "0010";
							elsif num = "0011" then salida <= "0110000";	salida1 <= "1111111"; salida2 <= "1111111"; rd <= "0011";
							elsif num = "0100" then salida <= "0011001";	salida1 <= "1111111"; salida2 <= "1111111"; rd <= "0100";
							elsif num = "0101" then salida <= "0010010";	salida1 <= "1111111"; salida2 <= "1111111"; rd <= "0101";
							elsif num = "0110" then salida <= "0000010";	salida1 <= "1111111"; salida2 <= "1111111"; rd <= "0110";
							elsif num = "0111" then salida <= "1111000";	salida1 <= "1111111"; salida2 <= "1111111"; rd <= "0111";
						else salida <= "0000110"; rd <= "0000";
					
						end if;
						
		elsif opcion = "001" then 
					sum  <= ('0'&rs) + op2 + cin;
					cout <= sum(4);
						if cout = '0' then salida1 <= "1000000"; rd(3) <= '1';
						else salida1 <= "1111001";	
						end if;
					num <= sum(3 downto 0);
					rd  <= sum(3 downto 0);
						if num = "0001" then salida <= "1000000";
							elsif num = "0001" then salida <= "1111001";	salida2 <= "1111111"; rd <= "0001";
							elsif num = "0010" then salida <= "0100100"; salida2 <= "1111111"; rd <= "0010";
							elsif num = "0011" then salida <= "0110000"; salida2 <= "1111111"; rd <= "0011";
							elsif num = "0100" then salida <= "0011001"; salida2 <= "1111111"; rd <= "0100";
							elsif num = "0110" then salida <= "0000010"; salida2 <= "1111111"; rd <= "0101";
							elsif num = "0111" then salida <= "1111000"; salida2 <= "1111111"; rd <= "0111";
						else salida <= "0000110"; rd <= "0000";
						end if;
		
		elsif opcion = "010" then 
					rd <= rs - op2;
					num <= rs - op2;
					if rs > op2 then 
						if num = "0000" then salida <= "1000000"; salida1 <= "1111111";
								elsif num = "0001" then salida <= "1111001";	salida1 <= "1111111"; salida2 <= "1111111"; rd<="0001";
								elsif num = "0010" then salida <= "0100100"; salida1 <= "1111111"; salida2 <= "1111111"; rd<="0010";
								elsif num = "0011" then salida <= "0110000";	salida1 <= "1111111"; salida2 <= "1111111"; rd<="0011";
								elsif num = "0100" then salida <= "0011001";	salida1 <= "1111111"; salida2 <= "1111111"; rd<="0100";
								elsif num = "0101" then salida <= "0010010";	salida1 <= "1111111"; salida2 <= "1111111"; rd<="0101";
								elsif num = "0110" then salida <= "0000010";	salida1 <= "1111111"; salida2 <= "1111111"; rd<="0110"; 			
								elsif num = "0111" then salida <= "1111000";	salida1 <= "1111111"; salida2 <= "1111111"; rd<="0111";
						else salida <= "0000110"; rd <= "0000";
						end if;
					else
						if num = "0000"then salida <= "1000000"; salida1 <= "1111111";
							elsif num = "1111" then salida <= "1111001";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1111";
							elsif num = "1110" then salida <= "0100100";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1110";
							elsif num = "1101" then salida <= "0110000";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1101";
							elsif num = "1100" then salida <= "0011001";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1100";
							elsif num = "1011" then salida <= "0010010";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1011";
							elsif num = "1010" then salida <= "0000010";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1010";
							elsif num = "1001" then salida <= "1111000";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1001";
						else salida <= "0000110"; rd <= "0000";
						end if;
					end if;

		elsif opcion = "011" then 
					sum  <= ('0'&rs) - op2 - cin;
					cout <= sum(4);
						if cout = '0' then salida2 <= "1000000";
						else salida2 <= "1111001";	
						end if;
					num <= sum(3 downto 0);
					rd  <= sum(3 downto 0);
						if rs > op2 then 
						if num = "0000" then salida <= "1000000"; salida1 <= "1111111";
								elsif num = "0001" then salida <= "1111001";	salida1 <= "1111111"; salida2 <= "1111111"; rd<="0001";
								elsif num = "0010" then salida <= "0100100"; salida1 <= "1111111"; salida2 <= "1111111"; rd<="0010";
								elsif num = "0011" then salida <= "0110000";	salida1 <= "1111111"; salida2 <= "1111111"; rd<="0011";
								elsif num = "0100" then salida <= "0011001";	salida1 <= "1111111"; salida2 <= "1111111"; rd<="0100";
								elsif num = "0101" then salida <= "0010010";	salida1 <= "1111111"; salida2 <= "1111111"; rd<="0101";
								elsif num = "0110" then salida <= "0000010";	salida1 <= "1111111"; salida2 <= "1111111"; rd<="0110"; 			
								elsif num = "0111" then salida <= "1111000";	salida1 <= "1111111"; salida2 <= "1111111"; rd<="0111";
						else salida <= "0000110"; rd <= "0000";
						end if;
					else
						if num = "0000"then salida <= "1000000"; salida1 <= "1111111";
							elsif num = "1111" then salida <= "1111001";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1111";
							elsif num = "1110" then salida <= "0100100";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1110";
							elsif num = "1101" then salida <= "0110000";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1101";
							elsif num = "1100" then salida <= "0011001";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1100";
							elsif num = "1011" then salida <= "0010010";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1011";
							elsif num = "1010" then salida <= "0000010";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1010";
							elsif num = "1001" then salida <= "1111000";	salida1 <= "0111111"; salida2 <= "1111111"; rd<="1001";
						else salida <= "0000110"; rd <= "0000";
						end if;
					end if;
		
		elsif opcion = "100" then 
					rd <= rs and op2;
					
		elsif opcion = "101" then
					rd <= rs or op2;
					
		elsif opcion = "110" then 
					rd <= rs xor op2;
		else
					rd <= rs and (not op2);
	end if;
	end process;
end a;

library ieee;
use ieee.std_logic_1164.all;
-- Decoder a 7 segmentos
entity Decoder is 
port(
	entrada: in std_logic_vector (6 downto 0); --entrada de a,b,c,d,e,f,g como vector
	salida :out std_logic_vector (3 downto 0));
end Decoder;

architecture a of Decoder is
begin 
	salida <= "0000" when entrada = "0000000" else
				 "0001" when entrada = "1001111" else
				 "0010" when entrada = "0010010" else
				 "0011" when entrada = "0000110" else
				 "0100" when entrada = "1001100" else
				 "0101" when entrada = "0100100" else
				 "0110" when entrada = "0100000" else
				 "0111" when entrada = "0001111" else
				 "1000" when entrada = "0000000" else 
				 "1001" when entrada = "0000100" else 
				 "0000";
end a;
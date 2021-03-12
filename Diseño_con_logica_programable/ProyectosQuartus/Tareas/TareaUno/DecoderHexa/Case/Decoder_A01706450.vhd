library ieee;
use ieee.std_logic_1164.all;
-- Decoder a 7 segmentos
entity Decoder_A01706450 is 
port(
	entrada: in std_logic_vector (6 downto 0); --entrada de a,b,c,d,e,f,g como vector
	salida :out std_logic_vector (3 downto 0));
end Decoder_A01706450;

architecture a of Decoder_A01706450 is
begin 
process(entrada)
	begin
	case entrada is
		when "0000001" => salida <= "0000";
		when "1001111" => salida <= "0001";
		when "0010010" => salida <= "0010";
		when "0000110" => salida <= "0011";
		when "1001100" => salida <= "0100";
		when "0100100" => salida <= "0101";
		when "0100000" => salida <= "0110";
		when "0001111" => salida <= "0111";
		when "0000000" => salida <= "1000";
		when "0000100" => salida <= "1001";
		when others => salida <= "0000";
	end case;
end process;
end a;
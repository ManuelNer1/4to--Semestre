library ieee;
use ieee.std_logic_1164.all;
-- Decoder 2 a 4 con process
entity dec2a4process is
port (
			entrada : in  std_logic_vector (1 downto 0);
			salida  : out std_logic_vector (3 downto 0);
			entrada2 : in  std_logic_vector (3 downto 0);
			salida2  : out std_logic_vector (7 downto 0));
end dec2a4process;

architecture a of dec2a4process is
begin
	process(entrada)
	begin
		if entrada = "00" then
			salida <= "0001";
		elsif entrada = "01"then
			salida <= "0010";
		elsif entrada = "10" then
			salida <= "0100";
		elsif entrada = "11" then
			salida <= "1000";
		else
			salida <= "0000";
		end if;
	end process
	process(entrada2)
		case entrada2 is
			when "000" => salida2 <= "00000001";
			when "001" => salida2 <= "00000010";
			when "010" => salida2 <= "00000100";
			when "011" => salida2 <= "00001000";
			when "100" => salida2 <= "00010000";
			when "101" => salida2 <= "00100000";
			when "110" => salida2 <= "01000000";
			when "111" => salida2 <= "10000000";
			when others => salida2 <= "00000000";
		end case;
	end process;
end a;
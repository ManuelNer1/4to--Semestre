library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--Implementacion de un contador bineario de 0 a 3
entity cont is
port( CLK, RST : in std_logic;
salida : out std_logic_vector (1 downto 0));
end cont;

architecture a of cont is
signal count : std_logic_vector (1 downto 0);
begin 
salida <= count;
	process(clk, rst)
	begin 
		if (rst = '0') then count <= "00";
		
		elsif (rising_edge(clk)) then count <= count + 1;
		end if;
	end process;
end a;
library ieee;
use ieee.std_logic_1164.all;
--Implementacion de FFD
entity FFD is 
port ( D, CLK, RST : in std_logic;
		 Q : out std_logic );
end FFD;

architecture a of FFD is
Begin 
	process (clk, rst)
	begin 
		if rst = '0' then q <= '0';
		
		elsif (rising_edge(clk)) then 
			q <= d;
		end if;
	end process;
end a;
library ieee;
use ieee.std_logic_1164.all;
--Mux de 8 a 1 utilizando If-Elif-Else
entity Mux_A01706450 is
	port(
			a,b,c,d,e,f,g,h : in std_logic;
			sel : in std_logic_vector(2 downto 0);
			salida : out std_logic );
end Mux_A01706450;

architecture a of Mux_A01706450 is
begin
	process(sel) 
	begin 
		if sel = "000" then 
			salida <= a;
		elsif sel = "001" then
			salida <= b;
		elsif sel = "010" then
			salida <= c;
		elsif sel = "011" then 
			salida <= d;
		elsif sel = "100" then
			salida <= e;
		elsif sel = "101" then
			salida <= f;
		elsif sel = "110" then
			salida <= g;
		else
			salida <= h;
		end if;
	end process;
end a;
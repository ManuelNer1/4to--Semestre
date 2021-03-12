library ieee;
use ieee.std_logic_1164.all;
--Mux 8 a 1 con estatudo white-select
entity Mux is
	port(
			a,b,c,d,e,f,g,h : in std_logic;
			sel: in std_logic_vector(2 downto 0);
			y : out std_logic );
end Mux;

Architecture a of Mux is 
begin 
	with sel select
	 y <= a when "000",
			b when "001",
			c when "010",
			d when "011",
			e when "100",
			f when "101",
			g when "110",
			h when "111";
end a;
			
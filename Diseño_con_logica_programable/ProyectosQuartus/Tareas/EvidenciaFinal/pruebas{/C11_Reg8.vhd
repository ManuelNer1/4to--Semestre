library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity C11_Reg8 is 
port(
		En		: in  std_logic; 									-- Esto me indica si esta prendido o no
		Inrs 	: in  std_logic_vector (7 downto 0);		-- Es mi dato a desplegar
		Clk	: in  std_logic;									-- Divisor de frecuencia
		Cen	: in  std_logic;								
		Rst	: in  std_logic;
		OutD	: out std_logic_vector (7 downto 0)
);
end C11_Reg8;

architecture rtl of C11_Reg8 is
begin
	startereg :process(Inrs, Rst, En)
	Begin
		if rst = '0' then
			OutD <= "00000000";
		elsif falling_edge(clk) then
			if Cen ='1' then
				if En = '1' then
					Outd <= Inrs;
				end if;
			end if;
		end if;
	end process startereg;
end rtl;
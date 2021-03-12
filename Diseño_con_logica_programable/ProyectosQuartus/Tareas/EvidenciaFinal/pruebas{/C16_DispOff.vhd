----------------------------------------------------------------------------------
-- Company:        ITESM - Campus Qro.
-- Engineer:   Marcela Ibarra Mora
--					Mariana Castro Payns
--					José Manuel Neri Villeda
-- 
-- Create Date:    17:30  08/03/2021 
-- Project Name: 	 C16_DispOff
--
-- Description:    Risc Processor Top
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity C16_DispOff is
	Port(
		TurnOff : out std_logic_vector(31 downto 0)
	  );
	  
end C16_DispOff;

architecture rtl of C16_DispOff is 
begin 
		TurnOff <= (others => '0');

end rtl;
Library ieee;
use ieee.std_logic_1164.all;
--Ejemplo de asignacion condicional 
--Este es un encodificador con prioridad y bit de validez
Entity encoder4a2 is
Port (
			entrada : in std_logic_vector(3 downto 0);
			salida : out std_logic_vector(2 downto 0) );
end encoder4a2;
Architecture a of encoder4a2 is
Begin 
	salida <= "111" when entrada(3) = '1' else
				 "110" when entrada(2) = '1' else
				 "101" when entrada(1) = '1' else
				 "100" when entrada(0) = '1' else
				 "000";
End a;
	
Library ieee;
USE ieee.std_logic_1164.all;

Entity Uno is
PORT (	a138196, b138196	: in std_logic_vector(3 downto 0);
			Cin138196	: in std_logic;
			Sum138196	: out std_logic_vector(4 downto 0));
End Uno;
Architecture a of Uno is
Component FAVHDL is
PORT (	A, B, Cin	: in std_logic;
			Sum, Cout	: out std_logic );
End Component;
Signal c138196 : std_logic_vector(2 downto 0);
Begin

------------------------------------
-- MAPEO CON ASIGNACION EXPLICITA --
------------------------------------
FA0: FAVHDL PORT MAP (	a		=> a138196(0),
								b		=> b138196(0),
								Cin	=> cin138196,
								Sum	=> sum138196(0),
								Cout	=> c138196(0));
								
FA1: FAVHDL PORT MAP (	a		=> a138196(1),
								b		=> b138196(1),
								Cin	=> c138196(0),
								Sum	=> sum138196(1),
								Cout	=> c138196(1));
								
FA2: FAVHDL PORT MAP (	a		=> a138196(2),
								b		=> b138196(2),
								Cin	=> c138196(1),
								Sum	=> sum138196(2),
								Cout	=> c138196(2));
								
FA3: FAVHDL PORT MAP (	a		=> a138196(3),
								b		=> b138196(3),
								Cin	=> c138196(2),
								Sum	=> sum138196(3),
								Cout	=> sum138196(4));
end a;
--Library ieee;
--USE ieee.std_logic_1164.all;
--
--Entity adder4bits is
--PORT (	a, b	: in std_logic_vector(3 downto 0);
--			Cin	: in std_logic;
--			Sum	: out std_logic_vector(4 downto 0));
--End adder4bits;
--Architecture a of adder4bits is
--Component FAVHDL is
--PORT (	A, B, Cin	: in std_logic;
--			Sum, Cout	: out std_logic );
--End Component;
--Signal c : std_logic_vector(2 downto 0);
--Begin

------------------------------------
-- MAPEO CON ASIGNACION EXPLICITA --
------------------------------------
--FA0: FAVHDL PORT MAP (	a		=> a(0),
--								b		=> b(0),
--								Cin	=> cin,
--								Sum	=> sum(0),
--								Cout	=> c(0));
--FA1: FAVHDL PORT MAP (	a		=> a(1),
--								b		=> b(1),
--								Cin	=> c(0),
--								Sum	=> sum(1),
--								Cout	=> c(1));
--FA2: FAVHDL PORT MAP (	a		=> a(2),
--								b		=> b(2),
--								Cin	=> c(1),
--								Sum	=> sum(2),
--								Cout	=> c(2));
--FA3: FAVHDL PORT MAP (	a		=> a(3),
--								b		=> b(3),
--								Cin	=> c(2),
--								Sum	=> sum(3),
--								Cout	=> sum(4));
------------------------------------
-- MAPEO CON ASIGNACION IMPLICITA --
------------------------------------
--
--FA0: FAVHDL PORT MAP( a(0), b(0) cin, sum(0), c(0));
--FA1: FAVHDL PORT MAP( a(1), b(1) c(0), sum(1), c(1));
--FA2: FAVHDL PORT MAP( a(2), b(2) c(1), sum(2), c(2));
--FA3: FAVHDL PORT MAP( a(3), b(3) c(2), sum(3), sum(4));




-- SUMA DE VECTORES NUEVA LIBRERIA

Library ieee;
USE ieee.std_logic_arith.all;
-- sumador de 4 bits
Entity adder4bits is
PORT (	a, b	: in unsigned(3 downto 0);
			Sum	: out unsigned(3 downto 0));
End adder4bits;
Architecture a of adder4bits is
Begin
	Sum <= a + b;
End a;

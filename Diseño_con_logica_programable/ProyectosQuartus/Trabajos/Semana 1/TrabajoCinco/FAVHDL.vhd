library ieee;
use ieee.std_logic_1164.all;

entity FAVHDL is 
port ( 	A,B,Cin		: in std_logic;
			Sum, cout 	: out std_logic);
end FAVHDL;

Architecture circuit of FAVHDL is
Begin
		Sum <= A XOR B XOR Cin;
		cout <= (A and B) OR (A and Cin) OR (B and Cin);
		
End circuit;
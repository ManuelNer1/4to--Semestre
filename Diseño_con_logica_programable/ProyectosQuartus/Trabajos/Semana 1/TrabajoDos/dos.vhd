Library ieee;
USE ieee.std_logic_1164.all;
--Primer programa de VDHL que implementa ful adder  FAVDHL
Entity dos is 
PORT ( 	A, B, Cin : in std_logic;
			sum, Cout : out std_logic );
END dos;
Architecture a of dos is 
Begin
	Sum <= A xor B xor Cin;											--implementamos funcion summa de full aderr
	cout <= (A and B) or (A and Cin) or (B and Cin);		--implementamos carry out de full adder
End a;

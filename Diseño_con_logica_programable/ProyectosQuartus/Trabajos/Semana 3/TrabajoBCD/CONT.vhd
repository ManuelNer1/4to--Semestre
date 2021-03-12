Library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

Entity Cont is 
PORT(	Rst, Clk, X	: in std_logic;
		S : out std_logic_vector(3 downto 0));
End Cont;

Architecture a of Cont is
signal Count: std_logic_vector(3 downto 0);
Begin
	S <= Count;
	Process(rst, clk,x)
	Begin
		if(rst = '0') then 
			Count <= "0000";
		elsif(rising_edge(clk)) then	-- Detectar transición positiva
			if(x = '1') then
				Count <= Count + 1;
			else
				Count <= Count - 1;
			End if;
		End if;
	End Process;
End a;

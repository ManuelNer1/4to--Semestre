----------------------------------------------------------------------------------
-- Company:        ITESM - Campus Qro.
-- Engineer:       José Manuel Neri Villeda
-- 
-- Create Date:    17:53:00  26/02/2021 
-- Design Name: 
-- Module Name:    FreqDiv
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Unidad de control
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity UC is
	port (
	  Clk   : in  STD_LOGIC;
	  Rst   : in  STD_LOGIC;
	  ClkEn : in  STD_LOGIC;
	  Data  : in  STD_LOGIC;
	  AP	  : out STD_LOGIC;
	  AT	  : out STD_LOGIC;
	  RD	  : out STD_LOGIC;
	  RI	  : out STD_LOGIC;	
	  PC	  : out STD_LOGIC;	
	  MM	  : out STD_LOGIC);
end UC;

architecture rtl of UC is

	type state_values is (Inicio,Memoria,Instruccion,MemoriaTemp1,Dato1,AcumTem1,AcumPer1,AcumTem2,AcumPer2);
	
	signal pres_state: state_values;
	signal next_state: state_values;
	
	--signal estados: std_logic_vector(5 downto 0);

begin
	
	--- FALTA INCLUIR EL ALLOFF RECUERDA
	
	-- State register definition process
	statereg	: process(Clk, Rst)
	begin
		if Rst = '0' then
			pres_state <= Inicio;
		elsif rising_edge(clk) then 
			if ClkEn = '1' then
			pres_state <= next_state;
			end if;
		end if;
		
	end process statereg;
	
	-- Next State Logic definition
	-- Aqui va el diagrama
	fsm: process(Data, pres_state)
	begin
		case pres_state is
			when Inicio			=> 	next_state <= Memoria;
			when Memoria		=> 	next_state <= Instruccion;
			when Instruccion	=> 
					-- Caso 1
				 if Data = '1'  then next_state <= MemoriaTemp1;
					-- Caso 2
				 else 			  next_state <= AcumTem2;
				 end if;
			-- Caso 1
			when MemoriaTemp1	=> 	next_state <= Dato1;
			when Dato1			=> 	next_state <= AcumTem1;
			when AcumTem1		=> 	next_state <= AcumPer1;
			when AcumPer1		=> 	next_state <= Inicio;
			-- Caso 2
			when AcumTem2		=> 	next_state <= AcumPer2;
			when AcumPer2		=>		next_state <= Inicio;
			
			when others			=> 	next_state <= Inicio;
		end case;
	end process fsm;
	
	-- Output logic definitions of a Moore State Machine
	-- AQUI VAN LOS LEDS osea mi tabla
	outputs : process(pres_state)
	begin
	case pres_state is
			when Inicio			=>  AP <= '0'; AT <= '0'; RD <= '0'; RI <= '0'; PC <= '0'; MM <= '0';
			when Memoria		=>  AP <= '0'; AT <= '0'; RD <= '0'; RI <= '0'; PC <= '0'; MM <= '1';
			when Instruccion	=>  AP <= '0'; AT <= '0'; RD <= '0'; RI <= '1'; PC <= '1'; MM <= '0';
			-- Caso 1
			when MemoriaTemp1	=>  AP <= '0'; AT <= '0'; RD <= '0'; RI <= '0'; PC <= '0'; MM <= '1'; 	
			when Dato1			=>  AP <= '0'; AT <= '0'; RD <= '1'; RI <= '0'; PC <= '1'; MM <= '0';	
			when AcumTem1		=>  AP <= '0'; AT <= '1'; RD <= '0'; RI <= '0'; PC <= '0'; MM <= '0';	
			when AcumPer1		=>  AP <= '1'; AT <= '0'; RD <= '0'; RI <= '0'; PC <= '0'; MM <= '0';	
			-- Caso 2
			when AcumTem2		=>  AP <= '0'; AT <= '1'; RD <= '0'; RI <= '0'; PC <= '0'; MM <= '0';	
			when AcumPer2		=>	 AP <= '1'; AT <= '0'; RD <= '0'; RI <= '0'; PC <= '0'; MM <= '0';	
			
			when others			=>  AP <= '0'; AT <= '0'; RD <= '0'; RI <= '0'; PC <= '0'; MM <= '0';	
		end case;
	end process outputs;
	
end rtl;
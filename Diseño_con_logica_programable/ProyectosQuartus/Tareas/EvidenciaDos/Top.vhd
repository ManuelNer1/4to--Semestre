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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Top is
port(
	Clk	: in STD_LOGIC;	
	Rst	: in STD_LOGIC;
	Data	: in STD_LOGIC;	--	Dato de memoria 
	
	AP		: out STD_LOGIC;	-- Acumulador Permanente
	AT		: out STD_LOGIC;	-- Acumulador Temporal
	RD		: out STD_LOGIC;	-- Registro de Datos
	RI		: out STD_LOGIC;	-- Registro de Instrucciones
	PC		: out STD_LOGIC;	-- Contador de programa
	MM		: out STD_LOGIC;	-- Memoria
	
	OFF	: out STD_LOGIC_VECTOR(3 downto 0)

);
end Top;


architecture rtl of Top is
-- Declaracion de componentes
	component FreqDiv
	port (
	  Clk   : in  STD_LOGIC;
	  Rst   : in  STD_LOGIC;
	  ClkEn : out STD_LOGIC);
	end component;

	component UC
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
	end component;

	-- Senal embebida
	signal ClkEn_emb : STD_LOGIC;
	begin

	-- Instanciacion de comoponentes
	U1 : FreqDiv
	port map (
	  Clk   => Clk,
	  Rst   => Rst,
	  ClkEn => ClkEn_emb);
	
	U2 : UC
	port map (
		Clk    => Clk,
		Rst    => Rst,
		ClkEn  => ClkEn_emb,
		Data   => Data,
		AP		 => AP,
		AT		 => AT,
		RD		 => RD,
		RI		 => RI,
		PC		 => PC,
		MM		 => MM);
		
	off <= "0000";

end rtl;
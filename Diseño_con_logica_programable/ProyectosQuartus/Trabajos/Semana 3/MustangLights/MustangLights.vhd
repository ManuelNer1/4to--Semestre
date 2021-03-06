----------------------------------------------------------------------------------
-- Company: 			ITESM -- Campus Qro.
-- Engineer: 			A01706450 - Jose Manuel 
-- 
-- Create Date:    	04:44 pm 22/02/2021 
-- Design Name: 		
-- Module Name:    	Top - Behavioral
-- Project Name: 		Ford Mustang Ligths
-- Target Devices: 	MAX LITe - 10 FPGA Board
-- Tool versions: 	Quartus Prime Lite 18.1
-- Description: 		https://www.youtube.com/watch?v=jIjY7mERBrw
	--
-- Dependencies: 
--
-- Revision: 			v1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

-- Library and Package declaration (commonly used)
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity MustangLights is
 Port ( Clk    : in  STD_LOGIC;
		  Rst    : in  STD_LOGIC;
		  Hazard : in  STD_LOGIC;
		  Left   : in  STD_LOGIC;
		  Right  : in  STD_LOGIC;
		  L      : out STD_LOGIC_VECTOR (2 downto 0);
		  R      : out STD_LOGIC_VECTOR (0     to 2);
		  OffLEDs: out STD_LOGIC_VECTOR (3 downto 0)	
	);
end MustangLights;

--component Declaration
component FreqDiv
  port (
    Clk 	: in std_logic;
	 Rst 	: in std_logic;
    Clke : out std_logic
  );
  end component;
  

component MooreFSM
  port (
	  Clk   : in  STD_LOGIC;
	  Rst   : in  STD_LOGIC;
	  ClkEn : in  STD_LOGIC;
	  Hazard: in  STD_LOGIC;
	  Left  : in  STD_LOGIC;
	  Right : in  STD_LOGIC;
	  L     : out STD_LOGIC_VECTOR (2 downto 0);
	  R     : out STD_LOGIC_VECTOR (0     to 2)
	);
   end component;

-- Embedded signal declaration 
signal ClkEn_emb : std_logic;

begin
	-- Instantiate components
	IC1 : FreqDiv
	port map	(
		Clk    => Clk,
		Rst    => Rst,
		ClkEn  => ClkEn_emb);
	
	 IC2 : MooreFSM
	 port map (
			Clk    => Clk,
			Rst    => Rst,
			ClkEn  => ClkEn_emb,
			Hazard => Hazard,
			Left   => Left,
			Right  => Right,
			L      => L,
			R      => R);  
	
	-- Turn off unused LEDs
	-- Agregate statment
	offLEDs <= (others => '0'); -- same as offLEDs <= "0000";
	

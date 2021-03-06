----------------------------------------------------------------------------------
-- Company: 			ITESM -- Campus Qro.
-- Engineer: 			A01706450 - Jose Manuel 
-- 
-- Create Date:    	04:44 pm 22/02/2021 
-- Design Name: 		
-- Module Name:    	MooreFSM - Behavioral
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

entity MooreFSM is
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
end MooreFSM;

architecture rtl of MooreFSM is
begin
	statereg 
end rtl;
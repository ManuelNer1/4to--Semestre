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

entity FreqDiv is
  port (
    Clk 	: in std_logic;
	 Rst 	: in std_logic;
    Clke : out std_logic
  );
 end FreqDiv;
architecture rtl of FreqDiv is
	-- Signal and constants used by the Frequency Divider
	-- Embedded signals declaration
	-- Used by Frequency Divider (FreqDiv)
	
	-- Define a value that contains the desired Frequency
  constant DesiredFreq : natural := 1;  -- Once per second changes in the FSM
  -- Frequency for a DE2-Lite board is 50MHz
  constant BoardFreq   : natural := 50_000_000;
  -- Calculate the value the counter should reach to obtain desired Freq.
  constant MaxOscCount : natural := BoardFreq / DesiredFreq;
  -- Pulse counter for the oscillator
  signal OscCount      : natural range 0 to MaxOscCount;

  begin
	Freq_Div : process(Rst, Clk)
	begin 
		if (Rst = '0') then 
			OscCount <= 0;
		elsif (rising_edge((clk)) then
			if (OscCount = MaxOscCount) then
				ClkEn 	<= '1';
				OscCount <= 0;
			else
				clkEn		<= '0';
				OscCount <= OscCount + 1;
			end if;
		end process Freq_Div;
		
end rtl;

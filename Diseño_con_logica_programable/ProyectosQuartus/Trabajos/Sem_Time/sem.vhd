----------------------------------------------------------------------------------
-- Company:       ITESM - CQ
-- Engineer:	   Manuel Nwei
-- 
-- Create Date:    08:08:38 12/November/2019 
-- Design Name: 
-- Module Name:    British Traffic Light Controller
--                 Fixed time between states
----------------------------------------------------------------------------------

-- Library and Package declaration
-- Commonly used
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


--Entity declaration
entity sem is
	port (Clk     : in  STD_LOGIC;
			Rst     : in  STD_LOGIC;
			Red     : out STD_LOGIC;
			Amber   : out STD_LOGIC;
			Green   : out STD_LOGIC;
			-- Turn the unused LEDs off
			LEDsOff : out STD_LOGIC_VECTOR(6 downto 0));
			
end sem;

-- Architecture Declaration
architecture rtl of sem is
  -- Constants and signals used by the Frequency divider
  constant Fosc      : integer := 50_000_000;     -- Oscillator Frequency for the DE10-Lite board
  constant Fdiv      : integer := 1;              -- Desired Timebase Frequency
  constant CtaMax    : integer := Fosc / Fdiv;    -- Maximum count to obtain desired output frequency
  signal   Cont      : integer range 0 to CtaMax; -- Define the counter
  signal   Timebase  : STD_LOGIC;
  
  -- Constants and signals to have a variable time FSM
  constant tRed			: integer :=	7 ;		-- Red light duration in seconds
  constant tRedAmber		: integer :=	3 ;		-- RedAmber light duration in seconds
  constant tGreen			: integer :=	15;		-- Green light duration in seconds
  constant tAmber			: integer :=	3 ;		-- red light duration in seconds
  -- StateDuration determines the amount of time to spend in a State
  signal StateDuration	: integer range 0 to tGreen;
  --
  signal StateCount		: integer range 0 TO tGreen;
  
  -- Definition of the FSM satates
  -- Binary coding
  type state_values is (St_Red, St_RedAmber, St_Green, St_Amber);
  signal pres_state, next_state: state_values;
  
begin

  -- Frequency divider process to obtain a Timebase signal used by the FSM (Traffic Light)
  FreqDiv: process(Rst,Clk)
  begin
    if Rst = '1' then
	   Cont <= 0;
	 elsif (rising_edge(Clk)) then
	   if Cont = CtaMax-1 then
        Cont     <= 0;
        Timebase <= '1';
      else		  
	     Cont     <= Cont + 1;
		  Timebase <= '0';
		end if;
	end if;
  end process FreqDiv; 
  
  -- Declaration of the state register section of a FSM
  statereg: process (Rst, Clk)
  begin
    -- Asynchroous Reset
    if (Rst = '1') then
	   pres_state <= St_Red;
		StateCount <= 0;
	 elsif (rising_edge (Clk)) then
	   if (Timebase = '1') then
		  if StateCount = StateDuration -1 then
			 pres_state <= next_state;
			 StateCount <= 0;
			else
			 StateCount <= StateCount + 1;
			end if;
		end if;
	 end if;
  end process statereg;
  
  -- Determines next_state Logic based on the present_state and inputs
  fsm: process (pres_state)
  begin
    case pres_state is
	   when St_Red 		=>	
			next_state 		<= St_RedAmber;
			StateDuration	<= tRed;
			
		when St_RedAmber	=> 
			next_state 		<= St_Green;
			StateDuration	<= tRedAmber;
			
		when St_Green		=>	
			next_state 		<= St_Amber;
			StateDuration	<= tGreen;
			
		when st_Amber		=>	
			next_state 		<= St_Red;
			StateDuration	<= tRed;
			
		when others 		=> 
			next_state 		<= St_Red;
			StateDuration	<= tRed;
	 end case;
  end process fsm;
  
  -- Output Section of a Moore FSM, outputs depend only on the present_state
  outputs: process (pres_state)
  begin
    case pres_state is
	   when St_Red 		=> Red <= '1'; Amber <= '0'; Green <= '0'; 
		when St_RedAmber	=> Red <= '1'; Amber <= '1'; Green <= '0'; 
		when St_Green 		=> Red <= '0'; Amber <= '0'; Green <= '1'; 
		when st_Amber		=> Red <= '0'; Amber <= '1'; Green <= '0'; 
		when others 		=> Red <= '1'; Amber <= '0'; Green <= '0'; 
	 end case;
  end process outputs;
	 
  -- Turn off unused LEDs
  LEDsOff <= (others => '0');
  
end rtl;
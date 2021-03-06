----------------------------------------------------------------------------------
-- Company:        ITESM - Campus Qro.
-- Engineer:       José Manuel Neri Villeda
-- 
-- Create Date:    16:06:00  26/02/2021 
-- Design Name: 
-- Module Name:    British Traffic Light Controller Fixed time between states
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity sem is
port( Clk 		: in STD_LOGIC;
		Rst 		: in STD_LOGIC;
		Red 		: out STD_LOGIC;
		Amber 	: out STD_LOGIC;
		Green 	: out STD_LOGIC;
		--Los leds que no usemos se van apagar
		LEDsOFF	: out STD_LOGIC_VECTOR(6 downto 0));
end sem;

-- Architectur declaration
architecture rtl of sem is
  --Constants and signals used by the Frequency divider
  constant Fosc      : integer := 50_000_000;     -- Oscillator Frequency for the DE10-Lite board
  constant Fdiv      : integer := 1;              -- Desired Timebase Frequency
  constant CtaMax    : integer := Fosc / Fdiv;    -- Maximum count to obtain desired output frequency
  signal   Cont      : integer range 0 to CtaMax; -- Define the counter
  signal   Timebase  : STD_LOGIC;
  
  --Definition of States
  -- Binary coding
  type state_values is (St_Red, St_RedAmber, St_Green, St_Amber);
  signal pres_state, next_state : state_values;
  
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
	
	--Declaration of the state registe section of a FSM
	statereg :process (Rst, Clk)
	begin
		-- Asynchroous Reset
		if Rst = '1' then 
			pres_state <= St_Red;
		elsif rising_edge(clk) then
			if Timebase = '1' then 
				pres_state <= next_state;
			end if;
		end if;
	end process statereg;
		
	-- Determines nex_state Logic based on the present_state and inputs
	fsm :process(pres_state)
	begin 
		case pres_state is
			when St_Red 		=>	next_state <=St_RedAmber;
			when St_RedAmber	=>	next_state <=St_Green;
			when St_Green 		=>	next_state <=St_Amber;
			when St_Amber 		=>	next_state <=St_Red;
			when others			=>	next_state <=St_Red;
		end case;
	end process fsm;
	
	--Outputs section of a Moore FSM, outputs only on the present_state
	Outputs :process(pres_state)
	begin
		case pres_state is
			when St_Red			=> Red <= '1'; Amber <= '0'; Green <= '0';
			when St_RedAmber	=> Red <= '1'; Amber <= '1'; Green <= '0';
			when St_Green		=> Red <= '0'; Amber <= '0'; Green <= '1';
			when St_Amber		=> Red <= '0'; Amber <= '1'; Green <= '0';
			when others			=> Red <= '1'; Amber <= '0'; Green <= '0';
		end case;
	end process Outputs;
	
	LEDsOFF <= (others => '0');
end rtl;


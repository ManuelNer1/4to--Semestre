----------------------------------------------------------------------------------
-- Company:        ITESM - CQ        
-- Engineer:       Rick
-- 
-- Create Date:    11:18:22 10/16/2019 
-- Design Name: 
-- Module Name:    Serial_Comm_Nexys3_To_PC - Serial_Comm_Nexys3_To_PC_Arch 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Serial Communications from Nexy3 board to a PC
--                 Every time the center Pushbutton is pressed
--                 the ASCII character given by the switches
--                 will be transmitted serially to a PC
--                 Settings:
--                    Baud Rate: 9600 bits per second (bps)
--                    Data Size: 8 bits
--                    Paritry: No parity
--                    Stop bits: 1 bit
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
-- Commonly uses libraries and packages
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Serial_Comm_DE10Lite_To_PC is
    Port ( ASCII : in  STD_LOGIC_VECTOR (7 downto 0);
           Rst   : in  STD_LOGIC;
           Clk   : in  STD_LOGIC;
           Load  : in  STD_LOGIC;
           Tx    : out  STD_LOGIC);
end Serial_Comm_DE10Lite_To_PC;

architecture Serial_Comm_DE10Lite_To_PC_Arch of Serial_Comm_DE10Lite_To_PC is
	-- Constants and signals used for the frequency divider to obtain Baud Rate
	constant Fosc		: integer := 50_000_000; 	--DE10Lite Oscillator Frequency
	constant BaudRate	: integer := 9_600;			--Transmit rate
	constant CtaMax	: INTEGER := Fosc/BaudRate;--Max count reached to obatain desired
	
	-- Embedded signals used by Frequency divider
	signal 	Cont		: integer range 0 to CtaMax;
	signal   ClkEn		: STD_LOGIC; --Baud Rate Signal
	
	-- Embedded signals used by shift Register
	-- In serial communications we have 1 start bit, 8 data bits and 1 stop bit
	-- We will have and extra bit callled de "idle bit"
	signal ShiftReg	: STD_LOGIC_VECTOR(10 downto 0);
	constant StartBit	: STD_LOGIC := '0'; --Start bit is always logic 0
	constant StopBit	: STD_LOGIC := '1'; --Start bit is always logic 1
	constant IdleBit	: STD_LOGIC := '1'; --To Guarantee taht transmission line is logic 1 when idle
	
begin
	
  -- Generate a 9600 Baud Rate (bps)
  -- Use a frequency divider to obtain 9600 bps
  process (Rst, Clk)
  begin
    if Rst = '1' then
	   Cont <= 0;
	 elsif (rising_edge(Clk)) then
	   if Cont = CtaMax-1 then
        Cont <= 0;
        ClkEn <= '1';
      else		  
	     Cont <= Cont + 1;
		  ClkEn<= '0';
		end if;
	 end if;
  end process; 
  
  
  --Implementation or Parallel Input, Serial Output (P.I.S.O.) RIGHT SHIFT REG.
  --With Load
  process(Rst, Clk, ShiftReg)
  begin 
	if (Rst = '1') then
	-- Reset Shift Register to all 1's to guarantee that the transmission line
	-- is idle
		ShiftReg <= (others => '1');
	
	elsif (rising_edge(clk)) then		--50 Mhz positive clolc transition ocurred
		if (ClkEn = '1') then			--Baud Rate pulse has ocurred
			if (Load = '1') then 		--Check if Parallel Load is wanted
				ShiftReg <= StopBit & ASCII & StartBit & IdleBit;	--Parallel Load
			else
				ShiftReg <= '1' & ShiftReg(10 downto 1); 	-- Shift Right register
			end if;
		end if;
	end if;
	
	Tx <= ShiftReg(0);
	
	end process;
end Serial_Comm_DE10Lite_To_PC_Arch;
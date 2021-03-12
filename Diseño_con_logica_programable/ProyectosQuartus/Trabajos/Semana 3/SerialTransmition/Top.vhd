----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:04:17 10/21/2019 
-- Design Name: 
-- Module Name:    Top - Behavioral 
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
--                    Stop bits: 1
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top is
    Port ( ASCII : in  STD_LOGIC_VECTOR (7 downto 0);
           Rst   : in  STD_LOGIC;
           Clk   : in  STD_LOGIC;
           Load  : in  STD_LOGIC;
           Tx    : out STD_LOGIC);
end Top;



  -- Component Declaration
architecture a of Top is
    component debounce
    Port(
      clk     : in  STD_LOGIC;  --input clock
      reset   : in  STD_LOGIC;  --asynchronous active high reset
      button  : in  STD_LOGIC;  --input signal to be debounced
      result  : out STD_LOGIC); --debounced signal
	end component;

	 component Serial_Comm_DE10Lite_To_PC
    Port ( ASCII : in  STD_LOGIC_VECTOR (7 downto 0);
           Rst   : in  STD_LOGIC;
           Clk   : in  STD_LOGIC;
           Load  : in  STD_LOGIC;
           Tx    : out  STD_LOGIC);
	end component;
-- embedded Signals used to max connections between component internally

	signal Load_emb : STD_LOGIC;
	begin
  -- Instantiation of components
  U1 : Serial_Comm_DE10Lite_To_PC
    port map (
      ASCII => ASCII,
      Rst   => Rst,
	   Clk   => Clk,
	   Load  => load_emb,
	   Tx    => Tx);
		
  U2 : debounce
    port map (
      clk     => Clk,
      reset   => Rst,
	   button  => Load,
	   result  => load_emb);
end a;
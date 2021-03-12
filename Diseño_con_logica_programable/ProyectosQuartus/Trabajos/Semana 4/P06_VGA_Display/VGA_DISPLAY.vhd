----------------------------------------------------------------------------------
-- Company:        ITESM - CQ
-- Engineer:       Rick
-- 
-- Create Date:    10:19:48 11/08/2017 
-- Design Name: 
-- Module Name:    VGA_DISPLAY - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Here a drawing will be created 
--  
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
-- Commonly used libraries
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity VGA_DISPLAY is
  port (
	 Xin : in  STD_LOGIC_VECTOR(9 downto 0); -- Column screen coordinate
	 Yin : in  STD_LOGIC_VECTOR(9 downto 0); -- Row screen coordinate
	 En  : in  STD_LOGIC; -- When '1', pixels can be drawn 
	 R   : out STD_LOGIC_VECTOR(3 downto 0); -- 3-bit Red channel
	 G   : out STD_LOGIC_VECTOR(3 downto 0); -- 3-bit Green channel
	 B   : out STD_LOGIC_VECTOR(3 downto 0));-- 2-bit Blue channel
end VGA_DISPLAY;

architecture Behavioral of VGA_DISPLAY is
  -- Embedded signal to group the colors into 1-byte
  -- The colors will be as follows:
  --  R2 R1 R0 G2 G1 G0 B1 B0
  signal Color : STD_LOGIC_VECTOR(11 downto 0); 

begin
  -- Make a drawing of 4 colored bars
  -- Red Green Blue White
  process (En,Xin,Yin)
  begin
    -- Check if pixel is in the active zone
	 if (En = '1') then
	   if    ((Xin >= 0 and Xin <= 34) and (Yin >= 0 and Yin <= 34)) then Color <= "000011110000"; -- green
		--cero
		elsif ((Xin >= 34 and Xin <= 680) and (Yin >= 0 and Yin <= 34)) then Color <= "000011110000"; -- green
		
		--Primera fila
		elsif ((Xin >= 0 and Xin <= 680) and (Yin >= 34 and Yin <= 68)) then Color <= "000011110000"; -- green
		
		--Segunda
		elsif ((Xin >= 0 and Xin <= 680) and (Yin >= 68 and Yin <= 102)) then Color <= "000011110000"; -- green

		--Tercera
		elsif ((Xin >= 0 and Xin <= 680) and (Yin >= 102 and Yin <= 136)) then Color <= "000011110000"; -- green

		--Cuarta
		elsif ((Xin >= 0 and Xin <= 170) and (Yin >= 136 and Yin <= 170)) then Color <= "000011110000"; -- green
		elsif ((Xin >= 170 and Xin <= 204) and (Yin >= 136 and Yin <= 170)) then Color <= "000000000000"; -- black
		elsif ((Xin >= 204 and Xin <= 238) and (Yin >= 136 and Yin <= 170)) then Color <= "000000000000"; -- black
		elsif ((Xin >= 238 and Xin <= 408) and (Yin >= 136 and Yin <= 170)) then Color <= "000011110000"; -- green
		elsif ((Xin >= 408 and Xin <= 442) and (Yin >= 136 and Yin <= 170)) then Color <= "000000000000"; -- black
		elsif ((Xin >= 442 and Xin <= 476) and (Yin >= 136 and Yin <= 170)) then Color <= "000000000000"; -- black
		elsif ((Xin >= 476 and Xin <= 680) and (Yin >= 136 and Yin <= 170)) then Color <= "000011110000"; -- green

		--Quinta
		elsif ((Xin >= 0 and Xin <= 170) and (Yin >= 170 and Yin <= 204)) then Color <= "000011110000"; -- green
		elsif ((Xin >= 170 and Xin <= 204) and (Yin >= 170 and Yin <= 204)) then Color <= "000000000000"; -- black
		elsif ((Xin >= 204 and Xin <= 238) and (Yin >= 170 and Yin <= 204)) then Color <= "000000000000"; -- black
		elsif ((Xin >= 238 and Xin <= 408) and (Yin >= 170 and Yin <= 204)) then Color <= "000011110000"; -- green
		elsif ((Xin >= 408 and Xin <= 442) and (Yin >= 170 and Yin <= 204)) then Color <= "000000000000"; -- black
		elsif ((Xin >= 442 and Xin <= 476) and (Yin >= 170 and Yin <= 204)) then Color <= "000000000000"; -- black
		elsif ((Xin >= 476 and Xin <= 680) and (Yin >= 170 and Yin <= 204)) then Color <= "000011110000"; -- green

		--sexta
		elsif ((Xin >= 0 and Xin <= 170) and (Yin >= 204 and Yin <= 238)) then Color <= "000011110000"; -- green
		elsif ((Xin >= 170 and Xin <= 204) and (Yin >= 204 and Yin <= 238)) then Color <= "000000000000"; -- black
		elsif ((Xin >= 204 and Xin <= 238) and (Yin >= 204 and Yin <= 238)) then Color <= "000000000000"; -- black
		elsif ((Xin >= 238 and Xin <= 408) and (Yin >= 204 and Yin <= 238)) then Color <= "000011110000"; -- green
		elsif ((Xin >= 408 and Xin <= 442) and (Yin >= 204 and Yin <= 238)) then Color <= "000000000000"; -- black
		elsif ((Xin >= 442 and Xin <= 476) and (Yin >= 204 and Yin <= 238)) then Color <= "000000000000"; -- black
		elsif ((Xin >= 476 and Xin <= 680) and (Yin >= 204 and Yin <= 238)) then Color <= "000011110000"; -- green
		
		--septima
		elsif ((Xin >= 0 and Xin <= 680) and (Yin >= 238 and Yin <= 272)) then Color <= "000011110000"; -- green
		
		--octava
		elsif ((Xin >= 0 and Xin <= 680) and (Yin >= 272 and Yin <= 306)) then Color <= "000011110000"; -- green
		
		--novena
		elsif ((Xin >= 0 and Xin <= 680) and (Yin >= 306 and Yin <= 340)) then Color <= "000011110000"; -- green
		
		--decima
		elsif ((Xin >= 0 and Xin <= 260) and (Yin >= 340 and Yin <= 374)) then Color <= "000011110000"; -- green	
		elsif ((Xin >= 260 and Xin <= 370) and (Yin >= 340 and Yin <= 374)) then Color <= "000000000000"; -- black
		elsif ((Xin >= 370 and Xin <= 680) and (Yin >= 340 and Yin <= 374)) then Color <= "000011110000"; -- green

		--Onceava
		elsif ((Xin >= 0 and Xin <= 260) and (Yin >= 374 and Yin <= 408)) then Color <= "000011110000"; -- green
		elsif ((Xin >= 260 and Xin <= 370) and (Yin >= 374 and Yin <= 408)) then Color <= "000000000000"; -- Black
		elsif ((Xin >= 370 and Xin <= 680) and (Yin >= 374 and Yin <= 408)) then Color <= "000011110000"; -- green
		--doceava
		elsif ((Xin >= 0 and Xin <= 260) and (Yin >= 408 and Yin <= 442)) then Color <= "000011110000"; -- green
		elsif ((Xin >= 260 and Xin <= 370) and (Yin >= 408 and Yin <= 442)) then Color <= "000000000000"; -- Black
		elsif ((Xin >= 370 and Xin <= 680) and (Yin >= 408 and Yin <= 442)) then Color <= "000011110000"; -- green
		--treceava
		elsif ((Xin >= 0 and Xin <= 260) and (Yin >= 442 and Yin <= 476)) then Color <="000011110000"; -- green
		elsif ((Xin >= 260 and Xin <= 370) and (Yin >= 442 and Yin <= 476)) then Color <= "000000000000"; -- Black
		elsif ((Xin >= 370 and Xin <= 680) and (Yin >= 442 and Yin <= 476)) then Color <= "000011110000"; -- green
		--catorceava
		elsif ((Xin >= 0 and Xin <= 680) and (Yin >= 476 and Yin <= 480)) then Color <= "000011110000"; -- green
		
		--fin
		else                   Color <= "100100100100"; -- Red + Green
	 end if;
	 else
	   -- EXTREMLY IMPORTANT
		-- Not in active zone, pixels should be OFF
		Color <= "000000000000"; -- Off
	 end if;
  end process;
  
  -- Send individual color to their channel
  R <= Color(11 downto 8);
  G <= Color( 7 downto 4);
  B <= Color( 3 downto 0);

end Behavioral;



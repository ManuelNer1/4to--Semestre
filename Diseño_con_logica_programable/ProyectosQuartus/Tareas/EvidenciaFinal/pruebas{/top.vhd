library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
entity top is 
port(
	En 			: in std_logic;
	Clk50Mhz 	: in std_logic;
	Clr 		 	: in std_logic;
	Inrs			: in 	std_logic_vector (7 downto 0);
	SegH			: out	std_logic_vector (7 downto 0);
	SegL			: out	std_logic_vector (7 downto 0)
);

end top;

architecture rtl of top is

	component C11_Reg8
		port(
			Inrs 				: in 	std_logic_vector (7 downto 0);
			Clk  				: in 	std_logic;
			Cen  				: in 	std_logic;
			Rst  				: in 	std_logic;
			En   				: in 	std_logic;
			OutD 				: out std_logic_vector (7 downto 0)
			);
	end component;
	
	component C12_Dec7Seg
		port(
			InR 				: in 	std_logic_vector (7 downto 0);
			Seg 				: out std_logic_vector (7 downto 0)
			);
	end component;
	
	Component C13_Dec7Seg
		port(
			InR 				: in 	std_logic_vector (7 downto 0);
			Seg 				: out std_logic_vector (7 downto 0)
			);
	end component;
	
	component C15_ClkDiv
		port(
			Clkin 			: in 	std_logic;
			Rst   			: in 	std_logic;
			Clkout			: out std_logic
			);
	end component;
	
	signal D 	: std_logic_vector(7 downto 0);
	--signal SegH	: std_logic_vector(7 downto 0);
	--signal SegL	: std_logic_vector(7 downto 0);
	signal rsd 			: std_logic_vector (7 downto 0);
	signal ClkEn: std_logic;	
	
begin		
	C11 : C11_Reg8
			port map (
							Inrs    		  => Inrs,
							En			     => En,
							Clk			  => Clk50MHz,
							Cen		     => ClkEn,
							Rst		     => Clr,
							OutD          => D);
	C12 : C12_Dec7Seg
			port map (
							InR    		  => D,
							Seg			  => SegH);
				
	C13 : C13_Dec7Seg
			port map (
							InR    		  => D,
							Seg			  => SegL);
	
	C15 : C15_ClkDiv
			port map (
							Clkin    	  => Clk50Mhz,
							Rst			  => Clr,
							Clkout		  => ClkEn);
end rtl;
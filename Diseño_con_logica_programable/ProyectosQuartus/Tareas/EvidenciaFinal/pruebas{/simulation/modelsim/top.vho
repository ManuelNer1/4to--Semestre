-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/10/2021 18:19:37"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	En : IN std_logic;
	Clk50Mhz : IN std_logic;
	Clr : IN std_logic;
	Inrs : IN std_logic_vector(7 DOWNTO 0);
	SegH : BUFFER std_logic_vector(7 DOWNTO 0);
	SegL : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- SegH[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegH[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegH[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegH[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegH[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegH[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegH[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegH[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegL[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegL[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegL[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegL[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegL[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegL[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegL[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegL[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inrs[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk50Mhz	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clr	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inrs[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inrs[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inrs[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inrs[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inrs[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inrs[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inrs[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_En : std_logic;
SIGNAL ww_Clk50Mhz : std_logic;
SIGNAL ww_Clr : std_logic;
SIGNAL ww_Inrs : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SegH : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SegL : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Clk50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SegH[0]~output_o\ : std_logic;
SIGNAL \SegH[1]~output_o\ : std_logic;
SIGNAL \SegH[2]~output_o\ : std_logic;
SIGNAL \SegH[3]~output_o\ : std_logic;
SIGNAL \SegH[4]~output_o\ : std_logic;
SIGNAL \SegH[5]~output_o\ : std_logic;
SIGNAL \SegH[6]~output_o\ : std_logic;
SIGNAL \SegH[7]~output_o\ : std_logic;
SIGNAL \SegL[0]~output_o\ : std_logic;
SIGNAL \SegL[1]~output_o\ : std_logic;
SIGNAL \SegL[2]~output_o\ : std_logic;
SIGNAL \SegL[3]~output_o\ : std_logic;
SIGNAL \SegL[4]~output_o\ : std_logic;
SIGNAL \SegL[5]~output_o\ : std_logic;
SIGNAL \SegL[6]~output_o\ : std_logic;
SIGNAL \SegL[7]~output_o\ : std_logic;
SIGNAL \Clk50Mhz~input_o\ : std_logic;
SIGNAL \Clk50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \Inrs[2]~input_o\ : std_logic;
SIGNAL \Clr~input_o\ : std_logic;
SIGNAL \C15|Add0~0_combout\ : std_logic;
SIGNAL \C15|OscCount~12_combout\ : std_logic;
SIGNAL \C15|Add0~1\ : std_logic;
SIGNAL \C15|Add0~2_combout\ : std_logic;
SIGNAL \C15|Add0~3\ : std_logic;
SIGNAL \C15|Add0~4_combout\ : std_logic;
SIGNAL \C15|Add0~5\ : std_logic;
SIGNAL \C15|Add0~6_combout\ : std_logic;
SIGNAL \C15|Add0~7\ : std_logic;
SIGNAL \C15|Add0~8_combout\ : std_logic;
SIGNAL \C15|Equal0~6_combout\ : std_logic;
SIGNAL \C15|Add0~9\ : std_logic;
SIGNAL \C15|Add0~10_combout\ : std_logic;
SIGNAL \C15|Add0~11\ : std_logic;
SIGNAL \C15|Add0~12_combout\ : std_logic;
SIGNAL \C15|OscCount~11_combout\ : std_logic;
SIGNAL \C15|Add0~13\ : std_logic;
SIGNAL \C15|Add0~14_combout\ : std_logic;
SIGNAL \C15|Add0~15\ : std_logic;
SIGNAL \C15|Add0~16_combout\ : std_logic;
SIGNAL \C15|Equal0~5_combout\ : std_logic;
SIGNAL \C15|Add0~17\ : std_logic;
SIGNAL \C15|Add0~18_combout\ : std_logic;
SIGNAL \C15|Add0~19\ : std_logic;
SIGNAL \C15|Add0~20_combout\ : std_logic;
SIGNAL \C15|Add0~21\ : std_logic;
SIGNAL \C15|Add0~22_combout\ : std_logic;
SIGNAL \C15|OscCount~10_combout\ : std_logic;
SIGNAL \C15|Add0~23\ : std_logic;
SIGNAL \C15|Add0~24_combout\ : std_logic;
SIGNAL \C15|OscCount~9_combout\ : std_logic;
SIGNAL \C15|Add0~25\ : std_logic;
SIGNAL \C15|Add0~26_combout\ : std_logic;
SIGNAL \C15|OscCount~8_combout\ : std_logic;
SIGNAL \C15|Add0~27\ : std_logic;
SIGNAL \C15|Add0~28_combout\ : std_logic;
SIGNAL \C15|OscCount~7_combout\ : std_logic;
SIGNAL \C15|Add0~29\ : std_logic;
SIGNAL \C15|Add0~30_combout\ : std_logic;
SIGNAL \C15|Add0~31\ : std_logic;
SIGNAL \C15|Add0~32_combout\ : std_logic;
SIGNAL \C15|OscCount~6_combout\ : std_logic;
SIGNAL \C15|Add0~33\ : std_logic;
SIGNAL \C15|Add0~34_combout\ : std_logic;
SIGNAL \C15|Add0~35\ : std_logic;
SIGNAL \C15|Add0~36_combout\ : std_logic;
SIGNAL \C15|OscCount~5_combout\ : std_logic;
SIGNAL \C15|Add0~37\ : std_logic;
SIGNAL \C15|Add0~38_combout\ : std_logic;
SIGNAL \C15|OscCount~4_combout\ : std_logic;
SIGNAL \C15|Add0~39\ : std_logic;
SIGNAL \C15|Add0~40_combout\ : std_logic;
SIGNAL \C15|OscCount~3_combout\ : std_logic;
SIGNAL \C15|Add0~41\ : std_logic;
SIGNAL \C15|Add0~42_combout\ : std_logic;
SIGNAL \C15|OscCount~2_combout\ : std_logic;
SIGNAL \C15|Add0~43\ : std_logic;
SIGNAL \C15|Add0~44_combout\ : std_logic;
SIGNAL \C15|OscCount~1_combout\ : std_logic;
SIGNAL \C15|Add0~45\ : std_logic;
SIGNAL \C15|Add0~46_combout\ : std_logic;
SIGNAL \C15|Add0~47\ : std_logic;
SIGNAL \C15|Add0~48_combout\ : std_logic;
SIGNAL \C15|OscCount~0_combout\ : std_logic;
SIGNAL \C15|Equal0~0_combout\ : std_logic;
SIGNAL \C15|Equal0~2_combout\ : std_logic;
SIGNAL \C15|Equal0~1_combout\ : std_logic;
SIGNAL \C15|Equal0~3_combout\ : std_logic;
SIGNAL \C15|Equal0~4_combout\ : std_logic;
SIGNAL \C15|Equal0~7_combout\ : std_logic;
SIGNAL \C15|Clkout~q\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \C11|OutD[2]~0_combout\ : std_logic;
SIGNAL \Inrs[1]~input_o\ : std_logic;
SIGNAL \C11|OutD[1]~feeder_combout\ : std_logic;
SIGNAL \Inrs[3]~input_o\ : std_logic;
SIGNAL \C11|OutD[3]~feeder_combout\ : std_logic;
SIGNAL \Inrs[0]~input_o\ : std_logic;
SIGNAL \C11|OutD[0]~feeder_combout\ : std_logic;
SIGNAL \C12|Seg[0]~26_combout\ : std_logic;
SIGNAL \C12|Seg[1]~28_combout\ : std_logic;
SIGNAL \C12|Seg[2]~27_combout\ : std_logic;
SIGNAL \C12|Seg[3]~23_combout\ : std_logic;
SIGNAL \C12|Seg[4]~24_combout\ : std_logic;
SIGNAL \C12|Seg[5]~29_combout\ : std_logic;
SIGNAL \C12|Seg[6]~25_combout\ : std_logic;
SIGNAL \C12|Seg~22_combout\ : std_logic;
SIGNAL \Inrs[5]~input_o\ : std_logic;
SIGNAL \Inrs[6]~input_o\ : std_logic;
SIGNAL \Inrs[7]~input_o\ : std_logic;
SIGNAL \Inrs[4]~input_o\ : std_logic;
SIGNAL \C13|Seg[0]~26_combout\ : std_logic;
SIGNAL \C13|Seg[1]~28_combout\ : std_logic;
SIGNAL \C13|Seg[2]~27_combout\ : std_logic;
SIGNAL \C13|Seg[3]~23_combout\ : std_logic;
SIGNAL \C13|Seg[4]~24_combout\ : std_logic;
SIGNAL \C13|Seg[5]~29_combout\ : std_logic;
SIGNAL \C13|Seg[6]~25_combout\ : std_logic;
SIGNAL \C13|Seg~22_combout\ : std_logic;
SIGNAL \C11|OutD\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C15|OscCount\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \C13|ALT_INV_Seg~22_combout\ : std_logic;
SIGNAL \C12|ALT_INV_Seg~22_combout\ : std_logic;
SIGNAL \ALT_INV_Clk50Mhz~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_En <= En;
ww_Clk50Mhz <= Clk50Mhz;
ww_Clr <= Clr;
ww_Inrs <= Inrs;
SegH <= ww_SegH;
SegL <= ww_SegL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clk50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk50Mhz~input_o\);
\C13|ALT_INV_Seg~22_combout\ <= NOT \C13|Seg~22_combout\;
\C12|ALT_INV_Seg~22_combout\ <= NOT \C12|Seg~22_combout\;
\ALT_INV_Clk50Mhz~inputclkctrl_outclk\ <= NOT \Clk50Mhz~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X69_Y54_N23
\SegH[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C12|Seg[0]~26_combout\,
	devoe => ww_devoe,
	o => \SegH[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\SegH[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C12|Seg[1]~28_combout\,
	devoe => ww_devoe,
	o => \SegH[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\SegH[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C12|Seg[2]~27_combout\,
	devoe => ww_devoe,
	o => \SegH[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\SegH[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C12|Seg[3]~23_combout\,
	devoe => ww_devoe,
	o => \SegH[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\SegH[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C12|Seg[4]~24_combout\,
	devoe => ww_devoe,
	o => \SegH[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\SegH[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C12|Seg[5]~29_combout\,
	devoe => ww_devoe,
	o => \SegH[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\SegH[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C12|Seg[6]~25_combout\,
	devoe => ww_devoe,
	o => \SegH[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\SegH[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C12|ALT_INV_Seg~22_combout\,
	devoe => ww_devoe,
	o => \SegH[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\SegL[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C13|Seg[0]~26_combout\,
	devoe => ww_devoe,
	o => \SegL[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\SegL[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C13|Seg[1]~28_combout\,
	devoe => ww_devoe,
	o => \SegL[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\SegL[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C13|Seg[2]~27_combout\,
	devoe => ww_devoe,
	o => \SegL[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\SegL[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C13|Seg[3]~23_combout\,
	devoe => ww_devoe,
	o => \SegL[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\SegL[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C13|Seg[4]~24_combout\,
	devoe => ww_devoe,
	o => \SegL[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\SegL[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C13|Seg[5]~29_combout\,
	devoe => ww_devoe,
	o => \SegL[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\SegL[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C13|Seg[6]~25_combout\,
	devoe => ww_devoe,
	o => \SegL[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\SegL[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C13|ALT_INV_Seg~22_combout\,
	devoe => ww_devoe,
	o => \SegL[7]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\Clk50Mhz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk50Mhz,
	o => \Clk50Mhz~input_o\);

-- Location: CLKCTRL_G19
\Clk50Mhz~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk50Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk50Mhz~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N1
\Inrs[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inrs(2),
	o => \Inrs[2]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\Clr~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clr,
	o => \Clr~input_o\);

-- Location: LCCOMB_X64_Y51_N8
\C15|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~0_combout\ = \C15|OscCount\(0) $ (VCC)
-- \C15|Add0~1\ = CARRY(\C15|OscCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(0),
	datad => VCC,
	combout => \C15|Add0~0_combout\,
	cout => \C15|Add0~1\);

-- Location: LCCOMB_X64_Y51_N6
\C15|OscCount~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|OscCount~12_combout\ = (\C15|Add0~0_combout\ & !\C15|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C15|Add0~0_combout\,
	datac => \C15|Equal0~7_combout\,
	combout => \C15|OscCount~12_combout\);

-- Location: FF_X64_Y51_N7
\C15|OscCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|OscCount~12_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(0));

-- Location: LCCOMB_X64_Y51_N10
\C15|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~2_combout\ = (\C15|OscCount\(1) & (!\C15|Add0~1\)) # (!\C15|OscCount\(1) & ((\C15|Add0~1\) # (GND)))
-- \C15|Add0~3\ = CARRY((!\C15|Add0~1\) # (!\C15|OscCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(1),
	datad => VCC,
	cin => \C15|Add0~1\,
	combout => \C15|Add0~2_combout\,
	cout => \C15|Add0~3\);

-- Location: FF_X64_Y51_N11
\C15|OscCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|Add0~2_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(1));

-- Location: LCCOMB_X64_Y51_N12
\C15|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~4_combout\ = (\C15|OscCount\(2) & (\C15|Add0~3\ $ (GND))) # (!\C15|OscCount\(2) & (!\C15|Add0~3\ & VCC))
-- \C15|Add0~5\ = CARRY((\C15|OscCount\(2) & !\C15|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(2),
	datad => VCC,
	cin => \C15|Add0~3\,
	combout => \C15|Add0~4_combout\,
	cout => \C15|Add0~5\);

-- Location: FF_X64_Y51_N13
\C15|OscCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|Add0~4_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(2));

-- Location: LCCOMB_X64_Y51_N14
\C15|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~6_combout\ = (\C15|OscCount\(3) & (!\C15|Add0~5\)) # (!\C15|OscCount\(3) & ((\C15|Add0~5\) # (GND)))
-- \C15|Add0~7\ = CARRY((!\C15|Add0~5\) # (!\C15|OscCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C15|OscCount\(3),
	datad => VCC,
	cin => \C15|Add0~5\,
	combout => \C15|Add0~6_combout\,
	cout => \C15|Add0~7\);

-- Location: FF_X64_Y51_N15
\C15|OscCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|Add0~6_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(3));

-- Location: LCCOMB_X64_Y51_N16
\C15|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~8_combout\ = (\C15|OscCount\(4) & (\C15|Add0~7\ $ (GND))) # (!\C15|OscCount\(4) & (!\C15|Add0~7\ & VCC))
-- \C15|Add0~9\ = CARRY((\C15|OscCount\(4) & !\C15|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C15|OscCount\(4),
	datad => VCC,
	cin => \C15|Add0~7\,
	combout => \C15|Add0~8_combout\,
	cout => \C15|Add0~9\);

-- Location: FF_X64_Y51_N17
\C15|OscCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|Add0~8_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(4));

-- Location: LCCOMB_X64_Y51_N0
\C15|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Equal0~6_combout\ = (!\C15|OscCount\(4) & (!\C15|OscCount\(1) & (!\C15|OscCount\(2) & !\C15|OscCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(4),
	datab => \C15|OscCount\(1),
	datac => \C15|OscCount\(2),
	datad => \C15|OscCount\(3),
	combout => \C15|Equal0~6_combout\);

-- Location: LCCOMB_X64_Y51_N18
\C15|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~10_combout\ = (\C15|OscCount\(5) & (!\C15|Add0~9\)) # (!\C15|OscCount\(5) & ((\C15|Add0~9\) # (GND)))
-- \C15|Add0~11\ = CARRY((!\C15|Add0~9\) # (!\C15|OscCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C15|OscCount\(5),
	datad => VCC,
	cin => \C15|Add0~9\,
	combout => \C15|Add0~10_combout\,
	cout => \C15|Add0~11\);

-- Location: FF_X64_Y51_N19
\C15|OscCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|Add0~10_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(5));

-- Location: LCCOMB_X64_Y51_N20
\C15|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~12_combout\ = (\C15|OscCount\(6) & (\C15|Add0~11\ $ (GND))) # (!\C15|OscCount\(6) & (!\C15|Add0~11\ & VCC))
-- \C15|Add0~13\ = CARRY((\C15|OscCount\(6) & !\C15|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C15|OscCount\(6),
	datad => VCC,
	cin => \C15|Add0~11\,
	combout => \C15|Add0~12_combout\,
	cout => \C15|Add0~13\);

-- Location: LCCOMB_X64_Y51_N4
\C15|OscCount~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|OscCount~11_combout\ = (!\C15|Equal0~7_combout\ & \C15|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C15|Equal0~7_combout\,
	datad => \C15|Add0~12_combout\,
	combout => \C15|OscCount~11_combout\);

-- Location: FF_X64_Y51_N5
\C15|OscCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|OscCount~11_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(6));

-- Location: LCCOMB_X64_Y51_N22
\C15|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~14_combout\ = (\C15|OscCount\(7) & (!\C15|Add0~13\)) # (!\C15|OscCount\(7) & ((\C15|Add0~13\) # (GND)))
-- \C15|Add0~15\ = CARRY((!\C15|Add0~13\) # (!\C15|OscCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(7),
	datad => VCC,
	cin => \C15|Add0~13\,
	combout => \C15|Add0~14_combout\,
	cout => \C15|Add0~15\);

-- Location: FF_X64_Y51_N23
\C15|OscCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|Add0~14_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(7));

-- Location: LCCOMB_X64_Y51_N24
\C15|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~16_combout\ = (\C15|OscCount\(8) & (\C15|Add0~15\ $ (GND))) # (!\C15|OscCount\(8) & (!\C15|Add0~15\ & VCC))
-- \C15|Add0~17\ = CARRY((\C15|OscCount\(8) & !\C15|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C15|OscCount\(8),
	datad => VCC,
	cin => \C15|Add0~15\,
	combout => \C15|Add0~16_combout\,
	cout => \C15|Add0~17\);

-- Location: FF_X64_Y51_N25
\C15|OscCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|Add0~16_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(8));

-- Location: LCCOMB_X64_Y51_N2
\C15|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Equal0~5_combout\ = (!\C15|OscCount\(5) & (\C15|OscCount\(6) & (!\C15|OscCount\(7) & !\C15|OscCount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(5),
	datab => \C15|OscCount\(6),
	datac => \C15|OscCount\(7),
	datad => \C15|OscCount\(8),
	combout => \C15|Equal0~5_combout\);

-- Location: LCCOMB_X64_Y51_N26
\C15|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~18_combout\ = (\C15|OscCount\(9) & (!\C15|Add0~17\)) # (!\C15|OscCount\(9) & ((\C15|Add0~17\) # (GND)))
-- \C15|Add0~19\ = CARRY((!\C15|Add0~17\) # (!\C15|OscCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(9),
	datad => VCC,
	cin => \C15|Add0~17\,
	combout => \C15|Add0~18_combout\,
	cout => \C15|Add0~19\);

-- Location: FF_X64_Y51_N27
\C15|OscCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|Add0~18_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(9));

-- Location: LCCOMB_X64_Y51_N28
\C15|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~20_combout\ = (\C15|OscCount\(10) & (\C15|Add0~19\ $ (GND))) # (!\C15|OscCount\(10) & (!\C15|Add0~19\ & VCC))
-- \C15|Add0~21\ = CARRY((\C15|OscCount\(10) & !\C15|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C15|OscCount\(10),
	datad => VCC,
	cin => \C15|Add0~19\,
	combout => \C15|Add0~20_combout\,
	cout => \C15|Add0~21\);

-- Location: FF_X64_Y51_N29
\C15|OscCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|Add0~20_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(10));

-- Location: LCCOMB_X64_Y51_N30
\C15|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~22_combout\ = (\C15|OscCount\(11) & (!\C15|Add0~21\)) # (!\C15|OscCount\(11) & ((\C15|Add0~21\) # (GND)))
-- \C15|Add0~23\ = CARRY((!\C15|Add0~21\) # (!\C15|OscCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(11),
	datad => VCC,
	cin => \C15|Add0~21\,
	combout => \C15|Add0~22_combout\,
	cout => \C15|Add0~23\);

-- Location: LCCOMB_X63_Y50_N0
\C15|OscCount~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|OscCount~10_combout\ = (\C15|Add0~22_combout\ & !\C15|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C15|Add0~22_combout\,
	datad => \C15|Equal0~7_combout\,
	combout => \C15|OscCount~10_combout\);

-- Location: FF_X63_Y50_N1
\C15|OscCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|OscCount~10_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(11));

-- Location: LCCOMB_X64_Y50_N0
\C15|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~24_combout\ = (\C15|OscCount\(12) & (\C15|Add0~23\ $ (GND))) # (!\C15|OscCount\(12) & (!\C15|Add0~23\ & VCC))
-- \C15|Add0~25\ = CARRY((\C15|OscCount\(12) & !\C15|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C15|OscCount\(12),
	datad => VCC,
	cin => \C15|Add0~23\,
	combout => \C15|Add0~24_combout\,
	cout => \C15|Add0~25\);

-- Location: LCCOMB_X63_Y50_N6
\C15|OscCount~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|OscCount~9_combout\ = (!\C15|Equal0~7_combout\ & \C15|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C15|Equal0~7_combout\,
	datac => \C15|Add0~24_combout\,
	combout => \C15|OscCount~9_combout\);

-- Location: FF_X63_Y50_N7
\C15|OscCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|OscCount~9_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(12));

-- Location: LCCOMB_X64_Y50_N2
\C15|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~26_combout\ = (\C15|OscCount\(13) & (!\C15|Add0~25\)) # (!\C15|OscCount\(13) & ((\C15|Add0~25\) # (GND)))
-- \C15|Add0~27\ = CARRY((!\C15|Add0~25\) # (!\C15|OscCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(13),
	datad => VCC,
	cin => \C15|Add0~25\,
	combout => \C15|Add0~26_combout\,
	cout => \C15|Add0~27\);

-- Location: LCCOMB_X63_Y50_N14
\C15|OscCount~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|OscCount~8_combout\ = (!\C15|Equal0~7_combout\ & \C15|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C15|Equal0~7_combout\,
	datad => \C15|Add0~26_combout\,
	combout => \C15|OscCount~8_combout\);

-- Location: FF_X63_Y50_N15
\C15|OscCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|OscCount~8_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(13));

-- Location: LCCOMB_X64_Y50_N4
\C15|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~28_combout\ = (\C15|OscCount\(14) & (\C15|Add0~27\ $ (GND))) # (!\C15|OscCount\(14) & (!\C15|Add0~27\ & VCC))
-- \C15|Add0~29\ = CARRY((\C15|OscCount\(14) & !\C15|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C15|OscCount\(14),
	datad => VCC,
	cin => \C15|Add0~27\,
	combout => \C15|Add0~28_combout\,
	cout => \C15|Add0~29\);

-- Location: LCCOMB_X63_Y50_N20
\C15|OscCount~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|OscCount~7_combout\ = (!\C15|Equal0~7_combout\ & \C15|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C15|Equal0~7_combout\,
	datad => \C15|Add0~28_combout\,
	combout => \C15|OscCount~7_combout\);

-- Location: FF_X63_Y50_N21
\C15|OscCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|OscCount~7_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(14));

-- Location: LCCOMB_X64_Y50_N6
\C15|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~30_combout\ = (\C15|OscCount\(15) & (!\C15|Add0~29\)) # (!\C15|OscCount\(15) & ((\C15|Add0~29\) # (GND)))
-- \C15|Add0~31\ = CARRY((!\C15|Add0~29\) # (!\C15|OscCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(15),
	datad => VCC,
	cin => \C15|Add0~29\,
	combout => \C15|Add0~30_combout\,
	cout => \C15|Add0~31\);

-- Location: FF_X64_Y50_N7
\C15|OscCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|Add0~30_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(15));

-- Location: LCCOMB_X64_Y50_N8
\C15|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~32_combout\ = (\C15|OscCount\(16) & (\C15|Add0~31\ $ (GND))) # (!\C15|OscCount\(16) & (!\C15|Add0~31\ & VCC))
-- \C15|Add0~33\ = CARRY((\C15|OscCount\(16) & !\C15|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(16),
	datad => VCC,
	cin => \C15|Add0~31\,
	combout => \C15|Add0~32_combout\,
	cout => \C15|Add0~33\);

-- Location: LCCOMB_X63_Y50_N10
\C15|OscCount~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|OscCount~6_combout\ = (!\C15|Equal0~7_combout\ & \C15|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C15|Equal0~7_combout\,
	datac => \C15|Add0~32_combout\,
	combout => \C15|OscCount~6_combout\);

-- Location: FF_X63_Y50_N11
\C15|OscCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|OscCount~6_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(16));

-- Location: LCCOMB_X64_Y50_N10
\C15|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~34_combout\ = (\C15|OscCount\(17) & (!\C15|Add0~33\)) # (!\C15|OscCount\(17) & ((\C15|Add0~33\) # (GND)))
-- \C15|Add0~35\ = CARRY((!\C15|Add0~33\) # (!\C15|OscCount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(17),
	datad => VCC,
	cin => \C15|Add0~33\,
	combout => \C15|Add0~34_combout\,
	cout => \C15|Add0~35\);

-- Location: FF_X64_Y50_N11
\C15|OscCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|Add0~34_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(17));

-- Location: LCCOMB_X64_Y50_N12
\C15|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~36_combout\ = (\C15|OscCount\(18) & (\C15|Add0~35\ $ (GND))) # (!\C15|OscCount\(18) & (!\C15|Add0~35\ & VCC))
-- \C15|Add0~37\ = CARRY((\C15|OscCount\(18) & !\C15|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C15|OscCount\(18),
	datad => VCC,
	cin => \C15|Add0~35\,
	combout => \C15|Add0~36_combout\,
	cout => \C15|Add0~37\);

-- Location: LCCOMB_X63_Y50_N22
\C15|OscCount~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|OscCount~5_combout\ = (!\C15|Equal0~7_combout\ & \C15|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C15|Equal0~7_combout\,
	datac => \C15|Add0~36_combout\,
	combout => \C15|OscCount~5_combout\);

-- Location: FF_X63_Y50_N23
\C15|OscCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|OscCount~5_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(18));

-- Location: LCCOMB_X64_Y50_N14
\C15|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~38_combout\ = (\C15|OscCount\(19) & (!\C15|Add0~37\)) # (!\C15|OscCount\(19) & ((\C15|Add0~37\) # (GND)))
-- \C15|Add0~39\ = CARRY((!\C15|Add0~37\) # (!\C15|OscCount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C15|OscCount\(19),
	datad => VCC,
	cin => \C15|Add0~37\,
	combout => \C15|Add0~38_combout\,
	cout => \C15|Add0~39\);

-- Location: LCCOMB_X63_Y50_N24
\C15|OscCount~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|OscCount~4_combout\ = (\C15|Add0~38_combout\ & !\C15|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C15|Add0~38_combout\,
	datad => \C15|Equal0~7_combout\,
	combout => \C15|OscCount~4_combout\);

-- Location: FF_X63_Y50_N25
\C15|OscCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|OscCount~4_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(19));

-- Location: LCCOMB_X64_Y50_N16
\C15|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~40_combout\ = (\C15|OscCount\(20) & (\C15|Add0~39\ $ (GND))) # (!\C15|OscCount\(20) & (!\C15|Add0~39\ & VCC))
-- \C15|Add0~41\ = CARRY((\C15|OscCount\(20) & !\C15|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(20),
	datad => VCC,
	cin => \C15|Add0~39\,
	combout => \C15|Add0~40_combout\,
	cout => \C15|Add0~41\);

-- Location: LCCOMB_X64_Y50_N26
\C15|OscCount~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|OscCount~3_combout\ = (!\C15|Equal0~7_combout\ & \C15|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C15|Equal0~7_combout\,
	datad => \C15|Add0~40_combout\,
	combout => \C15|OscCount~3_combout\);

-- Location: FF_X64_Y50_N27
\C15|OscCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|OscCount~3_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(20));

-- Location: LCCOMB_X64_Y50_N18
\C15|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~42_combout\ = (\C15|OscCount\(21) & (!\C15|Add0~41\)) # (!\C15|OscCount\(21) & ((\C15|Add0~41\) # (GND)))
-- \C15|Add0~43\ = CARRY((!\C15|Add0~41\) # (!\C15|OscCount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(21),
	datad => VCC,
	cin => \C15|Add0~41\,
	combout => \C15|Add0~42_combout\,
	cout => \C15|Add0~43\);

-- Location: LCCOMB_X63_Y50_N16
\C15|OscCount~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|OscCount~2_combout\ = (!\C15|Equal0~7_combout\ & \C15|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C15|Equal0~7_combout\,
	datad => \C15|Add0~42_combout\,
	combout => \C15|OscCount~2_combout\);

-- Location: FF_X63_Y50_N17
\C15|OscCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|OscCount~2_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(21));

-- Location: LCCOMB_X64_Y50_N20
\C15|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~44_combout\ = (\C15|OscCount\(22) & (\C15|Add0~43\ $ (GND))) # (!\C15|OscCount\(22) & (!\C15|Add0~43\ & VCC))
-- \C15|Add0~45\ = CARRY((\C15|OscCount\(22) & !\C15|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C15|OscCount\(22),
	datad => VCC,
	cin => \C15|Add0~43\,
	combout => \C15|Add0~44_combout\,
	cout => \C15|Add0~45\);

-- Location: LCCOMB_X64_Y50_N28
\C15|OscCount~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|OscCount~1_combout\ = (!\C15|Equal0~7_combout\ & \C15|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C15|Equal0~7_combout\,
	datad => \C15|Add0~44_combout\,
	combout => \C15|OscCount~1_combout\);

-- Location: FF_X64_Y50_N29
\C15|OscCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|OscCount~1_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(22));

-- Location: LCCOMB_X64_Y50_N22
\C15|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~46_combout\ = (\C15|OscCount\(23) & (!\C15|Add0~45\)) # (!\C15|OscCount\(23) & ((\C15|Add0~45\) # (GND)))
-- \C15|Add0~47\ = CARRY((!\C15|Add0~45\) # (!\C15|OscCount\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(23),
	datad => VCC,
	cin => \C15|Add0~45\,
	combout => \C15|Add0~46_combout\,
	cout => \C15|Add0~47\);

-- Location: FF_X64_Y50_N23
\C15|OscCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|Add0~46_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(23));

-- Location: LCCOMB_X64_Y50_N24
\C15|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Add0~48_combout\ = \C15|OscCount\(24) $ (!\C15|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(24),
	cin => \C15|Add0~47\,
	combout => \C15|Add0~48_combout\);

-- Location: LCCOMB_X64_Y50_N30
\C15|OscCount~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|OscCount~0_combout\ = (!\C15|Equal0~7_combout\ & \C15|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C15|Equal0~7_combout\,
	datad => \C15|Add0~48_combout\,
	combout => \C15|OscCount~0_combout\);

-- Location: FF_X64_Y50_N31
\C15|OscCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	d => \C15|OscCount~0_combout\,
	clrn => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|OscCount\(24));

-- Location: LCCOMB_X63_Y50_N26
\C15|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Equal0~0_combout\ = (!\C15|OscCount\(23) & (\C15|OscCount\(21) & (\C15|OscCount\(24) & \C15|OscCount\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(23),
	datab => \C15|OscCount\(21),
	datac => \C15|OscCount\(24),
	datad => \C15|OscCount\(22),
	combout => \C15|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y50_N28
\C15|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Equal0~2_combout\ = (\C15|OscCount\(16) & (\C15|OscCount\(14) & (\C15|OscCount\(13) & !\C15|OscCount\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(16),
	datab => \C15|OscCount\(14),
	datac => \C15|OscCount\(13),
	datad => \C15|OscCount\(15),
	combout => \C15|Equal0~2_combout\);

-- Location: LCCOMB_X63_Y50_N8
\C15|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Equal0~1_combout\ = (\C15|OscCount\(18) & (\C15|OscCount\(19) & (!\C15|OscCount\(17) & \C15|OscCount\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(18),
	datab => \C15|OscCount\(19),
	datac => \C15|OscCount\(17),
	datad => \C15|OscCount\(20),
	combout => \C15|Equal0~1_combout\);

-- Location: LCCOMB_X63_Y50_N18
\C15|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Equal0~3_combout\ = (\C15|OscCount\(12) & (\C15|OscCount\(11) & (!\C15|OscCount\(10) & !\C15|OscCount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C15|OscCount\(12),
	datab => \C15|OscCount\(11),
	datac => \C15|OscCount\(10),
	datad => \C15|OscCount\(9),
	combout => \C15|Equal0~3_combout\);

-- Location: LCCOMB_X63_Y50_N12
\C15|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Equal0~4_combout\ = (\C15|Equal0~0_combout\ & (\C15|Equal0~2_combout\ & (\C15|Equal0~1_combout\ & \C15|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C15|Equal0~0_combout\,
	datab => \C15|Equal0~2_combout\,
	datac => \C15|Equal0~1_combout\,
	datad => \C15|Equal0~3_combout\,
	combout => \C15|Equal0~4_combout\);

-- Location: LCCOMB_X63_Y50_N30
\C15|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C15|Equal0~7_combout\ = (\C15|Equal0~6_combout\ & (!\C15|OscCount\(0) & (\C15|Equal0~5_combout\ & \C15|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C15|Equal0~6_combout\,
	datab => \C15|OscCount\(0),
	datac => \C15|Equal0~5_combout\,
	datad => \C15|Equal0~4_combout\,
	combout => \C15|Equal0~7_combout\);

-- Location: FF_X62_Y50_N29
\C15|Clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50Mhz~inputclkctrl_outclk\,
	asdata => \C15|Equal0~7_combout\,
	sload => VCC,
	ena => \Clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C15|Clkout~q\);

-- Location: IOIBUF_X69_Y54_N1
\En~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

-- Location: LCCOMB_X62_Y50_N28
\C11|OutD[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C11|OutD[2]~0_combout\ = (\C15|Clkout~q\ & \En~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C15|Clkout~q\,
	datad => \En~input_o\,
	combout => \C11|OutD[2]~0_combout\);

-- Location: FF_X62_Y50_N9
\C11|OutD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk50Mhz~inputclkctrl_outclk\,
	asdata => \Inrs[2]~input_o\,
	clrn => \Clr~input_o\,
	sload => VCC,
	ena => \C11|OutD[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C11|OutD\(2));

-- Location: IOIBUF_X51_Y54_N22
\Inrs[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inrs(1),
	o => \Inrs[1]~input_o\);

-- Location: LCCOMB_X62_Y50_N16
\C11|OutD[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C11|OutD[1]~feeder_combout\ = \Inrs[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inrs[1]~input_o\,
	combout => \C11|OutD[1]~feeder_combout\);

-- Location: FF_X62_Y50_N17
\C11|OutD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk50Mhz~inputclkctrl_outclk\,
	d => \C11|OutD[1]~feeder_combout\,
	clrn => \Clr~input_o\,
	ena => \C11|OutD[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C11|OutD\(1));

-- Location: IOIBUF_X54_Y54_N29
\Inrs[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inrs(3),
	o => \Inrs[3]~input_o\);

-- Location: LCCOMB_X62_Y50_N22
\C11|OutD[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C11|OutD[3]~feeder_combout\ = \Inrs[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inrs[3]~input_o\,
	combout => \C11|OutD[3]~feeder_combout\);

-- Location: FF_X62_Y50_N23
\C11|OutD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk50Mhz~inputclkctrl_outclk\,
	d => \C11|OutD[3]~feeder_combout\,
	clrn => \Clr~input_o\,
	ena => \C11|OutD[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C11|OutD\(3));

-- Location: IOIBUF_X51_Y54_N29
\Inrs[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inrs(0),
	o => \Inrs[0]~input_o\);

-- Location: LCCOMB_X62_Y50_N2
\C11|OutD[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C11|OutD[0]~feeder_combout\ = \Inrs[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inrs[0]~input_o\,
	combout => \C11|OutD[0]~feeder_combout\);

-- Location: FF_X62_Y50_N3
\C11|OutD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk50Mhz~inputclkctrl_outclk\,
	d => \C11|OutD[0]~feeder_combout\,
	clrn => \Clr~input_o\,
	ena => \C11|OutD[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C11|OutD\(0));

-- Location: LCCOMB_X62_Y53_N28
\C12|Seg[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C12|Seg[0]~26_combout\ = (!\C11|OutD\(1) & (!\C11|OutD\(3) & (\C11|OutD\(2) $ (\C11|OutD\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(2),
	datab => \C11|OutD\(1),
	datac => \C11|OutD\(3),
	datad => \C11|OutD\(0),
	combout => \C12|Seg[0]~26_combout\);

-- Location: LCCOMB_X62_Y50_N20
\C12|Seg[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C12|Seg[1]~28_combout\ = (\C11|OutD\(2) & ((\C11|OutD\(3) & ((\C11|OutD\(1)) # (!\C11|OutD\(0)))) # (!\C11|OutD\(3) & (\C11|OutD\(1) $ (\C11|OutD\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(3),
	datab => \C11|OutD\(1),
	datac => \C11|OutD\(2),
	datad => \C11|OutD\(0),
	combout => \C12|Seg[1]~28_combout\);

-- Location: LCCOMB_X62_Y50_N30
\C12|Seg[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C12|Seg[2]~27_combout\ = (\C11|OutD\(3) & (\C11|OutD\(2) & ((\C11|OutD\(1)) # (!\C11|OutD\(0))))) # (!\C11|OutD\(3) & (\C11|OutD\(1) & (!\C11|OutD\(2) & !\C11|OutD\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(3),
	datab => \C11|OutD\(1),
	datac => \C11|OutD\(2),
	datad => \C11|OutD\(0),
	combout => \C12|Seg[2]~27_combout\);

-- Location: LCCOMB_X62_Y53_N26
\C12|Seg[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C12|Seg[3]~23_combout\ = (\C11|OutD\(0) & (\C11|OutD\(2) $ ((!\C11|OutD\(1))))) # (!\C11|OutD\(0) & ((\C11|OutD\(2) & (!\C11|OutD\(1) & !\C11|OutD\(3))) # (!\C11|OutD\(2) & (\C11|OutD\(1) & \C11|OutD\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(2),
	datab => \C11|OutD\(1),
	datac => \C11|OutD\(3),
	datad => \C11|OutD\(0),
	combout => \C12|Seg[3]~23_combout\);

-- Location: LCCOMB_X62_Y53_N12
\C12|Seg[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C12|Seg[4]~24_combout\ = (\C11|OutD\(1) & (((!\C11|OutD\(3) & \C11|OutD\(0))))) # (!\C11|OutD\(1) & ((\C11|OutD\(2) & (!\C11|OutD\(3))) # (!\C11|OutD\(2) & ((\C11|OutD\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(2),
	datab => \C11|OutD\(1),
	datac => \C11|OutD\(3),
	datad => \C11|OutD\(0),
	combout => \C12|Seg[4]~24_combout\);

-- Location: LCCOMB_X62_Y53_N22
\C12|Seg[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C12|Seg[5]~29_combout\ = (!\C11|OutD\(3) & ((\C11|OutD\(2) & (\C11|OutD\(1) & \C11|OutD\(0))) # (!\C11|OutD\(2) & ((\C11|OutD\(1)) # (\C11|OutD\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(2),
	datab => \C11|OutD\(1),
	datac => \C11|OutD\(3),
	datad => \C11|OutD\(0),
	combout => \C12|Seg[5]~29_combout\);

-- Location: LCCOMB_X62_Y53_N2
\C12|Seg[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C12|Seg[6]~25_combout\ = (\C11|OutD\(1) & (\C11|OutD\(2) & (!\C11|OutD\(3) & \C11|OutD\(0)))) # (!\C11|OutD\(1) & (\C11|OutD\(2) $ ((!\C11|OutD\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(2),
	datab => \C11|OutD\(1),
	datac => \C11|OutD\(3),
	datad => \C11|OutD\(0),
	combout => \C12|Seg[6]~25_combout\);

-- Location: LCCOMB_X62_Y53_N0
\C12|Seg~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C12|Seg~22_combout\ = (\C11|OutD\(3) & (\C11|OutD\(0) & (\C11|OutD\(2) $ (\C11|OutD\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(2),
	datab => \C11|OutD\(1),
	datac => \C11|OutD\(3),
	datad => \C11|OutD\(0),
	combout => \C12|Seg~22_combout\);

-- Location: IOIBUF_X49_Y54_N1
\Inrs[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inrs(5),
	o => \Inrs[5]~input_o\);

-- Location: FF_X62_Y50_N13
\C11|OutD[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk50Mhz~inputclkctrl_outclk\,
	asdata => \Inrs[5]~input_o\,
	clrn => \Clr~input_o\,
	sload => VCC,
	ena => \C11|OutD[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C11|OutD\(5));

-- Location: IOIBUF_X54_Y54_N15
\Inrs[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inrs(6),
	o => \Inrs[6]~input_o\);

-- Location: FF_X62_Y50_N25
\C11|OutD[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk50Mhz~inputclkctrl_outclk\,
	asdata => \Inrs[6]~input_o\,
	clrn => \Clr~input_o\,
	sload => VCC,
	ena => \C11|OutD[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C11|OutD\(6));

-- Location: IOIBUF_X58_Y54_N29
\Inrs[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inrs(7),
	o => \Inrs[7]~input_o\);

-- Location: FF_X62_Y50_N27
\C11|OutD[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk50Mhz~inputclkctrl_outclk\,
	asdata => \Inrs[7]~input_o\,
	clrn => \Clr~input_o\,
	sload => VCC,
	ena => \C11|OutD[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C11|OutD\(7));

-- Location: IOIBUF_X54_Y54_N22
\Inrs[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inrs(4),
	o => \Inrs[4]~input_o\);

-- Location: FF_X62_Y50_N11
\C11|OutD[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk50Mhz~inputclkctrl_outclk\,
	asdata => \Inrs[4]~input_o\,
	clrn => \Clr~input_o\,
	sload => VCC,
	ena => \C11|OutD[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C11|OutD\(4));

-- Location: LCCOMB_X62_Y50_N14
\C13|Seg[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C13|Seg[0]~26_combout\ = (!\C11|OutD\(5) & (!\C11|OutD\(7) & (\C11|OutD\(6) $ (\C11|OutD\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(5),
	datab => \C11|OutD\(6),
	datac => \C11|OutD\(7),
	datad => \C11|OutD\(4),
	combout => \C13|Seg[0]~26_combout\);

-- Location: LCCOMB_X62_Y50_N12
\C13|Seg[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C13|Seg[1]~28_combout\ = (\C11|OutD\(6) & ((\C11|OutD\(7) & ((\C11|OutD\(5)) # (!\C11|OutD\(4)))) # (!\C11|OutD\(7) & (\C11|OutD\(5) $ (\C11|OutD\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(7),
	datab => \C11|OutD\(6),
	datac => \C11|OutD\(5),
	datad => \C11|OutD\(4),
	combout => \C13|Seg[1]~28_combout\);

-- Location: LCCOMB_X62_Y50_N10
\C13|Seg[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C13|Seg[2]~27_combout\ = (\C11|OutD\(7) & (\C11|OutD\(6) & ((\C11|OutD\(5)) # (!\C11|OutD\(4))))) # (!\C11|OutD\(7) & (!\C11|OutD\(6) & (!\C11|OutD\(4) & \C11|OutD\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(7),
	datab => \C11|OutD\(6),
	datac => \C11|OutD\(4),
	datad => \C11|OutD\(5),
	combout => \C13|Seg[2]~27_combout\);

-- Location: LCCOMB_X62_Y50_N6
\C13|Seg[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C13|Seg[3]~23_combout\ = (\C11|OutD\(4) & (\C11|OutD\(5) $ ((!\C11|OutD\(6))))) # (!\C11|OutD\(4) & ((\C11|OutD\(5) & (!\C11|OutD\(6) & \C11|OutD\(7))) # (!\C11|OutD\(5) & (\C11|OutD\(6) & !\C11|OutD\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(5),
	datab => \C11|OutD\(6),
	datac => \C11|OutD\(7),
	datad => \C11|OutD\(4),
	combout => \C13|Seg[3]~23_combout\);

-- Location: LCCOMB_X62_Y50_N0
\C13|Seg[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C13|Seg[4]~24_combout\ = (\C11|OutD\(5) & (((!\C11|OutD\(7) & \C11|OutD\(4))))) # (!\C11|OutD\(5) & ((\C11|OutD\(6) & (!\C11|OutD\(7))) # (!\C11|OutD\(6) & ((\C11|OutD\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(5),
	datab => \C11|OutD\(6),
	datac => \C11|OutD\(7),
	datad => \C11|OutD\(4),
	combout => \C13|Seg[4]~24_combout\);

-- Location: LCCOMB_X62_Y50_N26
\C13|Seg[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C13|Seg[5]~29_combout\ = (!\C11|OutD\(7) & ((\C11|OutD\(5) & ((\C11|OutD\(4)) # (!\C11|OutD\(6)))) # (!\C11|OutD\(5) & (!\C11|OutD\(6) & \C11|OutD\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(5),
	datab => \C11|OutD\(6),
	datac => \C11|OutD\(7),
	datad => \C11|OutD\(4),
	combout => \C13|Seg[5]~29_combout\);

-- Location: LCCOMB_X62_Y50_N18
\C13|Seg[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C13|Seg[6]~25_combout\ = (\C11|OutD\(5) & (\C11|OutD\(6) & (!\C11|OutD\(7) & \C11|OutD\(4)))) # (!\C11|OutD\(5) & (\C11|OutD\(6) $ ((!\C11|OutD\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(5),
	datab => \C11|OutD\(6),
	datac => \C11|OutD\(7),
	datad => \C11|OutD\(4),
	combout => \C13|Seg[6]~25_combout\);

-- Location: LCCOMB_X62_Y50_N4
\C13|Seg~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C13|Seg~22_combout\ = (\C11|OutD\(7) & (\C11|OutD\(4) & (\C11|OutD\(5) $ (\C11|OutD\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C11|OutD\(5),
	datab => \C11|OutD\(6),
	datac => \C11|OutD\(7),
	datad => \C11|OutD\(4),
	combout => \C13|Seg~22_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_SegH(0) <= \SegH[0]~output_o\;

ww_SegH(1) <= \SegH[1]~output_o\;

ww_SegH(2) <= \SegH[2]~output_o\;

ww_SegH(3) <= \SegH[3]~output_o\;

ww_SegH(4) <= \SegH[4]~output_o\;

ww_SegH(5) <= \SegH[5]~output_o\;

ww_SegH(6) <= \SegH[6]~output_o\;

ww_SegH(7) <= \SegH[7]~output_o\;

ww_SegL(0) <= \SegL[0]~output_o\;

ww_SegL(1) <= \SegL[1]~output_o\;

ww_SegL(2) <= \SegL[2]~output_o\;

ww_SegL(3) <= \SegL[3]~output_o\;

ww_SegL(4) <= \SegL[4]~output_o\;

ww_SegL(5) <= \SegL[5]~output_o\;

ww_SegL(6) <= \SegL[6]~output_o\;

ww_SegL(7) <= \SegL[7]~output_o\;
END structure;



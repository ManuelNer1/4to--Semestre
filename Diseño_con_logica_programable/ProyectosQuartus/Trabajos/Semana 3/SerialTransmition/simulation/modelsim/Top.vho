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

-- DATE "02/24/2021 18:33:19"

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

ENTITY 	Top IS
    PORT (
	ASCII : IN std_logic_vector(7 DOWNTO 0);
	Rst : IN std_logic;
	Clk : IN std_logic;
	Load : IN std_logic;
	Tx : OUT std_logic
	);
END Top;

-- Design Ports Information
-- Tx	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[2]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[4]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[5]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[6]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[7]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ASCII : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Rst : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Load : std_logic;
SIGNAL ww_Tx : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Tx~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ASCII[0]~input_o\ : std_logic;
SIGNAL \ASCII[4]~input_o\ : std_logic;
SIGNAL \ASCII[5]~input_o\ : std_logic;
SIGNAL \ASCII[7]~input_o\ : std_logic;
SIGNAL \Load~input_o\ : std_logic;
SIGNAL \U2|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \Rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \U2|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \U2|count[0]~19_combout\ : std_logic;
SIGNAL \U2|counter_set~combout\ : std_logic;
SIGNAL \U2|result~2_combout\ : std_logic;
SIGNAL \U2|result~3_combout\ : std_logic;
SIGNAL \U2|result~1_combout\ : std_logic;
SIGNAL \U2|result~4_combout\ : std_logic;
SIGNAL \U2|count[18]~51_combout\ : std_logic;
SIGNAL \U2|count[0]~20\ : std_logic;
SIGNAL \U2|count[1]~21_combout\ : std_logic;
SIGNAL \U2|count[1]~22\ : std_logic;
SIGNAL \U2|count[2]~23_combout\ : std_logic;
SIGNAL \U2|count[2]~24\ : std_logic;
SIGNAL \U2|count[3]~25_combout\ : std_logic;
SIGNAL \U2|count[3]~26\ : std_logic;
SIGNAL \U2|count[4]~27_combout\ : std_logic;
SIGNAL \U2|count[4]~28\ : std_logic;
SIGNAL \U2|count[5]~29_combout\ : std_logic;
SIGNAL \U2|count[5]~30\ : std_logic;
SIGNAL \U2|count[6]~31_combout\ : std_logic;
SIGNAL \U2|count[6]~32\ : std_logic;
SIGNAL \U2|count[7]~33_combout\ : std_logic;
SIGNAL \U2|count[7]~34\ : std_logic;
SIGNAL \U2|count[8]~35_combout\ : std_logic;
SIGNAL \U2|count[8]~36\ : std_logic;
SIGNAL \U2|count[9]~37_combout\ : std_logic;
SIGNAL \U2|count[9]~38\ : std_logic;
SIGNAL \U2|count[10]~39_combout\ : std_logic;
SIGNAL \U2|count[10]~40\ : std_logic;
SIGNAL \U2|count[11]~41_combout\ : std_logic;
SIGNAL \U2|count[11]~42\ : std_logic;
SIGNAL \U2|count[12]~43_combout\ : std_logic;
SIGNAL \U2|count[12]~44\ : std_logic;
SIGNAL \U2|count[13]~45_combout\ : std_logic;
SIGNAL \U2|count[13]~46\ : std_logic;
SIGNAL \U2|count[14]~47_combout\ : std_logic;
SIGNAL \U2|count[14]~48\ : std_logic;
SIGNAL \U2|count[15]~49_combout\ : std_logic;
SIGNAL \U2|count[15]~50\ : std_logic;
SIGNAL \U2|count[16]~52_combout\ : std_logic;
SIGNAL \U2|count[16]~53\ : std_logic;
SIGNAL \U2|count[17]~54_combout\ : std_logic;
SIGNAL \U2|count[17]~55\ : std_logic;
SIGNAL \U2|count[18]~56_combout\ : std_logic;
SIGNAL \U2|result~0_combout\ : std_logic;
SIGNAL \U2|result~5_combout\ : std_logic;
SIGNAL \U2|result~q\ : std_logic;
SIGNAL \U1|ShiftReg~9_combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Cont~4_combout\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|Cont~3_combout\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|Cont~2_combout\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|Add0~19\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|Cont~1_combout\ : std_logic;
SIGNAL \U1|Add0~21\ : std_logic;
SIGNAL \U1|Add0~22_combout\ : std_logic;
SIGNAL \U1|Add0~23\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|Cont~0_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|ClkEn~feeder_combout\ : std_logic;
SIGNAL \U1|ClkEn~q\ : std_logic;
SIGNAL \ASCII[6]~input_o\ : std_logic;
SIGNAL \U1|ShiftReg~8_combout\ : std_logic;
SIGNAL \U1|ShiftReg~7_combout\ : std_logic;
SIGNAL \U1|ShiftReg~6_combout\ : std_logic;
SIGNAL \ASCII[3]~input_o\ : std_logic;
SIGNAL \U1|ShiftReg~5_combout\ : std_logic;
SIGNAL \ASCII[2]~input_o\ : std_logic;
SIGNAL \U1|ShiftReg~4_combout\ : std_logic;
SIGNAL \ASCII[1]~input_o\ : std_logic;
SIGNAL \U1|ShiftReg~3_combout\ : std_logic;
SIGNAL \U1|ShiftReg~2_combout\ : std_logic;
SIGNAL \U1|ShiftReg~1_combout\ : std_logic;
SIGNAL \U1|ShiftReg~0_combout\ : std_logic;
SIGNAL \U2|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \U1|ShiftReg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|Cont\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|ALT_INV_ShiftReg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_Rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Rst~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ASCII <= ASCII;
ww_Rst <= Rst;
ww_Clk <= Clk;
ww_Load <= Load;
Tx <= ww_Tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Rst~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\U1|ALT_INV_ShiftReg\(0) <= NOT \U1|ShiftReg\(0);
\ALT_INV_Rst~inputclkctrl_outclk\ <= NOT \Rst~inputclkctrl_outclk\;
\ALT_INV_Rst~input_o\ <= NOT \Rst~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X18_Y0_N16
\Tx~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_ShiftReg\(0),
	devoe => ww_devoe,
	o => \Tx~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G3
\Clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X20_Y0_N22
\ASCII[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASCII(0),
	o => \ASCII[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\ASCII[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASCII(4),
	o => \ASCII[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\ASCII[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASCII(5),
	o => \ASCII[5]~input_o\);

-- Location: IOIBUF_X20_Y0_N29
\ASCII[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASCII(7),
	o => \ASCII[7]~input_o\);

-- Location: IOIBUF_X20_Y39_N15
\Load~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Load,
	o => \Load~input_o\);

-- Location: LCCOMB_X19_Y36_N28
\U2|flipflops[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|flipflops[0]~feeder_combout\ = \Load~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Load~input_o\,
	combout => \U2|flipflops[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y18_N22
\Rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: CLKCTRL_G4
\Rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Rst~inputclkctrl_outclk\);

-- Location: FF_X19_Y36_N29
\U2|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|flipflops[0]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|flipflops\(0));

-- Location: LCCOMB_X19_Y36_N24
\U2|flipflops[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|flipflops[1]~feeder_combout\ = \U2|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|flipflops\(0),
	combout => \U2|flipflops[1]~feeder_combout\);

-- Location: FF_X19_Y36_N25
\U2|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|flipflops[1]~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|flipflops\(1));

-- Location: LCCOMB_X19_Y37_N14
\U2|count[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[0]~19_combout\ = \U2|count\(0) $ (VCC)
-- \U2|count[0]~20\ = CARRY(\U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(0),
	datad => VCC,
	combout => \U2|count[0]~19_combout\,
	cout => \U2|count[0]~20\);

-- Location: LCCOMB_X19_Y36_N22
\U2|counter_set\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|counter_set~combout\ = \U2|flipflops\(1) $ (\U2|flipflops\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|flipflops\(1),
	datad => \U2|flipflops\(0),
	combout => \U2|counter_set~combout\);

-- Location: LCCOMB_X19_Y37_N10
\U2|result~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|result~2_combout\ = ((!\U2|count\(5) & (!\U2|count\(6) & !\U2|count\(7)))) # (!\U2|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(8),
	datab => \U2|count\(5),
	datac => \U2|count\(6),
	datad => \U2|count\(7),
	combout => \U2|result~2_combout\);

-- Location: LCCOMB_X19_Y36_N20
\U2|result~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|result~3_combout\ = (!\U2|count\(12) & (!\U2|count\(9) & (!\U2|count\(11) & !\U2|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(12),
	datab => \U2|count\(9),
	datac => \U2|count\(11),
	datad => \U2|count\(10),
	combout => \U2|result~3_combout\);

-- Location: LCCOMB_X19_Y36_N30
\U2|result~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|result~1_combout\ = (\U2|count\(14) & (\U2|flipflops\(0) $ (((\U2|flipflops\(1)))))) # (!\U2|count\(14) & ((\U2|flipflops\(0) $ (\U2|flipflops\(1))) # (!\U2|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(14),
	datab => \U2|flipflops\(0),
	datac => \U2|count\(13),
	datad => \U2|flipflops\(1),
	combout => \U2|result~1_combout\);

-- Location: LCCOMB_X19_Y37_N0
\U2|result~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|result~4_combout\ = (\U2|result~1_combout\) # ((\U2|result~2_combout\ & (!\U2|count\(14) & \U2|result~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|result~2_combout\,
	datab => \U2|count\(14),
	datac => \U2|result~3_combout\,
	datad => \U2|result~1_combout\,
	combout => \U2|result~4_combout\);

-- Location: LCCOMB_X19_Y37_N6
\U2|count[18]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[18]~51_combout\ = (!\Rst~input_o\ & ((\U2|result~0_combout\) # (\U2|result~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rst~input_o\,
	datac => \U2|result~0_combout\,
	datad => \U2|result~4_combout\,
	combout => \U2|count[18]~51_combout\);

-- Location: FF_X19_Y37_N15
\U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[0]~19_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(0));

-- Location: LCCOMB_X19_Y37_N16
\U2|count[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[1]~21_combout\ = (\U2|count\(1) & (!\U2|count[0]~20\)) # (!\U2|count\(1) & ((\U2|count[0]~20\) # (GND)))
-- \U2|count[1]~22\ = CARRY((!\U2|count[0]~20\) # (!\U2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(1),
	datad => VCC,
	cin => \U2|count[0]~20\,
	combout => \U2|count[1]~21_combout\,
	cout => \U2|count[1]~22\);

-- Location: FF_X19_Y37_N17
\U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[1]~21_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(1));

-- Location: LCCOMB_X19_Y37_N18
\U2|count[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[2]~23_combout\ = (\U2|count\(2) & (\U2|count[1]~22\ $ (GND))) # (!\U2|count\(2) & (!\U2|count[1]~22\ & VCC))
-- \U2|count[2]~24\ = CARRY((\U2|count\(2) & !\U2|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(2),
	datad => VCC,
	cin => \U2|count[1]~22\,
	combout => \U2|count[2]~23_combout\,
	cout => \U2|count[2]~24\);

-- Location: FF_X19_Y37_N19
\U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[2]~23_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(2));

-- Location: LCCOMB_X19_Y37_N20
\U2|count[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[3]~25_combout\ = (\U2|count\(3) & (!\U2|count[2]~24\)) # (!\U2|count\(3) & ((\U2|count[2]~24\) # (GND)))
-- \U2|count[3]~26\ = CARRY((!\U2|count[2]~24\) # (!\U2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(3),
	datad => VCC,
	cin => \U2|count[2]~24\,
	combout => \U2|count[3]~25_combout\,
	cout => \U2|count[3]~26\);

-- Location: FF_X19_Y37_N21
\U2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[3]~25_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(3));

-- Location: LCCOMB_X19_Y37_N22
\U2|count[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[4]~27_combout\ = (\U2|count\(4) & (\U2|count[3]~26\ $ (GND))) # (!\U2|count\(4) & (!\U2|count[3]~26\ & VCC))
-- \U2|count[4]~28\ = CARRY((\U2|count\(4) & !\U2|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(4),
	datad => VCC,
	cin => \U2|count[3]~26\,
	combout => \U2|count[4]~27_combout\,
	cout => \U2|count[4]~28\);

-- Location: FF_X19_Y37_N23
\U2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[4]~27_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(4));

-- Location: LCCOMB_X19_Y37_N24
\U2|count[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[5]~29_combout\ = (\U2|count\(5) & (!\U2|count[4]~28\)) # (!\U2|count\(5) & ((\U2|count[4]~28\) # (GND)))
-- \U2|count[5]~30\ = CARRY((!\U2|count[4]~28\) # (!\U2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(5),
	datad => VCC,
	cin => \U2|count[4]~28\,
	combout => \U2|count[5]~29_combout\,
	cout => \U2|count[5]~30\);

-- Location: FF_X19_Y37_N25
\U2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[5]~29_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(5));

-- Location: LCCOMB_X19_Y37_N26
\U2|count[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[6]~31_combout\ = (\U2|count\(6) & (\U2|count[5]~30\ $ (GND))) # (!\U2|count\(6) & (!\U2|count[5]~30\ & VCC))
-- \U2|count[6]~32\ = CARRY((\U2|count\(6) & !\U2|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(6),
	datad => VCC,
	cin => \U2|count[5]~30\,
	combout => \U2|count[6]~31_combout\,
	cout => \U2|count[6]~32\);

-- Location: FF_X19_Y37_N27
\U2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[6]~31_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(6));

-- Location: LCCOMB_X19_Y37_N28
\U2|count[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[7]~33_combout\ = (\U2|count\(7) & (!\U2|count[6]~32\)) # (!\U2|count\(7) & ((\U2|count[6]~32\) # (GND)))
-- \U2|count[7]~34\ = CARRY((!\U2|count[6]~32\) # (!\U2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(7),
	datad => VCC,
	cin => \U2|count[6]~32\,
	combout => \U2|count[7]~33_combout\,
	cout => \U2|count[7]~34\);

-- Location: FF_X19_Y37_N29
\U2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[7]~33_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(7));

-- Location: LCCOMB_X19_Y37_N30
\U2|count[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[8]~35_combout\ = (\U2|count\(8) & (\U2|count[7]~34\ $ (GND))) # (!\U2|count\(8) & (!\U2|count[7]~34\ & VCC))
-- \U2|count[8]~36\ = CARRY((\U2|count\(8) & !\U2|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(8),
	datad => VCC,
	cin => \U2|count[7]~34\,
	combout => \U2|count[8]~35_combout\,
	cout => \U2|count[8]~36\);

-- Location: FF_X19_Y37_N31
\U2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[8]~35_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(8));

-- Location: LCCOMB_X19_Y36_N0
\U2|count[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[9]~37_combout\ = (\U2|count\(9) & (!\U2|count[8]~36\)) # (!\U2|count\(9) & ((\U2|count[8]~36\) # (GND)))
-- \U2|count[9]~38\ = CARRY((!\U2|count[8]~36\) # (!\U2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(9),
	datad => VCC,
	cin => \U2|count[8]~36\,
	combout => \U2|count[9]~37_combout\,
	cout => \U2|count[9]~38\);

-- Location: FF_X19_Y36_N1
\U2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[9]~37_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(9));

-- Location: LCCOMB_X19_Y36_N2
\U2|count[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[10]~39_combout\ = (\U2|count\(10) & (\U2|count[9]~38\ $ (GND))) # (!\U2|count\(10) & (!\U2|count[9]~38\ & VCC))
-- \U2|count[10]~40\ = CARRY((\U2|count\(10) & !\U2|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(10),
	datad => VCC,
	cin => \U2|count[9]~38\,
	combout => \U2|count[10]~39_combout\,
	cout => \U2|count[10]~40\);

-- Location: FF_X19_Y36_N3
\U2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[10]~39_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(10));

-- Location: LCCOMB_X19_Y36_N4
\U2|count[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[11]~41_combout\ = (\U2|count\(11) & (!\U2|count[10]~40\)) # (!\U2|count\(11) & ((\U2|count[10]~40\) # (GND)))
-- \U2|count[11]~42\ = CARRY((!\U2|count[10]~40\) # (!\U2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(11),
	datad => VCC,
	cin => \U2|count[10]~40\,
	combout => \U2|count[11]~41_combout\,
	cout => \U2|count[11]~42\);

-- Location: FF_X19_Y36_N5
\U2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[11]~41_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(11));

-- Location: LCCOMB_X19_Y36_N6
\U2|count[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[12]~43_combout\ = (\U2|count\(12) & (\U2|count[11]~42\ $ (GND))) # (!\U2|count\(12) & (!\U2|count[11]~42\ & VCC))
-- \U2|count[12]~44\ = CARRY((\U2|count\(12) & !\U2|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(12),
	datad => VCC,
	cin => \U2|count[11]~42\,
	combout => \U2|count[12]~43_combout\,
	cout => \U2|count[12]~44\);

-- Location: FF_X19_Y36_N7
\U2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[12]~43_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(12));

-- Location: LCCOMB_X19_Y36_N8
\U2|count[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[13]~45_combout\ = (\U2|count\(13) & (!\U2|count[12]~44\)) # (!\U2|count\(13) & ((\U2|count[12]~44\) # (GND)))
-- \U2|count[13]~46\ = CARRY((!\U2|count[12]~44\) # (!\U2|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(13),
	datad => VCC,
	cin => \U2|count[12]~44\,
	combout => \U2|count[13]~45_combout\,
	cout => \U2|count[13]~46\);

-- Location: FF_X19_Y36_N9
\U2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[13]~45_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(13));

-- Location: LCCOMB_X19_Y36_N10
\U2|count[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[14]~47_combout\ = (\U2|count\(14) & (\U2|count[13]~46\ $ (GND))) # (!\U2|count\(14) & (!\U2|count[13]~46\ & VCC))
-- \U2|count[14]~48\ = CARRY((\U2|count\(14) & !\U2|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(14),
	datad => VCC,
	cin => \U2|count[13]~46\,
	combout => \U2|count[14]~47_combout\,
	cout => \U2|count[14]~48\);

-- Location: FF_X19_Y36_N11
\U2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[14]~47_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(14));

-- Location: LCCOMB_X19_Y36_N12
\U2|count[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[15]~49_combout\ = (\U2|count\(15) & (!\U2|count[14]~48\)) # (!\U2|count\(15) & ((\U2|count[14]~48\) # (GND)))
-- \U2|count[15]~50\ = CARRY((!\U2|count[14]~48\) # (!\U2|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(15),
	datad => VCC,
	cin => \U2|count[14]~48\,
	combout => \U2|count[15]~49_combout\,
	cout => \U2|count[15]~50\);

-- Location: FF_X19_Y36_N13
\U2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[15]~49_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(15));

-- Location: LCCOMB_X19_Y36_N14
\U2|count[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[16]~52_combout\ = (\U2|count\(16) & (\U2|count[15]~50\ $ (GND))) # (!\U2|count\(16) & (!\U2|count[15]~50\ & VCC))
-- \U2|count[16]~53\ = CARRY((\U2|count\(16) & !\U2|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(16),
	datad => VCC,
	cin => \U2|count[15]~50\,
	combout => \U2|count[16]~52_combout\,
	cout => \U2|count[16]~53\);

-- Location: FF_X19_Y36_N15
\U2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[16]~52_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(16));

-- Location: LCCOMB_X19_Y36_N16
\U2|count[17]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[17]~54_combout\ = (\U2|count\(17) & (!\U2|count[16]~53\)) # (!\U2|count\(17) & ((\U2|count[16]~53\) # (GND)))
-- \U2|count[17]~55\ = CARRY((!\U2|count[16]~53\) # (!\U2|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(17),
	datad => VCC,
	cin => \U2|count[16]~53\,
	combout => \U2|count[17]~54_combout\,
	cout => \U2|count[17]~55\);

-- Location: FF_X19_Y36_N17
\U2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[17]~54_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(17));

-- Location: LCCOMB_X19_Y36_N18
\U2|count[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|count[18]~56_combout\ = \U2|count[17]~55\ $ (!\U2|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|count\(18),
	cin => \U2|count[17]~55\,
	combout => \U2|count[18]~56_combout\);

-- Location: FF_X19_Y36_N19
\U2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|count[18]~56_combout\,
	sclr => \U2|counter_set~combout\,
	ena => \U2|count[18]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(18));

-- Location: LCCOMB_X19_Y36_N26
\U2|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|result~0_combout\ = (((!\U2|count\(17)) # (!\U2|count\(16))) # (!\U2|count\(18))) # (!\U2|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(15),
	datab => \U2|count\(18),
	datac => \U2|count\(16),
	datad => \U2|count\(17),
	combout => \U2|result~0_combout\);

-- Location: LCCOMB_X19_Y37_N12
\U2|result~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|result~5_combout\ = (\U2|result~0_combout\ & (((\U2|result~q\)))) # (!\U2|result~0_combout\ & ((\U2|result~4_combout\ & ((\U2|result~q\))) # (!\U2|result~4_combout\ & (\U2|flipflops\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|flipflops\(1),
	datab => \U2|result~0_combout\,
	datac => \U2|result~q\,
	datad => \U2|result~4_combout\,
	combout => \U2|result~5_combout\);

-- Location: FF_X19_Y37_N13
\U2|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|result~5_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|result~q\);

-- Location: LCCOMB_X19_Y4_N10
\U1|ShiftReg~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ShiftReg~9_combout\ = (!\ASCII[7]~input_o\ & \U2|result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ASCII[7]~input_o\,
	datad => \U2|result~q\,
	combout => \U1|ShiftReg~9_combout\);

-- Location: LCCOMB_X18_Y11_N2
\U1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|Cont\(0) $ (VCC)
-- \U1|Add0~1\ = CARRY(\U1|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Cont\(0),
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: FF_X18_Y11_N3
\U1|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Cont\(0));

-- Location: LCCOMB_X18_Y11_N4
\U1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|Cont\(1) & (!\U1|Add0~1\)) # (!\U1|Cont\(1) & ((\U1|Add0~1\) # (GND)))
-- \U1|Add0~3\ = CARRY((!\U1|Add0~1\) # (!\U1|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Cont\(1),
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: FF_X18_Y11_N5
\U1|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~2_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Cont\(1));

-- Location: LCCOMB_X18_Y11_N6
\U1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = (\U1|Cont\(2) & (\U1|Add0~3\ $ (GND))) # (!\U1|Cont\(2) & (!\U1|Add0~3\ & VCC))
-- \U1|Add0~5\ = CARRY((\U1|Cont\(2) & !\U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Cont\(2),
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: FF_X18_Y11_N7
\U1|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~4_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Cont\(2));

-- Location: LCCOMB_X18_Y11_N8
\U1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|Cont\(3) & (!\U1|Add0~5\)) # (!\U1|Cont\(3) & ((\U1|Add0~5\) # (GND)))
-- \U1|Add0~7\ = CARRY((!\U1|Add0~5\) # (!\U1|Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Cont\(3),
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: LCCOMB_X18_Y11_N30
\U1|Cont~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Cont~4_combout\ = (\U1|Add0~6_combout\ & !\U1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~6_combout\,
	datad => \U1|Equal0~3_combout\,
	combout => \U1|Cont~4_combout\);

-- Location: FF_X18_Y11_N31
\U1|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Cont~4_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Cont\(3));

-- Location: LCCOMB_X18_Y11_N10
\U1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|Cont\(4) & (\U1|Add0~7\ $ (GND))) # (!\U1|Cont\(4) & (!\U1|Add0~7\ & VCC))
-- \U1|Add0~9\ = CARRY((\U1|Cont\(4) & !\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Cont\(4),
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: LCCOMB_X19_Y11_N4
\U1|Cont~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Cont~3_combout\ = (!\U1|Equal0~3_combout\ & \U1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~3_combout\,
	datad => \U1|Add0~8_combout\,
	combout => \U1|Cont~3_combout\);

-- Location: FF_X19_Y11_N5
\U1|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Cont~3_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Cont\(4));

-- Location: LCCOMB_X18_Y11_N12
\U1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|Cont\(5) & (!\U1|Add0~9\)) # (!\U1|Cont\(5) & ((\U1|Add0~9\) # (GND)))
-- \U1|Add0~11\ = CARRY((!\U1|Add0~9\) # (!\U1|Cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Cont\(5),
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: FF_X18_Y11_N13
\U1|Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~10_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Cont\(5));

-- Location: LCCOMB_X18_Y11_N14
\U1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = (\U1|Cont\(6) & (\U1|Add0~11\ $ (GND))) # (!\U1|Cont\(6) & (!\U1|Add0~11\ & VCC))
-- \U1|Add0~13\ = CARRY((\U1|Cont\(6) & !\U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Cont\(6),
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: LCCOMB_X18_Y11_N0
\U1|Cont~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Cont~2_combout\ = (\U1|Add0~12_combout\ & !\U1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~12_combout\,
	datad => \U1|Equal0~3_combout\,
	combout => \U1|Cont~2_combout\);

-- Location: FF_X18_Y11_N1
\U1|Cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Cont~2_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Cont\(6));

-- Location: LCCOMB_X18_Y11_N16
\U1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|Cont\(7) & (!\U1|Add0~13\)) # (!\U1|Cont\(7) & ((\U1|Add0~13\) # (GND)))
-- \U1|Add0~15\ = CARRY((!\U1|Add0~13\) # (!\U1|Cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Cont\(7),
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: FF_X18_Y11_N17
\U1|Cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~14_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Cont\(7));

-- Location: LCCOMB_X18_Y11_N18
\U1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|Cont\(8) & (\U1|Add0~15\ $ (GND))) # (!\U1|Cont\(8) & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|Cont\(8) & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Cont\(8),
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: FF_X18_Y11_N19
\U1|Cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~16_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Cont\(8));

-- Location: LCCOMB_X19_Y11_N18
\U1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (\U1|Cont\(6) & (!\U1|Cont\(8) & (!\U1|Cont\(7) & !\U1|Cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Cont\(6),
	datab => \U1|Cont\(8),
	datac => \U1|Cont\(7),
	datad => \U1|Cont\(5),
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y11_N22
\U1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (\U1|Cont\(4) & (\U1|Cont\(2) & (\U1|Cont\(1) & !\U1|Cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Cont\(4),
	datab => \U1|Cont\(2),
	datac => \U1|Cont\(1),
	datad => \U1|Cont\(3),
	combout => \U1|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y11_N20
\U1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|Cont\(9) & (!\U1|Add0~17\)) # (!\U1|Cont\(9) & ((\U1|Add0~17\) # (GND)))
-- \U1|Add0~19\ = CARRY((!\U1|Add0~17\) # (!\U1|Cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Cont\(9),
	datad => VCC,
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\,
	cout => \U1|Add0~19\);

-- Location: FF_X18_Y11_N21
\U1|Cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~18_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Cont\(9));

-- Location: LCCOMB_X18_Y11_N22
\U1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|Cont\(10) & (\U1|Add0~19\ $ (GND))) # (!\U1|Cont\(10) & (!\U1|Add0~19\ & VCC))
-- \U1|Add0~21\ = CARRY((\U1|Cont\(10) & !\U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Cont\(10),
	datad => VCC,
	cin => \U1|Add0~19\,
	combout => \U1|Add0~20_combout\,
	cout => \U1|Add0~21\);

-- Location: LCCOMB_X18_Y11_N28
\U1|Cont~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Cont~1_combout\ = (\U1|Add0~20_combout\ & !\U1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~20_combout\,
	datad => \U1|Equal0~3_combout\,
	combout => \U1|Cont~1_combout\);

-- Location: FF_X18_Y11_N29
\U1|Cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Cont~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Cont\(10));

-- Location: LCCOMB_X18_Y11_N24
\U1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~22_combout\ = (\U1|Cont\(11) & (!\U1|Add0~21\)) # (!\U1|Cont\(11) & ((\U1|Add0~21\) # (GND)))
-- \U1|Add0~23\ = CARRY((!\U1|Add0~21\) # (!\U1|Cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|Cont\(11),
	datad => VCC,
	cin => \U1|Add0~21\,
	combout => \U1|Add0~22_combout\,
	cout => \U1|Add0~23\);

-- Location: FF_X18_Y11_N25
\U1|Cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~22_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Cont\(11));

-- Location: LCCOMB_X18_Y11_N26
\U1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~24_combout\ = \U1|Add0~23\ $ (!\U1|Cont\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|Cont\(12),
	cin => \U1|Add0~23\,
	combout => \U1|Add0~24_combout\);

-- Location: LCCOMB_X19_Y11_N26
\U1|Cont~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Cont~0_combout\ = (\U1|Add0~24_combout\ & !\U1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~24_combout\,
	datad => \U1|Equal0~3_combout\,
	combout => \U1|Cont~0_combout\);

-- Location: FF_X19_Y11_N27
\U1|Cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Cont~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Cont\(12));

-- Location: LCCOMB_X19_Y11_N0
\U1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\U1|Cont\(10) & (!\U1|Cont\(11) & (\U1|Cont\(12) & !\U1|Cont\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Cont\(10),
	datab => \U1|Cont\(11),
	datac => \U1|Cont\(12),
	datad => \U1|Cont\(9),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y11_N28
\U1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = (\U1|Cont\(0) & (\U1|Equal0~1_combout\ & (\U1|Equal0~2_combout\ & \U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Cont\(0),
	datab => \U1|Equal0~1_combout\,
	datac => \U1|Equal0~2_combout\,
	datad => \U1|Equal0~0_combout\,
	combout => \U1|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y11_N20
\U1|ClkEn~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ClkEn~feeder_combout\ = \U1|Equal0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Equal0~3_combout\,
	combout => \U1|ClkEn~feeder_combout\);

-- Location: FF_X19_Y11_N21
\U1|ClkEn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|ClkEn~feeder_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ClkEn~q\);

-- Location: FF_X19_Y4_N11
\U1|ShiftReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|ShiftReg~9_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ShiftReg\(9));

-- Location: IOIBUF_X20_Y0_N1
\ASCII[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASCII(6),
	o => \ASCII[6]~input_o\);

-- Location: LCCOMB_X19_Y4_N4
\U1|ShiftReg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ShiftReg~8_combout\ = (\U2|result~q\ & ((!\ASCII[6]~input_o\))) # (!\U2|result~q\ & (\U1|ShiftReg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ShiftReg\(9),
	datac => \ASCII[6]~input_o\,
	datad => \U2|result~q\,
	combout => \U1|ShiftReg~8_combout\);

-- Location: FF_X19_Y4_N5
\U1|ShiftReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|ShiftReg~8_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ShiftReg\(8));

-- Location: LCCOMB_X19_Y4_N22
\U1|ShiftReg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ShiftReg~7_combout\ = (\U2|result~q\ & (!\ASCII[5]~input_o\)) # (!\U2|result~q\ & ((\U1|ShiftReg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ASCII[5]~input_o\,
	datac => \U1|ShiftReg\(8),
	datad => \U2|result~q\,
	combout => \U1|ShiftReg~7_combout\);

-- Location: FF_X19_Y4_N23
\U1|ShiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|ShiftReg~7_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ShiftReg\(7));

-- Location: LCCOMB_X19_Y4_N12
\U1|ShiftReg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ShiftReg~6_combout\ = (\U2|result~q\ & (!\ASCII[4]~input_o\)) # (!\U2|result~q\ & ((\U1|ShiftReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ASCII[4]~input_o\,
	datac => \U1|ShiftReg\(7),
	datad => \U2|result~q\,
	combout => \U1|ShiftReg~6_combout\);

-- Location: FF_X19_Y4_N13
\U1|ShiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|ShiftReg~6_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ShiftReg\(6));

-- Location: IOIBUF_X18_Y0_N29
\ASCII[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASCII(3),
	o => \ASCII[3]~input_o\);

-- Location: LCCOMB_X19_Y4_N26
\U1|ShiftReg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ShiftReg~5_combout\ = (\U2|result~q\ & ((!\ASCII[3]~input_o\))) # (!\U2|result~q\ & (\U1|ShiftReg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ShiftReg\(6),
	datac => \ASCII[3]~input_o\,
	datad => \U2|result~q\,
	combout => \U1|ShiftReg~5_combout\);

-- Location: FF_X19_Y4_N27
\U1|ShiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|ShiftReg~5_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ShiftReg\(5));

-- Location: IOIBUF_X18_Y0_N8
\ASCII[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASCII(2),
	o => \ASCII[2]~input_o\);

-- Location: LCCOMB_X19_Y4_N20
\U1|ShiftReg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ShiftReg~4_combout\ = (\U2|result~q\ & ((!\ASCII[2]~input_o\))) # (!\U2|result~q\ & (\U1|ShiftReg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ShiftReg\(5),
	datac => \ASCII[2]~input_o\,
	datad => \U2|result~q\,
	combout => \U1|ShiftReg~4_combout\);

-- Location: FF_X19_Y4_N21
\U1|ShiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|ShiftReg~4_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ShiftReg\(4));

-- Location: IOIBUF_X18_Y0_N22
\ASCII[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASCII(1),
	o => \ASCII[1]~input_o\);

-- Location: LCCOMB_X19_Y4_N30
\U1|ShiftReg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ShiftReg~3_combout\ = (\U2|result~q\ & ((!\ASCII[1]~input_o\))) # (!\U2|result~q\ & (\U1|ShiftReg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ShiftReg\(4),
	datac => \ASCII[1]~input_o\,
	datad => \U2|result~q\,
	combout => \U1|ShiftReg~3_combout\);

-- Location: FF_X19_Y4_N31
\U1|ShiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|ShiftReg~3_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ShiftReg\(3));

-- Location: LCCOMB_X19_Y4_N24
\U1|ShiftReg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ShiftReg~2_combout\ = (\U2|result~q\ & (!\ASCII[0]~input_o\)) # (!\U2|result~q\ & ((\U1|ShiftReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ASCII[0]~input_o\,
	datac => \U1|ShiftReg\(3),
	datad => \U2|result~q\,
	combout => \U1|ShiftReg~2_combout\);

-- Location: FF_X19_Y4_N25
\U1|ShiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|ShiftReg~2_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ShiftReg\(2));

-- Location: LCCOMB_X19_Y4_N18
\U1|ShiftReg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ShiftReg~1_combout\ = (\U1|ShiftReg\(2)) # (\U2|result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ShiftReg\(2),
	datad => \U2|result~q\,
	combout => \U1|ShiftReg~1_combout\);

-- Location: FF_X19_Y4_N19
\U1|ShiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|ShiftReg~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ShiftReg\(1));

-- Location: LCCOMB_X19_Y4_N28
\U1|ShiftReg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|ShiftReg~0_combout\ = (\U1|ShiftReg\(1) & !\U2|result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ShiftReg\(1),
	datad => \U2|result~q\,
	combout => \U1|ShiftReg~0_combout\);

-- Location: FF_X19_Y4_N29
\U1|ShiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|ShiftReg~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ShiftReg\(0));

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

ww_Tx <= \Tx~output_o\;
END structure;



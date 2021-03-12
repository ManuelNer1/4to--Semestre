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

-- DATE "02/26/2021 21:19:09"

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
	Clk : IN std_logic;
	Rst : IN std_logic;
	Data : IN std_logic;
	AP : BUFFER std_logic;
	AT : BUFFER std_logic;
	RD : BUFFER std_logic;
	RI : BUFFER std_logic;
	PC : BUFFER std_logic;
	MM : BUFFER std_logic;
	OFF : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Top;

-- Design Ports Information
-- AP	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AT	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RI	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MM	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OFF[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OFF[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OFF[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OFF[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_Data : std_logic;
SIGNAL ww_AP : std_logic;
SIGNAL ww_AT : std_logic;
SIGNAL ww_RD : std_logic;
SIGNAL ww_RI : std_logic;
SIGNAL ww_PC : std_logic;
SIGNAL ww_MM : std_logic;
SIGNAL ww_OFF : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \AP~output_o\ : std_logic;
SIGNAL \AT~output_o\ : std_logic;
SIGNAL \RD~output_o\ : std_logic;
SIGNAL \RI~output_o\ : std_logic;
SIGNAL \PC~output_o\ : std_logic;
SIGNAL \MM~output_o\ : std_logic;
SIGNAL \OFF[0]~output_o\ : std_logic;
SIGNAL \OFF[1]~output_o\ : std_logic;
SIGNAL \OFF[2]~output_o\ : std_logic;
SIGNAL \OFF[3]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U2|pres_state.Inicio~0_combout\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|OscCount~12_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|OscCount~11_combout\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|Equal0~5_combout\ : std_logic;
SIGNAL \U1|Equal0~6_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|Add0~19\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|Add0~21\ : std_logic;
SIGNAL \U1|Add0~22_combout\ : std_logic;
SIGNAL \U1|OscCount~10_combout\ : std_logic;
SIGNAL \U1|Add0~23\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|OscCount~9_combout\ : std_logic;
SIGNAL \U1|Add0~25\ : std_logic;
SIGNAL \U1|Add0~26_combout\ : std_logic;
SIGNAL \U1|OscCount~8_combout\ : std_logic;
SIGNAL \U1|Add0~27\ : std_logic;
SIGNAL \U1|Add0~28_combout\ : std_logic;
SIGNAL \U1|OscCount~7_combout\ : std_logic;
SIGNAL \U1|Add0~29\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|Add0~31\ : std_logic;
SIGNAL \U1|Add0~32_combout\ : std_logic;
SIGNAL \U1|OscCount~6_combout\ : std_logic;
SIGNAL \U1|Add0~33\ : std_logic;
SIGNAL \U1|Add0~34_combout\ : std_logic;
SIGNAL \U1|Add0~35\ : std_logic;
SIGNAL \U1|Add0~36_combout\ : std_logic;
SIGNAL \U1|OscCount~5_combout\ : std_logic;
SIGNAL \U1|Add0~37\ : std_logic;
SIGNAL \U1|Add0~38_combout\ : std_logic;
SIGNAL \U1|OscCount~4_combout\ : std_logic;
SIGNAL \U1|Add0~39\ : std_logic;
SIGNAL \U1|Add0~40_combout\ : std_logic;
SIGNAL \U1|OscCount~3_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Add0~41\ : std_logic;
SIGNAL \U1|Add0~42_combout\ : std_logic;
SIGNAL \U1|OscCount~2_combout\ : std_logic;
SIGNAL \U1|Add0~43\ : std_logic;
SIGNAL \U1|Add0~44_combout\ : std_logic;
SIGNAL \U1|OscCount~1_combout\ : std_logic;
SIGNAL \U1|Add0~45\ : std_logic;
SIGNAL \U1|Add0~46_combout\ : std_logic;
SIGNAL \U1|Add0~47\ : std_logic;
SIGNAL \U1|Add0~48_combout\ : std_logic;
SIGNAL \U1|OscCount~0_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Equal0~4_combout\ : std_logic;
SIGNAL \U1|Equal0~7_combout\ : std_logic;
SIGNAL \U1|ClkEn~q\ : std_logic;
SIGNAL \U2|pres_state.Inicio~q\ : std_logic;
SIGNAL \U2|pres_state.Memoria~0_combout\ : std_logic;
SIGNAL \U2|pres_state.Memoria~q\ : std_logic;
SIGNAL \U2|pres_state.Instruccion~q\ : std_logic;
SIGNAL \Data~input_o\ : std_logic;
SIGNAL \U2|pres_state~23_combout\ : std_logic;
SIGNAL \U2|pres_state.MemoriaTemp1~q\ : std_logic;
SIGNAL \U2|pres_state.Dato1~feeder_combout\ : std_logic;
SIGNAL \U2|pres_state.Dato1~q\ : std_logic;
SIGNAL \U2|pres_state.AcumTem1~q\ : std_logic;
SIGNAL \U2|pres_state.AcumPer1~q\ : std_logic;
SIGNAL \U2|pres_state~22_combout\ : std_logic;
SIGNAL \U2|pres_state.AcumTem2~q\ : std_logic;
SIGNAL \U2|pres_state.AcumPer2~feeder_combout\ : std_logic;
SIGNAL \U2|pres_state.AcumPer2~q\ : std_logic;
SIGNAL \U2|AP~combout\ : std_logic;
SIGNAL \U2|AT~combout\ : std_logic;
SIGNAL \U2|PC~combout\ : std_logic;
SIGNAL \U2|MM~combout\ : std_logic;
SIGNAL \U1|OscCount\ : std_logic_vector(24 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_Rst <= Rst;
ww_Data <= Data;
AP <= ww_AP;
AT <= ww_AT;
RD <= ww_RD;
RI <= ww_RI;
PC <= ww_PC;
MM <= ww_MM;
OFF <= ww_OFF;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
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

-- Location: IOOBUF_X58_Y54_N23
\AP~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|AP~combout\,
	devoe => ww_devoe,
	o => \AP~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\AT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|AT~combout\,
	devoe => ww_devoe,
	o => \AT~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\RD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|pres_state.Dato1~q\,
	devoe => ww_devoe,
	o => \RD~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\RI~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|pres_state.Instruccion~q\,
	devoe => ww_devoe,
	o => \RI~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\PC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|PC~combout\,
	devoe => ww_devoe,
	o => \PC~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\MM~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|MM~combout\,
	devoe => ww_devoe,
	o => \MM~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\OFF[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OFF[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\OFF[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OFF[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\OFF[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OFF[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\OFF[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OFF[3]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X51_Y53_N18
\U2|pres_state.Inicio~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|pres_state.Inicio~0_combout\ = !\U2|AP~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|AP~combout\,
	combout => \U2|pres_state.Inicio~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: LCCOMB_X55_Y53_N8
\U1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|OscCount\(0) $ (VCC)
-- \U1|Add0~1\ = CARRY(\U1|OscCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(0),
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X55_Y53_N6
\U1|OscCount~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|OscCount~12_combout\ = (\U1|Add0~0_combout\ & !\U1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~0_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|OscCount~12_combout\);

-- Location: FF_X55_Y53_N7
\U1|OscCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|OscCount~12_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(0));

-- Location: LCCOMB_X55_Y53_N10
\U1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|OscCount\(1) & (!\U1|Add0~1\)) # (!\U1|OscCount\(1) & ((\U1|Add0~1\) # (GND)))
-- \U1|Add0~3\ = CARRY((!\U1|Add0~1\) # (!\U1|OscCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(1),
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: FF_X55_Y53_N11
\U1|OscCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~2_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(1));

-- Location: LCCOMB_X55_Y53_N12
\U1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = (\U1|OscCount\(2) & (\U1|Add0~3\ $ (GND))) # (!\U1|OscCount\(2) & (!\U1|Add0~3\ & VCC))
-- \U1|Add0~5\ = CARRY((\U1|OscCount\(2) & !\U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(2),
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: FF_X55_Y53_N13
\U1|OscCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~4_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(2));

-- Location: LCCOMB_X55_Y53_N14
\U1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|OscCount\(3) & (!\U1|Add0~5\)) # (!\U1|OscCount\(3) & ((\U1|Add0~5\) # (GND)))
-- \U1|Add0~7\ = CARRY((!\U1|Add0~5\) # (!\U1|OscCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|OscCount\(3),
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: FF_X55_Y53_N15
\U1|OscCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~6_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(3));

-- Location: LCCOMB_X55_Y53_N16
\U1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|OscCount\(4) & (\U1|Add0~7\ $ (GND))) # (!\U1|OscCount\(4) & (!\U1|Add0~7\ & VCC))
-- \U1|Add0~9\ = CARRY((\U1|OscCount\(4) & !\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|OscCount\(4),
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: FF_X55_Y53_N17
\U1|OscCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~8_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(4));

-- Location: LCCOMB_X55_Y53_N18
\U1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|OscCount\(5) & (!\U1|Add0~9\)) # (!\U1|OscCount\(5) & ((\U1|Add0~9\) # (GND)))
-- \U1|Add0~11\ = CARRY((!\U1|Add0~9\) # (!\U1|OscCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|OscCount\(5),
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: FF_X55_Y53_N19
\U1|OscCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~10_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(5));

-- Location: LCCOMB_X55_Y53_N20
\U1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = (\U1|OscCount\(6) & (\U1|Add0~11\ $ (GND))) # (!\U1|OscCount\(6) & (!\U1|Add0~11\ & VCC))
-- \U1|Add0~13\ = CARRY((\U1|OscCount\(6) & !\U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|OscCount\(6),
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: LCCOMB_X55_Y53_N0
\U1|OscCount~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|OscCount~11_combout\ = (\U1|Add0~12_combout\ & !\U1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~12_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|OscCount~11_combout\);

-- Location: FF_X55_Y53_N1
\U1|OscCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|OscCount~11_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(6));

-- Location: LCCOMB_X55_Y53_N22
\U1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|OscCount\(7) & (!\U1|Add0~13\)) # (!\U1|OscCount\(7) & ((\U1|Add0~13\) # (GND)))
-- \U1|Add0~15\ = CARRY((!\U1|Add0~13\) # (!\U1|OscCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(7),
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: FF_X55_Y53_N23
\U1|OscCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~14_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(7));

-- Location: LCCOMB_X55_Y53_N24
\U1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|OscCount\(8) & (\U1|Add0~15\ $ (GND))) # (!\U1|OscCount\(8) & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|OscCount\(8) & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|OscCount\(8),
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: FF_X55_Y53_N25
\U1|OscCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~16_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(8));

-- Location: LCCOMB_X55_Y53_N2
\U1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~5_combout\ = (\U1|OscCount\(6) & (!\U1|OscCount\(5) & (!\U1|OscCount\(7) & !\U1|OscCount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(6),
	datab => \U1|OscCount\(5),
	datac => \U1|OscCount\(7),
	datad => \U1|OscCount\(8),
	combout => \U1|Equal0~5_combout\);

-- Location: LCCOMB_X55_Y53_N4
\U1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~6_combout\ = (!\U1|OscCount\(4) & (!\U1|OscCount\(1) & (!\U1|OscCount\(2) & !\U1|OscCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(4),
	datab => \U1|OscCount\(1),
	datac => \U1|OscCount\(2),
	datad => \U1|OscCount\(3),
	combout => \U1|Equal0~6_combout\);

-- Location: LCCOMB_X55_Y53_N26
\U1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|OscCount\(9) & (!\U1|Add0~17\)) # (!\U1|OscCount\(9) & ((\U1|Add0~17\) # (GND)))
-- \U1|Add0~19\ = CARRY((!\U1|Add0~17\) # (!\U1|OscCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(9),
	datad => VCC,
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\,
	cout => \U1|Add0~19\);

-- Location: FF_X55_Y53_N27
\U1|OscCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~18_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(9));

-- Location: LCCOMB_X55_Y53_N28
\U1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|OscCount\(10) & (\U1|Add0~19\ $ (GND))) # (!\U1|OscCount\(10) & (!\U1|Add0~19\ & VCC))
-- \U1|Add0~21\ = CARRY((\U1|OscCount\(10) & !\U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|OscCount\(10),
	datad => VCC,
	cin => \U1|Add0~19\,
	combout => \U1|Add0~20_combout\,
	cout => \U1|Add0~21\);

-- Location: FF_X55_Y53_N29
\U1|OscCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~20_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(10));

-- Location: LCCOMB_X55_Y53_N30
\U1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~22_combout\ = (\U1|OscCount\(11) & (!\U1|Add0~21\)) # (!\U1|OscCount\(11) & ((\U1|Add0~21\) # (GND)))
-- \U1|Add0~23\ = CARRY((!\U1|Add0~21\) # (!\U1|OscCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|OscCount\(11),
	datad => VCC,
	cin => \U1|Add0~21\,
	combout => \U1|Add0~22_combout\,
	cout => \U1|Add0~23\);

-- Location: LCCOMB_X54_Y52_N26
\U1|OscCount~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|OscCount~10_combout\ = (\U1|Add0~22_combout\ & !\U1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~22_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|OscCount~10_combout\);

-- Location: FF_X54_Y52_N27
\U1|OscCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|OscCount~10_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(11));

-- Location: LCCOMB_X55_Y52_N0
\U1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~24_combout\ = (\U1|OscCount\(12) & (\U1|Add0~23\ $ (GND))) # (!\U1|OscCount\(12) & (!\U1|Add0~23\ & VCC))
-- \U1|Add0~25\ = CARRY((\U1|OscCount\(12) & !\U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|OscCount\(12),
	datad => VCC,
	cin => \U1|Add0~23\,
	combout => \U1|Add0~24_combout\,
	cout => \U1|Add0~25\);

-- Location: LCCOMB_X54_Y52_N20
\U1|OscCount~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|OscCount~9_combout\ = (\U1|Add0~24_combout\ & !\U1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~24_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|OscCount~9_combout\);

-- Location: FF_X54_Y52_N21
\U1|OscCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|OscCount~9_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(12));

-- Location: LCCOMB_X55_Y52_N2
\U1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~26_combout\ = (\U1|OscCount\(13) & (!\U1|Add0~25\)) # (!\U1|OscCount\(13) & ((\U1|Add0~25\) # (GND)))
-- \U1|Add0~27\ = CARRY((!\U1|Add0~25\) # (!\U1|OscCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(13),
	datad => VCC,
	cin => \U1|Add0~25\,
	combout => \U1|Add0~26_combout\,
	cout => \U1|Add0~27\);

-- Location: LCCOMB_X55_Y52_N26
\U1|OscCount~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|OscCount~8_combout\ = (!\U1|Equal0~7_combout\ & \U1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal0~7_combout\,
	datad => \U1|Add0~26_combout\,
	combout => \U1|OscCount~8_combout\);

-- Location: FF_X55_Y52_N27
\U1|OscCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|OscCount~8_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(13));

-- Location: LCCOMB_X55_Y52_N4
\U1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~28_combout\ = (\U1|OscCount\(14) & (\U1|Add0~27\ $ (GND))) # (!\U1|OscCount\(14) & (!\U1|Add0~27\ & VCC))
-- \U1|Add0~29\ = CARRY((\U1|OscCount\(14) & !\U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|OscCount\(14),
	datad => VCC,
	cin => \U1|Add0~27\,
	combout => \U1|Add0~28_combout\,
	cout => \U1|Add0~29\);

-- Location: LCCOMB_X54_Y52_N24
\U1|OscCount~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|OscCount~7_combout\ = (!\U1|Equal0~7_combout\ & \U1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~7_combout\,
	datad => \U1|Add0~28_combout\,
	combout => \U1|OscCount~7_combout\);

-- Location: FF_X54_Y52_N25
\U1|OscCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|OscCount~7_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(14));

-- Location: LCCOMB_X55_Y52_N6
\U1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~30_combout\ = (\U1|OscCount\(15) & (!\U1|Add0~29\)) # (!\U1|OscCount\(15) & ((\U1|Add0~29\) # (GND)))
-- \U1|Add0~31\ = CARRY((!\U1|Add0~29\) # (!\U1|OscCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(15),
	datad => VCC,
	cin => \U1|Add0~29\,
	combout => \U1|Add0~30_combout\,
	cout => \U1|Add0~31\);

-- Location: FF_X55_Y52_N7
\U1|OscCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~30_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(15));

-- Location: LCCOMB_X55_Y52_N8
\U1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~32_combout\ = (\U1|OscCount\(16) & (\U1|Add0~31\ $ (GND))) # (!\U1|OscCount\(16) & (!\U1|Add0~31\ & VCC))
-- \U1|Add0~33\ = CARRY((\U1|OscCount\(16) & !\U1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|OscCount\(16),
	datad => VCC,
	cin => \U1|Add0~31\,
	combout => \U1|Add0~32_combout\,
	cout => \U1|Add0~33\);

-- Location: LCCOMB_X55_Y52_N28
\U1|OscCount~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|OscCount~6_combout\ = (!\U1|Equal0~7_combout\ & \U1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~7_combout\,
	datac => \U1|Add0~32_combout\,
	combout => \U1|OscCount~6_combout\);

-- Location: FF_X55_Y52_N29
\U1|OscCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|OscCount~6_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(16));

-- Location: LCCOMB_X55_Y52_N10
\U1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~34_combout\ = (\U1|OscCount\(17) & (!\U1|Add0~33\)) # (!\U1|OscCount\(17) & ((\U1|Add0~33\) # (GND)))
-- \U1|Add0~35\ = CARRY((!\U1|Add0~33\) # (!\U1|OscCount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(17),
	datad => VCC,
	cin => \U1|Add0~33\,
	combout => \U1|Add0~34_combout\,
	cout => \U1|Add0~35\);

-- Location: FF_X55_Y52_N11
\U1|OscCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~34_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(17));

-- Location: LCCOMB_X55_Y52_N12
\U1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~36_combout\ = (\U1|OscCount\(18) & (\U1|Add0~35\ $ (GND))) # (!\U1|OscCount\(18) & (!\U1|Add0~35\ & VCC))
-- \U1|Add0~37\ = CARRY((\U1|OscCount\(18) & !\U1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(18),
	datad => VCC,
	cin => \U1|Add0~35\,
	combout => \U1|Add0~36_combout\,
	cout => \U1|Add0~37\);

-- Location: LCCOMB_X55_Y52_N30
\U1|OscCount~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|OscCount~5_combout\ = (!\U1|Equal0~7_combout\ & \U1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal0~7_combout\,
	datad => \U1|Add0~36_combout\,
	combout => \U1|OscCount~5_combout\);

-- Location: FF_X55_Y52_N31
\U1|OscCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|OscCount~5_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(18));

-- Location: LCCOMB_X55_Y52_N14
\U1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~38_combout\ = (\U1|OscCount\(19) & (!\U1|Add0~37\)) # (!\U1|OscCount\(19) & ((\U1|Add0~37\) # (GND)))
-- \U1|Add0~39\ = CARRY((!\U1|Add0~37\) # (!\U1|OscCount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(19),
	datad => VCC,
	cin => \U1|Add0~37\,
	combout => \U1|Add0~38_combout\,
	cout => \U1|Add0~39\);

-- Location: LCCOMB_X54_Y52_N8
\U1|OscCount~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|OscCount~4_combout\ = (\U1|Add0~38_combout\ & !\U1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~38_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|OscCount~4_combout\);

-- Location: FF_X54_Y52_N9
\U1|OscCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|OscCount~4_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(19));

-- Location: LCCOMB_X55_Y52_N16
\U1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~40_combout\ = (\U1|OscCount\(20) & (\U1|Add0~39\ $ (GND))) # (!\U1|OscCount\(20) & (!\U1|Add0~39\ & VCC))
-- \U1|Add0~41\ = CARRY((\U1|OscCount\(20) & !\U1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|OscCount\(20),
	datad => VCC,
	cin => \U1|Add0~39\,
	combout => \U1|Add0~40_combout\,
	cout => \U1|Add0~41\);

-- Location: LCCOMB_X54_Y52_N30
\U1|OscCount~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|OscCount~3_combout\ = (!\U1|Equal0~7_combout\ & \U1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~7_combout\,
	datad => \U1|Add0~40_combout\,
	combout => \U1|OscCount~3_combout\);

-- Location: FF_X54_Y52_N31
\U1|OscCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|OscCount~3_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(20));

-- Location: LCCOMB_X54_Y52_N22
\U1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (\U1|OscCount\(20) & (\U1|OscCount\(19) & (!\U1|OscCount\(17) & \U1|OscCount\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(20),
	datab => \U1|OscCount\(19),
	datac => \U1|OscCount\(17),
	datad => \U1|OscCount\(18),
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X55_Y52_N18
\U1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~42_combout\ = (\U1|OscCount\(21) & (!\U1|Add0~41\)) # (!\U1|OscCount\(21) & ((\U1|Add0~41\) # (GND)))
-- \U1|Add0~43\ = CARRY((!\U1|Add0~41\) # (!\U1|OscCount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(21),
	datad => VCC,
	cin => \U1|Add0~41\,
	combout => \U1|Add0~42_combout\,
	cout => \U1|Add0~43\);

-- Location: LCCOMB_X54_Y52_N10
\U1|OscCount~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|OscCount~2_combout\ = (!\U1|Equal0~7_combout\ & \U1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~7_combout\,
	datad => \U1|Add0~42_combout\,
	combout => \U1|OscCount~2_combout\);

-- Location: FF_X54_Y52_N11
\U1|OscCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|OscCount~2_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(21));

-- Location: LCCOMB_X55_Y52_N20
\U1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~44_combout\ = (\U1|OscCount\(22) & (\U1|Add0~43\ $ (GND))) # (!\U1|OscCount\(22) & (!\U1|Add0~43\ & VCC))
-- \U1|Add0~45\ = CARRY((\U1|OscCount\(22) & !\U1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(22),
	datad => VCC,
	cin => \U1|Add0~43\,
	combout => \U1|Add0~44_combout\,
	cout => \U1|Add0~45\);

-- Location: LCCOMB_X54_Y52_N16
\U1|OscCount~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|OscCount~1_combout\ = (\U1|Add0~44_combout\ & !\U1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~44_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|OscCount~1_combout\);

-- Location: FF_X54_Y52_N17
\U1|OscCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|OscCount~1_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(22));

-- Location: LCCOMB_X55_Y52_N22
\U1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~46_combout\ = (\U1|OscCount\(23) & (!\U1|Add0~45\)) # (!\U1|OscCount\(23) & ((\U1|Add0~45\) # (GND)))
-- \U1|Add0~47\ = CARRY((!\U1|Add0~45\) # (!\U1|OscCount\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(23),
	datad => VCC,
	cin => \U1|Add0~45\,
	combout => \U1|Add0~46_combout\,
	cout => \U1|Add0~47\);

-- Location: FF_X55_Y52_N23
\U1|OscCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Add0~46_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(23));

-- Location: LCCOMB_X55_Y52_N24
\U1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~48_combout\ = \U1|Add0~47\ $ (!\U1|OscCount\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|OscCount\(24),
	cin => \U1|Add0~47\,
	combout => \U1|Add0~48_combout\);

-- Location: LCCOMB_X54_Y52_N14
\U1|OscCount~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|OscCount~0_combout\ = (!\U1|Equal0~7_combout\ & \U1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~7_combout\,
	datad => \U1|Add0~48_combout\,
	combout => \U1|OscCount~0_combout\);

-- Location: FF_X54_Y52_N15
\U1|OscCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|OscCount~0_combout\,
	clrn => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|OscCount\(24));

-- Location: LCCOMB_X54_Y52_N28
\U1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\U1|OscCount\(21) & (\U1|OscCount\(22) & (\U1|OscCount\(24) & !\U1|OscCount\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(21),
	datab => \U1|OscCount\(22),
	datac => \U1|OscCount\(24),
	datad => \U1|OscCount\(23),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y52_N4
\U1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = (\U1|OscCount\(11) & (\U1|OscCount\(12) & (!\U1|OscCount\(9) & !\U1|OscCount\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(11),
	datab => \U1|OscCount\(12),
	datac => \U1|OscCount\(9),
	datad => \U1|OscCount\(10),
	combout => \U1|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y52_N6
\U1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (!\U1|OscCount\(15) & (\U1|OscCount\(14) & (\U1|OscCount\(13) & \U1|OscCount\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|OscCount\(15),
	datab => \U1|OscCount\(14),
	datac => \U1|OscCount\(13),
	datad => \U1|OscCount\(16),
	combout => \U1|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y52_N18
\U1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~4_combout\ = (\U1|Equal0~1_combout\ & (\U1|Equal0~0_combout\ & (\U1|Equal0~3_combout\ & \U1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~1_combout\,
	datab => \U1|Equal0~0_combout\,
	datac => \U1|Equal0~3_combout\,
	datad => \U1|Equal0~2_combout\,
	combout => \U1|Equal0~4_combout\);

-- Location: LCCOMB_X54_Y52_N0
\U1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~7_combout\ = (\U1|Equal0~5_combout\ & (!\U1|OscCount\(0) & (\U1|Equal0~6_combout\ & \U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~5_combout\,
	datab => \U1|OscCount\(0),
	datac => \U1|Equal0~6_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|Equal0~7_combout\);

-- Location: FF_X54_Y52_N1
\U1|ClkEn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U1|Equal0~7_combout\,
	ena => \Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ClkEn~q\);

-- Location: FF_X51_Y53_N19
\U2|pres_state.Inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|pres_state.Inicio~0_combout\,
	clrn => \Rst~input_o\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|pres_state.Inicio~q\);

-- Location: LCCOMB_X51_Y53_N22
\U2|pres_state.Memoria~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|pres_state.Memoria~0_combout\ = !\U2|pres_state.Inicio~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|pres_state.Inicio~q\,
	combout => \U2|pres_state.Memoria~0_combout\);

-- Location: FF_X51_Y53_N23
\U2|pres_state.Memoria\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|pres_state.Memoria~0_combout\,
	clrn => \Rst~input_o\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|pres_state.Memoria~q\);

-- Location: FF_X51_Y53_N27
\U2|pres_state.Instruccion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \U2|pres_state.Memoria~q\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|pres_state.Instruccion~q\);

-- Location: IOIBUF_X51_Y54_N29
\Data~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data,
	o => \Data~input_o\);

-- Location: LCCOMB_X51_Y53_N12
\U2|pres_state~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|pres_state~23_combout\ = (\U2|pres_state.Instruccion~q\ & \Data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|pres_state.Instruccion~q\,
	datad => \Data~input_o\,
	combout => \U2|pres_state~23_combout\);

-- Location: FF_X51_Y53_N13
\U2|pres_state.MemoriaTemp1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|pres_state~23_combout\,
	clrn => \Rst~input_o\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|pres_state.MemoriaTemp1~q\);

-- Location: LCCOMB_X51_Y53_N4
\U2|pres_state.Dato1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|pres_state.Dato1~feeder_combout\ = \U2|pres_state.MemoriaTemp1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|pres_state.MemoriaTemp1~q\,
	combout => \U2|pres_state.Dato1~feeder_combout\);

-- Location: FF_X51_Y53_N5
\U2|pres_state.Dato1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|pres_state.Dato1~feeder_combout\,
	clrn => \Rst~input_o\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|pres_state.Dato1~q\);

-- Location: FF_X51_Y53_N9
\U2|pres_state.AcumTem1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \U2|pres_state.Dato1~q\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|pres_state.AcumTem1~q\);

-- Location: FF_X51_Y53_N25
\U2|pres_state.AcumPer1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \U2|pres_state.AcumTem1~q\,
	clrn => \Rst~input_o\,
	sload => VCC,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|pres_state.AcumPer1~q\);

-- Location: LCCOMB_X51_Y53_N6
\U2|pres_state~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|pres_state~22_combout\ = (\U2|pres_state.Instruccion~q\ & !\Data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|pres_state.Instruccion~q\,
	datad => \Data~input_o\,
	combout => \U2|pres_state~22_combout\);

-- Location: FF_X51_Y53_N7
\U2|pres_state.AcumTem2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|pres_state~22_combout\,
	clrn => \Rst~input_o\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|pres_state.AcumTem2~q\);

-- Location: LCCOMB_X51_Y53_N10
\U2|pres_state.AcumPer2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|pres_state.AcumPer2~feeder_combout\ = \U2|pres_state.AcumTem2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|pres_state.AcumTem2~q\,
	combout => \U2|pres_state.AcumPer2~feeder_combout\);

-- Location: FF_X51_Y53_N11
\U2|pres_state.AcumPer2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \U2|pres_state.AcumPer2~feeder_combout\,
	clrn => \Rst~input_o\,
	ena => \U1|ClkEn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|pres_state.AcumPer2~q\);

-- Location: LCCOMB_X51_Y53_N24
\U2|AP\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|AP~combout\ = (\U2|pres_state.AcumPer1~q\) # (\U2|pres_state.AcumPer2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|pres_state.AcumPer1~q\,
	datad => \U2|pres_state.AcumPer2~q\,
	combout => \U2|AP~combout\);

-- Location: LCCOMB_X51_Y53_N8
\U2|AT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|AT~combout\ = (\U2|pres_state.AcumTem1~q\) # (\U2|pres_state.AcumTem2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|pres_state.AcumTem1~q\,
	datad => \U2|pres_state.AcumTem2~q\,
	combout => \U2|AT~combout\);

-- Location: LCCOMB_X51_Y53_N28
\U2|PC\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|PC~combout\ = (\U2|pres_state.Dato1~q\) # (\U2|pres_state.Instruccion~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|pres_state.Dato1~q\,
	datac => \U2|pres_state.Instruccion~q\,
	combout => \U2|PC~combout\);

-- Location: LCCOMB_X51_Y53_N26
\U2|MM\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|MM~combout\ = (\U2|pres_state.MemoriaTemp1~q\) # (\U2|pres_state.Memoria~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|pres_state.MemoriaTemp1~q\,
	datac => \U2|pres_state.Memoria~q\,
	combout => \U2|MM~combout\);

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

ww_AP <= \AP~output_o\;

ww_AT <= \AT~output_o\;

ww_RD <= \RD~output_o\;

ww_RI <= \RI~output_o\;

ww_PC <= \PC~output_o\;

ww_MM <= \MM~output_o\;

ww_OFF(0) <= \OFF[0]~output_o\;

ww_OFF(1) <= \OFF[1]~output_o\;

ww_OFF(2) <= \OFF[2]~output_o\;

ww_OFF(3) <= \OFF[3]~output_o\;
END structure;



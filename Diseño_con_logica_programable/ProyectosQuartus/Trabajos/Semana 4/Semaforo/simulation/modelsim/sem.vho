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

-- DATE "03/01/2021 16:53:46"

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

ENTITY 	sem IS
    PORT (
	Clk : IN std_logic;
	Rst : IN std_logic;
	Red : BUFFER std_logic;
	Amber : BUFFER std_logic;
	Green : BUFFER std_logic;
	LEDsOFF : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END sem;

-- Design Ports Information
-- Red	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Amber	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDsOFF[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDsOFF[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDsOFF[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDsOFF[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDsOFF[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDsOFF[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDsOFF[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sem IS
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
SIGNAL ww_Red : std_logic;
SIGNAL ww_Amber : std_logic;
SIGNAL ww_Green : std_logic;
SIGNAL ww_LEDsOFF : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Red~output_o\ : std_logic;
SIGNAL \Amber~output_o\ : std_logic;
SIGNAL \Green~output_o\ : std_logic;
SIGNAL \LEDsOFF[0]~output_o\ : std_logic;
SIGNAL \LEDsOFF[1]~output_o\ : std_logic;
SIGNAL \LEDsOFF[2]~output_o\ : std_logic;
SIGNAL \LEDsOFF[3]~output_o\ : std_logic;
SIGNAL \LEDsOFF[4]~output_o\ : std_logic;
SIGNAL \LEDsOFF[5]~output_o\ : std_logic;
SIGNAL \LEDsOFF[6]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Cont~11_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Cont~10_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Cont~9_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Cont~8_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Cont~7_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Cont~6_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Cont~5_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Cont~4_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Cont~3_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Cont~2_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Cont~1_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Cont~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Timebase~q\ : std_logic;
SIGNAL \pres_state.St_Green~q\ : std_logic;
SIGNAL \pres_state.St_Amber~feeder_combout\ : std_logic;
SIGNAL \pres_state.St_Amber~q\ : std_logic;
SIGNAL \pres_state.St_Red~0_combout\ : std_logic;
SIGNAL \pres_state.St_Red~q\ : std_logic;
SIGNAL \pres_state.St_RedAmber~0_combout\ : std_logic;
SIGNAL \pres_state.St_RedAmber~q\ : std_logic;
SIGNAL \Red~0_combout\ : std_logic;
SIGNAL \Amber~0_combout\ : std_logic;
SIGNAL Cont : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_Rst~input_o\ : std_logic;
SIGNAL \ALT_INV_Amber~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_Rst <= Rst;
Red <= ww_Red;
Amber <= ww_Amber;
Green <= ww_Green;
LEDsOFF <= ww_LEDsOFF;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Rst~input_o\ <= NOT \Rst~input_o\;
\ALT_INV_Amber~0_combout\ <= NOT \Amber~0_combout\;
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

-- Location: IOOBUF_X51_Y54_N16
\Red~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Red~0_combout\,
	devoe => ww_devoe,
	o => \Red~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Amber~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Amber~0_combout\,
	devoe => ww_devoe,
	o => \Amber~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\Green~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pres_state.St_Green~q\,
	devoe => ww_devoe,
	o => \Green~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDsOFF[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDsOFF[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDsOFF[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDsOFF[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDsOFF[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDsOFF[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDsOFF[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDsOFF[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDsOFF[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDsOFF[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDsOFF[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDsOFF[5]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDsOFF[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDsOFF[6]~output_o\);

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

-- Location: IOIBUF_X69_Y54_N1
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

-- Location: LCCOMB_X52_Y51_N6
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = Cont(0) $ (VCC)
-- \Add0~1\ = CARRY(Cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X52_Y51_N7
\Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(0));

-- Location: LCCOMB_X52_Y51_N8
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (Cont(1) & (!\Add0~1\)) # (!Cont(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!Cont(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X52_Y51_N9
\Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(1));

-- Location: LCCOMB_X52_Y51_N10
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (Cont(2) & (\Add0~3\ $ (GND))) # (!Cont(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((Cont(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X52_Y51_N11
\Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(2));

-- Location: LCCOMB_X52_Y51_N12
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (Cont(3) & (!\Add0~5\)) # (!Cont(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!Cont(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X52_Y51_N13
\Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(3));

-- Location: LCCOMB_X52_Y51_N14
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (Cont(4) & (\Add0~7\ $ (GND))) # (!Cont(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((Cont(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X52_Y51_N15
\Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(4));

-- Location: LCCOMB_X52_Y51_N16
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (Cont(5) & (!\Add0~9\)) # (!Cont(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!Cont(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X52_Y51_N17
\Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(5));

-- Location: LCCOMB_X52_Y51_N18
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (Cont(6) & (\Add0~11\ $ (GND))) # (!Cont(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((Cont(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X52_Y51_N19
\Cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(6));

-- Location: LCCOMB_X52_Y51_N20
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (Cont(7) & (!\Add0~13\)) # (!Cont(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!Cont(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X52_Y51_N4
\Cont~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont~11_combout\ = (\Add0~14_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => \Equal0~8_combout\,
	combout => \Cont~11_combout\);

-- Location: FF_X52_Y51_N5
\Cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~11_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(7));

-- Location: LCCOMB_X52_Y51_N22
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (Cont(8) & (\Add0~15\ $ (GND))) # (!Cont(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((Cont(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X52_Y51_N23
\Cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(8));

-- Location: LCCOMB_X52_Y51_N24
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (Cont(9) & (!\Add0~17\)) # (!Cont(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!Cont(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X52_Y51_N25
\Cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(9));

-- Location: LCCOMB_X52_Y51_N26
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (Cont(10) & (\Add0~19\ $ (GND))) # (!Cont(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((Cont(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X52_Y51_N27
\Cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(10));

-- Location: LCCOMB_X52_Y51_N28
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (Cont(11) & (!\Add0~21\)) # (!Cont(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!Cont(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X52_Y51_N29
\Cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(11));

-- Location: LCCOMB_X52_Y51_N30
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (Cont(12) & (\Add0~23\ $ (GND))) # (!Cont(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((Cont(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X51_Y50_N10
\Cont~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont~10_combout\ = (\Add0~24_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \Equal0~8_combout\,
	combout => \Cont~10_combout\);

-- Location: FF_X51_Y50_N11
\Cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~10_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(12));

-- Location: LCCOMB_X52_Y50_N0
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (Cont(13) & (!\Add0~25\)) # (!Cont(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!Cont(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X51_Y50_N4
\Cont~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont~9_combout\ = (\Add0~26_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \Equal0~8_combout\,
	combout => \Cont~9_combout\);

-- Location: FF_X51_Y50_N5
\Cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~9_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(13));

-- Location: LCCOMB_X52_Y50_N2
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (Cont(14) & (\Add0~27\ $ (GND))) # (!Cont(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((Cont(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X52_Y50_N30
\Cont~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont~8_combout\ = (!\Equal0~8_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~28_combout\,
	combout => \Cont~8_combout\);

-- Location: FF_X52_Y50_N31
\Cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~8_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(14));

-- Location: LCCOMB_X52_Y50_N4
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (Cont(15) & (!\Add0~29\)) # (!Cont(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!Cont(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X51_Y50_N20
\Cont~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont~7_combout\ = (!\Equal0~8_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~30_combout\,
	combout => \Cont~7_combout\);

-- Location: FF_X51_Y50_N21
\Cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~7_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(15));

-- Location: LCCOMB_X52_Y50_N6
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (Cont(16) & (\Add0~31\ $ (GND))) # (!Cont(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((Cont(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X52_Y50_N7
\Cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(16));

-- Location: LCCOMB_X52_Y50_N8
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (Cont(17) & (!\Add0~33\)) # (!Cont(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!Cont(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X51_Y50_N6
\Cont~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont~6_combout\ = (\Add0~34_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~34_combout\,
	datad => \Equal0~8_combout\,
	combout => \Cont~6_combout\);

-- Location: FF_X51_Y50_N7
\Cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~6_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(17));

-- Location: LCCOMB_X51_Y50_N30
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (Cont(17) & (Cont(15) & (Cont(14) & !Cont(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(17),
	datab => Cont(15),
	datac => Cont(14),
	datad => Cont(16),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X52_Y50_N10
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (Cont(18) & (\Add0~35\ $ (GND))) # (!Cont(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((Cont(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X52_Y50_N11
\Cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(18));

-- Location: LCCOMB_X52_Y50_N12
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (Cont(19) & (!\Add0~37\)) # (!Cont(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!Cont(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X52_Y50_N28
\Cont~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont~5_combout\ = (!\Equal0~8_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~38_combout\,
	combout => \Cont~5_combout\);

-- Location: FF_X52_Y50_N29
\Cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~5_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(19));

-- Location: LCCOMB_X52_Y50_N14
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (Cont(20) & (\Add0~39\ $ (GND))) # (!Cont(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((Cont(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X51_Y50_N26
\Cont~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont~4_combout\ = (\Add0~40_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~40_combout\,
	datad => \Equal0~8_combout\,
	combout => \Cont~4_combout\);

-- Location: FF_X51_Y50_N27
\Cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~4_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(20));

-- Location: LCCOMB_X52_Y50_N16
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (Cont(21) & (!\Add0~41\)) # (!Cont(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!Cont(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X51_Y50_N16
\Cont~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont~3_combout\ = (!\Equal0~8_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~42_combout\,
	combout => \Cont~3_combout\);

-- Location: FF_X51_Y50_N17
\Cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~3_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(21));

-- Location: LCCOMB_X52_Y50_N18
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (Cont(22) & (\Add0~43\ $ (GND))) # (!Cont(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((Cont(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X52_Y50_N26
\Cont~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont~2_combout\ = (!\Equal0~8_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~44_combout\,
	combout => \Cont~2_combout\);

-- Location: FF_X52_Y50_N27
\Cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~2_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(22));

-- Location: LCCOMB_X52_Y50_N20
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (Cont(23) & (!\Add0~45\)) # (!Cont(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!Cont(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X51_Y50_N24
\Cont~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont~1_combout\ = (\Add0~46_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~46_combout\,
	datad => \Equal0~8_combout\,
	combout => \Cont~1_combout\);

-- Location: FF_X51_Y50_N25
\Cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(23));

-- Location: LCCOMB_X52_Y50_N22
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (Cont(24) & (\Add0~47\ $ (GND))) # (!Cont(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((Cont(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X52_Y50_N23
\Cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(24));

-- Location: LCCOMB_X52_Y50_N24
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \Add0~49\ $ (Cont(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Cont(25),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X51_Y50_N14
\Cont~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont~0_combout\ = (!\Equal0~8_combout\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~50_combout\,
	combout => \Cont~0_combout\);

-- Location: FF_X51_Y50_N15
\Cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cont~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(25));

-- Location: LCCOMB_X51_Y50_N18
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!Cont(24) & (Cont(23) & (Cont(25) & Cont(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(24),
	datab => Cont(23),
	datac => Cont(25),
	datad => Cont(22),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X51_Y50_N8
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (Cont(20) & (Cont(21) & (!Cont(18) & Cont(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(20),
	datab => Cont(21),
	datac => Cont(18),
	datad => Cont(19),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X51_Y50_N28
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (Cont(12) & (!Cont(11) & (Cont(13) & !Cont(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(12),
	datab => Cont(11),
	datac => Cont(13),
	datad => Cont(10),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X51_Y50_N22
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X52_Y51_N2
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (Cont(5) & (Cont(3) & (Cont(2) & Cont(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(5),
	datab => Cont(3),
	datac => Cont(2),
	datad => Cont(4),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X52_Y51_N0
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (Cont(0) & Cont(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Cont(0),
	datad => Cont(1),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X51_Y51_N24
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!Cont(7) & (!Cont(9) & (Cont(6) & !Cont(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(7),
	datab => Cont(9),
	datac => Cont(6),
	datad => Cont(8),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X51_Y50_N12
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~4_combout\ & (\Equal0~6_combout\ & (\Equal0~7_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~8_combout\);

-- Location: FF_X51_Y50_N13
Timebase : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Equal0~8_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Timebase~q\);

-- Location: FF_X50_Y50_N1
\pres_state.St_Green\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \pres_state.St_RedAmber~q\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	ena => \Timebase~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.St_Green~q\);

-- Location: LCCOMB_X50_Y50_N16
\pres_state.St_Amber~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pres_state.St_Amber~feeder_combout\ = \pres_state.St_Green~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pres_state.St_Green~q\,
	combout => \pres_state.St_Amber~feeder_combout\);

-- Location: FF_X50_Y50_N17
\pres_state.St_Amber\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pres_state.St_Amber~feeder_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \Timebase~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.St_Amber~q\);

-- Location: LCCOMB_X50_Y50_N18
\pres_state.St_Red~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pres_state.St_Red~0_combout\ = !\pres_state.St_Amber~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pres_state.St_Amber~q\,
	combout => \pres_state.St_Red~0_combout\);

-- Location: FF_X50_Y50_N19
\pres_state.St_Red\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pres_state.St_Red~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \Timebase~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.St_Red~q\);

-- Location: LCCOMB_X50_Y50_N8
\pres_state.St_RedAmber~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pres_state.St_RedAmber~0_combout\ = !\pres_state.St_Red~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pres_state.St_Red~q\,
	combout => \pres_state.St_RedAmber~0_combout\);

-- Location: FF_X50_Y50_N9
\pres_state.St_RedAmber\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \pres_state.St_RedAmber~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \Timebase~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pres_state.St_RedAmber~q\);

-- Location: LCCOMB_X50_Y50_N0
\Red~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Red~0_combout\ = (\pres_state.St_RedAmber~q\) # (!\pres_state.St_Red~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pres_state.St_RedAmber~q\,
	datad => \pres_state.St_Red~q\,
	combout => \Red~0_combout\);

-- Location: LCCOMB_X50_Y50_N14
\Amber~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Amber~0_combout\ = (\pres_state.St_Green~q\) # (!\pres_state.St_Red~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pres_state.St_Red~q\,
	datad => \pres_state.St_Green~q\,
	combout => \Amber~0_combout\);

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

ww_Red <= \Red~output_o\;

ww_Amber <= \Amber~output_o\;

ww_Green <= \Green~output_o\;

ww_LEDsOFF(0) <= \LEDsOFF[0]~output_o\;

ww_LEDsOFF(1) <= \LEDsOFF[1]~output_o\;

ww_LEDsOFF(2) <= \LEDsOFF[2]~output_o\;

ww_LEDsOFF(3) <= \LEDsOFF[3]~output_o\;

ww_LEDsOFF(4) <= \LEDsOFF[4]~output_o\;

ww_LEDsOFF(5) <= \LEDsOFF[5]~output_o\;

ww_LEDsOFF(6) <= \LEDsOFF[6]~output_o\;
END structure;



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

-- DATE "02/16/2021 13:25:45"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Uno IS
    PORT (
	a138196 : IN std_logic_vector(3 DOWNTO 0);
	b138196 : IN std_logic_vector(3 DOWNTO 0);
	Cin138196 : IN std_logic;
	Sum138196 : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END Uno;

-- Design Ports Information
-- Sum138196[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum138196[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum138196[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum138196[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum138196[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a138196[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b138196[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin138196	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b138196[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a138196[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a138196[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b138196[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a138196[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b138196[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Uno IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a138196 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b138196 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cin138196 : std_logic;
SIGNAL ww_Sum138196 : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Sum138196[0]~output_o\ : std_logic;
SIGNAL \Sum138196[1]~output_o\ : std_logic;
SIGNAL \Sum138196[2]~output_o\ : std_logic;
SIGNAL \Sum138196[3]~output_o\ : std_logic;
SIGNAL \Sum138196[4]~output_o\ : std_logic;
SIGNAL \b138196[0]~input_o\ : std_logic;
SIGNAL \a138196[0]~input_o\ : std_logic;
SIGNAL \Cin138196~input_o\ : std_logic;
SIGNAL \FA0|Sum~0_combout\ : std_logic;
SIGNAL \a138196[1]~input_o\ : std_logic;
SIGNAL \b138196[1]~input_o\ : std_logic;
SIGNAL \FA0|cout~0_combout\ : std_logic;
SIGNAL \FA1|Sum~combout\ : std_logic;
SIGNAL \FA1|cout~0_combout\ : std_logic;
SIGNAL \a138196[2]~input_o\ : std_logic;
SIGNAL \b138196[2]~input_o\ : std_logic;
SIGNAL \FA2|Sum~combout\ : std_logic;
SIGNAL \a138196[3]~input_o\ : std_logic;
SIGNAL \FA2|cout~0_combout\ : std_logic;
SIGNAL \b138196[3]~input_o\ : std_logic;
SIGNAL \FA3|Sum~combout\ : std_logic;
SIGNAL \FA3|cout~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a138196 <= a138196;
ww_b138196 <= b138196;
ww_Cin138196 <= Cin138196;
Sum138196 <= ww_Sum138196;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N8
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

-- Location: IOOBUF_X46_Y54_N2
\Sum138196[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA0|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum138196[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Sum138196[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA1|Sum~combout\,
	devoe => ww_devoe,
	o => \Sum138196[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\Sum138196[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA2|Sum~combout\,
	devoe => ww_devoe,
	o => \Sum138196[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\Sum138196[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|Sum~combout\,
	devoe => ww_devoe,
	o => \Sum138196[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\Sum138196[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|cout~0_combout\,
	devoe => ww_devoe,
	o => \Sum138196[4]~output_o\);

-- Location: IOIBUF_X54_Y54_N22
\b138196[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b138196(0),
	o => \b138196[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\a138196[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a138196(0),
	o => \a138196[0]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\Cin138196~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin138196,
	o => \Cin138196~input_o\);

-- Location: LCCOMB_X52_Y51_N16
\FA0|Sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA0|Sum~0_combout\ = \b138196[0]~input_o\ $ (\a138196[0]~input_o\ $ (\Cin138196~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b138196[0]~input_o\,
	datab => \a138196[0]~input_o\,
	datac => \Cin138196~input_o\,
	combout => \FA0|Sum~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\a138196[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a138196(1),
	o => \a138196[1]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\b138196[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b138196(1),
	o => \b138196[1]~input_o\);

-- Location: LCCOMB_X52_Y51_N10
\FA0|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA0|cout~0_combout\ = (\b138196[0]~input_o\ & ((\a138196[0]~input_o\) # (\Cin138196~input_o\))) # (!\b138196[0]~input_o\ & (\a138196[0]~input_o\ & \Cin138196~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b138196[0]~input_o\,
	datab => \a138196[0]~input_o\,
	datac => \Cin138196~input_o\,
	combout => \FA0|cout~0_combout\);

-- Location: LCCOMB_X52_Y51_N4
\FA1|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA1|Sum~combout\ = \a138196[1]~input_o\ $ (\b138196[1]~input_o\ $ (\FA0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a138196[1]~input_o\,
	datac => \b138196[1]~input_o\,
	datad => \FA0|cout~0_combout\,
	combout => \FA1|Sum~combout\);

-- Location: LCCOMB_X52_Y51_N6
\FA1|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA1|cout~0_combout\ = (\a138196[1]~input_o\ & ((\b138196[1]~input_o\) # (\FA0|cout~0_combout\))) # (!\a138196[1]~input_o\ & (\b138196[1]~input_o\ & \FA0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a138196[1]~input_o\,
	datac => \b138196[1]~input_o\,
	datad => \FA0|cout~0_combout\,
	combout => \FA1|cout~0_combout\);

-- Location: IOIBUF_X51_Y54_N1
\a138196[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a138196(2),
	o => \a138196[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\b138196[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b138196(2),
	o => \b138196[2]~input_o\);

-- Location: LCCOMB_X52_Y51_N8
\FA2|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA2|Sum~combout\ = \FA1|cout~0_combout\ $ (\a138196[2]~input_o\ $ (\b138196[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA1|cout~0_combout\,
	datab => \a138196[2]~input_o\,
	datad => \b138196[2]~input_o\,
	combout => \FA2|Sum~combout\);

-- Location: IOIBUF_X54_Y54_N29
\a138196[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a138196(3),
	o => \a138196[3]~input_o\);

-- Location: LCCOMB_X52_Y51_N26
\FA2|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA2|cout~0_combout\ = (\FA1|cout~0_combout\ & ((\a138196[2]~input_o\) # (\b138196[2]~input_o\))) # (!\FA1|cout~0_combout\ & (\a138196[2]~input_o\ & \b138196[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA1|cout~0_combout\,
	datab => \a138196[2]~input_o\,
	datad => \b138196[2]~input_o\,
	combout => \FA2|cout~0_combout\);

-- Location: IOIBUF_X58_Y54_N29
\b138196[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b138196(3),
	o => \b138196[3]~input_o\);

-- Location: LCCOMB_X52_Y51_N28
\FA3|Sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA3|Sum~combout\ = \a138196[3]~input_o\ $ (\FA2|cout~0_combout\ $ (\b138196[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a138196[3]~input_o\,
	datac => \FA2|cout~0_combout\,
	datad => \b138196[3]~input_o\,
	combout => \FA3|Sum~combout\);

-- Location: LCCOMB_X52_Y51_N30
\FA3|cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FA3|cout~0_combout\ = (\a138196[3]~input_o\ & ((\FA2|cout~0_combout\) # (\b138196[3]~input_o\))) # (!\a138196[3]~input_o\ & (\FA2|cout~0_combout\ & \b138196[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a138196[3]~input_o\,
	datac => \FA2|cout~0_combout\,
	datad => \b138196[3]~input_o\,
	combout => \FA3|cout~0_combout\);

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

ww_Sum138196(0) <= \Sum138196[0]~output_o\;

ww_Sum138196(1) <= \Sum138196[1]~output_o\;

ww_Sum138196(2) <= \Sum138196[2]~output_o\;

ww_Sum138196(3) <= \Sum138196[3]~output_o\;

ww_Sum138196(4) <= \Sum138196[4]~output_o\;
END structure;



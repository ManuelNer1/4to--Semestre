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

-- DATE "02/13/2021 17:52:53"

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

ENTITY 	Decoder IS
    PORT (
	entrada : IN std_logic_vector(6 DOWNTO 0);
	salida : OUT std_logic_vector(3 DOWNTO 0)
	);
END Decoder;

-- Design Ports Information
-- salida[0]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_salida : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \salida~0_combout\ : std_logic;
SIGNAL \salida~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \salida~4_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \salida~3_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \salida~5_combout\ : std_logic;
SIGNAL \salida~2_combout\ : std_logic;
SIGNAL \salida~6_combout\ : std_logic;
SIGNAL \salida~7_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entrada <= entrada;
salida <= ww_salida;
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

-- Location: LCCOMB_X44_Y43_N24
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

-- Location: IOOBUF_X20_Y0_N2
\salida[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida~1_combout\,
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\salida[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida~6_combout\,
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\salida[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida~7_combout\,
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\salida[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOIBUF_X22_Y0_N8
\entrada[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\entrada[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: IOIBUF_X22_Y0_N29
\entrada[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N29
\entrada[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

-- Location: IOIBUF_X24_Y0_N15
\entrada[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\entrada[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: LCCOMB_X22_Y1_N16
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\entrada[5]~input_o\ & (\entrada[3]~input_o\ & (\entrada[0]~input_o\ & \entrada[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[5]~input_o\,
	datab => \entrada[3]~input_o\,
	datac => \entrada[0]~input_o\,
	datad => \entrada[1]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X22_Y0_N22
\entrada[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

-- Location: LCCOMB_X22_Y1_N10
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\entrada[6]~input_o\ & (!\entrada[0]~input_o\ & !\entrada[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[6]~input_o\,
	datac => \entrada[0]~input_o\,
	datad => \entrada[3]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X22_Y1_N28
\salida~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~0_combout\ = (\Equal2~0_combout\) # ((\Equal6~0_combout\ & ((!\entrada[5]~input_o\) # (!\entrada[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \entrada[5]~input_o\,
	datad => \Equal6~0_combout\,
	combout => \salida~0_combout\);

-- Location: LCCOMB_X22_Y1_N22
\salida~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~1_combout\ = (\entrada[2]~input_o\ & (!\entrada[4]~input_o\ & \salida~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[2]~input_o\,
	datac => \entrada[4]~input_o\,
	datad => \salida~0_combout\,
	combout => \salida~1_combout\);

-- Location: LCCOMB_X22_Y1_N8
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\entrada[1]~input_o\ & (!\entrada[2]~input_o\ & (!\entrada[4]~input_o\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \entrada[2]~input_o\,
	datac => \entrada[4]~input_o\,
	datad => \Equal6~0_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X22_Y1_N18
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\entrada[2]~input_o\ & (!\entrada[4]~input_o\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[2]~input_o\,
	datac => \entrada[4]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X22_Y1_N30
\salida~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~4_combout\ = (\entrada[5]~input_o\ & (!\Equal1~0_combout\ & ((\entrada[6]~input_o\) # (!\Equal2~1_combout\)))) # (!\entrada[5]~input_o\ & (((\entrada[6]~input_o\) # (!\Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[5]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \entrada[6]~input_o\,
	datad => \Equal2~1_combout\,
	combout => \salida~4_combout\);

-- Location: LCCOMB_X22_Y1_N2
\Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\entrada[6]~input_o\ & (!\entrada[0]~input_o\ & !\entrada[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[6]~input_o\,
	datac => \entrada[0]~input_o\,
	datad => \entrada[1]~input_o\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X22_Y1_N6
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\entrada[1]~input_o\ & (\entrada[2]~input_o\ & (!\entrada[4]~input_o\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \entrada[2]~input_o\,
	datac => \entrada[4]~input_o\,
	datad => \Equal6~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y1_N24
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\entrada[5]~input_o\ & (\entrada[2]~input_o\ & (!\entrada[4]~input_o\ & \entrada[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[5]~input_o\,
	datab => \entrada[2]~input_o\,
	datac => \entrada[4]~input_o\,
	datad => \entrada[3]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X22_Y1_N20
\salida~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~3_combout\ = (\entrada[5]~input_o\ & (!\Equal0~0_combout\ & ((!\Equal5~0_combout\) # (!\Equal5~1_combout\)))) # (!\entrada[5]~input_o\ & (((!\Equal5~0_combout\)) # (!\Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[5]~input_o\,
	datab => \Equal5~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \salida~3_combout\);

-- Location: LCCOMB_X22_Y1_N0
\Equal6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\entrada[1]~input_o\ & (!\entrada[6]~input_o\ & (!\entrada[0]~input_o\ & !\entrada[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \entrada[6]~input_o\,
	datac => \entrada[0]~input_o\,
	datad => \entrada[3]~input_o\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X22_Y1_N26
\salida~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~5_combout\ = (\entrada[5]~input_o\) # ((\entrada[2]~input_o\ $ (!\entrada[4]~input_o\)) # (!\Equal6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[5]~input_o\,
	datab => \entrada[2]~input_o\,
	datac => \entrada[4]~input_o\,
	datad => \Equal6~1_combout\,
	combout => \salida~5_combout\);

-- Location: LCCOMB_X22_Y1_N12
\salida~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~2_combout\ = (\entrada[5]~input_o\ & (((!\Equal2~1_combout\) # (!\entrada[6]~input_o\)))) # (!\entrada[5]~input_o\ & (!\Equal1~0_combout\ & ((!\Equal2~1_combout\) # (!\entrada[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[5]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \entrada[6]~input_o\,
	datad => \Equal2~1_combout\,
	combout => \salida~2_combout\);

-- Location: LCCOMB_X22_Y1_N4
\salida~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~6_combout\ = (\salida~2_combout\ & (((!\salida~4_combout\ & \salida~3_combout\)) # (!\salida~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida~4_combout\,
	datab => \salida~3_combout\,
	datac => \salida~5_combout\,
	datad => \salida~2_combout\,
	combout => \salida~6_combout\);

-- Location: LCCOMB_X22_Y1_N14
\salida~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~7_combout\ = (\salida~5_combout\ & (\salida~2_combout\ & ((!\salida~3_combout\) # (!\salida~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida~4_combout\,
	datab => \salida~3_combout\,
	datac => \salida~5_combout\,
	datad => \salida~2_combout\,
	combout => \salida~7_combout\);

-- Location: LCCOMB_X21_Y1_N0
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\entrada[5]~input_o\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada[5]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

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

ww_salida(0) <= \salida[0]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;
END structure;



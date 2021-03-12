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

-- DATE "02/20/2021 12:48:55"

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

ENTITY 	evidencia IS
    PORT (
	rs : IN std_logic_vector(3 DOWNTO 0);
	op2 : IN std_logic_vector(3 DOWNTO 0);
	opcion : IN std_logic_vector(2 DOWNTO 0);
	cin : IN std_logic;
	rd : OUT std_logic_vector(3 DOWNTO 0);
	salida : OUT std_logic_vector(6 DOWNTO 0);
	salida1 : OUT std_logic_vector(6 DOWNTO 0);
	salida2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END evidencia;

-- Design Ports Information
-- rd[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcion[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcion[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcion[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF evidencia IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rs : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_op2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_opcion : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_rd : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_salida : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_salida1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_salida2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \salida1[6]~12clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rd[3]~57clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sum[4]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \salida2[6]~25clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \rd[0]~output_o\ : std_logic;
SIGNAL \rd[1]~output_o\ : std_logic;
SIGNAL \rd[2]~output_o\ : std_logic;
SIGNAL \rd[3]~output_o\ : std_logic;
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \salida[4]~output_o\ : std_logic;
SIGNAL \salida[5]~output_o\ : std_logic;
SIGNAL \salida[6]~output_o\ : std_logic;
SIGNAL \salida1[0]~output_o\ : std_logic;
SIGNAL \salida1[1]~output_o\ : std_logic;
SIGNAL \salida1[2]~output_o\ : std_logic;
SIGNAL \salida1[3]~output_o\ : std_logic;
SIGNAL \salida1[4]~output_o\ : std_logic;
SIGNAL \salida1[5]~output_o\ : std_logic;
SIGNAL \salida1[6]~output_o\ : std_logic;
SIGNAL \salida2[0]~output_o\ : std_logic;
SIGNAL \salida2[1]~output_o\ : std_logic;
SIGNAL \salida2[2]~output_o\ : std_logic;
SIGNAL \salida2[3]~output_o\ : std_logic;
SIGNAL \salida2[4]~output_o\ : std_logic;
SIGNAL \salida2[5]~output_o\ : std_logic;
SIGNAL \salida2[6]~output_o\ : std_logic;
SIGNAL \opcion[0]~input_o\ : std_logic;
SIGNAL \op2[0]~input_o\ : std_logic;
SIGNAL \rs[0]~input_o\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \op2[2]~input_o\ : std_logic;
SIGNAL \rs[2]~input_o\ : std_logic;
SIGNAL \op2[1]~input_o\ : std_logic;
SIGNAL \rs[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \opcion[1]~input_o\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \num[2]~2_combout\ : std_logic;
SIGNAL \opcion[2]~input_o\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \Add1~2_cout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \sum[4]~0_combout\ : std_logic;
SIGNAL \sum[4]~0clkctrl_outclk\ : std_logic;
SIGNAL \num[2]~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \num[0]~6_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \num[0]~7_combout\ : std_logic;
SIGNAL \rs[3]~input_o\ : std_logic;
SIGNAL \op2[3]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \num[3]~0_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \num[3]~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \num[1]~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \num[1]~5_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \rd[0]~19_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \rd~17_combout\ : std_logic;
SIGNAL \rd~14_combout\ : std_logic;
SIGNAL \rd[0]~18_combout\ : std_logic;
SIGNAL \rd[0]~20_combout\ : std_logic;
SIGNAL \Equal11~3_combout\ : std_logic;
SIGNAL \rd~61_combout\ : std_logic;
SIGNAL \rd~60_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \rd~15_combout\ : std_logic;
SIGNAL \rd~16_combout\ : std_logic;
SIGNAL \rd[0]~21_combout\ : std_logic;
SIGNAL \rd[0]~23_combout\ : std_logic;
SIGNAL \rd[0]~24_combout\ : std_logic;
SIGNAL \rd[0]~22_combout\ : std_logic;
SIGNAL \rd[0]~25_combout\ : std_logic;
SIGNAL \rd[0]~26_combout\ : std_logic;
SIGNAL \rd[3]~57_combout\ : std_logic;
SIGNAL \rd[3]~57clkctrl_outclk\ : std_logic;
SIGNAL \rd[0]$latch~combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \rd[1]~29_combout\ : std_logic;
SIGNAL \rd[1]~58_combout\ : std_logic;
SIGNAL \rd[1]~30_combout\ : std_logic;
SIGNAL \rd[1]~31_combout\ : std_logic;
SIGNAL \rd~27_combout\ : std_logic;
SIGNAL \rd~28_combout\ : std_logic;
SIGNAL \rd[1]~32_combout\ : std_logic;
SIGNAL \rd~33_combout\ : std_logic;
SIGNAL \rd[1]~35_combout\ : std_logic;
SIGNAL \rd[1]~34_combout\ : std_logic;
SIGNAL \rd[1]~36_combout\ : std_logic;
SIGNAL \rd[1]~37_combout\ : std_logic;
SIGNAL \rd[1]$latch~combout\ : std_logic;
SIGNAL \rd~59_combout\ : std_logic;
SIGNAL \Equal11~2_combout\ : std_logic;
SIGNAL \Equal11~4_combout\ : std_logic;
SIGNAL \Equal11~7_combout\ : std_logic;
SIGNAL \rd~38_combout\ : std_logic;
SIGNAL \rd~39_combout\ : std_logic;
SIGNAL \rd~40_combout\ : std_logic;
SIGNAL \rd[2]~42_combout\ : std_logic;
SIGNAL \rd[2]~41_combout\ : std_logic;
SIGNAL \rd[2]~43_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \rd[2]~44_combout\ : std_logic;
SIGNAL \rd~45_combout\ : std_logic;
SIGNAL \rd[2]~62_combout\ : std_logic;
SIGNAL \rd[2]~63_combout\ : std_logic;
SIGNAL \rd[2]~46_combout\ : std_logic;
SIGNAL \rd[2]$latch~combout\ : std_logic;
SIGNAL \rd[3]~47_combout\ : std_logic;
SIGNAL \rd~49_combout\ : std_logic;
SIGNAL \rd[3]~48_combout\ : std_logic;
SIGNAL \rd[3]~50_combout\ : std_logic;
SIGNAL \rd[3]~51_combout\ : std_logic;
SIGNAL \rd[3]~52_combout\ : std_logic;
SIGNAL \rd[3]~53_combout\ : std_logic;
SIGNAL \rd[3]~54_combout\ : std_logic;
SIGNAL \rd[3]~55_combout\ : std_logic;
SIGNAL \rd[3]$latch~combout\ : std_logic;
SIGNAL \salida[0]~29_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \salida[0]~61_combout\ : std_logic;
SIGNAL \salida[0]~30_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \salida~28_combout\ : std_logic;
SIGNAL \salida[0]~31_combout\ : std_logic;
SIGNAL \salida[0]$latch~combout\ : std_logic;
SIGNAL \salida~33_combout\ : std_logic;
SIGNAL \Equal11~6_combout\ : std_logic;
SIGNAL \salida[1]~55_combout\ : std_logic;
SIGNAL \salida[1]~32_combout\ : std_logic;
SIGNAL \salida[4]~56_combout\ : std_logic;
SIGNAL \salida[1]~34_combout\ : std_logic;
SIGNAL \salida[1]$latch~combout\ : std_logic;
SIGNAL \salida~35_combout\ : std_logic;
SIGNAL \salida[2]~62_combout\ : std_logic;
SIGNAL \salida[2]~63_combout\ : std_logic;
SIGNAL \salida[2]~36_combout\ : std_logic;
SIGNAL \salida[2]$latch~combout\ : std_logic;
SIGNAL \salida~37_combout\ : std_logic;
SIGNAL \salida[3]~39_combout\ : std_logic;
SIGNAL \salida[3]~38_combout\ : std_logic;
SIGNAL \salida[3]~41_combout\ : std_logic;
SIGNAL \salida[3]~40_combout\ : std_logic;
SIGNAL \Equal11~5_combout\ : std_logic;
SIGNAL \salida[3]~42_combout\ : std_logic;
SIGNAL \salida[3]~57_combout\ : std_logic;
SIGNAL \salida[3]$latch~combout\ : std_logic;
SIGNAL \Equal11~8_combout\ : std_logic;
SIGNAL \salida[4]~43_combout\ : std_logic;
SIGNAL \salida[4]~44_combout\ : std_logic;
SIGNAL \salida[4]~45_combout\ : std_logic;
SIGNAL \salida[4]~46_combout\ : std_logic;
SIGNAL \salida[4]$latch~combout\ : std_logic;
SIGNAL \salida~60_combout\ : std_logic;
SIGNAL \salida[5]~58_combout\ : std_logic;
SIGNAL \salida[5]~48_combout\ : std_logic;
SIGNAL \salida[5]~49_combout\ : std_logic;
SIGNAL \rd~56_combout\ : std_logic;
SIGNAL \salida[5]~47_combout\ : std_logic;
SIGNAL \salida[5]~59_combout\ : std_logic;
SIGNAL \salida[5]$latch~combout\ : std_logic;
SIGNAL \salida[6]~51_combout\ : std_logic;
SIGNAL \salida~52_combout\ : std_logic;
SIGNAL \salida[6]~53_combout\ : std_logic;
SIGNAL \salida~50_combout\ : std_logic;
SIGNAL \salida[6]~54_combout\ : std_logic;
SIGNAL \salida[6]$latch~combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \cout~combout\ : std_logic;
SIGNAL \salida1[5]~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \salida1[6]~9_combout\ : std_logic;
SIGNAL \salida2[5]~29_combout\ : std_logic;
SIGNAL \salida1[6]~10_combout\ : std_logic;
SIGNAL \salida1[6]~11_combout\ : std_logic;
SIGNAL \salida1[6]~12_combout\ : std_logic;
SIGNAL \salida1[6]~12clkctrl_outclk\ : std_logic;
SIGNAL \salida1[0]$latch~combout\ : std_logic;
SIGNAL \salida1[1]$latch~combout\ : std_logic;
SIGNAL \salida1[6]~13_combout\ : std_logic;
SIGNAL \salida1[6]$latch~combout\ : std_logic;
SIGNAL \salida2[5]~20_combout\ : std_logic;
SIGNAL \salida2[5]~21_combout\ : std_logic;
SIGNAL \salida2[5]~22_combout\ : std_logic;
SIGNAL \salida2[6]~28_combout\ : std_logic;
SIGNAL \salida2[6]~24_combout\ : std_logic;
SIGNAL \salida2[6]~30_combout\ : std_logic;
SIGNAL \salida2[6]~23_combout\ : std_logic;
SIGNAL \salida2[6]~25_combout\ : std_logic;
SIGNAL \salida2[6]~25clkctrl_outclk\ : std_logic;
SIGNAL \salida2[0]$latch~combout\ : std_logic;
SIGNAL \salida2[2]~26_combout\ : std_logic;
SIGNAL \salida2[2]~27_combout\ : std_logic;
SIGNAL \salida2[1]$latch~combout\ : std_logic;
SIGNAL num : std_logic_vector(3 DOWNTO 0);
SIGNAL sum : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rs <= rs;
ww_op2 <= op2;
ww_opcion <= opcion;
ww_cin <= cin;
rd <= ww_rd;
salida <= ww_salida;
salida1 <= ww_salida1;
salida2 <= ww_salida2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\salida1[6]~12clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \salida1[6]~12_combout\);

\rd[3]~57clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rd[3]~57_combout\);

\sum[4]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sum[4]~0_combout\);

\salida2[6]~25clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \salida2[6]~25_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
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
\rd[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rd[0]$latch~combout\,
	devoe => ww_devoe,
	o => \rd[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\rd[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rd[1]$latch~combout\,
	devoe => ww_devoe,
	o => \rd[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\rd[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rd[2]$latch~combout\,
	devoe => ww_devoe,
	o => \rd[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\rd[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rd[3]$latch~combout\,
	devoe => ww_devoe,
	o => \rd[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\salida[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida[0]$latch~combout\,
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\salida[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida[1]$latch~combout\,
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\salida[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida[2]$latch~combout\,
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\salida[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida[3]$latch~combout\,
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\salida[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida[4]$latch~combout\,
	devoe => ww_devoe,
	o => \salida[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\salida[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida[5]$latch~combout\,
	devoe => ww_devoe,
	o => \salida[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\salida[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida[6]$latch~combout\,
	devoe => ww_devoe,
	o => \salida[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\salida1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \salida1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\salida1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1[1]$latch~combout\,
	devoe => ww_devoe,
	o => \salida1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\salida1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1[1]$latch~combout\,
	devoe => ww_devoe,
	o => \salida1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\salida1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \salida1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\salida1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \salida1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\salida1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \salida1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\salida1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1[6]$latch~combout\,
	devoe => ww_devoe,
	o => \salida1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\salida2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \salida2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\salida2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \salida2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\salida2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \salida2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\salida2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \salida2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\salida2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \salida2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\salida2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \salida2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\salida2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \salida2[6]~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\opcion[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcion(0),
	o => \opcion[0]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\op2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(0),
	o => \op2[0]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\rs[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs(0),
	o => \rs[0]~input_o\);

-- Location: LCCOMB_X50_Y52_N4
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!\op2[0]~input_o\ & \rs[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[0]~input_o\,
	datac => \rs[0]~input_o\,
	combout => \LessThan0~4_combout\);

-- Location: IOIBUF_X49_Y54_N1
\op2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(2),
	o => \op2[2]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\rs[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs(2),
	o => \rs[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\op2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(1),
	o => \op2[1]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\rs[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs(1),
	o => \rs[1]~input_o\);

-- Location: LCCOMB_X55_Y53_N18
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\op2[0]~input_o\ & (\rs[0]~input_o\ $ (VCC))) # (!\op2[0]~input_o\ & (\rs[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\op2[0]~input_o\ & \rs[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[0]~input_o\,
	datab => \rs[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X55_Y53_N20
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\op2[1]~input_o\ & ((\rs[1]~input_o\ & (\Add0~1\ & VCC)) # (!\rs[1]~input_o\ & (!\Add0~1\)))) # (!\op2[1]~input_o\ & ((\rs[1]~input_o\ & (!\Add0~1\)) # (!\rs[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\op2[1]~input_o\ & (!\rs[1]~input_o\ & !\Add0~1\)) # (!\op2[1]~input_o\ & ((!\Add0~1\) # (!\rs[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2[1]~input_o\,
	datab => \rs[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X55_Y53_N22
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\op2[2]~input_o\ $ (\rs[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\op2[2]~input_o\ & ((\rs[2]~input_o\) # (!\Add0~3\))) # (!\op2[2]~input_o\ & (\rs[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2[2]~input_o\,
	datab => \rs[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: IOIBUF_X51_Y54_N22
\opcion[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcion(1),
	o => \opcion[1]~input_o\);

-- Location: LCCOMB_X55_Y53_N6
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\op2[0]~input_o\ & (\rs[0]~input_o\ $ (VCC))) # (!\op2[0]~input_o\ & ((\rs[0]~input_o\) # (GND)))
-- \Add3~1\ = CARRY((\rs[0]~input_o\) # (!\op2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[0]~input_o\,
	datab => \rs[0]~input_o\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X55_Y53_N8
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\op2[1]~input_o\ & ((\rs[1]~input_o\ & (!\Add3~1\)) # (!\rs[1]~input_o\ & ((\Add3~1\) # (GND))))) # (!\op2[1]~input_o\ & ((\rs[1]~input_o\ & (\Add3~1\ & VCC)) # (!\rs[1]~input_o\ & (!\Add3~1\))))
-- \Add3~3\ = CARRY((\op2[1]~input_o\ & ((!\Add3~1\) # (!\rs[1]~input_o\))) # (!\op2[1]~input_o\ & (!\rs[1]~input_o\ & !\Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2[1]~input_o\,
	datab => \rs[1]~input_o\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X55_Y53_N10
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\op2[2]~input_o\ $ (\rs[2]~input_o\ $ (\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\op2[2]~input_o\ & (\rs[2]~input_o\ & !\Add3~3\)) # (!\op2[2]~input_o\ & ((\rs[2]~input_o\) # (!\Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2[2]~input_o\,
	datab => \rs[2]~input_o\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X51_Y53_N14
\num[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \num[2]~2_combout\ = (!\opcion[0]~input_o\ & ((\opcion[1]~input_o\ & ((\Add3~4_combout\))) # (!\opcion[1]~input_o\ & (\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \opcion[1]~input_o\,
	datac => \opcion[0]~input_o\,
	datad => \Add3~4_combout\,
	combout => \num[2]~2_combout\);

-- Location: IOIBUF_X51_Y54_N1
\opcion[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcion(2),
	o => \opcion[2]~input_o\);

-- Location: LCCOMB_X50_Y53_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = \op2[2]~input_o\ $ (((!\opcion[1]~input_o\ & (!\opcion[2]~input_o\ & \opcion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[1]~input_o\,
	datab => \op2[2]~input_o\,
	datac => \opcion[2]~input_o\,
	datad => \opcion[0]~input_o\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X50_Y53_N2
\Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = \op2[1]~input_o\ $ (((!\opcion[1]~input_o\ & (!\opcion[2]~input_o\ & \opcion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[1]~input_o\,
	datab => \opcion[2]~input_o\,
	datac => \op2[1]~input_o\,
	datad => \opcion[0]~input_o\,
	combout => \Add1~5_combout\);

-- Location: LCCOMB_X50_Y53_N30
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \op2[0]~input_o\ $ (((!\opcion[2]~input_o\ & (!\opcion[1]~input_o\ & \opcion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[0]~input_o\,
	datab => \opcion[2]~input_o\,
	datac => \opcion[1]~input_o\,
	datad => \opcion[0]~input_o\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X50_Y53_N0
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\opcion[0]~input_o\ & (!\opcion[1]~input_o\ & !\opcion[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[0]~input_o\,
	datab => \opcion[1]~input_o\,
	datac => \opcion[2]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X46_Y54_N29
\cin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X50_Y53_N12
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_cout\ = CARRY(\Equal0~3_combout\ $ (!\cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \cin~input_o\,
	datad => VCC,
	cout => \Add1~2_cout\);

-- Location: LCCOMB_X50_Y53_N14
\Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\rs[0]~input_o\ & ((\Add1~0_combout\ & (!\Add1~2_cout\)) # (!\Add1~0_combout\ & (\Add1~2_cout\ & VCC)))) # (!\rs[0]~input_o\ & ((\Add1~0_combout\ & ((\Add1~2_cout\) # (GND))) # (!\Add1~0_combout\ & (!\Add1~2_cout\))))
-- \Add1~4\ = CARRY((\rs[0]~input_o\ & (\Add1~0_combout\ & !\Add1~2_cout\)) # (!\rs[0]~input_o\ & ((\Add1~0_combout\) # (!\Add1~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rs[0]~input_o\,
	datab => \Add1~0_combout\,
	datad => VCC,
	cin => \Add1~2_cout\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X50_Y53_N16
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = ((\rs[1]~input_o\ $ (\Add1~5_combout\ $ (\Add1~4\)))) # (GND)
-- \Add1~7\ = CARRY((\rs[1]~input_o\ & ((!\Add1~4\) # (!\Add1~5_combout\))) # (!\rs[1]~input_o\ & (!\Add1~5_combout\ & !\Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rs[1]~input_o\,
	datab => \Add1~5_combout\,
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X50_Y53_N18
\Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (\rs[2]~input_o\ & ((\Add1~8_combout\ & (!\Add1~7\)) # (!\Add1~8_combout\ & (\Add1~7\ & VCC)))) # (!\rs[2]~input_o\ & ((\Add1~8_combout\ & ((\Add1~7\) # (GND))) # (!\Add1~8_combout\ & (!\Add1~7\))))
-- \Add1~10\ = CARRY((\rs[2]~input_o\ & (\Add1~8_combout\ & !\Add1~7\)) # (!\rs[2]~input_o\ & ((\Add1~8_combout\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rs[2]~input_o\,
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X50_Y53_N24
\sum[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum[4]~0_combout\ = (\opcion[0]~input_o\ & !\opcion[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcion[0]~input_o\,
	datad => \opcion[2]~input_o\,
	combout => \sum[4]~0_combout\);

-- Location: CLKCTRL_G11
\sum[4]~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sum[4]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sum[4]~0clkctrl_outclk\);

-- Location: LCCOMB_X51_Y53_N28
\sum[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sum(2) = (GLOBAL(\sum[4]~0clkctrl_outclk\) & (\Add1~9_combout\)) # (!GLOBAL(\sum[4]~0clkctrl_outclk\) & ((sum(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~9_combout\,
	datac => \sum[4]~0clkctrl_outclk\,
	datad => sum(2),
	combout => sum(2));

-- Location: LCCOMB_X51_Y53_N10
\num[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \num[2]~3_combout\ = (\num[2]~2_combout\) # ((\opcion[0]~input_o\ & sum(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \num[2]~2_combout\,
	datac => \opcion[0]~input_o\,
	datad => sum(2),
	combout => \num[2]~3_combout\);

-- Location: LCCOMB_X51_Y53_N30
\num[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- num(2) = (\opcion[2]~input_o\ & ((num(2)))) # (!\opcion[2]~input_o\ & (\num[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \num[2]~3_combout\,
	datac => num(2),
	datad => \opcion[2]~input_o\,
	combout => num(2));

-- Location: LCCOMB_X50_Y53_N6
\num[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \num[0]~6_combout\ = (!\opcion[0]~input_o\ & ((\opcion[1]~input_o\ & ((\Add3~0_combout\))) # (!\opcion[1]~input_o\ & (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \opcion[0]~input_o\,
	datac => \opcion[1]~input_o\,
	datad => \Add3~0_combout\,
	combout => \num[0]~6_combout\);

-- Location: LCCOMB_X49_Y53_N18
\sum[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sum(0) = (GLOBAL(\sum[4]~0clkctrl_outclk\) & ((\Add1~3_combout\))) # (!GLOBAL(\sum[4]~0clkctrl_outclk\) & (sum(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sum(0),
	datac => \Add1~3_combout\,
	datad => \sum[4]~0clkctrl_outclk\,
	combout => sum(0));

-- Location: LCCOMB_X49_Y53_N6
\num[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \num[0]~7_combout\ = (\num[0]~6_combout\) # ((\opcion[0]~input_o\ & sum(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[0]~6_combout\,
	datac => \opcion[0]~input_o\,
	datad => sum(0),
	combout => \num[0]~7_combout\);

-- Location: LCCOMB_X49_Y53_N30
\num[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- num(0) = (\opcion[2]~input_o\ & (num(0))) # (!\opcion[2]~input_o\ & ((\num[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(0),
	datac => \num[0]~7_combout\,
	datad => \opcion[2]~input_o\,
	combout => num(0));

-- Location: IOIBUF_X49_Y54_N29
\rs[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs(3),
	o => \rs[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\op2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(3),
	o => \op2[3]~input_o\);

-- Location: LCCOMB_X55_Y53_N24
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \rs[3]~input_o\ $ (\Add0~5\ $ (\op2[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rs[3]~input_o\,
	datad => \op2[3]~input_o\,
	cin => \Add0~5\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X55_Y53_N12
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = \rs[3]~input_o\ $ (\Add3~5\ $ (!\op2[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rs[3]~input_o\,
	datad => \op2[3]~input_o\,
	cin => \Add3~5\,
	combout => \Add3~6_combout\);

-- Location: LCCOMB_X55_Y53_N14
\num[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \num[3]~0_combout\ = (!\opcion[0]~input_o\ & ((\opcion[1]~input_o\ & ((\Add3~6_combout\))) # (!\opcion[1]~input_o\ & (\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[0]~input_o\,
	datab => \Add0~6_combout\,
	datac => \opcion[1]~input_o\,
	datad => \Add3~6_combout\,
	combout => \num[3]~0_combout\);

-- Location: LCCOMB_X50_Y53_N10
\Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = \op2[3]~input_o\ $ (((!\opcion[1]~input_o\ & (!\opcion[2]~input_o\ & \opcion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[3]~input_o\,
	datab => \opcion[1]~input_o\,
	datac => \opcion[2]~input_o\,
	datad => \opcion[0]~input_o\,
	combout => \Add1~11_combout\);

-- Location: LCCOMB_X50_Y53_N20
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Add1~11_combout\ $ (\rs[3]~input_o\ $ (\Add1~10\)))) # (GND)
-- \Add1~13\ = CARRY((\Add1~11_combout\ & (\rs[3]~input_o\ & !\Add1~10\)) # (!\Add1~11_combout\ & ((\rs[3]~input_o\) # (!\Add1~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~11_combout\,
	datab => \rs[3]~input_o\,
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X55_Y53_N2
\sum[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sum(3) = (GLOBAL(\sum[4]~0clkctrl_outclk\) & ((\Add1~12_combout\))) # (!GLOBAL(\sum[4]~0clkctrl_outclk\) & (sum(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sum(3),
	datac => \Add1~12_combout\,
	datad => \sum[4]~0clkctrl_outclk\,
	combout => sum(3));

-- Location: LCCOMB_X55_Y53_N28
\num[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \num[3]~1_combout\ = (\num[3]~0_combout\) # ((\opcion[0]~input_o\ & sum(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \num[3]~0_combout\,
	datac => \opcion[0]~input_o\,
	datad => sum(3),
	combout => \num[3]~1_combout\);

-- Location: LCCOMB_X55_Y53_N30
\num[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- num(3) = (\opcion[2]~input_o\ & ((num(3)))) # (!\opcion[2]~input_o\ & (\num[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \num[3]~1_combout\,
	datac => num(3),
	datad => \opcion[2]~input_o\,
	combout => num(3));

-- Location: LCCOMB_X52_Y53_N18
\num[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \num[1]~4_combout\ = (!\opcion[0]~input_o\ & ((\opcion[1]~input_o\ & ((\Add3~2_combout\))) # (!\opcion[1]~input_o\ & (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[0]~input_o\,
	datab => \opcion[1]~input_o\,
	datac => \Add0~2_combout\,
	datad => \Add3~2_combout\,
	combout => \num[1]~4_combout\);

-- Location: LCCOMB_X52_Y53_N24
\sum[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sum(1) = (GLOBAL(\sum[4]~0clkctrl_outclk\) & (\Add1~6_combout\)) # (!GLOBAL(\sum[4]~0clkctrl_outclk\) & ((sum(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => sum(1),
	datad => \sum[4]~0clkctrl_outclk\,
	combout => sum(1));

-- Location: LCCOMB_X52_Y53_N20
\num[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \num[1]~5_combout\ = (\num[1]~4_combout\) # ((\opcion[0]~input_o\ & sum(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \num[1]~4_combout\,
	datac => \opcion[0]~input_o\,
	datad => sum(1),
	combout => \num[1]~5_combout\);

-- Location: LCCOMB_X52_Y53_N30
\num[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- num(1) = (\opcion[2]~input_o\ & ((num(1)))) # (!\opcion[2]~input_o\ & (\num[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[1]~5_combout\,
	datab => num(1),
	datad => \opcion[2]~input_o\,
	combout => num(1));

-- Location: LCCOMB_X52_Y52_N30
\Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (!num(2) & (num(0) & (!num(3) & num(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(0),
	datac => num(3),
	datad => num(1),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X49_Y53_N12
\rd[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[0]~19_combout\ = (\opcion[1]~input_o\) # ((\opcion[2]~input_o\ & ((\op2[0]~input_o\) # (\rs[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[0]~input_o\,
	datab => \rs[0]~input_o\,
	datac => \opcion[1]~input_o\,
	datad => \opcion[2]~input_o\,
	combout => \rd[0]~19_combout\);

-- Location: LCCOMB_X52_Y52_N20
\Equal11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (!num(1) & (num(0) & (!num(3) & !num(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datab => num(0),
	datac => num(3),
	datad => num(2),
	combout => \Equal11~1_combout\);

-- Location: LCCOMB_X55_Y53_N26
\rd~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~17_combout\ = (num(2) & (!num(3) & num(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datac => num(3),
	datad => num(1),
	combout => \rd~17_combout\);

-- Location: LCCOMB_X52_Y52_N14
\rd~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~14_combout\ = (num(3)) # (num(2) $ (((!num(1) & !num(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datab => num(3),
	datac => num(0),
	datad => num(2),
	combout => \rd~14_combout\);

-- Location: LCCOMB_X49_Y53_N24
\rd[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[0]~18_combout\ = (\Equal11~1_combout\ & ((sum(0)) # ((\rd~17_combout\ & \rd~14_combout\)))) # (!\Equal11~1_combout\ & (\rd~17_combout\ & (\rd~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~1_combout\,
	datab => \rd~17_combout\,
	datac => \rd~14_combout\,
	datad => sum(0),
	combout => \rd[0]~18_combout\);

-- Location: LCCOMB_X49_Y53_N16
\rd[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[0]~20_combout\ = (\opcion[2]~input_o\ & (((\rd[0]~19_combout\)))) # (!\opcion[2]~input_o\ & (!\rd[0]~19_combout\ & ((\Equal11~0_combout\) # (\rd[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \opcion[2]~input_o\,
	datac => \rd[0]~19_combout\,
	datad => \rd[0]~18_combout\,
	combout => \rd[0]~20_combout\);

-- Location: LCCOMB_X51_Y52_N30
\Equal11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~3_combout\ = (!num(2) & (!num(1) & (!num(0) & !num(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(1),
	datac => num(0),
	datad => num(3),
	combout => \Equal11~3_combout\);

-- Location: LCCOMB_X49_Y53_N20
\rd~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~61_combout\ = (num(0) & num(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(0),
	datac => num(3),
	combout => \rd~61_combout\);

-- Location: LCCOMB_X49_Y53_N4
\rd~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~60_combout\ = (num(0) & !num(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(0),
	datac => num(3),
	combout => \rd~60_combout\);

-- Location: LCCOMB_X54_Y53_N6
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\rs[1]~input_o\ & (((!\op2[0]~input_o\ & \rs[0]~input_o\)) # (!\op2[1]~input_o\))) # (!\rs[1]~input_o\ & (!\op2[0]~input_o\ & (\rs[0]~input_o\ & !\op2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[0]~input_o\,
	datab => \rs[0]~input_o\,
	datac => \rs[1]~input_o\,
	datad => \op2[1]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X54_Y53_N18
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\op2[2]~input_o\ & (\rs[2]~input_o\ & \LessThan0~2_combout\)) # (!\op2[2]~input_o\ & ((\rs[2]~input_o\) # (\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[2]~input_o\,
	datab => \rs[2]~input_o\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X54_Y53_N28
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\rs[3]~input_o\ & (\LessThan0~7_combout\ & \op2[3]~input_o\)) # (!\rs[3]~input_o\ & ((\LessThan0~7_combout\) # (\op2[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs[3]~input_o\,
	datab => \LessThan0~7_combout\,
	datad => \op2[3]~input_o\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X49_Y53_N10
\rd~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~15_combout\ = (!\Equal11~3_combout\ & ((\LessThan0~3_combout\ & ((\rd~60_combout\))) # (!\LessThan0~3_combout\ & (\rd~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \rd~61_combout\,
	datac => \rd~60_combout\,
	datad => \LessThan0~3_combout\,
	combout => \rd~15_combout\);

-- Location: LCCOMB_X49_Y53_N26
\rd~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~16_combout\ = (\rd~15_combout\) # ((sum(0) & \Equal11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sum(0),
	datac => \rd~15_combout\,
	datad => \Equal11~3_combout\,
	combout => \rd~16_combout\);

-- Location: LCCOMB_X49_Y53_N14
\rd[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[0]~21_combout\ = (\rd[0]~20_combout\ & ((\LessThan0~4_combout\) # ((!\opcion[1]~input_o\)))) # (!\rd[0]~20_combout\ & (((\rd~16_combout\ & \opcion[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \rd[0]~20_combout\,
	datac => \rd~16_combout\,
	datad => \opcion[1]~input_o\,
	combout => \rd[0]~21_combout\);

-- Location: LCCOMB_X50_Y52_N30
\rd[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[0]~23_combout\ = (\opcion[2]~input_o\ & (\op2[0]~input_o\ & (\rs[0]~input_o\))) # (!\opcion[2]~input_o\ & (((\Equal11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[0]~input_o\,
	datab => \rs[0]~input_o\,
	datac => \opcion[2]~input_o\,
	datad => \Equal11~3_combout\,
	combout => \rd[0]~23_combout\);

-- Location: LCCOMB_X49_Y53_N0
\rd[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[0]~24_combout\ = (\opcion[1]~input_o\ & ((\opcion[2]~input_o\ & ((\Add0~0_combout\))) # (!\opcion[2]~input_o\ & (\rd[0]~23_combout\)))) # (!\opcion[1]~input_o\ & (\rd[0]~23_combout\ & ((\opcion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[1]~input_o\,
	datab => \rd[0]~23_combout\,
	datac => \Add0~0_combout\,
	datad => \opcion[2]~input_o\,
	combout => \rd[0]~24_combout\);

-- Location: LCCOMB_X49_Y53_N2
\rd[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[0]~22_combout\ = (\opcion[1]~input_o\ & ((\LessThan0~3_combout\ & ((\rd~60_combout\))) # (!\LessThan0~3_combout\ & (\rd~61_combout\)))) # (!\opcion[1]~input_o\ & (((\rd~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[1]~input_o\,
	datab => \rd~61_combout\,
	datac => \rd~60_combout\,
	datad => \LessThan0~3_combout\,
	combout => \rd[0]~22_combout\);

-- Location: LCCOMB_X49_Y53_N8
\rd[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[0]~25_combout\ = (\rd[0]~24_combout\ & ((\opcion[2]~input_o\) # ((\Add3~0_combout\)))) # (!\rd[0]~24_combout\ & (!\opcion[2]~input_o\ & (\rd[0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd[0]~24_combout\,
	datab => \opcion[2]~input_o\,
	datac => \rd[0]~22_combout\,
	datad => \Add3~0_combout\,
	combout => \rd[0]~25_combout\);

-- Location: LCCOMB_X49_Y53_N22
\rd[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[0]~26_combout\ = (\opcion[0]~input_o\ & (\rd[0]~21_combout\)) # (!\opcion[0]~input_o\ & ((\rd[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[0]~input_o\,
	datab => \rd[0]~21_combout\,
	datac => \rd[0]~25_combout\,
	combout => \rd[0]~26_combout\);

-- Location: LCCOMB_X51_Y52_N24
\rd[3]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[3]~57_combout\ = (\opcion[0]~input_o\) # ((\opcion[1]~input_o\) # ((\opcion[2]~input_o\) # (!\Equal11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[0]~input_o\,
	datab => \opcion[1]~input_o\,
	datac => \Equal11~3_combout\,
	datad => \opcion[2]~input_o\,
	combout => \rd[3]~57_combout\);

-- Location: CLKCTRL_G12
\rd[3]~57clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rd[3]~57clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rd[3]~57clkctrl_outclk\);

-- Location: LCCOMB_X49_Y53_N28
\rd[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[0]$latch~combout\ = (GLOBAL(\rd[3]~57clkctrl_outclk\) & ((\rd[0]~26_combout\))) # (!GLOBAL(\rd[3]~57clkctrl_outclk\) & (\rd[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd[0]$latch~combout\,
	datac => \rd[0]~26_combout\,
	datad => \rd[3]~57clkctrl_outclk\,
	combout => \rd[0]$latch~combout\);

-- Location: LCCOMB_X52_Y53_N12
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!\op2[1]~input_o\ & \rs[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[1]~input_o\,
	datad => \rs[1]~input_o\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X52_Y53_N22
\rd[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[1]~29_combout\ = (\opcion[1]~input_o\) # ((\opcion[2]~input_o\ & ((\rs[1]~input_o\) # (\op2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs[1]~input_o\,
	datab => \opcion[2]~input_o\,
	datac => \op2[1]~input_o\,
	datad => \opcion[1]~input_o\,
	combout => \rd[1]~29_combout\);

-- Location: LCCOMB_X52_Y53_N10
\rd[1]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[1]~58_combout\ = (num(1) & (!num(3) & ((num(0)) # (!num(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datab => num(3),
	datac => num(0),
	datad => num(2),
	combout => \rd[1]~58_combout\);

-- Location: LCCOMB_X52_Y53_N28
\rd[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[1]~30_combout\ = (\opcion[2]~input_o\ & (((\rd[1]~29_combout\)))) # (!\opcion[2]~input_o\ & (!\rd[1]~29_combout\ & ((\Equal11~1_combout\) # (\rd[1]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~1_combout\,
	datab => \opcion[2]~input_o\,
	datac => \rd[1]~29_combout\,
	datad => \rd[1]~58_combout\,
	combout => \rd[1]~30_combout\);

-- Location: LCCOMB_X52_Y53_N6
\rd[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[1]~31_combout\ = (\rd[1]~30_combout\ & (((\opcion[2]~input_o\) # (sum(1))) # (!\Equal11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd[1]~30_combout\,
	datab => \Equal11~1_combout\,
	datac => \opcion[2]~input_o\,
	datad => sum(1),
	combout => \rd[1]~31_combout\);

-- Location: LCCOMB_X52_Y53_N2
\rd~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~27_combout\ = (num(1) & (!\Equal11~3_combout\ & (\LessThan0~3_combout\ $ (num(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => num(3),
	datac => num(1),
	datad => \Equal11~3_combout\,
	combout => \rd~27_combout\);

-- Location: LCCOMB_X52_Y53_N26
\rd~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~28_combout\ = (\rd~27_combout\) # ((\Equal11~3_combout\ & sum(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \rd~27_combout\,
	datad => sum(1),
	combout => \rd~28_combout\);

-- Location: LCCOMB_X52_Y53_N16
\rd[1]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[1]~32_combout\ = (\rd[1]~31_combout\ & ((\LessThan0~5_combout\) # ((!\opcion[1]~input_o\)))) # (!\rd[1]~31_combout\ & (((\rd~28_combout\ & \opcion[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \rd[1]~31_combout\,
	datac => \rd~28_combout\,
	datad => \opcion[1]~input_o\,
	combout => \rd[1]~32_combout\);

-- Location: LCCOMB_X55_Y53_N0
\rd~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~33_combout\ = (num(1) & !num(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datac => num(3),
	combout => \rd~33_combout\);

-- Location: LCCOMB_X52_Y52_N4
\rd[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[1]~35_combout\ = (\op2[1]~input_o\ & (\opcion[1]~input_o\ $ (((\opcion[2]~input_o\ & \rs[1]~input_o\))))) # (!\op2[1]~input_o\ & (\opcion[1]~input_o\ & ((\rs[1]~input_o\) # (!\opcion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[1]~input_o\,
	datab => \opcion[2]~input_o\,
	datac => \opcion[1]~input_o\,
	datad => \rs[1]~input_o\,
	combout => \rd[1]~35_combout\);

-- Location: LCCOMB_X52_Y53_N14
\rd[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[1]~34_combout\ = (\rd~27_combout\) # ((\Add3~2_combout\ & \Equal11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Equal11~3_combout\,
	datad => \rd~27_combout\,
	combout => \rd[1]~34_combout\);

-- Location: LCCOMB_X52_Y53_N0
\rd[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[1]~36_combout\ = (\rd[1]~35_combout\ & (((\rd[1]~34_combout\) # (\opcion[2]~input_o\)))) # (!\rd[1]~35_combout\ & (\rd~33_combout\ & ((!\opcion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~33_combout\,
	datab => \rd[1]~35_combout\,
	datac => \rd[1]~34_combout\,
	datad => \opcion[2]~input_o\,
	combout => \rd[1]~36_combout\);

-- Location: LCCOMB_X52_Y53_N4
\rd[1]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[1]~37_combout\ = (\opcion[0]~input_o\ & (\rd[1]~32_combout\)) # (!\opcion[0]~input_o\ & ((\rd[1]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd[1]~32_combout\,
	datab => \opcion[0]~input_o\,
	datad => \rd[1]~36_combout\,
	combout => \rd[1]~37_combout\);

-- Location: LCCOMB_X52_Y53_N8
\rd[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[1]$latch~combout\ = (GLOBAL(\rd[3]~57clkctrl_outclk\) & ((\rd[1]~37_combout\))) # (!GLOBAL(\rd[3]~57clkctrl_outclk\) & (\rd[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd[1]$latch~combout\,
	datac => \rd[1]~37_combout\,
	datad => \rd[3]~57clkctrl_outclk\,
	combout => \rd[1]$latch~combout\);

-- Location: LCCOMB_X54_Y53_N12
\rd~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~59_combout\ = (num(3) & (num(2) & ((!num(0)) # (!num(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(3),
	datab => num(2),
	datac => num(1),
	datad => num(0),
	combout => \rd~59_combout\);

-- Location: LCCOMB_X54_Y53_N4
\Equal11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~2_combout\ = (num(1) & (num(2) & (num(3) & num(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datab => num(2),
	datac => num(3),
	datad => num(0),
	combout => \Equal11~2_combout\);

-- Location: LCCOMB_X54_Y53_N26
\Equal11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~4_combout\ = (!num(1) & (num(2) & (!num(3) & !num(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datab => num(2),
	datac => num(3),
	datad => num(0),
	combout => \Equal11~4_combout\);

-- Location: LCCOMB_X54_Y53_N24
\Equal11~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~7_combout\ = (!num(1) & (num(2) & (!num(3) & num(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datab => num(2),
	datac => num(3),
	datad => num(0),
	combout => \Equal11~7_combout\);

-- Location: LCCOMB_X54_Y53_N16
\rd~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~38_combout\ = (!\Equal11~4_combout\ & (!\Equal11~7_combout\ & ((!\rd~33_combout\) # (!num(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => \rd~33_combout\,
	datac => \Equal11~4_combout\,
	datad => \Equal11~7_combout\,
	combout => \rd~38_combout\);

-- Location: LCCOMB_X54_Y53_N10
\rd~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~39_combout\ = (\LessThan0~3_combout\ & (((!\rd~38_combout\)))) # (!\LessThan0~3_combout\ & ((\rd~59_combout\) # ((\Equal11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~59_combout\,
	datab => \LessThan0~3_combout\,
	datac => \Equal11~2_combout\,
	datad => \rd~38_combout\,
	combout => \rd~39_combout\);

-- Location: LCCOMB_X51_Y53_N12
\rd~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~40_combout\ = (\Equal11~3_combout\ & ((sum(2)))) # (!\Equal11~3_combout\ & (\rd~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal11~3_combout\,
	datac => \rd~39_combout\,
	datad => sum(2),
	combout => \rd~40_combout\);

-- Location: LCCOMB_X50_Y53_N28
\rd[2]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[2]~42_combout\ = (\opcion[1]~input_o\) # ((\opcion[2]~input_o\ & ((\op2[2]~input_o\) # (\rs[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[2]~input_o\,
	datab => \opcion[1]~input_o\,
	datac => \rs[2]~input_o\,
	datad => \opcion[2]~input_o\,
	combout => \rd[2]~42_combout\);

-- Location: LCCOMB_X51_Y53_N18
\rd[2]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[2]~41_combout\ = (\Equal11~1_combout\ & ((sum(2)) # ((\rd~17_combout\ & \rd~14_combout\)))) # (!\Equal11~1_combout\ & (\rd~17_combout\ & (\rd~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~1_combout\,
	datab => \rd~17_combout\,
	datac => \rd~14_combout\,
	datad => sum(2),
	combout => \rd[2]~41_combout\);

-- Location: LCCOMB_X51_Y53_N6
\rd[2]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[2]~43_combout\ = (\opcion[2]~input_o\ & (((\rd[2]~42_combout\)))) # (!\opcion[2]~input_o\ & (!\rd[2]~42_combout\ & ((\Equal11~4_combout\) # (\rd[2]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[2]~input_o\,
	datab => \Equal11~4_combout\,
	datac => \rd[2]~42_combout\,
	datad => \rd[2]~41_combout\,
	combout => \rd[2]~43_combout\);

-- Location: LCCOMB_X56_Y53_N12
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\rs[2]~input_o\ & !\op2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rs[2]~input_o\,
	datad => \op2[2]~input_o\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X51_Y53_N22
\rd[2]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[2]~44_combout\ = (\rd[2]~43_combout\ & (((\LessThan0~6_combout\) # (!\opcion[1]~input_o\)))) # (!\rd[2]~43_combout\ & (\rd~40_combout\ & ((\opcion[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~40_combout\,
	datab => \rd[2]~43_combout\,
	datac => \LessThan0~6_combout\,
	datad => \opcion[1]~input_o\,
	combout => \rd[2]~44_combout\);

-- Location: LCCOMB_X51_Y53_N24
\rd~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~45_combout\ = (\Equal11~3_combout\ & (\Add3~4_combout\)) # (!\Equal11~3_combout\ & ((\rd~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~4_combout\,
	datac => \rd~39_combout\,
	datad => \Equal11~3_combout\,
	combout => \rd~45_combout\);

-- Location: LCCOMB_X51_Y53_N16
\rd[2]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[2]~62_combout\ = (\opcion[2]~input_o\ & (\opcion[1]~input_o\)) # (!\opcion[2]~input_o\ & ((\opcion[1]~input_o\ & ((\rd~45_combout\))) # (!\opcion[1]~input_o\ & (!\rd~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[2]~input_o\,
	datab => \opcion[1]~input_o\,
	datac => \rd~38_combout\,
	datad => \rd~45_combout\,
	combout => \rd[2]~62_combout\);

-- Location: LCCOMB_X51_Y53_N4
\rd[2]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[2]~63_combout\ = (\op2[2]~input_o\ & (\rd[2]~62_combout\ $ (((\rs[2]~input_o\ & \opcion[2]~input_o\))))) # (!\op2[2]~input_o\ & (\rd[2]~62_combout\ & ((\rs[2]~input_o\) # (!\opcion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[2]~input_o\,
	datab => \rs[2]~input_o\,
	datac => \opcion[2]~input_o\,
	datad => \rd[2]~62_combout\,
	combout => \rd[2]~63_combout\);

-- Location: LCCOMB_X51_Y53_N20
\rd[2]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[2]~46_combout\ = (\opcion[0]~input_o\ & (\rd[2]~44_combout\)) # (!\opcion[0]~input_o\ & ((\rd[2]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd[2]~44_combout\,
	datac => \rd[2]~63_combout\,
	datad => \opcion[0]~input_o\,
	combout => \rd[2]~46_combout\);

-- Location: LCCOMB_X51_Y53_N26
\rd[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[2]$latch~combout\ = (GLOBAL(\rd[3]~57clkctrl_outclk\) & (\rd[2]~46_combout\)) # (!GLOBAL(\rd[3]~57clkctrl_outclk\) & ((\rd[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd[2]~46_combout\,
	datac => \rd[2]$latch~combout\,
	datad => \rd[3]~57clkctrl_outclk\,
	combout => \rd[2]$latch~combout\);

-- Location: LCCOMB_X56_Y53_N26
\rd[3]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[3]~47_combout\ = (\opcion[2]~input_o\ & ((\op2[3]~input_o\ & ((!\opcion[1]~input_o\))) # (!\op2[3]~input_o\ & (\rs[3]~input_o\)))) # (!\opcion[2]~input_o\ & (((\opcion[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs[3]~input_o\,
	datab => \opcion[1]~input_o\,
	datac => \op2[3]~input_o\,
	datad => \opcion[2]~input_o\,
	combout => \rd[3]~47_combout\);

-- Location: LCCOMB_X51_Y52_N4
\rd~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~49_combout\ = (num(3) & ((num(2)) # ((num(1)) # (num(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(1),
	datac => num(0),
	datad => num(3),
	combout => \rd~49_combout\);

-- Location: LCCOMB_X56_Y53_N0
\rd[3]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[3]~48_combout\ = (sum(3) & ((\rd[3]~47_combout\) # (\Equal11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd[3]~47_combout\,
	datac => \Equal11~1_combout\,
	datad => sum(3),
	combout => \rd[3]~48_combout\);

-- Location: LCCOMB_X56_Y53_N18
\rd[3]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[3]~50_combout\ = (\Equal11~3_combout\ & (((\rd[3]~48_combout\)))) # (!\Equal11~3_combout\ & (\rd~49_combout\ & ((!\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \rd~49_combout\,
	datac => \rd[3]~48_combout\,
	datad => \LessThan0~3_combout\,
	combout => \rd[3]~50_combout\);

-- Location: LCCOMB_X56_Y53_N16
\rd[3]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[3]~51_combout\ = (\rd[3]~47_combout\ & ((\opcion[2]~input_o\) # ((\rd[3]~50_combout\)))) # (!\rd[3]~47_combout\ & (!\opcion[2]~input_o\ & ((\rd[3]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd[3]~47_combout\,
	datab => \opcion[2]~input_o\,
	datac => \rd[3]~50_combout\,
	datad => \rd[3]~48_combout\,
	combout => \rd[3]~51_combout\);

-- Location: LCCOMB_X56_Y53_N22
\rd[3]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[3]~52_combout\ = (\opcion[2]~input_o\ & ((\rs[3]~input_o\ & (\op2[3]~input_o\ $ (\opcion[1]~input_o\))) # (!\rs[3]~input_o\ & (\op2[3]~input_o\ & \opcion[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs[3]~input_o\,
	datab => \opcion[2]~input_o\,
	datac => \op2[3]~input_o\,
	datad => \opcion[1]~input_o\,
	combout => \rd[3]~52_combout\);

-- Location: LCCOMB_X55_Y53_N16
\rd[3]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[3]~53_combout\ = (\Equal11~3_combout\ & (\Add3~6_combout\)) # (!\Equal11~3_combout\ & (((!\LessThan0~3_combout\ & \rd~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \LessThan0~3_combout\,
	datac => \rd~49_combout\,
	datad => \Equal11~3_combout\,
	combout => \rd[3]~53_combout\);

-- Location: LCCOMB_X56_Y53_N24
\rd[3]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[3]~54_combout\ = (\rd[3]~52_combout\) # ((!\opcion[2]~input_o\ & (\rd[3]~53_combout\ & \opcion[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[2]~input_o\,
	datab => \rd[3]~52_combout\,
	datac => \rd[3]~53_combout\,
	datad => \opcion[1]~input_o\,
	combout => \rd[3]~54_combout\);

-- Location: LCCOMB_X56_Y53_N14
\rd[3]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[3]~55_combout\ = (\opcion[0]~input_o\ & (\rd[3]~51_combout\)) # (!\opcion[0]~input_o\ & ((\rd[3]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd[3]~51_combout\,
	datac => \rd[3]~54_combout\,
	datad => \opcion[0]~input_o\,
	combout => \rd[3]~55_combout\);

-- Location: LCCOMB_X56_Y53_N20
\rd[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd[3]$latch~combout\ = (GLOBAL(\rd[3]~57clkctrl_outclk\) & ((\rd[3]~55_combout\))) # (!GLOBAL(\rd[3]~57clkctrl_outclk\) & (\rd[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd[3]$latch~combout\,
	datac => \rd[3]~55_combout\,
	datad => \rd[3]~57clkctrl_outclk\,
	combout => \rd[3]$latch~combout\);

-- Location: LCCOMB_X54_Y52_N26
\salida[0]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[0]~29_combout\ = (\opcion[1]~input_o\ & (\LessThan0~3_combout\)) # (!\opcion[1]~input_o\ & ((!\opcion[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datac => \opcion[0]~input_o\,
	datad => \opcion[1]~input_o\,
	combout => \salida[0]~29_combout\);

-- Location: LCCOMB_X55_Y52_N20
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\opcion[1]~input_o\ & \opcion[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcion[1]~input_o\,
	datad => \opcion[0]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X54_Y52_N24
\salida[0]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[0]~61_combout\ = (num(2) & (num(3) & (num(0) $ (!num(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(0),
	datac => num(3),
	datad => num(1),
	combout => \salida[0]~61_combout\);

-- Location: LCCOMB_X54_Y52_N20
\salida[0]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[0]~30_combout\ = (\Equal0~1_combout\ & (((\Equal11~4_combout\)))) # (!\Equal0~1_combout\ & (!\LessThan0~3_combout\ & ((\salida[0]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \LessThan0~3_combout\,
	datac => \Equal11~4_combout\,
	datad => \salida[0]~61_combout\,
	combout => \salida[0]~30_combout\);

-- Location: LCCOMB_X54_Y52_N22
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\opcion[1]~input_o\ & !\opcion[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcion[1]~input_o\,
	datad => \opcion[0]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X54_Y52_N8
\salida~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~28_combout\ = (!num(3) & (!num(1) & (num(2) $ (num(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(0),
	datac => num(3),
	datad => num(1),
	combout => \salida~28_combout\);

-- Location: LCCOMB_X54_Y52_N16
\salida[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[0]~31_combout\ = (\salida[0]~29_combout\ & ((\salida~28_combout\) # ((\salida[0]~30_combout\ & !\Equal0~2_combout\)))) # (!\salida[0]~29_combout\ & (\salida[0]~30_combout\ & (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[0]~29_combout\,
	datab => \salida[0]~30_combout\,
	datac => \Equal0~2_combout\,
	datad => \salida~28_combout\,
	combout => \salida[0]~31_combout\);

-- Location: LCCOMB_X54_Y52_N4
\salida[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[0]$latch~combout\ = (\opcion[2]~input_o\ & (\salida[0]$latch~combout\)) # (!\opcion[2]~input_o\ & ((\salida[0]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[0]$latch~combout\,
	datac => \salida[0]~31_combout\,
	datad => \opcion[2]~input_o\,
	combout => \salida[0]$latch~combout\);

-- Location: LCCOMB_X52_Y52_N10
\salida~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~33_combout\ = (num(3)) # ((num(2) & (num(1) $ (num(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datab => num(3),
	datac => num(0),
	datad => num(2),
	combout => \salida~33_combout\);

-- Location: LCCOMB_X52_Y52_N22
\Equal11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~6_combout\ = (num(1) & (num(0) & (!num(3) & num(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datab => num(0),
	datac => num(3),
	datad => num(2),
	combout => \Equal11~6_combout\);

-- Location: LCCOMB_X52_Y52_N28
\salida[1]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[1]~55_combout\ = (num(2) & (((!num(3))))) # (!num(2) & ((num(1)) # (num(3) $ (num(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datab => num(3),
	datac => num(0),
	datad => num(2),
	combout => \salida[1]~55_combout\);

-- Location: LCCOMB_X52_Y52_N24
\salida[1]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[1]~32_combout\ = (\opcion[1]~input_o\ & (((\salida[1]~55_combout\)))) # (!\opcion[1]~input_o\ & (!\Equal11~6_combout\ & (\rd~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~6_combout\,
	datab => \rd~14_combout\,
	datac => \opcion[1]~input_o\,
	datad => \salida[1]~55_combout\,
	combout => \salida[1]~32_combout\);

-- Location: LCCOMB_X54_Y53_N30
\salida[4]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[4]~56_combout\ = (\opcion[1]~input_o\ & ((\rs[3]~input_o\ & ((!\op2[3]~input_o\) # (!\LessThan0~7_combout\))) # (!\rs[3]~input_o\ & (!\LessThan0~7_combout\ & !\op2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs[3]~input_o\,
	datab => \LessThan0~7_combout\,
	datac => \opcion[1]~input_o\,
	datad => \op2[3]~input_o\,
	combout => \salida[4]~56_combout\);

-- Location: LCCOMB_X52_Y52_N16
\salida[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[1]~34_combout\ = (\salida[4]~56_combout\ & (((\salida[1]~32_combout\)))) # (!\salida[4]~56_combout\ & ((\Equal0~1_combout\ & ((\salida[1]~32_combout\))) # (!\Equal0~1_combout\ & (\salida~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida~33_combout\,
	datab => \salida[1]~32_combout\,
	datac => \salida[4]~56_combout\,
	datad => \Equal0~1_combout\,
	combout => \salida[1]~34_combout\);

-- Location: LCCOMB_X52_Y52_N8
\salida[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[1]$latch~combout\ = (\opcion[2]~input_o\ & (\salida[1]$latch~combout\)) # (!\opcion[2]~input_o\ & ((\salida[1]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[1]$latch~combout\,
	datac => \salida[1]~34_combout\,
	datad => \opcion[2]~input_o\,
	combout => \salida[1]$latch~combout\);

-- Location: LCCOMB_X54_Y52_N0
\salida~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~35_combout\ = (num(3)) # ((!num(2) & (!num(0) & num(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(0),
	datac => num(3),
	datad => num(1),
	combout => \salida~35_combout\);

-- Location: LCCOMB_X54_Y52_N14
\salida[2]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[2]~62_combout\ = (num(0) & (!num(1) & ((\opcion[1]~input_o\) # (num(2))))) # (!num(0) & ((\opcion[1]~input_o\ $ (!num(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datab => num(0),
	datac => \opcion[1]~input_o\,
	datad => num(2),
	combout => \salida[2]~62_combout\);

-- Location: LCCOMB_X55_Y52_N16
\salida[2]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[2]~63_combout\ = (\salida[2]~62_combout\ & (((num(1)) # (!\opcion[1]~input_o\)) # (!num(3)))) # (!\salida[2]~62_combout\ & (num(3) $ (((\opcion[1]~input_o\ & num(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[2]~62_combout\,
	datab => num(3),
	datac => \opcion[1]~input_o\,
	datad => num(1),
	combout => \salida[2]~63_combout\);

-- Location: LCCOMB_X55_Y52_N14
\salida[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[2]~36_combout\ = (\salida[4]~56_combout\ & (((\salida[2]~63_combout\)))) # (!\salida[4]~56_combout\ & ((\Equal0~1_combout\ & ((\salida[2]~63_combout\))) # (!\Equal0~1_combout\ & (\salida~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida~35_combout\,
	datab => \salida[4]~56_combout\,
	datac => \Equal0~1_combout\,
	datad => \salida[2]~63_combout\,
	combout => \salida[2]~36_combout\);

-- Location: LCCOMB_X55_Y52_N10
\salida[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[2]$latch~combout\ = (\opcion[2]~input_o\ & (\salida[2]$latch~combout\)) # (!\opcion[2]~input_o\ & ((\salida[2]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[2]$latch~combout\,
	datac => \salida[2]~36_combout\,
	datad => \opcion[2]~input_o\,
	combout => \salida[2]$latch~combout\);

-- Location: LCCOMB_X55_Y52_N0
\salida~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~37_combout\ = (num(2) & (!num(3) & (num(0) $ (!num(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(0),
	datac => num(3),
	datad => num(1),
	combout => \salida~37_combout\);

-- Location: LCCOMB_X55_Y52_N28
\salida[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[3]~39_combout\ = (num(3)) # ((!num(2) & num(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datac => num(3),
	datad => num(1),
	combout => \salida[3]~39_combout\);

-- Location: LCCOMB_X55_Y52_N22
\salida[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[3]~38_combout\ = (num(3) & (num(2) & (num(0) $ (num(1))))) # (!num(3) & (((num(0)) # (num(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(0),
	datac => num(3),
	datad => num(1),
	combout => \salida[3]~38_combout\);

-- Location: LCCOMB_X55_Y52_N12
\salida[3]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[3]~41_combout\ = (\salida[4]~56_combout\ & ((\salida[3]~39_combout\ & ((!num(2)))) # (!\salida[3]~39_combout\ & ((\salida[3]~38_combout\) # (num(2)))))) # (!\salida[4]~56_combout\ & ((\salida[3]~38_combout\ & ((num(2)))) # (!\salida[3]~38_combout\ 
-- & (\salida[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[4]~56_combout\,
	datab => \salida[3]~39_combout\,
	datac => \salida[3]~38_combout\,
	datad => num(2),
	combout => \salida[3]~41_combout\);

-- Location: LCCOMB_X55_Y52_N26
\salida[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[3]~40_combout\ = (\salida[4]~56_combout\ & (\salida[3]~39_combout\ & (!\salida[3]~38_combout\ & num(2)))) # (!\salida[4]~56_combout\ & ((num(2)) # (\salida[3]~39_combout\ $ (\salida[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[4]~56_combout\,
	datab => \salida[3]~39_combout\,
	datac => \salida[3]~38_combout\,
	datad => num(2),
	combout => \salida[3]~40_combout\);

-- Location: LCCOMB_X54_Y52_N18
\Equal11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~5_combout\ = (!num(1) & (num(0) & (num(3) & !num(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datab => num(0),
	datac => num(3),
	datad => num(2),
	combout => \Equal11~5_combout\);

-- Location: LCCOMB_X55_Y52_N6
\salida[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[3]~42_combout\ = (\salida[3]~41_combout\ & ((\salida[3]~40_combout\ & (\Equal11~6_combout\)) # (!\salida[3]~40_combout\ & ((\Equal11~5_combout\))))) # (!\salida[3]~41_combout\ & (((\salida[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[3]~41_combout\,
	datab => \Equal11~6_combout\,
	datac => \salida[3]~40_combout\,
	datad => \Equal11~5_combout\,
	combout => \salida[3]~42_combout\);

-- Location: LCCOMB_X55_Y52_N30
\salida[3]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[3]~57_combout\ = (\opcion[0]~input_o\ & ((\opcion[1]~input_o\ & ((\salida[3]~42_combout\))) # (!\opcion[1]~input_o\ & (\salida~37_combout\)))) # (!\opcion[0]~input_o\ & (((\salida[3]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[0]~input_o\,
	datab => \salida~37_combout\,
	datac => \opcion[1]~input_o\,
	datad => \salida[3]~42_combout\,
	combout => \salida[3]~57_combout\);

-- Location: LCCOMB_X55_Y52_N8
\salida[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[3]$latch~combout\ = (\opcion[2]~input_o\ & ((\salida[3]$latch~combout\))) # (!\opcion[2]~input_o\ & (\salida[3]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[3]~57_combout\,
	datac => \opcion[2]~input_o\,
	datad => \salida[3]$latch~combout\,
	combout => \salida[3]$latch~combout\);

-- Location: LCCOMB_X52_Y52_N0
\Equal11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~8_combout\ = (!num(2) & (num(1) & (!num(0) & !num(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(1),
	datac => num(0),
	datad => num(3),
	combout => \Equal11~8_combout\);

-- Location: LCCOMB_X52_Y52_N12
\salida[4]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[4]~43_combout\ = (!\Equal11~1_combout\ & !\Equal11~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal11~1_combout\,
	datad => \Equal11~8_combout\,
	combout => \salida[4]~43_combout\);

-- Location: LCCOMB_X55_Y52_N24
\salida[4]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[4]~44_combout\ = (\Equal0~1_combout\ & (\salida[4]~43_combout\ & ((\Equal11~0_combout\) # (\salida~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \salida~37_combout\,
	datac => \Equal0~1_combout\,
	datad => \salida[4]~43_combout\,
	combout => \salida[4]~44_combout\);

-- Location: LCCOMB_X55_Y52_N18
\salida[4]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[4]~45_combout\ = (!\Equal0~1_combout\ & ((num(0)) # ((num(2) & !num(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => \Equal0~1_combout\,
	datac => num(0),
	datad => num(1),
	combout => \salida[4]~45_combout\);

-- Location: LCCOMB_X55_Y52_N4
\salida[4]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[4]~46_combout\ = (\salida[4]~44_combout\) # ((\salida[4]~45_combout\ & (num(3) $ (!\salida[4]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[4]~44_combout\,
	datab => num(3),
	datac => \salida[4]~45_combout\,
	datad => \salida[4]~56_combout\,
	combout => \salida[4]~46_combout\);

-- Location: LCCOMB_X55_Y52_N2
\salida[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[4]$latch~combout\ = (\opcion[2]~input_o\ & ((\salida[4]$latch~combout\))) # (!\opcion[2]~input_o\ & (\salida[4]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcion[2]~input_o\,
	datac => \salida[4]~46_combout\,
	datad => \salida[4]$latch~combout\,
	combout => \salida[4]$latch~combout\);

-- Location: LCCOMB_X54_Y52_N10
\salida~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~60_combout\ = (num(3) & (((!num(1) & !num(0))) # (!num(2)))) # (!num(3) & ((num(1)) # ((num(0)) # (num(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(1),
	datab => num(0),
	datac => num(3),
	datad => num(2),
	combout => \salida~60_combout\);

-- Location: LCCOMB_X54_Y53_N20
\salida[5]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[5]~58_combout\ = (\opcion[1]~input_o\ & (((\Equal11~5_combout\)) # (!\salida~60_combout\))) # (!\opcion[1]~input_o\ & (!\opcion[0]~input_o\ & ((\Equal11~5_combout\) # (!\salida~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[1]~input_o\,
	datab => \salida~60_combout\,
	datac => \opcion[0]~input_o\,
	datad => \Equal11~5_combout\,
	combout => \salida[5]~58_combout\);

-- Location: LCCOMB_X54_Y53_N22
\salida[5]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[5]~48_combout\ = (\Equal0~1_combout\ & ((\Equal11~8_combout\) # ((num(0) & \rd~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(0),
	datab => \rd~33_combout\,
	datac => \Equal11~8_combout\,
	datad => \Equal0~1_combout\,
	combout => \salida[5]~48_combout\);

-- Location: LCCOMB_X54_Y53_N8
\salida[5]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[5]~49_combout\ = (\salida[5]~48_combout\) # ((\salida[5]~58_combout\ & (!\Equal11~3_combout\ & !\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[5]~58_combout\,
	datab => \Equal11~3_combout\,
	datac => \salida[5]~48_combout\,
	datad => \LessThan0~3_combout\,
	combout => \salida[5]~49_combout\);

-- Location: LCCOMB_X52_Y52_N26
\rd~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rd~56_combout\ = (!\Equal11~0_combout\ & (!\Equal11~8_combout\ & !\Equal11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \Equal11~8_combout\,
	datac => \Equal11~1_combout\,
	combout => \rd~56_combout\);

-- Location: LCCOMB_X54_Y53_N0
\salida[5]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[5]~47_combout\ = (!\Equal11~3_combout\ & (\salida[0]~29_combout\ & ((\Equal11~6_combout\) # (!\rd~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~6_combout\,
	datab => \Equal11~3_combout\,
	datac => \rd~56_combout\,
	datad => \salida[0]~29_combout\,
	combout => \salida[5]~47_combout\);

-- Location: LCCOMB_X54_Y53_N14
\salida[5]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[5]~59_combout\ = (\salida[5]~47_combout\) # ((\salida[5]~49_combout\ & ((\opcion[1]~input_o\) # (\opcion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[1]~input_o\,
	datab => \opcion[0]~input_o\,
	datac => \salida[5]~49_combout\,
	datad => \salida[5]~47_combout\,
	combout => \salida[5]~59_combout\);

-- Location: LCCOMB_X54_Y53_N2
\salida[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[5]$latch~combout\ = (\opcion[2]~input_o\ & (\salida[5]$latch~combout\)) # (!\opcion[2]~input_o\ & ((\salida[5]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[5]$latch~combout\,
	datac => \salida[5]~59_combout\,
	datad => \opcion[2]~input_o\,
	combout => \salida[5]$latch~combout\);

-- Location: LCCOMB_X54_Y52_N6
\salida[6]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[6]~51_combout\ = (\Equal11~2_combout\) # ((\Equal11~3_combout\) # ((\salida~60_combout\ & \Equal11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida~60_combout\,
	datab => \Equal11~5_combout\,
	datac => \Equal11~2_combout\,
	datad => \Equal11~3_combout\,
	combout => \salida[6]~51_combout\);

-- Location: LCCOMB_X54_Y52_N28
\salida~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~52_combout\ = (num(0) & (!num(3) & (num(2) $ (!num(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(0),
	datac => num(3),
	datad => num(1),
	combout => \salida~52_combout\);

-- Location: LCCOMB_X54_Y52_N2
\salida[6]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[6]~53_combout\ = (\Equal0~1_combout\ & (((\salida~52_combout\)))) # (!\Equal0~1_combout\ & (!\LessThan0~3_combout\ & (\salida[6]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \LessThan0~3_combout\,
	datac => \salida[6]~51_combout\,
	datad => \salida~52_combout\,
	combout => \salida[6]~53_combout\);

-- Location: LCCOMB_X52_Y52_N18
\salida~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida~50_combout\ = (\Equal11~1_combout\) # ((\Equal11~3_combout\) # ((\Equal11~6_combout\ & \rd~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~6_combout\,
	datab => \Equal11~1_combout\,
	datac => \rd~56_combout\,
	datad => \Equal11~3_combout\,
	combout => \salida~50_combout\);

-- Location: LCCOMB_X54_Y52_N12
\salida[6]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[6]~54_combout\ = (\Equal0~2_combout\ & (\salida[0]~29_combout\ & ((\salida~50_combout\)))) # (!\Equal0~2_combout\ & ((\salida[6]~53_combout\) # ((\salida[0]~29_combout\ & \salida~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \salida[0]~29_combout\,
	datac => \salida[6]~53_combout\,
	datad => \salida~50_combout\,
	combout => \salida[6]~54_combout\);

-- Location: LCCOMB_X54_Y52_N30
\salida[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida[6]$latch~combout\ = (\opcion[2]~input_o\ & ((\salida[6]$latch~combout\))) # (!\opcion[2]~input_o\ & (\salida[6]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[6]~54_combout\,
	datac => \salida[6]$latch~combout\,
	datad => \opcion[2]~input_o\,
	combout => \salida[6]$latch~combout\);

-- Location: LCCOMB_X50_Y53_N22
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \op2[3]~input_o\ $ (\Add1~13\ $ (!\Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2[3]~input_o\,
	datad => \Equal0~3_combout\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X50_Y53_N26
\sum[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sum(4) = (GLOBAL(\sum[4]~0clkctrl_outclk\) & ((\Add1~14_combout\))) # (!GLOBAL(\sum[4]~0clkctrl_outclk\) & (sum(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum(4),
	datac => \Add1~14_combout\,
	datad => \sum[4]~0clkctrl_outclk\,
	combout => sum(4));

-- Location: LCCOMB_X51_Y53_N2
cout : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cout~combout\ = (GLOBAL(\sum[4]~0clkctrl_outclk\) & (sum(4))) # (!GLOBAL(\sum[4]~0clkctrl_outclk\) & ((\cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum(4),
	datac => \sum[4]~0clkctrl_outclk\,
	datad => \cout~combout\,
	combout => \cout~combout\);

-- Location: LCCOMB_X51_Y53_N0
\salida1[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida1[5]~8_combout\ = (\opcion[2]~input_o\) # ((\opcion[1]~input_o\) # ((\cout~combout\) # (!\opcion[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[2]~input_o\,
	datab => \opcion[1]~input_o\,
	datac => \opcion[0]~input_o\,
	datad => \cout~combout\,
	combout => \salida1[5]~8_combout\);

-- Location: LCCOMB_X51_Y52_N2
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\opcion[1]~input_o\ & (!\opcion[0]~input_o\ & !\opcion[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[1]~input_o\,
	datac => \opcion[0]~input_o\,
	datad => \opcion[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X51_Y52_N14
\salida1[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida1[6]~9_combout\ = (!\opcion[2]~input_o\ & ((\opcion[1]~input_o\ & ((\Equal11~3_combout\))) # (!\opcion[1]~input_o\ & (\opcion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[0]~input_o\,
	datab => \opcion[1]~input_o\,
	datac => \Equal11~3_combout\,
	datad => \opcion[2]~input_o\,
	combout => \salida1[6]~9_combout\);

-- Location: LCCOMB_X51_Y52_N18
\salida2[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida2[5]~29_combout\ = (!num(3) & ((num(2)) # ((num(1)) # (num(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(1),
	datac => num(0),
	datad => num(3),
	combout => \salida2[5]~29_combout\);

-- Location: LCCOMB_X51_Y52_N28
\salida1[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida1[6]~10_combout\ = (\salida1[6]~9_combout\) # ((\Equal0~0_combout\ & ((\Equal11~3_combout\) # (\salida2[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \salida1[6]~9_combout\,
	datad => \salida2[5]~29_combout\,
	combout => \salida1[6]~10_combout\);

-- Location: LCCOMB_X51_Y52_N22
\salida1[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida1[6]~11_combout\ = (\LessThan0~3_combout\ & ((\salida2[5]~29_combout\))) # (!\LessThan0~3_combout\ & (\rd~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datac => \rd~49_combout\,
	datad => \salida2[5]~29_combout\,
	combout => \salida1[6]~11_combout\);

-- Location: LCCOMB_X51_Y52_N12
\salida1[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida1[6]~12_combout\ = (\salida1[6]~10_combout\) # ((\opcion[1]~input_o\ & (\salida1[6]~11_combout\ & !\opcion[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[1]~input_o\,
	datab => \salida1[6]~10_combout\,
	datac => \salida1[6]~11_combout\,
	datad => \opcion[2]~input_o\,
	combout => \salida1[6]~12_combout\);

-- Location: CLKCTRL_G10
\salida1[6]~12clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \salida1[6]~12clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \salida1[6]~12clkctrl_outclk\);

-- Location: LCCOMB_X51_Y53_N8
\salida1[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida1[0]$latch~combout\ = (GLOBAL(\salida1[6]~12clkctrl_outclk\) & (\salida1[5]~8_combout\)) # (!GLOBAL(\salida1[6]~12clkctrl_outclk\) & ((\salida1[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida1[5]~8_combout\,
	datac => \salida1[0]$latch~combout\,
	datad => \salida1[6]~12clkctrl_outclk\,
	combout => \salida1[0]$latch~combout\);

-- Location: LCCOMB_X50_Y53_N4
\salida1[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida1[1]$latch~combout\ = (GLOBAL(\salida1[6]~12clkctrl_outclk\) & (!\Equal0~3_combout\)) # (!GLOBAL(\salida1[6]~12clkctrl_outclk\) & ((\salida1[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~3_combout\,
	datac => \salida1[1]$latch~combout\,
	datad => \salida1[6]~12clkctrl_outclk\,
	combout => \salida1[1]$latch~combout\);

-- Location: LCCOMB_X51_Y52_N0
\salida1[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida1[6]~13_combout\ = (\Equal11~3_combout\) # ((\LessThan0~3_combout\) # ((\Equal0~3_combout\) # (\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \LessThan0~3_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \salida1[6]~13_combout\);

-- Location: LCCOMB_X51_Y52_N16
\salida1[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida1[6]$latch~combout\ = (GLOBAL(\salida1[6]~12clkctrl_outclk\) & ((\salida1[6]~13_combout\))) # (!GLOBAL(\salida1[6]~12clkctrl_outclk\) & (\salida1[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida1[6]$latch~combout\,
	datac => \salida1[6]~12clkctrl_outclk\,
	datad => \salida1[6]~13_combout\,
	combout => \salida1[6]$latch~combout\);

-- Location: LCCOMB_X55_Y53_N4
\salida2[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida2[5]~20_combout\ = (!\Equal11~3_combout\ & ((\LessThan0~3_combout\ & ((\salida2[5]~29_combout\))) # (!\LessThan0~3_combout\ & (\rd~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \rd~49_combout\,
	datac => \salida2[5]~29_combout\,
	datad => \LessThan0~3_combout\,
	combout => \salida2[5]~20_combout\);

-- Location: LCCOMB_X56_Y53_N8
\salida2[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida2[5]~21_combout\ = (\opcion[2]~input_o\) # ((\opcion[0]~input_o\ & \opcion[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[0]~input_o\,
	datab => \opcion[1]~input_o\,
	datad => \opcion[2]~input_o\,
	combout => \salida2[5]~21_combout\);

-- Location: LCCOMB_X56_Y53_N10
\salida2[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida2[5]~22_combout\ = (\salida2[5]~20_combout\) # ((\cout~combout\) # (!\salida2[5]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida2[5]~20_combout\,
	datac => \salida2[5]~21_combout\,
	datad => \cout~combout\,
	combout => \salida2[5]~22_combout\);

-- Location: LCCOMB_X51_Y52_N10
\salida2[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida2[6]~28_combout\ = (\opcion[0]~input_o\ & ((\opcion[1]~input_o\) # (!\opcion[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcion[1]~input_o\,
	datac => \opcion[0]~input_o\,
	datad => \opcion[2]~input_o\,
	combout => \salida2[6]~28_combout\);

-- Location: LCCOMB_X51_Y52_N26
\salida2[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida2[6]~24_combout\ = (\salida2[6]~28_combout\ & (\opcion[1]~input_o\)) # (!\salida2[6]~28_combout\ & ((\opcion[1]~input_o\ & (\salida1[6]~11_combout\)) # (!\opcion[1]~input_o\ & ((\salida2[5]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida2[6]~28_combout\,
	datab => \opcion[1]~input_o\,
	datac => \salida1[6]~11_combout\,
	datad => \salida2[5]~29_combout\,
	combout => \salida2[6]~24_combout\);

-- Location: LCCOMB_X51_Y52_N20
\salida2[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida2[6]~30_combout\ = (!num(3) & ((num(1)) # ((num(2) & !num(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num(2),
	datab => num(1),
	datac => num(0),
	datad => num(3),
	combout => \salida2[6]~30_combout\);

-- Location: LCCOMB_X51_Y52_N6
\salida2[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida2[6]~23_combout\ = (\salida2[6]~28_combout\ & (((!\Equal11~1_combout\ & \salida2[6]~30_combout\)))) # (!\salida2[6]~28_combout\ & (\Equal11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \salida2[6]~28_combout\,
	datac => \Equal11~1_combout\,
	datad => \salida2[6]~30_combout\,
	combout => \salida2[6]~23_combout\);

-- Location: LCCOMB_X51_Y52_N8
\salida2[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida2[6]~25_combout\ = (!\opcion[2]~input_o\ & ((\salida2[6]~23_combout\ & (\salida2[6]~28_combout\)) # (!\salida2[6]~23_combout\ & ((\salida2[6]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida2[6]~28_combout\,
	datab => \opcion[2]~input_o\,
	datac => \salida2[6]~24_combout\,
	datad => \salida2[6]~23_combout\,
	combout => \salida2[6]~25_combout\);

-- Location: CLKCTRL_G13
\salida2[6]~25clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \salida2[6]~25clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \salida2[6]~25clkctrl_outclk\);

-- Location: LCCOMB_X56_Y53_N30
\salida2[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida2[0]$latch~combout\ = (GLOBAL(\salida2[6]~25clkctrl_outclk\) & ((\salida2[5]~22_combout\))) # (!GLOBAL(\salida2[6]~25clkctrl_outclk\) & (\salida2[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida2[0]$latch~combout\,
	datac => \salida2[5]~22_combout\,
	datad => \salida2[6]~25clkctrl_outclk\,
	combout => \salida2[0]$latch~combout\);

-- Location: LCCOMB_X56_Y53_N28
\salida2[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida2[2]~26_combout\ = (\LessThan0~3_combout\ & (((!\rd~56_combout\) # (!\rd~38_combout\)))) # (!\LessThan0~3_combout\ & (\rd~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~49_combout\,
	datab => \rd~38_combout\,
	datac => \rd~56_combout\,
	datad => \LessThan0~3_combout\,
	combout => \salida2[2]~26_combout\);

-- Location: LCCOMB_X56_Y53_N2
\salida2[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida2[2]~27_combout\ = ((\salida2[2]~26_combout\ & !\Equal11~3_combout\)) # (!\salida2[5]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida2[2]~26_combout\,
	datac => \salida2[5]~21_combout\,
	datad => \Equal11~3_combout\,
	combout => \salida2[2]~27_combout\);

-- Location: LCCOMB_X56_Y53_N4
\salida2[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \salida2[1]$latch~combout\ = (GLOBAL(\salida2[6]~25clkctrl_outclk\) & ((\salida2[2]~27_combout\))) # (!GLOBAL(\salida2[6]~25clkctrl_outclk\) & (\salida2[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida2[1]$latch~combout\,
	datac => \salida2[2]~27_combout\,
	datad => \salida2[6]~25clkctrl_outclk\,
	combout => \salida2[1]$latch~combout\);

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

ww_rd(0) <= \rd[0]~output_o\;

ww_rd(1) <= \rd[1]~output_o\;

ww_rd(2) <= \rd[2]~output_o\;

ww_rd(3) <= \rd[3]~output_o\;

ww_salida(0) <= \salida[0]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;

ww_salida(4) <= \salida[4]~output_o\;

ww_salida(5) <= \salida[5]~output_o\;

ww_salida(6) <= \salida[6]~output_o\;

ww_salida1(0) <= \salida1[0]~output_o\;

ww_salida1(1) <= \salida1[1]~output_o\;

ww_salida1(2) <= \salida1[2]~output_o\;

ww_salida1(3) <= \salida1[3]~output_o\;

ww_salida1(4) <= \salida1[4]~output_o\;

ww_salida1(5) <= \salida1[5]~output_o\;

ww_salida1(6) <= \salida1[6]~output_o\;

ww_salida2(0) <= \salida2[0]~output_o\;

ww_salida2(1) <= \salida2[1]~output_o\;

ww_salida2(2) <= \salida2[2]~output_o\;

ww_salida2(3) <= \salida2[3]~output_o\;

ww_salida2(4) <= \salida2[4]~output_o\;

ww_salida2(5) <= \salida2[5]~output_o\;

ww_salida2(6) <= \salida2[6]~output_o\;
END structure;



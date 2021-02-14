-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "09/24/2020 19:49:43"

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

ENTITY 	alu_ns IS
    PORT (
	input1 : IN std_logic_vector(15 DOWNTO 0);
	input2 : IN std_logic_vector(15 DOWNTO 0);
	sel : IN std_logic_vector(3 DOWNTO 0);
	output : OUT std_logic_vector(15 DOWNTO 0);
	overflow : OUT std_logic
	);
END alu_ns;

-- Design Ports Information
-- output[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[15]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[15]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[14]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[13]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[13]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[12]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[12]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[11]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[11]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[10]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[10]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[9]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[9]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[8]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[6]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[5]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[4]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[0]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu_ns IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_input2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mux0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[8]~output_o\ : std_logic;
SIGNAL \output[9]~output_o\ : std_logic;
SIGNAL \output[10]~output_o\ : std_logic;
SIGNAL \output[11]~output_o\ : std_logic;
SIGNAL \output[12]~output_o\ : std_logic;
SIGNAL \output[13]~output_o\ : std_logic;
SIGNAL \output[14]~output_o\ : std_logic;
SIGNAL \output[15]~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \sel[3]~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \input1[0]~input_o\ : std_logic;
SIGNAL \input2[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux17~9_combout\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \input1[1]~input_o\ : std_logic;
SIGNAL \input1[2]~input_o\ : std_logic;
SIGNAL \input1[3]~input_o\ : std_logic;
SIGNAL \input1[4]~input_o\ : std_logic;
SIGNAL \input1[5]~input_o\ : std_logic;
SIGNAL \input1[6]~input_o\ : std_logic;
SIGNAL \input1[7]~input_o\ : std_logic;
SIGNAL \input1[8]~input_o\ : std_logic;
SIGNAL \input1[9]~input_o\ : std_logic;
SIGNAL \input1[10]~input_o\ : std_logic;
SIGNAL \input1[11]~input_o\ : std_logic;
SIGNAL \input1[12]~input_o\ : std_logic;
SIGNAL \input1[13]~input_o\ : std_logic;
SIGNAL \input1[14]~input_o\ : std_logic;
SIGNAL \input1[15]~input_o\ : std_logic;
SIGNAL \input2[1]~input_o\ : std_logic;
SIGNAL \input2[2]~input_o\ : std_logic;
SIGNAL \input2[3]~input_o\ : std_logic;
SIGNAL \input2[4]~input_o\ : std_logic;
SIGNAL \input2[5]~input_o\ : std_logic;
SIGNAL \input2[6]~input_o\ : std_logic;
SIGNAL \input2[7]~input_o\ : std_logic;
SIGNAL \input2[8]~input_o\ : std_logic;
SIGNAL \input2[9]~input_o\ : std_logic;
SIGNAL \input2[10]~input_o\ : std_logic;
SIGNAL \input2[11]~input_o\ : std_logic;
SIGNAL \input2[12]~input_o\ : std_logic;
SIGNAL \input2[13]~input_o\ : std_logic;
SIGNAL \input2[14]~input_o\ : std_logic;
SIGNAL \input2[15]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux17~14_combout\ : std_logic;
SIGNAL \Mux17~8_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux17~10_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~15_cout\ : std_logic;
SIGNAL \LessThan2~17_cout\ : std_logic;
SIGNAL \LessThan2~19_cout\ : std_logic;
SIGNAL \LessThan2~21_cout\ : std_logic;
SIGNAL \LessThan2~23_cout\ : std_logic;
SIGNAL \LessThan2~25_cout\ : std_logic;
SIGNAL \LessThan2~27_cout\ : std_logic;
SIGNAL \LessThan2~29_cout\ : std_logic;
SIGNAL \LessThan2~30_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~11_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~0clkctrl_outclk\ : std_logic;
SIGNAL \output[0]$latch~combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Add2~1_cout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \output[1]$latch~combout\ : std_logic;
SIGNAL \Mux17~12_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \output[2]$latch~combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Mux14~10_combout\ : std_logic;
SIGNAL \Mux14~11_combout\ : std_logic;
SIGNAL \output[3]$latch~combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \output~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \output[4]$latch~combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \output~4_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \output[5]$latch~combout\ : std_logic;
SIGNAL \output~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \output[6]$latch~combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \output~6_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \output[7]$latch~combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \output~7_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \output[8]$latch~combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \output~8_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \output[9]$latch~combout\ : std_logic;
SIGNAL \Mux17~13_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \output~9_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \output[10]$latch~combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \output~10_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \output[11]$latch~combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \output~11_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \output[12]$latch~combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \output~12_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \output[13]$latch~combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \output~13_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \output[14]$latch~combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \output~14_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \output[15]$latch~combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input1 <= input1;
ww_input2 <= input2;
ww_sel <= sel;
output <= ww_output;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT31\ & \Mult0|auto_generated|mac_mult1~DATAOUT30\ & \Mult0|auto_generated|mac_mult1~DATAOUT29\ & \Mult0|auto_generated|mac_mult1~DATAOUT28\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT27\ & \Mult0|auto_generated|mac_mult1~DATAOUT26\ & \Mult0|auto_generated|mac_mult1~DATAOUT25\ & \Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Mult0|auto_generated|mac_mult1~DATAOUT23\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT22\ & \Mult0|auto_generated|mac_mult1~DATAOUT21\ & \Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Mult0|auto_generated|mac_mult1~DATAOUT19\ & \Mult0|auto_generated|mac_mult1~DATAOUT18\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT17\ & \Mult0|auto_generated|mac_mult1~DATAOUT16\ & \Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT12\ & \Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT7\ & \Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~3\ & \Mult0|auto_generated|mac_mult1~2\ & \Mult0|auto_generated|mac_mult1~1\ & 
\Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out2~DATAOUT16\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out2~DATAOUT17\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out2~DATAOUT20\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out2~DATAOUT21\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out2~DATAOUT22\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out2~DATAOUT23\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out2~DATAOUT24\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out2~DATAOUT25\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out2~DATAOUT26\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out2~DATAOUT27\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out2~DATAOUT28\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out2~DATAOUT29\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out2~DATAOUT30\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out2~DATAOUT31\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\input1[15]~input_o\ & \input1[14]~input_o\ & \input1[13]~input_o\ & \input1[12]~input_o\ & \input1[11]~input_o\ & \input1[10]~input_o\ & \input1[9]~input_o\ & \input1[8]~input_o\ & \input1[7]~input_o\ & 
\input1[6]~input_o\ & \input1[5]~input_o\ & \input1[4]~input_o\ & \input1[3]~input_o\ & \input1[2]~input_o\ & \input1[1]~input_o\ & \input1[0]~input_o\ & gnd & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\input2[15]~input_o\ & \input2[14]~input_o\ & \input2[13]~input_o\ & \input2[12]~input_o\ & \input2[11]~input_o\ & \input2[10]~input_o\ & \input2[9]~input_o\ & \input2[8]~input_o\ & \input2[7]~input_o\ & 
\input2[6]~input_o\ & \input2[5]~input_o\ & \input2[4]~input_o\ & \input2[3]~input_o\ & \input2[2]~input_o\ & \input2[1]~input_o\ & \input2[0]~input_o\ & gnd & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Mux0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux0~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X78_Y37_N23
\output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[0]$latch~combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[1]$latch~combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[2]$latch~combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[3]$latch~combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[4]$latch~combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[5]$latch~combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[6]$latch~combout\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[7]$latch~combout\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\output[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[8]$latch~combout\,
	devoe => ww_devoe,
	o => \output[8]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\output[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[9]$latch~combout\,
	devoe => ww_devoe,
	o => \output[9]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\output[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[10]$latch~combout\,
	devoe => ww_devoe,
	o => \output[10]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\output[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[11]$latch~combout\,
	devoe => ww_devoe,
	o => \output[11]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\output[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[12]$latch~combout\,
	devoe => ww_devoe,
	o => \output[12]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\output[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[13]$latch~combout\,
	devoe => ww_devoe,
	o => \output[13]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\output[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[14]$latch~combout\,
	devoe => ww_devoe,
	o => \output[14]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\output[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[15]$latch~combout\,
	devoe => ww_devoe,
	o => \output[15]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\overflow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~7_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOIBUF_X31_Y39_N29
\sel[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(3),
	o => \sel[3]~input_o\);

-- Location: IOIBUF_X31_Y39_N1
\sel[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X24_Y39_N15
\sel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X29_Y39_N15
\input1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(0),
	o => \input1[0]~input_o\);

-- Location: IOIBUF_X24_Y39_N22
\input2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(0),
	o => \input2[0]~input_o\);

-- Location: LCCOMB_X27_Y37_N16
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\input1[0]~input_o\ & (\input2[0]~input_o\ $ (VCC))) # (!\input1[0]~input_o\ & (\input2[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\input1[0]~input_o\ & \input2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[0]~input_o\,
	datab => \input2[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X30_Y37_N22
\Mux17~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~9_combout\ = (\sel[1]~input_o\ & (!\input1[0]~input_o\)) # (!\sel[1]~input_o\ & ((\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datac => \input1[0]~input_o\,
	datad => \Add0~0_combout\,
	combout => \Mux17~9_combout\);

-- Location: IOIBUF_X26_Y39_N8
\sel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X24_Y39_N1
\input1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(1),
	o => \input1[1]~input_o\);

-- Location: IOIBUF_X24_Y39_N29
\input1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(2),
	o => \input1[2]~input_o\);

-- Location: IOIBUF_X36_Y39_N22
\input1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(3),
	o => \input1[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\input1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(4),
	o => \input1[4]~input_o\);

-- Location: IOIBUF_X22_Y39_N29
\input1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(5),
	o => \input1[5]~input_o\);

-- Location: IOIBUF_X46_Y54_N22
\input1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(6),
	o => \input1[6]~input_o\);

-- Location: IOIBUF_X31_Y39_N8
\input1[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(7),
	o => \input1[7]~input_o\);

-- Location: IOIBUF_X22_Y39_N15
\input1[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(8),
	o => \input1[8]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\input1[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(9),
	o => \input1[9]~input_o\);

-- Location: IOIBUF_X34_Y39_N29
\input1[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(10),
	o => \input1[10]~input_o\);

-- Location: IOIBUF_X20_Y39_N1
\input1[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(11),
	o => \input1[11]~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\input1[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(12),
	o => \input1[12]~input_o\);

-- Location: IOIBUF_X20_Y39_N8
\input1[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(13),
	o => \input1[13]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\input1[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(14),
	o => \input1[14]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\input1[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(15),
	o => \input1[15]~input_o\);

-- Location: IOIBUF_X29_Y39_N8
\input2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(1),
	o => \input2[1]~input_o\);

-- Location: IOIBUF_X29_Y39_N1
\input2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(2),
	o => \input2[2]~input_o\);

-- Location: IOIBUF_X24_Y39_N8
\input2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(3),
	o => \input2[3]~input_o\);

-- Location: IOIBUF_X36_Y39_N29
\input2[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(4),
	o => \input2[4]~input_o\);

-- Location: IOIBUF_X34_Y39_N1
\input2[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(5),
	o => \input2[5]~input_o\);

-- Location: IOIBUF_X26_Y39_N22
\input2[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(6),
	o => \input2[6]~input_o\);

-- Location: IOIBUF_X26_Y39_N29
\input2[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(7),
	o => \input2[7]~input_o\);

-- Location: IOIBUF_X22_Y39_N22
\input2[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(8),
	o => \input2[8]~input_o\);

-- Location: IOIBUF_X31_Y39_N15
\input2[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(9),
	o => \input2[9]~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\input2[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(10),
	o => \input2[10]~input_o\);

-- Location: IOIBUF_X34_Y39_N15
\input2[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(11),
	o => \input2[11]~input_o\);

-- Location: IOIBUF_X34_Y39_N8
\input2[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(12),
	o => \input2[12]~input_o\);

-- Location: IOIBUF_X36_Y39_N15
\input2[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(13),
	o => \input2[13]~input_o\);

-- Location: IOIBUF_X26_Y39_N1
\input2[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(14),
	o => \input2[14]~input_o\);

-- Location: IOIBUF_X26_Y39_N15
\input2[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(15),
	o => \input2[15]~input_o\);

-- Location: DSPMULT_X28_Y37_N0
\Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X28_Y37_N2
\Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X30_Y37_N8
\Mux17~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (\sel[1]~input_o\ & (\Mult0|auto_generated|mac_out2~dataout\)) # (!\sel[1]~input_o\ & ((\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~dataout\,
	datad => \Add0~0_combout\,
	combout => \Mux17~7_combout\);

-- Location: LCCOMB_X25_Y38_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\input1[0]~input_o\ & ((GND) # (!\input2[0]~input_o\))) # (!\input1[0]~input_o\ & (\input2[0]~input_o\ $ (GND)))
-- \Add1~1\ = CARRY((\input1[0]~input_o\) # (!\input2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[0]~input_o\,
	datab => \input2[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X29_Y37_N12
\Mux17~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~14_combout\ = (\sel[1]~input_o\ & (\input2[0]~input_o\ & ((\input1[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \Add1~0_combout\,
	datac => \input1[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux17~14_combout\);

-- Location: LCCOMB_X29_Y37_N22
\Mux17~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~8_combout\ = (\sel[0]~input_o\ & (((\sel[2]~input_o\) # (\Mux17~14_combout\)))) # (!\sel[0]~input_o\ & (\Mux17~7_combout\ & (!\sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux17~7_combout\,
	datac => \sel[2]~input_o\,
	datad => \Mux17~14_combout\,
	combout => \Mux17~8_combout\);

-- Location: LCCOMB_X29_Y37_N0
\Mux17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = \sel[1]~input_o\ $ (((\input1[0]~input_o\) # (\input2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datac => \input1[0]~input_o\,
	datad => \input2[0]~input_o\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X29_Y37_N8
\Mux17~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~10_combout\ = (\sel[2]~input_o\ & ((\Mux17~8_combout\ & (\Mux17~9_combout\)) # (!\Mux17~8_combout\ & ((\Mux17~6_combout\))))) # (!\sel[2]~input_o\ & (((\Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Mux17~9_combout\,
	datac => \Mux17~8_combout\,
	datad => \Mux17~6_combout\,
	combout => \Mux17~10_combout\);

-- Location: LCCOMB_X29_Y38_N0
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((\input1[0]~input_o\ & !\input2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[0]~input_o\,
	datab => \input2[0]~input_o\,
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X29_Y38_N2
\LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((\input2[1]~input_o\ & ((!\LessThan2~1_cout\) # (!\input1[1]~input_o\))) # (!\input2[1]~input_o\ & (!\input1[1]~input_o\ & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]~input_o\,
	datab => \input1[1]~input_o\,
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X29_Y38_N4
\LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\input1[2]~input_o\ & ((!\LessThan2~3_cout\) # (!\input2[2]~input_o\))) # (!\input1[2]~input_o\ & (!\input2[2]~input_o\ & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[2]~input_o\,
	datab => \input2[2]~input_o\,
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X29_Y38_N6
\LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\input1[3]~input_o\ & (\input2[3]~input_o\ & !\LessThan2~5_cout\)) # (!\input1[3]~input_o\ & ((\input2[3]~input_o\) # (!\LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[3]~input_o\,
	datab => \input2[3]~input_o\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X29_Y38_N8
\LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\input2[4]~input_o\ & (\input1[4]~input_o\ & !\LessThan2~7_cout\)) # (!\input2[4]~input_o\ & ((\input1[4]~input_o\) # (!\LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[4]~input_o\,
	datab => \input1[4]~input_o\,
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X29_Y38_N10
\LessThan2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\input2[5]~input_o\ & ((!\LessThan2~9_cout\) # (!\input1[5]~input_o\))) # (!\input2[5]~input_o\ & (!\input1[5]~input_o\ & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[5]~input_o\,
	datab => \input1[5]~input_o\,
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X29_Y38_N12
\LessThan2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((\input2[6]~input_o\ & (\input1[6]~input_o\ & !\LessThan2~11_cout\)) # (!\input2[6]~input_o\ & ((\input1[6]~input_o\) # (!\LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[6]~input_o\,
	datab => \input1[6]~input_o\,
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X29_Y38_N14
\LessThan2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~15_cout\ = CARRY((\input2[7]~input_o\ & ((!\LessThan2~13_cout\) # (!\input1[7]~input_o\))) # (!\input2[7]~input_o\ & (!\input1[7]~input_o\ & !\LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[7]~input_o\,
	datab => \input1[7]~input_o\,
	datad => VCC,
	cin => \LessThan2~13_cout\,
	cout => \LessThan2~15_cout\);

-- Location: LCCOMB_X29_Y38_N16
\LessThan2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~17_cout\ = CARRY((\input2[8]~input_o\ & (\input1[8]~input_o\ & !\LessThan2~15_cout\)) # (!\input2[8]~input_o\ & ((\input1[8]~input_o\) # (!\LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[8]~input_o\,
	datab => \input1[8]~input_o\,
	datad => VCC,
	cin => \LessThan2~15_cout\,
	cout => \LessThan2~17_cout\);

-- Location: LCCOMB_X29_Y38_N18
\LessThan2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~19_cout\ = CARRY((\input1[9]~input_o\ & (\input2[9]~input_o\ & !\LessThan2~17_cout\)) # (!\input1[9]~input_o\ & ((\input2[9]~input_o\) # (!\LessThan2~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[9]~input_o\,
	datab => \input2[9]~input_o\,
	datad => VCC,
	cin => \LessThan2~17_cout\,
	cout => \LessThan2~19_cout\);

-- Location: LCCOMB_X29_Y38_N20
\LessThan2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~21_cout\ = CARRY((\input1[10]~input_o\ & ((!\LessThan2~19_cout\) # (!\input2[10]~input_o\))) # (!\input1[10]~input_o\ & (!\input2[10]~input_o\ & !\LessThan2~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[10]~input_o\,
	datab => \input2[10]~input_o\,
	datad => VCC,
	cin => \LessThan2~19_cout\,
	cout => \LessThan2~21_cout\);

-- Location: LCCOMB_X29_Y38_N22
\LessThan2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~23_cout\ = CARRY((\input1[11]~input_o\ & (\input2[11]~input_o\ & !\LessThan2~21_cout\)) # (!\input1[11]~input_o\ & ((\input2[11]~input_o\) # (!\LessThan2~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[11]~input_o\,
	datab => \input2[11]~input_o\,
	datad => VCC,
	cin => \LessThan2~21_cout\,
	cout => \LessThan2~23_cout\);

-- Location: LCCOMB_X29_Y38_N24
\LessThan2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~25_cout\ = CARRY((\input1[12]~input_o\ & ((!\LessThan2~23_cout\) # (!\input2[12]~input_o\))) # (!\input1[12]~input_o\ & (!\input2[12]~input_o\ & !\LessThan2~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[12]~input_o\,
	datab => \input2[12]~input_o\,
	datad => VCC,
	cin => \LessThan2~23_cout\,
	cout => \LessThan2~25_cout\);

-- Location: LCCOMB_X29_Y38_N26
\LessThan2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~27_cout\ = CARRY((\input1[13]~input_o\ & (\input2[13]~input_o\ & !\LessThan2~25_cout\)) # (!\input1[13]~input_o\ & ((\input2[13]~input_o\) # (!\LessThan2~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[13]~input_o\,
	datab => \input2[13]~input_o\,
	datad => VCC,
	cin => \LessThan2~25_cout\,
	cout => \LessThan2~27_cout\);

-- Location: LCCOMB_X29_Y38_N28
\LessThan2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~29_cout\ = CARRY((\input2[14]~input_o\ & (\input1[14]~input_o\ & !\LessThan2~27_cout\)) # (!\input2[14]~input_o\ & ((\input1[14]~input_o\) # (!\LessThan2~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[14]~input_o\,
	datab => \input1[14]~input_o\,
	datad => VCC,
	cin => \LessThan2~27_cout\,
	cout => \LessThan2~29_cout\);

-- Location: LCCOMB_X29_Y38_N30
\LessThan2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~30_combout\ = (\input2[15]~input_o\ & (\LessThan2~29_cout\ & \input1[15]~input_o\)) # (!\input2[15]~input_o\ & ((\LessThan2~29_cout\) # (\input1[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[15]~input_o\,
	datad => \input1[15]~input_o\,
	cin => \LessThan2~29_cout\,
	combout => \LessThan2~30_combout\);

-- Location: LCCOMB_X29_Y37_N4
\Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\LessThan2~30_combout\ & ((\sel[1]~input_o\ & ((\input1[0]~input_o\))) # (!\sel[1]~input_o\ & (\input2[0]~input_o\)))) # (!\LessThan2~30_combout\ & (\input2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \LessThan2~30_combout\,
	datac => \input1[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X29_Y37_N16
\Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\sel[1]~input_o\ & (((\input2[15]~input_o\) # (!\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\input1[2]~input_o\ & ((\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \input1[2]~input_o\,
	datac => \input2[15]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X29_Y37_N10
\Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\sel[2]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[2]~input_o\ & (\Mux17~2_combout\ & ((\input2[8]~input_o\) # (\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[8]~input_o\,
	datab => \Mux17~2_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X29_Y37_N18
\Mux17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\sel[2]~input_o\ & (\Mux17~4_combout\ & ((\Mux17~3_combout\) # (!\sel[1]~input_o\)))) # (!\sel[2]~input_o\ & (((\Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mux17~4_combout\,
	datac => \sel[2]~input_o\,
	datad => \Mux17~3_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X29_Y37_N30
\Mux17~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~11_combout\ = (\sel[3]~input_o\ & ((\Mux17~5_combout\))) # (!\sel[3]~input_o\ & (\Mux17~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[3]~input_o\,
	datac => \Mux17~10_combout\,
	datad => \Mux17~5_combout\,
	combout => \Mux17~11_combout\);

-- Location: LCCOMB_X26_Y38_N26
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\sel[0]~input_o\ & (\sel[2]~input_o\ & (\sel[1]~input_o\ & \sel[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: CLKCTRL_G3
\Mux0~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux0~0clkctrl_outclk\);

-- Location: LCCOMB_X29_Y37_N14
\output[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[0]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\output[0]$latch~combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((\Mux17~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output[0]$latch~combout\,
	datac => \Mux17~11_combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[0]$latch~combout\);

-- Location: LCCOMB_X27_Y35_N28
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\sel[2]~input_o\ & (\sel[1]~input_o\ & \sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X26_Y36_N8
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ((!\sel[1]~input_o\ & \sel[0]~input_o\)) # (!\sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X29_Y36_N0
\Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~1_cout\ = CARRY(!\input2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input2[0]~input_o\,
	datad => VCC,
	cout => \Add2~1_cout\);

-- Location: LCCOMB_X29_Y36_N2
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\input2[1]~input_o\ & ((\Add2~1_cout\) # (GND))) # (!\input2[1]~input_o\ & (!\Add2~1_cout\))
-- \Add2~3\ = CARRY((\input2[1]~input_o\) # (!\Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input2[1]~input_o\,
	datad => VCC,
	cin => \Add2~1_cout\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X26_Y37_N28
\Mux16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\sel[1]~input_o\ & ((\input2[9]~input_o\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\input1[0]~input_o\ & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \input2[9]~input_o\,
	datac => \input1[0]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X26_Y37_N26
\Mux16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux16~4_combout\ & ((\input2[14]~input_o\) # ((!\sel[0]~input_o\)))) # (!\Mux16~4_combout\ & (((\input1[3]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \input2[14]~input_o\,
	datac => \input1[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X26_Y36_N14
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\sel[2]~input_o\ & (((\LessThan2~30_combout\) # (!\sel[0]~input_o\)) # (!\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \LessThan2~30_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X26_Y37_N24
\Mux16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux14~1_combout\ & ((\Mux14~2_combout\ & (\Add2~2_combout\)) # (!\Mux14~2_combout\ & ((\Mux16~5_combout\))))) # (!\Mux14~1_combout\ & (((!\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Add2~2_combout\,
	datac => \Mux16~5_combout\,
	datad => \Mux14~2_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X26_Y37_N14
\Mux16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\Mux14~0_combout\ & ((\Mux16~6_combout\ & ((\input2[1]~input_o\))) # (!\Mux16~6_combout\ & (\input1[1]~input_o\)))) # (!\Mux14~0_combout\ & (\Mux16~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux16~6_combout\,
	datac => \input1[1]~input_o\,
	datad => \input2[1]~input_o\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X27_Y37_N8
\output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\input1[1]~input_o\ & \input2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input1[1]~input_o\,
	datad => \input2[1]~input_o\,
	combout => \output~0_combout\);

-- Location: LCCOMB_X27_Y37_N18
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\input1[1]~input_o\ & ((\input2[1]~input_o\ & (\Add0~1\ & VCC)) # (!\input2[1]~input_o\ & (!\Add0~1\)))) # (!\input1[1]~input_o\ & ((\input2[1]~input_o\ & (!\Add0~1\)) # (!\input2[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\input1[1]~input_o\ & (!\input2[1]~input_o\ & !\Add0~1\)) # (!\input1[1]~input_o\ & ((!\Add0~1\) # (!\input2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[1]~input_o\,
	datab => \input2[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X25_Y38_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\input1[1]~input_o\ & ((\input2[1]~input_o\ & (!\Add1~1\)) # (!\input2[1]~input_o\ & (\Add1~1\ & VCC)))) # (!\input1[1]~input_o\ & ((\input2[1]~input_o\ & ((\Add1~1\) # (GND))) # (!\input2[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\input1[1]~input_o\ & (\input2[1]~input_o\ & !\Add1~1\)) # (!\input1[1]~input_o\ & ((\input2[1]~input_o\) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[1]~input_o\,
	datab => \input2[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X27_Y37_N10
\Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\Add1~2_combout\))) # (!\sel[0]~input_o\ & (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Add0~2_combout\,
	datac => \Add1~2_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X27_Y37_N2
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\sel[1]~input_o\ & ((\Mux16~1_combout\ & ((\output~0_combout\))) # (!\Mux16~1_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT1\)))) # (!\sel[1]~input_o\ & (((\Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datac => \output~0_combout\,
	datad => \Mux16~1_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X27_Y37_N12
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\input2[1]~input_o\ & ((\sel[0]~input_o\ & ((!\input1[1]~input_o\))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\)))) # (!\input2[1]~input_o\ & (\sel[1]~input_o\ $ (((\input1[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \input1[1]~input_o\,
	datad => \input2[1]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X27_Y37_N0
\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & ((\Mux16~0_combout\))) # (!\sel[2]~input_o\ & (\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Mux16~2_combout\,
	datac => \sel[3]~input_o\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X26_Y37_N4
\Mux16~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (\Mux16~3_combout\) # ((\Mux16~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~7_combout\,
	datac => \Mux16~3_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux16~8_combout\);

-- Location: LCCOMB_X26_Y37_N8
\output[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[1]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[1]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux16~8_combout\,
	datac => \output[1]$latch~combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[1]$latch~combout\);

-- Location: LCCOMB_X26_Y35_N0
\Mux17~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~12_combout\ = (\sel[1]~input_o\ & ((\input2[13]~input_o\))) # (!\sel[1]~input_o\ & (\input1[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datac => \input1[4]~input_o\,
	datad => \input2[13]~input_o\,
	combout => \Mux17~12_combout\);

-- Location: LCCOMB_X29_Y36_N4
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\input2[2]~input_o\ & (!\Add2~3\ & VCC)) # (!\input2[2]~input_o\ & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((!\input2[2]~input_o\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[2]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X26_Y36_N24
\Mux15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux14~2_combout\ & (((\Add2~4_combout\ & \Mux14~1_combout\)))) # (!\Mux14~2_combout\ & ((\Mux17~12_combout\) # ((!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux17~12_combout\,
	datac => \Add2~4_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X26_Y38_N30
\Mux15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\Mux15~5_combout\ & (((\input2[2]~input_o\) # (!\Mux14~0_combout\)))) # (!\Mux15~5_combout\ & (\input1[2]~input_o\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[2]~input_o\,
	datab => \Mux15~5_combout\,
	datac => \Mux14~0_combout\,
	datad => \input2[2]~input_o\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X27_Y38_N16
\Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = ((\sel[0]~input_o\) # (\sel[2]~input_o\)) # (!\sel[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X27_Y37_N20
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\input2[2]~input_o\ $ (\input1[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\input2[2]~input_o\ & ((\input1[2]~input_o\) # (!\Add0~3\))) # (!\input2[2]~input_o\ & (\input1[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[2]~input_o\,
	datab => \input1[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X26_Y38_N14
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\sel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT2\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\Add0~4_combout\ & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \sel[1]~input_o\,
	datac => \Add0~4_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X27_Y37_N6
\output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (\input1[2]~input_o\ & \input2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input1[2]~input_o\,
	datad => \input2[2]~input_o\,
	combout => \output~1_combout\);

-- Location: LCCOMB_X25_Y38_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\input1[2]~input_o\ $ (\input2[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\input1[2]~input_o\ & ((!\Add1~3\) # (!\input2[2]~input_o\))) # (!\input1[2]~input_o\ & (!\input2[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[2]~input_o\,
	datab => \input2[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X26_Y38_N0
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\sel[0]~input_o\ & ((\Mux15~1_combout\ & (\output~1_combout\)) # (!\Mux15~1_combout\ & ((\Add1~4_combout\))))) # (!\sel[0]~input_o\ & (\Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux15~1_combout\,
	datac => \output~1_combout\,
	datad => \Add1~4_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X27_Y38_N26
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\sel[3]~input_o\ & ((\sel[1]~input_o\) # ((\sel[0]~input_o\) # (\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X26_Y38_N24
\Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux15~3_combout\ & (((\Mux15~2_combout\) # (\Mux15~0_combout\)))) # (!\Mux15~3_combout\ & (\input1[1]~input_o\ & ((!\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[1]~input_o\,
	datab => \Mux15~3_combout\,
	datac => \Mux15~2_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X26_Y38_N10
\Mux15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux15~4_combout\ & ((\Mux15~6_combout\) # ((!\Mux15~0_combout\)))) # (!\Mux15~4_combout\ & (((\input2[10]~input_o\ & \Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~6_combout\,
	datab => \Mux15~4_combout\,
	datac => \input2[10]~input_o\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X26_Y38_N2
\Mux15~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\input2[2]~input_o\ & ((\sel[0]~input_o\ & (!\input1[2]~input_o\)) # (!\sel[0]~input_o\ & ((!\sel[1]~input_o\))))) # (!\input2[2]~input_o\ & (\input1[2]~input_o\ $ ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \input2[2]~input_o\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X26_Y38_N12
\Mux15~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\sel[3]~input_o\ & (\Mux15~7_combout\)) # (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & ((\Mux15~8_combout\))) # (!\sel[2]~input_o\ & (\Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux15~7_combout\,
	datac => \Mux15~8_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X26_Y38_N4
\output[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[2]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[2]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux15~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~9_combout\,
	datac => \output[2]$latch~combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[2]$latch~combout\);

-- Location: LCCOMB_X24_Y36_N12
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\input2[3]~input_o\ & ((\sel[0]~input_o\ & ((!\input1[3]~input_o\))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\)))) # (!\input2[3]~input_o\ & (\sel[1]~input_o\ $ ((\input1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \input1[3]~input_o\,
	datac => \input2[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X25_Y38_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\input1[3]~input_o\ & ((\input2[3]~input_o\ & (!\Add1~5\)) # (!\input2[3]~input_o\ & (\Add1~5\ & VCC)))) # (!\input1[3]~input_o\ & ((\input2[3]~input_o\ & ((\Add1~5\) # (GND))) # (!\input2[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\input1[3]~input_o\ & (\input2[3]~input_o\ & !\Add1~5\)) # (!\input1[3]~input_o\ & ((\input2[3]~input_o\) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[3]~input_o\,
	datab => \input2[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X27_Y37_N22
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\input1[3]~input_o\ & ((\input2[3]~input_o\ & (\Add0~5\ & VCC)) # (!\input2[3]~input_o\ & (!\Add0~5\)))) # (!\input1[3]~input_o\ & ((\input2[3]~input_o\ & (!\Add0~5\)) # (!\input2[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\input1[3]~input_o\ & (!\input2[3]~input_o\ & !\Add0~5\)) # (!\input1[3]~input_o\ & ((!\Add0~5\) # (!\input2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[3]~input_o\,
	datab => \input2[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X24_Y36_N10
\Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\Add1~6_combout\)) # (!\sel[0]~input_o\ & ((\Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Add1~6_combout\,
	datac => \Add0~6_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X30_Y36_N20
\output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~2_combout\ = (\input2[3]~input_o\ & \input1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input2[3]~input_o\,
	datad => \input1[3]~input_o\,
	combout => \output~2_combout\);

-- Location: LCCOMB_X24_Y36_N28
\Mux14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux14~4_combout\ & (((\output~2_combout\) # (!\sel[1]~input_o\)))) # (!\Mux14~4_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \output~2_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X24_Y36_N2
\Mux14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & (\Mux14~3_combout\)) # (!\sel[2]~input_o\ & ((\Mux14~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux14~3_combout\,
	datac => \Mux14~5_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X29_Y36_N6
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\input2[3]~input_o\ & ((\Add2~5\) # (GND))) # (!\input2[3]~input_o\ & (!\Add2~5\))
-- \Add2~7\ = CARRY((\input2[3]~input_o\) # (!\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[3]~input_o\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X25_Y36_N24
\Mux14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\sel[1]~input_o\ & (((\input2[11]~input_o\) # (\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\input1[2]~input_o\ & ((!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \input2[11]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X25_Y36_N6
\Mux14~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\sel[0]~input_o\ & ((\Mux14~7_combout\ & (\input2[12]~input_o\)) # (!\Mux14~7_combout\ & ((\input1[5]~input_o\))))) # (!\sel[0]~input_o\ & (((\Mux14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[12]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \Mux14~7_combout\,
	datad => \input1[5]~input_o\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X25_Y36_N28
\Mux14~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (\Mux14~2_combout\ & (\Add2~6_combout\ & ((\Mux14~1_combout\)))) # (!\Mux14~2_combout\ & (((\Mux14~8_combout\) # (!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Add2~6_combout\,
	datac => \Mux14~8_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X24_Y36_N0
\Mux14~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~10_combout\ = (\Mux14~9_combout\ & ((\input2[3]~input_o\) # ((!\Mux14~0_combout\)))) # (!\Mux14~9_combout\ & (((\Mux14~0_combout\ & \input1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~9_combout\,
	datab => \input2[3]~input_o\,
	datac => \Mux14~0_combout\,
	datad => \input1[3]~input_o\,
	combout => \Mux14~10_combout\);

-- Location: LCCOMB_X24_Y36_N6
\Mux14~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~11_combout\ = (\Mux14~6_combout\) # ((\sel[3]~input_o\ & \Mux14~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~6_combout\,
	datac => \sel[3]~input_o\,
	datad => \Mux14~10_combout\,
	combout => \Mux14~11_combout\);

-- Location: LCCOMB_X24_Y36_N8
\output[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[3]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\output[3]$latch~combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((\Mux14~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output[3]$latch~combout\,
	datac => \Mux14~11_combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[3]$latch~combout\);

-- Location: LCCOMB_X29_Y36_N8
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\input2[4]~input_o\ & (!\Add2~7\ & VCC)) # (!\input2[4]~input_o\ & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((!\input2[4]~input_o\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input2[4]~input_o\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X30_Y36_N24
\Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\sel[1]~input_o\ & (((\input2[12]~input_o\) # (\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\input1[3]~input_o\ & ((!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \input1[3]~input_o\,
	datac => \input2[12]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X30_Y36_N10
\Mux13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux13~4_combout\ & (((\input2[11]~input_o\)) # (!\sel[0]~input_o\))) # (!\Mux13~4_combout\ & (\sel[0]~input_o\ & (\input1[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => \sel[0]~input_o\,
	datac => \input1[6]~input_o\,
	datad => \input2[11]~input_o\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X30_Y36_N12
\Mux13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux14~2_combout\ & (\Add2~8_combout\ & ((\Mux14~1_combout\)))) # (!\Mux14~2_combout\ & (((\Mux13~5_combout\) # (!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Mux13~5_combout\,
	datac => \Mux14~2_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X30_Y36_N22
\Mux13~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux14~0_combout\ & ((\Mux13~6_combout\ & ((\input2[4]~input_o\))) # (!\Mux13~6_combout\ & (\input1[4]~input_o\)))) # (!\Mux14~0_combout\ & (((\Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[4]~input_o\,
	datab => \Mux14~0_combout\,
	datac => \input2[4]~input_o\,
	datad => \Mux13~6_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X30_Y36_N26
\output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~3_combout\ = (\input2[4]~input_o\ & \input1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input2[4]~input_o\,
	datac => \input1[4]~input_o\,
	combout => \output~3_combout\);

-- Location: LCCOMB_X27_Y37_N24
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\input1[4]~input_o\ $ (\input2[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\input1[4]~input_o\ & ((\input2[4]~input_o\) # (!\Add0~7\))) # (!\input1[4]~input_o\ & (\input2[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[4]~input_o\,
	datab => \input2[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X30_Y36_N8
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\sel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT4\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\Add0~8_combout\ & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \sel[1]~input_o\,
	datac => \Add0~8_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X25_Y38_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\input2[4]~input_o\ $ (\input1[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\input2[4]~input_o\ & (\input1[4]~input_o\ & !\Add1~7\)) # (!\input2[4]~input_o\ & ((\input1[4]~input_o\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[4]~input_o\,
	datab => \input1[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X30_Y36_N28
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux13~1_combout\ & ((\output~3_combout\) # ((!\sel[0]~input_o\)))) # (!\Mux13~1_combout\ & (((\sel[0]~input_o\ & \Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~3_combout\,
	datab => \Mux13~1_combout\,
	datac => \sel[0]~input_o\,
	datad => \Add1~8_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X30_Y36_N30
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\input2[4]~input_o\ & ((\sel[0]~input_o\ & (!\input1[4]~input_o\)) # (!\sel[0]~input_o\ & ((!\sel[1]~input_o\))))) # (!\input2[4]~input_o\ & (\input1[4]~input_o\ $ ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[4]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \input2[4]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X30_Y36_N14
\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & ((\Mux13~0_combout\))) # (!\sel[2]~input_o\ & (\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Mux13~2_combout\,
	datac => \Mux13~0_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X30_Y36_N0
\Mux13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\Mux13~3_combout\) # ((\Mux13~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~7_combout\,
	datab => \sel[3]~input_o\,
	datad => \Mux13~3_combout\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X30_Y36_N4
\output[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[4]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[4]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux13~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~8_combout\,
	datac => \output[4]$latch~combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[4]$latch~combout\);

-- Location: LCCOMB_X26_Y35_N20
\Mux11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\input2[5]~input_o\ & ((\sel[0]~input_o\ & (!\input1[5]~input_o\)) # (!\sel[0]~input_o\ & ((!\sel[1]~input_o\))))) # (!\input2[5]~input_o\ & (\input1[5]~input_o\ $ ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[5]~input_o\,
	datab => \input1[5]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X27_Y37_N26
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\input1[5]~input_o\ & ((\input2[5]~input_o\ & (\Add0~9\ & VCC)) # (!\input2[5]~input_o\ & (!\Add0~9\)))) # (!\input1[5]~input_o\ & ((\input2[5]~input_o\ & (!\Add0~9\)) # (!\input2[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\input1[5]~input_o\ & (!\input2[5]~input_o\ & !\Add0~9\)) # (!\input1[5]~input_o\ & ((!\Add0~9\) # (!\input2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[5]~input_o\,
	datab => \input2[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X27_Y35_N16
\Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\sel[1]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT5\) # (\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\Add0~10_combout\ & ((!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X26_Y35_N30
\output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~4_combout\ = (\input1[5]~input_o\ & \input2[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[5]~input_o\,
	datad => \input2[5]~input_o\,
	combout => \output~4_combout\);

-- Location: LCCOMB_X25_Y38_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\input2[5]~input_o\ & ((\input1[5]~input_o\ & (!\Add1~9\)) # (!\input1[5]~input_o\ & ((\Add1~9\) # (GND))))) # (!\input2[5]~input_o\ & ((\input1[5]~input_o\ & (\Add1~9\ & VCC)) # (!\input1[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\input2[5]~input_o\ & ((!\Add1~9\) # (!\input1[5]~input_o\))) # (!\input2[5]~input_o\ & (!\input1[5]~input_o\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[5]~input_o\,
	datab => \input1[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X27_Y35_N26
\Mux11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\sel[0]~input_o\ & ((\Mux11~4_combout\ & (\output~4_combout\)) # (!\Mux11~4_combout\ & ((\Add1~10_combout\))))) # (!\sel[0]~input_o\ & (\Mux11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux11~4_combout\,
	datac => \output~4_combout\,
	datad => \Add1~10_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X27_Y35_N0
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\sel[3]~input_o\ & (((\sel[2]~input_o\) # (\sel[1]~input_o\)) # (!\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X27_Y35_N30
\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\sel[3]~input_o\ & (!\sel[2]~input_o\ & \sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[3]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X27_Y35_N24
\Mux11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux11~2_combout\ & (((\Mux11~3_combout\)))) # (!\Mux11~2_combout\ & ((\Mux11~3_combout\ & ((\input1[7]~input_o\))) # (!\Mux11~3_combout\ & (\Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Mux11~2_combout\,
	datac => \Mux11~3_combout\,
	datad => \input1[7]~input_o\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X29_Y36_N10
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\input2[5]~input_o\ & ((\Add2~9\) # (GND))) # (!\input2[5]~input_o\ & (!\Add2~9\))
-- \Add2~11\ = CARRY((\input2[5]~input_o\) # (!\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[5]~input_o\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X26_Y36_N18
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux14~2_combout\ & (((\Mux14~1_combout\ & \Add2~10_combout\)))) # (!\Mux14~2_combout\ & ((\Mux17~12_combout\) # ((!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux17~12_combout\,
	datac => \Mux14~1_combout\,
	datad => \Add2~10_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X27_Y35_N22
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux14~0_combout\ & ((\Mux11~0_combout\ & ((\input2[5]~input_o\))) # (!\Mux11~0_combout\ & (\input1[5]~input_o\)))) # (!\Mux14~0_combout\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[5]~input_o\,
	datab => \Mux14~0_combout\,
	datac => \Mux11~0_combout\,
	datad => \input2[5]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X27_Y35_N18
\Mux11~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\Mux11~6_combout\ & (((\input2[10]~input_o\)) # (!\Mux11~2_combout\))) # (!\Mux11~6_combout\ & (\Mux11~2_combout\ & (\Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~6_combout\,
	datab => \Mux11~2_combout\,
	datac => \Mux11~1_combout\,
	datad => \input2[10]~input_o\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X27_Y35_N8
\Mux11~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\sel[2]~input_o\ & ((\sel[3]~input_o\ & ((\Mux11~7_combout\))) # (!\sel[3]~input_o\ & (\Mux11~8_combout\)))) # (!\sel[2]~input_o\ & (((\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~8_combout\,
	datab => \sel[2]~input_o\,
	datac => \Mux11~7_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux11~9_combout\);

-- Location: LCCOMB_X27_Y35_N20
\output[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[5]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[5]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux11~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0clkctrl_outclk\,
	datab => \Mux11~9_combout\,
	datad => \output[5]$latch~combout\,
	combout => \output[5]$latch~combout\);

-- Location: LCCOMB_X26_Y36_N0
\output~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~5_combout\ = (\input2[6]~input_o\ & \input1[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input2[6]~input_o\,
	datad => \input1[6]~input_o\,
	combout => \output~5_combout\);

-- Location: LCCOMB_X27_Y37_N28
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\input1[6]~input_o\ $ (\input2[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\input1[6]~input_o\ & ((\input2[6]~input_o\) # (!\Add0~11\))) # (!\input1[6]~input_o\ & (\input2[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[6]~input_o\,
	datab => \input2[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X25_Y38_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\input1[6]~input_o\ $ (\input2[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\input1[6]~input_o\ & ((!\Add1~11\) # (!\input2[6]~input_o\))) # (!\input1[6]~input_o\ & (!\input2[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[6]~input_o\,
	datab => \input2[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X26_Y37_N6
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\Add1~12_combout\))) # (!\sel[0]~input_o\ & (\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Add0~12_combout\,
	datac => \Add1~12_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X26_Y37_N0
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\sel[1]~input_o\ & ((\Mux10~1_combout\ & (\output~5_combout\)) # (!\Mux10~1_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT6\))))) # (!\sel[1]~input_o\ & (((\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \output~5_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X25_Y37_N4
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\input2[6]~input_o\ & ((\sel[0]~input_o\ & (!\input1[6]~input_o\)) # (!\sel[0]~input_o\ & ((!\sel[1]~input_o\))))) # (!\input2[6]~input_o\ & (\input1[6]~input_o\ $ ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[6]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \input2[6]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X25_Y37_N30
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & ((\Mux10~0_combout\))) # (!\sel[2]~input_o\ & (\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux10~0_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X25_Y37_N8
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\sel[1]~input_o\ & (((\input2[14]~input_o\) # (\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\input1[5]~input_o\ & ((!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[5]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \input2[14]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X25_Y37_N2
\Mux10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\sel[0]~input_o\ & ((\Mux10~4_combout\ & (\input2[9]~input_o\)) # (!\Mux10~4_combout\ & ((\input1[8]~input_o\))))) # (!\sel[0]~input_o\ & (\Mux10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux10~4_combout\,
	datac => \input2[9]~input_o\,
	datad => \input1[8]~input_o\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X29_Y36_N12
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\input2[6]~input_o\ & (!\Add2~11\ & VCC)) # (!\input2[6]~input_o\ & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((!\input2[6]~input_o\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[6]~input_o\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X25_Y37_N28
\Mux10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux14~2_combout\ & (\Mux14~1_combout\ & ((\Add2~12_combout\)))) # (!\Mux14~2_combout\ & (((\Mux10~5_combout\)) # (!\Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux10~5_combout\,
	datad => \Add2~12_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X25_Y37_N6
\Mux10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux10~6_combout\ & ((\input2[6]~input_o\) # ((!\Mux14~0_combout\)))) # (!\Mux10~6_combout\ & (((\input1[6]~input_o\ & \Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \input2[6]~input_o\,
	datac => \input1[6]~input_o\,
	datad => \Mux14~0_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X25_Y37_N12
\Mux10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\Mux10~3_combout\) # ((\sel[3]~input_o\ & \Mux10~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datac => \sel[3]~input_o\,
	datad => \Mux10~7_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X25_Y37_N24
\output[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[6]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[6]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux10~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~8_combout\,
	datab => \output[6]$latch~combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[6]$latch~combout\);

-- Location: LCCOMB_X25_Y37_N18
\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\sel[1]~input_o\ & (((\input2[15]~input_o\) # (\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\input1[6]~input_o\ & ((!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[6]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \input2[15]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X25_Y37_N16
\Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\sel[0]~input_o\ & ((\Mux9~4_combout\ & ((\input2[8]~input_o\))) # (!\Mux9~4_combout\ & (\input1[9]~input_o\)))) # (!\sel[0]~input_o\ & (\Mux9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux9~4_combout\,
	datac => \input1[9]~input_o\,
	datad => \input2[8]~input_o\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X29_Y36_N14
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\input2[7]~input_o\ & ((\Add2~13\) # (GND))) # (!\input2[7]~input_o\ & (!\Add2~13\))
-- \Add2~15\ = CARRY((\input2[7]~input_o\) # (!\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input2[7]~input_o\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X25_Y37_N10
\Mux9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux14~2_combout\ & (\Mux14~1_combout\ & ((\Add2~14_combout\)))) # (!\Mux14~2_combout\ & (((\Mux9~5_combout\)) # (!\Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux9~5_combout\,
	datad => \Add2~14_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X25_Y37_N20
\Mux9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\Mux9~6_combout\ & (((\input2[7]~input_o\) # (!\Mux14~0_combout\)))) # (!\Mux9~6_combout\ & (\input1[7]~input_o\ & ((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~6_combout\,
	datab => \input1[7]~input_o\,
	datac => \input2[7]~input_o\,
	datad => \Mux14~0_combout\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X30_Y36_N18
\output~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~6_combout\ = (\input2[7]~input_o\ & \input1[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input2[7]~input_o\,
	datad => \input1[7]~input_o\,
	combout => \output~6_combout\);

-- Location: LCCOMB_X25_Y38_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\input1[7]~input_o\ & ((\input2[7]~input_o\ & (!\Add1~13\)) # (!\input2[7]~input_o\ & (\Add1~13\ & VCC)))) # (!\input1[7]~input_o\ & ((\input2[7]~input_o\ & ((\Add1~13\) # (GND))) # (!\input2[7]~input_o\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\input1[7]~input_o\ & (\input2[7]~input_o\ & !\Add1~13\)) # (!\input1[7]~input_o\ & ((\input2[7]~input_o\) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[7]~input_o\,
	datab => \input2[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X27_Y37_N30
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\input2[7]~input_o\ & ((\input1[7]~input_o\ & (\Add0~13\ & VCC)) # (!\input1[7]~input_o\ & (!\Add0~13\)))) # (!\input2[7]~input_o\ & ((\input1[7]~input_o\ & (!\Add0~13\)) # (!\input1[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\input2[7]~input_o\ & (!\input1[7]~input_o\ & !\Add0~13\)) # (!\input2[7]~input_o\ & ((!\Add0~13\) # (!\input1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[7]~input_o\,
	datab => \input1[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X27_Y37_N4
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\sel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT7\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\Add0~14_combout\ & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \Add0~14_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X26_Y37_N30
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\sel[0]~input_o\ & ((\Mux9~1_combout\ & (\output~6_combout\)) # (!\Mux9~1_combout\ & ((\Add1~14_combout\))))) # (!\sel[0]~input_o\ & (((\Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \output~6_combout\,
	datac => \Add1~14_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X25_Y37_N22
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\input2[7]~input_o\ & ((\sel[0]~input_o\ & ((!\input1[7]~input_o\))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\)))) # (!\input2[7]~input_o\ & ((\sel[1]~input_o\ $ (\input1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \input2[7]~input_o\,
	datad => \input1[7]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X25_Y37_N0
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & ((\Mux9~0_combout\))) # (!\sel[2]~input_o\ & (\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux9~2_combout\,
	datac => \sel[2]~input_o\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X25_Y37_N26
\Mux9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\Mux9~3_combout\) # ((\Mux9~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~7_combout\,
	datac => \Mux9~3_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X25_Y37_N14
\output[7]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[7]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[7]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~8_combout\,
	datac => \output[7]$latch~combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[7]$latch~combout\);

-- Location: LCCOMB_X26_Y36_N2
\Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\sel[1]~input_o\ & (((\input2[0]~input_o\) # (\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\input1[7]~input_o\ & ((!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \input1[7]~input_o\,
	datac => \input2[0]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X26_Y36_N16
\Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\sel[0]~input_o\ & ((\Mux8~4_combout\ & (\input2[7]~input_o\)) # (!\Mux8~4_combout\ & ((\input1[10]~input_o\))))) # (!\sel[0]~input_o\ & (((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[7]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \Mux8~4_combout\,
	datad => \input1[10]~input_o\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X29_Y36_N16
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\input2[8]~input_o\ & (!\Add2~15\ & VCC)) # (!\input2[8]~input_o\ & (\Add2~15\ $ (GND)))
-- \Add2~17\ = CARRY((!\input2[8]~input_o\ & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[8]~input_o\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X26_Y36_N6
\Mux8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux14~1_combout\ & ((\Mux14~2_combout\ & ((\Add2~16_combout\))) # (!\Mux14~2_combout\ & (\Mux8~5_combout\)))) # (!\Mux14~1_combout\ & (!\Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux14~2_combout\,
	datac => \Mux8~5_combout\,
	datad => \Add2~16_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X25_Y36_N4
\Mux8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux14~0_combout\ & ((\Mux8~6_combout\ & (\input2[8]~input_o\)) # (!\Mux8~6_combout\ & ((\input1[8]~input_o\))))) # (!\Mux14~0_combout\ & (\Mux8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux8~6_combout\,
	datac => \input2[8]~input_o\,
	datad => \input1[8]~input_o\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X25_Y36_N22
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\input2[8]~input_o\ & ((\sel[0]~input_o\ & (!\input1[8]~input_o\)) # (!\sel[0]~input_o\ & ((!\sel[1]~input_o\))))) # (!\input2[8]~input_o\ & (\input1[8]~input_o\ $ (((\sel[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[8]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \input2[8]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X27_Y36_N0
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\input1[8]~input_o\ $ (\input2[8]~input_o\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\input1[8]~input_o\ & ((\input2[8]~input_o\) # (!\Add0~15\))) # (!\input1[8]~input_o\ & (\input2[8]~input_o\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[8]~input_o\,
	datab => \input2[8]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X25_Y38_N16
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\input1[8]~input_o\ $ (\input2[8]~input_o\ $ (\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\input1[8]~input_o\ & ((!\Add1~15\) # (!\input2[8]~input_o\))) # (!\input1[8]~input_o\ & (!\input2[8]~input_o\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[8]~input_o\,
	datab => \input2[8]~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X25_Y36_N20
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\Add1~16_combout\))) # (!\sel[0]~input_o\ & (\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \sel[1]~input_o\,
	datac => \Add1~16_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X25_Y36_N14
\output~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~7_combout\ = (\input2[8]~input_o\ & \input1[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input2[8]~input_o\,
	datad => \input1[8]~input_o\,
	combout => \output~7_combout\);

-- Location: LCCOMB_X25_Y36_N16
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux8~1_combout\ & (((\output~7_combout\) # (!\sel[1]~input_o\)))) # (!\Mux8~1_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT8\ & ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datab => \Mux8~1_combout\,
	datac => \output~7_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X25_Y36_N18
\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & (\Mux8~0_combout\)) # (!\sel[2]~input_o\ & ((\Mux8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[3]~input_o\,
	datac => \Mux8~0_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X25_Y36_N30
\Mux8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~3_combout\) # ((\sel[3]~input_o\ & \Mux8~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[3]~input_o\,
	datac => \Mux8~7_combout\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X25_Y36_N26
\output[8]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[8]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[8]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~8_combout\,
	datac => \output[8]$latch~combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[8]$latch~combout\);

-- Location: LCCOMB_X26_Y37_N2
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\sel[1]~input_o\ & ((\input2[1]~input_o\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\input1[8]~input_o\ & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \input2[1]~input_o\,
	datac => \input1[8]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X26_Y37_N16
\Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\sel[0]~input_o\ & ((\Mux7~4_combout\ & (\input2[6]~input_o\)) # (!\Mux7~4_combout\ & ((\input1[11]~input_o\))))) # (!\sel[0]~input_o\ & (\Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux7~4_combout\,
	datac => \input2[6]~input_o\,
	datad => \input1[11]~input_o\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X29_Y36_N18
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\input2[9]~input_o\ & ((\Add2~17\) # (GND))) # (!\input2[9]~input_o\ & (!\Add2~17\))
-- \Add2~19\ = CARRY((\input2[9]~input_o\) # (!\Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input2[9]~input_o\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X26_Y37_N10
\Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux14~2_combout\ & (((\Mux14~1_combout\ & \Add2~18_combout\)))) # (!\Mux14~2_combout\ & ((\Mux7~5_combout\) # ((!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux7~5_combout\,
	datac => \Mux14~1_combout\,
	datad => \Add2~18_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X26_Y37_N20
\Mux7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux14~0_combout\ & ((\Mux7~6_combout\ & ((\input2[9]~input_o\))) # (!\Mux7~6_combout\ & (\input1[9]~input_o\)))) # (!\Mux14~0_combout\ & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \input1[9]~input_o\,
	datac => \Mux7~6_combout\,
	datad => \input2[9]~input_o\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X27_Y37_N14
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\input2[9]~input_o\ & ((\sel[0]~input_o\ & ((!\input1[9]~input_o\))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\)))) # (!\input2[9]~input_o\ & (\sel[1]~input_o\ $ (((\input1[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \input2[9]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \input1[9]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X27_Y36_N2
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\input2[9]~input_o\ & ((\input1[9]~input_o\ & (\Add0~17\ & VCC)) # (!\input1[9]~input_o\ & (!\Add0~17\)))) # (!\input2[9]~input_o\ & ((\input1[9]~input_o\ & (!\Add0~17\)) # (!\input1[9]~input_o\ & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\input2[9]~input_o\ & (!\input1[9]~input_o\ & !\Add0~17\)) # (!\input2[9]~input_o\ & ((!\Add0~17\) # (!\input1[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[9]~input_o\,
	datab => \input1[9]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X30_Y37_N28
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\sel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT9\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\Add0~18_combout\ & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datac => \Add0~18_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X25_Y38_N18
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\input2[9]~input_o\ & ((\input1[9]~input_o\ & (!\Add1~17\)) # (!\input1[9]~input_o\ & ((\Add1~17\) # (GND))))) # (!\input2[9]~input_o\ & ((\input1[9]~input_o\ & (\Add1~17\ & VCC)) # (!\input1[9]~input_o\ & (!\Add1~17\))))
-- \Add1~19\ = CARRY((\input2[9]~input_o\ & ((!\Add1~17\) # (!\input1[9]~input_o\))) # (!\input2[9]~input_o\ & (!\input1[9]~input_o\ & !\Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[9]~input_o\,
	datab => \input1[9]~input_o\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X30_Y37_N18
\output~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~8_combout\ = (\input2[9]~input_o\ & \input1[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input2[9]~input_o\,
	datad => \input1[9]~input_o\,
	combout => \output~8_combout\);

-- Location: LCCOMB_X30_Y37_N20
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~1_combout\ & (((\output~8_combout\) # (!\sel[0]~input_o\)))) # (!\Mux7~1_combout\ & (\Add1~18_combout\ & (\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Add1~18_combout\,
	datac => \sel[0]~input_o\,
	datad => \output~8_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X26_Y37_N12
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & (\Mux7~0_combout\)) # (!\sel[2]~input_o\ & ((\Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \Mux7~2_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X26_Y37_N22
\Mux7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~3_combout\) # ((\sel[3]~input_o\ & \Mux7~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux7~7_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X26_Y37_N18
\output[9]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[9]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[9]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~8_combout\,
	datab => \output[9]$latch~combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[9]$latch~combout\);

-- Location: LCCOMB_X26_Y35_N14
\Mux17~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~13_combout\ = (\sel[1]~input_o\ & ((\input2[5]~input_o\))) # (!\sel[1]~input_o\ & (\input1[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datac => \input1[12]~input_o\,
	datad => \input2[5]~input_o\,
	combout => \Mux17~13_combout\);

-- Location: LCCOMB_X29_Y36_N20
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\input2[10]~input_o\ & (!\Add2~19\ & VCC)) # (!\input2[10]~input_o\ & (\Add2~19\ $ (GND)))
-- \Add2~21\ = CARRY((!\input2[10]~input_o\ & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input2[10]~input_o\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X26_Y36_N12
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux14~2_combout\ & (((\Add2~20_combout\ & \Mux14~1_combout\)))) # (!\Mux14~2_combout\ & ((\Mux17~13_combout\) # ((!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux17~13_combout\,
	datac => \Add2~20_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X26_Y38_N28
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux14~0_combout\ & ((\Mux6~3_combout\ & ((\input2[10]~input_o\))) # (!\Mux6~3_combout\ & (\input1[10]~input_o\)))) # (!\Mux14~0_combout\ & (((\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[10]~input_o\,
	datab => \Mux14~0_combout\,
	datac => \input2[10]~input_o\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X26_Y38_N6
\output~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~9_combout\ = (\input2[10]~input_o\ & \input1[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input2[10]~input_o\,
	datad => \input1[10]~input_o\,
	combout => \output~9_combout\);

-- Location: LCCOMB_X27_Y36_N4
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\input1[10]~input_o\ $ (\input2[10]~input_o\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\input1[10]~input_o\ & ((\input2[10]~input_o\) # (!\Add0~19\))) # (!\input1[10]~input_o\ & (\input2[10]~input_o\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[10]~input_o\,
	datab => \input2[10]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X26_Y38_N16
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\sel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT10\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\Add0~20_combout\ & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \sel[1]~input_o\,
	datac => \Add0~20_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X25_Y38_N20
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\input2[10]~input_o\ $ (\input1[10]~input_o\ $ (\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\input2[10]~input_o\ & (\input1[10]~input_o\ & !\Add1~19\)) # (!\input2[10]~input_o\ & ((\input1[10]~input_o\) # (!\Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[10]~input_o\,
	datab => \input1[10]~input_o\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X26_Y38_N18
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & ((\output~9_combout\) # ((!\sel[0]~input_o\)))) # (!\Mux6~0_combout\ & (((\sel[0]~input_o\ & \Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~9_combout\,
	datab => \Mux6~0_combout\,
	datac => \sel[0]~input_o\,
	datad => \Add1~20_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X27_Y38_N30
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux15~3_combout\ & (((\Mux15~0_combout\)))) # (!\Mux15~3_combout\ & ((\Mux15~0_combout\ & ((\input2[2]~input_o\))) # (!\Mux15~0_combout\ & (\input1[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \input1[9]~input_o\,
	datac => \input2[2]~input_o\,
	datad => \Mux15~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X26_Y38_N20
\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~2_combout\ & ((\Mux6~4_combout\) # ((!\Mux15~3_combout\)))) # (!\Mux6~2_combout\ & (((\Mux6~1_combout\ & \Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux6~2_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X25_Y36_N0
\Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\input2[10]~input_o\ & ((\sel[0]~input_o\ & (!\input1[10]~input_o\)) # (!\sel[0]~input_o\ & ((!\sel[1]~input_o\))))) # (!\input2[10]~input_o\ & (\input1[10]~input_o\ $ (((\sel[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[10]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \input2[10]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X26_Y38_N22
\Mux6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\sel[2]~input_o\ & ((\sel[3]~input_o\ & (\Mux6~5_combout\)) # (!\sel[3]~input_o\ & ((\Mux6~6_combout\))))) # (!\sel[2]~input_o\ & (\Mux6~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \sel[2]~input_o\,
	datac => \Mux6~6_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X26_Y38_N8
\output[10]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[10]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[10]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux6~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~7_combout\,
	datac => \output[10]$latch~combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[10]$latch~combout\);

-- Location: LCCOMB_X29_Y36_N22
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\input2[11]~input_o\ & ((\Add2~21\) # (GND))) # (!\input2[11]~input_o\ & (!\Add2~21\))
-- \Add2~23\ = CARRY((\input2[11]~input_o\) # (!\Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input2[11]~input_o\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X25_Y35_N4
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\input1[13]~input_o\))) # (!\sel[0]~input_o\ & (\input1[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[10]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \input1[13]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X25_Y35_N14
\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~4_combout\ & (((\input2[4]~input_o\)) # (!\sel[1]~input_o\))) # (!\Mux5~4_combout\ & (\sel[1]~input_o\ & ((\input2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \sel[1]~input_o\,
	datac => \input2[4]~input_o\,
	datad => \input2[3]~input_o\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X25_Y35_N28
\Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux14~2_combout\ & (\Add2~22_combout\ & ((\Mux14~1_combout\)))) # (!\Mux14~2_combout\ & (((\Mux5~5_combout\) # (!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \Mux5~5_combout\,
	datac => \Mux14~2_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X25_Y35_N18
\Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux14~0_combout\ & ((\Mux5~6_combout\ & ((\input2[11]~input_o\))) # (!\Mux5~6_combout\ & (\input1[11]~input_o\)))) # (!\Mux14~0_combout\ & (\Mux5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux5~6_combout\,
	datac => \input1[11]~input_o\,
	datad => \input2[11]~input_o\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X25_Y38_N22
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\input1[11]~input_o\ & ((\input2[11]~input_o\ & (!\Add1~21\)) # (!\input2[11]~input_o\ & (\Add1~21\ & VCC)))) # (!\input1[11]~input_o\ & ((\input2[11]~input_o\ & ((\Add1~21\) # (GND))) # (!\input2[11]~input_o\ & (!\Add1~21\))))
-- \Add1~23\ = CARRY((\input1[11]~input_o\ & (\input2[11]~input_o\ & !\Add1~21\)) # (!\input1[11]~input_o\ & ((\input2[11]~input_o\) # (!\Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[11]~input_o\,
	datab => \input2[11]~input_o\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X27_Y36_N6
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\input1[11]~input_o\ & ((\input2[11]~input_o\ & (\Add0~21\ & VCC)) # (!\input2[11]~input_o\ & (!\Add0~21\)))) # (!\input1[11]~input_o\ & ((\input2[11]~input_o\ & (!\Add0~21\)) # (!\input2[11]~input_o\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\input1[11]~input_o\ & (!\input2[11]~input_o\ & !\Add0~21\)) # (!\input1[11]~input_o\ & ((!\Add0~21\) # (!\input2[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[11]~input_o\,
	datab => \input2[11]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X25_Y35_N22
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\sel[0]~input_o\ & ((\Add1~22_combout\) # ((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & (((\Add0~22_combout\ & !\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \Add0~22_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X26_Y35_N24
\output~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~10_combout\ = (\input1[11]~input_o\ & \input2[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input1[11]~input_o\,
	datad => \input2[11]~input_o\,
	combout => \output~10_combout\);

-- Location: LCCOMB_X25_Y35_N16
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\ & (((\output~10_combout\) # (!\sel[1]~input_o\)))) # (!\Mux5~1_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \Mux5~1_combout\,
	datac => \output~10_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X25_Y35_N12
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\input2[11]~input_o\ & ((\sel[0]~input_o\ & ((!\input1[11]~input_o\))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\)))) # (!\input2[11]~input_o\ & ((\sel[1]~input_o\ $ (\input1[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \input1[11]~input_o\,
	datad => \input2[11]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X25_Y35_N6
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & ((\Mux5~0_combout\))) # (!\sel[2]~input_o\ & (\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux5~2_combout\,
	datac => \Mux5~0_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X25_Y35_N20
\Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux5~3_combout\) # ((\Mux5~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~7_combout\,
	datac => \sel[3]~input_o\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X25_Y35_N8
\output[11]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[11]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[11]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~8_combout\,
	datac => \output[11]$latch~combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[11]$latch~combout\);

-- Location: LCCOMB_X25_Y38_N24
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\input1[12]~input_o\ $ (\input2[12]~input_o\ $ (\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\input1[12]~input_o\ & ((!\Add1~23\) # (!\input2[12]~input_o\))) # (!\input1[12]~input_o\ & (!\input2[12]~input_o\ & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[12]~input_o\,
	datab => \input2[12]~input_o\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X27_Y36_N8
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\input2[12]~input_o\ $ (\input1[12]~input_o\ $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\input2[12]~input_o\ & ((\input1[12]~input_o\) # (!\Add0~23\))) # (!\input2[12]~input_o\ & (\input1[12]~input_o\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[12]~input_o\,
	datab => \input1[12]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X26_Y35_N8
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\sel[1]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT12\) # (\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\Add0~24_combout\ & ((!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Add0~24_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \sel[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X26_Y35_N6
\output~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~11_combout\ = (\input1[12]~input_o\ & \input2[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input1[12]~input_o\,
	datad => \input2[12]~input_o\,
	combout => \output~11_combout\);

-- Location: LCCOMB_X26_Y35_N28
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\sel[0]~input_o\ & ((\Mux4~1_combout\ & ((\output~11_combout\))) # (!\Mux4~1_combout\ & (\Add1~24_combout\)))) # (!\sel[0]~input_o\ & (((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Add1~24_combout\,
	datac => \Mux4~1_combout\,
	datad => \output~11_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X26_Y35_N2
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\input2[12]~input_o\ & ((\sel[0]~input_o\ & ((!\input1[12]~input_o\))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\)))) # (!\input2[12]~input_o\ & (\sel[1]~input_o\ $ ((\input1[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \input2[12]~input_o\,
	datac => \input1[12]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X26_Y35_N10
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & ((\Mux4~0_combout\))) # (!\sel[2]~input_o\ & (\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[3]~input_o\,
	datac => \Mux4~2_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X29_Y36_N24
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\input2[12]~input_o\ & (!\Add2~23\ & VCC)) # (!\input2[12]~input_o\ & (\Add2~23\ $ (GND)))
-- \Add2~25\ = CARRY((!\input2[12]~input_o\ & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[12]~input_o\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X25_Y35_N26
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\sel[1]~input_o\ & ((\input2[4]~input_o\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\input1[11]~input_o\ & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[4]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \input1[11]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X25_Y35_N0
\Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~4_combout\ & ((\input2[3]~input_o\) # ((!\sel[0]~input_o\)))) # (!\Mux4~4_combout\ & (((\input1[14]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \input2[3]~input_o\,
	datac => \input1[14]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X25_Y35_N30
\Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux14~2_combout\ & (\Add2~24_combout\ & ((\Mux14~1_combout\)))) # (!\Mux14~2_combout\ & (((\Mux4~5_combout\) # (!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \Mux14~2_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X25_Y35_N24
\Mux4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux14~0_combout\ & ((\Mux4~6_combout\ & (\input2[12]~input_o\)) # (!\Mux4~6_combout\ & ((\input1[12]~input_o\))))) # (!\Mux14~0_combout\ & (((\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \input2[12]~input_o\,
	datac => \input1[12]~input_o\,
	datad => \Mux4~6_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X25_Y35_N10
\Mux4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux4~3_combout\) # ((\sel[3]~input_o\ & \Mux4~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~3_combout\,
	datac => \sel[3]~input_o\,
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X25_Y35_N2
\output[12]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[12]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[12]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~8_combout\,
	datac => \output[12]$latch~combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[12]$latch~combout\);

-- Location: LCCOMB_X29_Y36_N26
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\input2[13]~input_o\ & ((\Add2~25\) # (GND))) # (!\input2[13]~input_o\ & (!\Add2~25\))
-- \Add2~27\ = CARRY((\input2[13]~input_o\) # (!\Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[13]~input_o\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X26_Y35_N4
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\sel[1]~input_o\ & (!\LessThan2~30_combout\)) # (!\sel[1]~input_o\ & ((\Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datac => \LessThan2~30_combout\,
	datad => \Add2~26_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X27_Y35_N2
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\sel[2]~input_o\ & (((\Mux3~0_combout\ & \sel[0]~input_o\)))) # (!\sel[2]~input_o\ & (\Mux17~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~13_combout\,
	datab => \sel[2]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X27_Y35_N4
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\ & (((\input2[13]~input_o\)) # (!\Mux14~0_combout\))) # (!\Mux3~1_combout\ & (\Mux14~0_combout\ & (\input1[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \input1[13]~input_o\,
	datad => \input2[13]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X25_Y38_N26
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\input1[13]~input_o\ & ((\input2[13]~input_o\ & (!\Add1~25\)) # (!\input2[13]~input_o\ & (\Add1~25\ & VCC)))) # (!\input1[13]~input_o\ & ((\input2[13]~input_o\ & ((\Add1~25\) # (GND))) # (!\input2[13]~input_o\ & (!\Add1~25\))))
-- \Add1~27\ = CARRY((\input1[13]~input_o\ & (\input2[13]~input_o\ & !\Add1~25\)) # (!\input1[13]~input_o\ & ((\input2[13]~input_o\) # (!\Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[13]~input_o\,
	datab => \input2[13]~input_o\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X27_Y36_N10
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\input2[13]~input_o\ & ((\input1[13]~input_o\ & (\Add0~25\ & VCC)) # (!\input1[13]~input_o\ & (!\Add0~25\)))) # (!\input2[13]~input_o\ & ((\input1[13]~input_o\ & (!\Add0~25\)) # (!\input1[13]~input_o\ & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\input2[13]~input_o\ & (!\input1[13]~input_o\ & !\Add0~25\)) # (!\input2[13]~input_o\ & ((!\Add0~25\) # (!\input1[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[13]~input_o\,
	datab => \input1[13]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X26_Y35_N22
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\Add1~26_combout\)) # (!\sel[0]~input_o\ & ((\Add0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Add1~26_combout\,
	datac => \Add0~26_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X26_Y35_N12
\output~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~12_combout\ = (\input1[13]~input_o\ & \input2[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input1[13]~input_o\,
	datad => \input2[13]~input_o\,
	combout => \output~12_combout\);

-- Location: LCCOMB_X26_Y35_N18
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~3_combout\ & (((\output~12_combout\) # (!\sel[1]~input_o\)))) # (!\Mux3~3_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT13\ & (\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datac => \sel[1]~input_o\,
	datad => \output~12_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X27_Y35_N14
\Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux11~2_combout\ & ((\Mux3~2_combout\) # ((\Mux11~3_combout\)))) # (!\Mux11~2_combout\ & (((!\Mux11~3_combout\ & \Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \Mux11~2_combout\,
	datac => \Mux11~3_combout\,
	datad => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X27_Y35_N12
\Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux11~3_combout\ & ((\Mux3~5_combout\ & ((\input2[2]~input_o\))) # (!\Mux3~5_combout\ & (\input1[15]~input_o\)))) # (!\Mux11~3_combout\ & (((\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[15]~input_o\,
	datab => \Mux11~3_combout\,
	datac => \Mux3~5_combout\,
	datad => \input2[2]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X26_Y35_N16
\Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\input2[13]~input_o\ & ((\sel[0]~input_o\ & ((!\input1[13]~input_o\))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\)))) # (!\input2[13]~input_o\ & (\sel[1]~input_o\ $ ((\input1[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \input2[13]~input_o\,
	datac => \input1[13]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X27_Y35_N6
\Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\sel[2]~input_o\ & ((\sel[3]~input_o\ & (\Mux3~6_combout\)) # (!\sel[3]~input_o\ & ((\Mux3~7_combout\))))) # (!\sel[2]~input_o\ & (\Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~6_combout\,
	datab => \Mux3~7_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X27_Y35_N10
\output[13]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[13]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[13]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0clkctrl_outclk\,
	datab => \Mux3~8_combout\,
	datad => \output[13]$latch~combout\,
	combout => \output[13]$latch~combout\);

-- Location: LCCOMB_X29_Y36_N28
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\input2[14]~input_o\ & (!\Add2~27\ & VCC)) # (!\input2[14]~input_o\ & (\Add2~27\ $ (GND)))
-- \Add2~29\ = CARRY((!\input2[14]~input_o\ & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input2[14]~input_o\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X27_Y38_N8
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\sel[0]~input_o\ & ((\sel[1]~input_o\ & (!\LessThan2~30_combout\)) # (!\sel[1]~input_o\ & ((\Add2~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~30_combout\,
	datab => \sel[1]~input_o\,
	datac => \Add2~28_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X27_Y38_N6
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\sel[2]~input_o\ & (\Mux2~3_combout\)) # (!\sel[2]~input_o\ & (((\sel[1]~input_o\ & \input2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \sel[1]~input_o\,
	datac => \input2[1]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X27_Y38_N20
\Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~4_combout\ & ((\input2[14]~input_o\) # ((!\Mux14~0_combout\)))) # (!\Mux2~4_combout\ & (((\input1[14]~input_o\ & \Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \input2[14]~input_o\,
	datac => \input1[14]~input_o\,
	datad => \Mux14~0_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X27_Y36_N12
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\input1[14]~input_o\ $ (\input2[14]~input_o\ $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\input1[14]~input_o\ & ((\input2[14]~input_o\) # (!\Add0~27\))) # (!\input1[14]~input_o\ & (\input2[14]~input_o\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[14]~input_o\,
	datab => \input2[14]~input_o\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X27_Y38_N24
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\sel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT14\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\Add0~28_combout\ & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \sel[1]~input_o\,
	datac => \Add0~28_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X25_Y38_N28
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\input2[14]~input_o\ $ (\input1[14]~input_o\ $ (\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\input2[14]~input_o\ & (\input1[14]~input_o\ & !\Add1~27\)) # (!\input2[14]~input_o\ & ((\input1[14]~input_o\) # (!\Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[14]~input_o\,
	datab => \input1[14]~input_o\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X27_Y38_N18
\output~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~13_combout\ = (\input1[14]~input_o\ & \input2[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input1[14]~input_o\,
	datad => \input2[14]~input_o\,
	combout => \output~13_combout\);

-- Location: LCCOMB_X27_Y38_N28
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\sel[0]~input_o\ & ((\Mux2~0_combout\ & ((\output~13_combout\))) # (!\Mux2~0_combout\ & (\Add1~28_combout\)))) # (!\sel[0]~input_o\ & (\Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \Add1~28_combout\,
	datad => \output~13_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X27_Y38_N2
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux15~0_combout\ & (((\Mux15~3_combout\)))) # (!\Mux15~0_combout\ & ((\Mux15~3_combout\ & (\Mux2~1_combout\)) # (!\Mux15~3_combout\ & ((\input1[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux15~0_combout\,
	datac => \input1[13]~input_o\,
	datad => \Mux15~3_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X27_Y38_N22
\Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux2~2_combout\ & ((\Mux2~5_combout\) # ((!\Mux15~0_combout\)))) # (!\Mux2~2_combout\ & (((\Mux15~0_combout\ & \input2[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux15~0_combout\,
	datad => \input2[6]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X27_Y38_N0
\Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\input2[14]~input_o\ & ((\sel[0]~input_o\ & ((!\input1[14]~input_o\))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\)))) # (!\input2[14]~input_o\ & ((\sel[1]~input_o\ $ (\input1[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \input1[14]~input_o\,
	datad => \input2[14]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X27_Y38_N10
\Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\sel[3]~input_o\ & (\Mux2~6_combout\)) # (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & ((\Mux2~7_combout\))) # (!\sel[2]~input_o\ & (\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux2~6_combout\,
	datac => \Mux2~7_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X27_Y38_N14
\output[14]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[14]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[14]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~8_combout\,
	datac => \output[14]$latch~combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[14]$latch~combout\);

-- Location: LCCOMB_X29_Y36_N30
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = \Add2~29\ $ (!\input2[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \input2[15]~input_o\,
	cin => \Add2~29\,
	combout => \Add2~30_combout\);

-- Location: LCCOMB_X27_Y38_N12
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sel[1]~input_o\ & \input2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[1]~input_o\,
	datac => \input2[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X26_Y36_N30
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux14~2_combout\ & (\Add2~30_combout\ & (\Mux14~1_combout\))) # (!\Mux14~2_combout\ & (((\Mux1~0_combout\) # (!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Add2~30_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X27_Y36_N24
\Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~4_combout\ & (((\input2[15]~input_o\) # (!\Mux14~0_combout\)))) # (!\Mux1~4_combout\ & (\input1[15]~input_o\ & ((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[15]~input_o\,
	datab => \Mux1~4_combout\,
	datac => \input2[15]~input_o\,
	datad => \Mux14~0_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X25_Y38_N30
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = \input1[15]~input_o\ $ (\input2[15]~input_o\ $ (!\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[15]~input_o\,
	datab => \input2[15]~input_o\,
	cin => \Add1~29\,
	combout => \Add1~30_combout\);

-- Location: LCCOMB_X27_Y36_N14
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\input1[15]~input_o\ & ((\input2[15]~input_o\ & (\Add0~29\ & VCC)) # (!\input2[15]~input_o\ & (!\Add0~29\)))) # (!\input1[15]~input_o\ & ((\input2[15]~input_o\ & (!\Add0~29\)) # (!\input2[15]~input_o\ & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((\input1[15]~input_o\ & (!\input2[15]~input_o\ & !\Add0~29\)) # (!\input1[15]~input_o\ & ((!\Add0~29\) # (!\input2[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[15]~input_o\,
	datab => \input2[15]~input_o\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X27_Y36_N26
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\Add1~30_combout\)) # (!\sel[0]~input_o\ & ((\Add0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Add0~30_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X27_Y36_N20
\output~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~14_combout\ = (\input2[15]~input_o\ & \input1[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input2[15]~input_o\,
	datad => \input1[15]~input_o\,
	combout => \output~14_combout\);

-- Location: LCCOMB_X27_Y36_N30
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\sel[1]~input_o\ & ((\Mux1~1_combout\ & ((\output~14_combout\))) # (!\Mux1~1_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT15\)))) # (!\sel[1]~input_o\ & (\Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mux1~1_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \output~14_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X27_Y38_N4
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux15~0_combout\ & (((\Mux15~3_combout\) # (\input2[7]~input_o\)))) # (!\Mux15~0_combout\ & (\input1[14]~input_o\ & (!\Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \input1[14]~input_o\,
	datac => \Mux15~3_combout\,
	datad => \input2[7]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X27_Y36_N22
\Mux1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\Mux1~3_combout\ & ((\Mux1~5_combout\) # ((!\Mux15~3_combout\)))) # (!\Mux1~3_combout\ & (((\Mux1~2_combout\ & \Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~5_combout\,
	datab => \Mux1~2_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X26_Y36_N4
\Mux1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\input2[15]~input_o\ & ((\sel[0]~input_o\ & ((!\input1[15]~input_o\))) # (!\sel[0]~input_o\ & (!\sel[1]~input_o\)))) # (!\input2[15]~input_o\ & (\sel[1]~input_o\ $ (((\input1[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \input2[15]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \input1[15]~input_o\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X27_Y36_N28
\Mux1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\sel[3]~input_o\ & (\Mux1~6_combout\)) # (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & ((\Mux1~7_combout\))) # (!\sel[2]~input_o\ & (\Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~6_combout\,
	datab => \sel[3]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \Mux1~7_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X27_Y36_N18
\output[15]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output[15]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\output[15]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~8_combout\,
	datac => \output[15]$latch~combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \output[15]$latch~combout\);

-- Location: LCCOMB_X27_Y36_N16
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = !\Add0~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~31\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X25_Y36_N8
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\sel[2]~input_o\ & (!\sel[0]~input_o\ & !\sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X29_Y37_N6
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT27\) # ((\Mult0|auto_generated|mac_out2~DATAOUT18\) # ((\Mult0|auto_generated|mac_out2~DATAOUT16\) # (\Mult0|auto_generated|mac_out2~DATAOUT26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT27\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT18\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT26\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X29_Y37_N20
\Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT21\) # ((\Mult0|auto_generated|mac_out2~DATAOUT28\) # ((\Mult0|auto_generated|mac_out2~DATAOUT31\) # (\Mult0|auto_generated|mac_out2~DATAOUT19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT28\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT19\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X29_Y37_N26
\Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT30\) # ((\Mult0|auto_generated|mac_out2~DATAOUT29\) # ((\Mult0|auto_generated|mac_out2~DATAOUT22\) # (\Mult0|auto_generated|mac_out2~DATAOUT23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT30\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT29\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT23\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X29_Y37_N24
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT25\) # ((\Mult0|auto_generated|mac_out2~DATAOUT24\) # ((\Mult0|auto_generated|mac_out2~DATAOUT20\) # (\Mult0|auto_generated|mac_out2~DATAOUT17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT24\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT17\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X29_Y37_N28
\Mux12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~2_combout\) # ((\Mux12~3_combout\) # ((\Mux12~4_combout\) # (\Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux12~3_combout\,
	datac => \Mux12~4_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X25_Y36_N10
\Mux12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux12~0_combout\ & ((\sel[1]~input_o\ & ((\Mux12~5_combout\))) # (!\sel[1]~input_o\ & (\Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Mux12~0_combout\,
	datac => \Mux12~5_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X29_Y37_N2
\Mux12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux12~6_combout\) # ((\sel[3]~input_o\ & (!\LessThan2~30_combout\ & \Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~6_combout\,
	datab => \sel[3]~input_o\,
	datac => \LessThan2~30_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux12~7_combout\);

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

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(8) <= \output[8]~output_o\;

ww_output(9) <= \output[9]~output_o\;

ww_output(10) <= \output[10]~output_o\;

ww_output(11) <= \output[11]~output_o\;

ww_output(12) <= \output[12]~output_o\;

ww_output(13) <= \output[13]~output_o\;

ww_output(14) <= \output[14]~output_o\;

ww_output(15) <= \output[15]~output_o\;

ww_overflow <= \overflow~output_o\;
END structure;



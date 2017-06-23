-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "05/30/2017 10:11:05"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LAB9 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END LAB9;

-- Design Ports Information
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LAB9 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \L1|PE.S6~0_combout\ : std_logic;
SIGNAL \L1|EA.S6~q\ : std_logic;
SIGNAL \L1|PE.S5~0_combout\ : std_logic;
SIGNAL \L1|EA.S5~q\ : std_logic;
SIGNAL \L1|Selector18~0_combout\ : std_logic;
SIGNAL \L1|EA.S0~q\ : std_logic;
SIGNAL \L1|Selector16~0_combout\ : std_logic;
SIGNAL \L1|EA.S1~q\ : std_logic;
SIGNAL \L1|Selector14~0_combout\ : std_logic;
SIGNAL \L1|EA.S2~q\ : std_logic;
SIGNAL \L1|Selector12~0_combout\ : std_logic;
SIGNAL \L1|EA.S3~q\ : std_logic;
SIGNAL \L1|Selector10~0_combout\ : std_logic;
SIGNAL \L1|EA.S4~q\ : std_logic;
SIGNAL \L1|Selector8~1_combout\ : std_logic;
SIGNAL \L1|EA.S7~q\ : std_logic;
SIGNAL \L1|WideOr10~combout\ : std_logic;
SIGNAL \L1|Selecao~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \L1|WideOr7~combout\ : std_logic;
SIGNAL \L1|Selector8~0_combout\ : std_logic;
SIGNAL \L1|Enable_1~combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \L1|WideOr7~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \L3|Add0~30\ : std_logic;
SIGNAL \L3|Add0~26\ : std_logic;
SIGNAL \L3|Add0~18\ : std_logic;
SIGNAL \L3|Add0~22\ : std_logic;
SIGNAL \L3|Add0~14\ : std_logic;
SIGNAL \L3|Add0~10\ : std_logic;
SIGNAL \L3|Add0~1_sumout\ : std_logic;
SIGNAL \L7|m[6]~25_combout\ : std_logic;
SIGNAL \L1|WideOr9~combout\ : std_logic;
SIGNAL \L1|Enable_2~combout\ : std_logic;
SIGNAL \L3|Add0~9_sumout\ : std_logic;
SIGNAL \L7|m[5]~17_combout\ : std_logic;
SIGNAL \L6|sr[7]~feeder_combout\ : std_logic;
SIGNAL \L3|Add0~2\ : std_logic;
SIGNAL \L3|Add0~5_sumout\ : std_logic;
SIGNAL \L7|m[7]~21_combout\ : std_logic;
SIGNAL \L3|Add0~13_sumout\ : std_logic;
SIGNAL \L7|m[4]~13_combout\ : std_logic;
SIGNAL \L10|F[0]~0_combout\ : std_logic;
SIGNAL \L10|F[1]~1_combout\ : std_logic;
SIGNAL \L10|F[2]~2_combout\ : std_logic;
SIGNAL \L10|F[3]~3_combout\ : std_logic;
SIGNAL \L10|F~4_combout\ : std_logic;
SIGNAL \L10|F[5]~5_combout\ : std_logic;
SIGNAL \L10|F[6]~6_combout\ : std_logic;
SIGNAL \L3|Add0~25_sumout\ : std_logic;
SIGNAL \L7|m[1]~1_combout\ : std_logic;
SIGNAL \L3|Add0~17_sumout\ : std_logic;
SIGNAL \L7|m[2]~9_combout\ : std_logic;
SIGNAL \L9|Q[2]~feeder_combout\ : std_logic;
SIGNAL \L3|Add0~29_sumout\ : std_logic;
SIGNAL \L7|m[0]~0_combout\ : std_logic;
SIGNAL \L3|Add0~21_sumout\ : std_logic;
SIGNAL \L7|m[3]~5_combout\ : std_logic;
SIGNAL \L9|Q[3]~feeder_combout\ : std_logic;
SIGNAL \L11|F[0]~0_combout\ : std_logic;
SIGNAL \L11|F[1]~1_combout\ : std_logic;
SIGNAL \L11|F[2]~2_combout\ : std_logic;
SIGNAL \L11|F[3]~3_combout\ : std_logic;
SIGNAL \L11|F~4_combout\ : std_logic;
SIGNAL \L11|F[5]~5_combout\ : std_logic;
SIGNAL \L11|F[6]~6_combout\ : std_logic;
SIGNAL \L1|Selecao\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \L6|sr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L12|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L9|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L8|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \L1|ALT_INV_Enable_1~combout\ : std_logic;
SIGNAL \L1|ALT_INV_Enable_2~combout\ : std_logic;
SIGNAL \L1|ALT_INV_Selecao\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \L1|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \L1|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \L1|ALT_INV_EA.S3~q\ : std_logic;
SIGNAL \L1|ALT_INV_WideOr9~combout\ : std_logic;
SIGNAL \L1|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \L1|ALT_INV_EA.S5~q\ : std_logic;
SIGNAL \L1|ALT_INV_WideOr10~combout\ : std_logic;
SIGNAL \L1|ALT_INV_EA.S1~q\ : std_logic;
SIGNAL \L1|ALT_INV_EA.S0~q\ : std_logic;
SIGNAL \L1|ALT_INV_EA.S7~q\ : std_logic;
SIGNAL \L1|ALT_INV_EA.S2~q\ : std_logic;
SIGNAL \L1|ALT_INV_Selecao~0_combout\ : std_logic;
SIGNAL \L1|ALT_INV_EA.S6~q\ : std_logic;
SIGNAL \L1|ALT_INV_EA.S4~q\ : std_logic;
SIGNAL \L2|ALT_INV_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L6|ALT_INV_sr\ : std_logic_vector(7 DOWNTO 7);
SIGNAL \L11|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L9|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L10|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L8|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L7|ALT_INV_m[2]~9_combout\ : std_logic;
SIGNAL \L7|ALT_INV_m[3]~5_combout\ : std_logic;
SIGNAL \L3|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \L3|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \L3|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \L3|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \L3|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \L3|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \L3|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \L3|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\L1|ALT_INV_Enable_1~combout\ <= NOT \L1|Enable_1~combout\;
\L1|ALT_INV_Enable_2~combout\ <= NOT \L1|Enable_2~combout\;
\L1|ALT_INV_Selecao\(1) <= NOT \L1|Selecao\(1);
\L1|ALT_INV_Selecao\(0) <= NOT \L1|Selecao\(0);
\L1|ALT_INV_WideOr7~combout\ <= NOT \L1|WideOr7~combout\;
\L1|ALT_INV_Selector8~0_combout\ <= NOT \L1|Selector8~0_combout\;
\L1|ALT_INV_EA.S3~q\ <= NOT \L1|EA.S3~q\;
\L1|ALT_INV_WideOr9~combout\ <= NOT \L1|WideOr9~combout\;
\L1|ALT_INV_WideOr7~0_combout\ <= NOT \L1|WideOr7~0_combout\;
\L1|ALT_INV_EA.S5~q\ <= NOT \L1|EA.S5~q\;
\L1|ALT_INV_WideOr10~combout\ <= NOT \L1|WideOr10~combout\;
\L1|ALT_INV_EA.S1~q\ <= NOT \L1|EA.S1~q\;
\L1|ALT_INV_EA.S0~q\ <= NOT \L1|EA.S0~q\;
\L1|ALT_INV_EA.S7~q\ <= NOT \L1|EA.S7~q\;
\L1|ALT_INV_EA.S2~q\ <= NOT \L1|EA.S2~q\;
\L1|ALT_INV_Selecao~0_combout\ <= NOT \L1|Selecao~0_combout\;
\L1|ALT_INV_EA.S6~q\ <= NOT \L1|EA.S6~q\;
\L1|ALT_INV_EA.S4~q\ <= NOT \L1|EA.S4~q\;
\L2|ALT_INV_Q\(0) <= NOT \L2|Q\(0);
\L2|ALT_INV_Q\(2) <= NOT \L2|Q\(2);
\L2|ALT_INV_Q\(1) <= NOT \L2|Q\(1);
\L2|ALT_INV_Q\(3) <= NOT \L2|Q\(3);
\L2|ALT_INV_Q\(4) <= NOT \L2|Q\(4);
\L6|ALT_INV_sr\(7) <= NOT \L6|sr\(7);
\L2|ALT_INV_Q\(6) <= NOT \L2|Q\(6);
\L2|ALT_INV_Q\(7) <= NOT \L2|Q\(7);
\L2|ALT_INV_Q\(5) <= NOT \L2|Q\(5);
\L11|ALT_INV_F[6]~6_combout\ <= NOT \L11|F[6]~6_combout\;
\L9|ALT_INV_Q\(0) <= NOT \L9|Q\(0);
\L9|ALT_INV_Q\(1) <= NOT \L9|Q\(1);
\L9|ALT_INV_Q\(3) <= NOT \L9|Q\(3);
\L9|ALT_INV_Q\(2) <= NOT \L9|Q\(2);
\L10|ALT_INV_F[6]~6_combout\ <= NOT \L10|F[6]~6_combout\;
\L8|ALT_INV_Q\(0) <= NOT \L8|Q\(0);
\L8|ALT_INV_Q\(1) <= NOT \L8|Q\(1);
\L8|ALT_INV_Q\(3) <= NOT \L8|Q\(3);
\L8|ALT_INV_Q\(2) <= NOT \L8|Q\(2);
\L7|ALT_INV_m[2]~9_combout\ <= NOT \L7|m[2]~9_combout\;
\L7|ALT_INV_m[3]~5_combout\ <= NOT \L7|m[3]~5_combout\;
\L3|ALT_INV_Add0~29_sumout\ <= NOT \L3|Add0~29_sumout\;
\L3|ALT_INV_Add0~25_sumout\ <= NOT \L3|Add0~25_sumout\;
\L3|ALT_INV_Add0~21_sumout\ <= NOT \L3|Add0~21_sumout\;
\L3|ALT_INV_Add0~17_sumout\ <= NOT \L3|Add0~17_sumout\;
\L3|ALT_INV_Add0~13_sumout\ <= NOT \L3|Add0~13_sumout\;
\L3|ALT_INV_Add0~9_sumout\ <= NOT \L3|Add0~9_sumout\;
\L3|ALT_INV_Add0~5_sumout\ <= NOT \L3|Add0~5_sumout\;
\L3|ALT_INV_Add0~1_sumout\ <= NOT \L3|Add0~1_sumout\;

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|F[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|F[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|F[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|F[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|F~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|F[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|ALT_INV_F[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L11|F[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L11|F[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L11|F[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L11|F[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L11|F~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L11|F[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L11|ALT_INV_F[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L12|Q\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L12|Q\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L12|Q\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L12|Q\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L12|Q\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L12|Q\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L12|Q\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L12|Q\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X83_Y1_N21
\L1|PE.S6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|PE.S6~0_combout\ = ( \L1|EA.S2~q\ & ( (\SW[9]~input_o\ & \SW[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \L1|ALT_INV_EA.S2~q\,
	combout => \L1|PE.S6~0_combout\);

-- Location: FF_X83_Y1_N23
\L1|EA.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L1|PE.S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|EA.S6~q\);

-- Location: LABCELL_X83_Y1_N48
\L1|PE.S5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|PE.S5~0_combout\ = ( \L1|EA.S2~q\ & ( (\SW[9]~input_o\ & !\SW[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \L1|ALT_INV_EA.S2~q\,
	combout => \L1|PE.S5~0_combout\);

-- Location: FF_X83_Y1_N50
\L1|EA.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L1|PE.S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|EA.S5~q\);

-- Location: LABCELL_X83_Y1_N57
\L1|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Selector18~0_combout\ = ( !\L1|EA.S5~q\ & ( (!\L1|EA.S7~q\ & (!\L1|EA.S6~q\ & ((!\KEY[1]~input_o\) # (\L1|EA.S0~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000101000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|ALT_INV_EA.S7~q\,
	datab => \L1|ALT_INV_EA.S0~q\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \L1|ALT_INV_EA.S6~q\,
	dataf => \L1|ALT_INV_EA.S5~q\,
	combout => \L1|Selector18~0_combout\);

-- Location: FF_X83_Y1_N47
\L1|EA.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L1|Selector18~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|EA.S0~q\);

-- Location: LABCELL_X83_Y1_N3
\L1|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Selector16~0_combout\ = (!\KEY[1]~input_o\ & ((!\L1|EA.S0~q\) # (\L1|EA.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010101010100010001010101010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \L1|ALT_INV_EA.S0~q\,
	datad => \L1|ALT_INV_EA.S1~q\,
	combout => \L1|Selector16~0_combout\);

-- Location: FF_X83_Y1_N5
\L1|EA.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L1|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|EA.S1~q\);

-- Location: LABCELL_X83_Y1_N30
\L1|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Selector14~0_combout\ = (\KEY[1]~input_o\ & \L1|EA.S1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datad => \L1|ALT_INV_EA.S1~q\,
	combout => \L1|Selector14~0_combout\);

-- Location: FF_X83_Y1_N32
\L1|EA.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L1|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|EA.S2~q\);

-- Location: LABCELL_X83_Y1_N45
\L1|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Selector12~0_combout\ = ( \L1|EA.S2~q\ & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\) # ((\L1|EA.S3~q\ & \KEY[1]~input_o\)))) # (\SW[9]~input_o\ & (\L1|EA.S3~q\ & (\KEY[1]~input_o\))) ) ) # ( !\L1|EA.S2~q\ & ( (\L1|EA.S3~q\ & \KEY[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001110101011000000111010101100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \L1|ALT_INV_EA.S3~q\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \L1|ALT_INV_EA.S2~q\,
	combout => \L1|Selector12~0_combout\);

-- Location: FF_X83_Y1_N20
\L1|EA.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L1|Selector12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|EA.S3~q\);

-- Location: LABCELL_X83_Y1_N9
\L1|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Selector10~0_combout\ = ( \L1|EA.S2~q\ & ( (!\SW[9]~input_o\ & (((\KEY[1]~input_o\ & \L1|EA.S4~q\)) # (\SW[8]~input_o\))) # (\SW[9]~input_o\ & (\KEY[1]~input_o\ & ((\L1|EA.S4~q\)))) ) ) # ( !\L1|EA.S2~q\ & ( (\KEY[1]~input_o\ & \L1|EA.S4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \L1|ALT_INV_EA.S4~q\,
	dataf => \L1|ALT_INV_EA.S2~q\,
	combout => \L1|Selector10~0_combout\);

-- Location: FF_X83_Y1_N11
\L1|EA.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L1|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|EA.S4~q\);

-- Location: LABCELL_X83_Y1_N0
\L1|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Selector8~1_combout\ = ( \L1|EA.S4~q\ & ( !\KEY[1]~input_o\ ) ) # ( !\L1|EA.S4~q\ & ( (!\KEY[1]~input_o\ & \L1|EA.S3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => \L1|ALT_INV_EA.S3~q\,
	dataf => \L1|ALT_INV_EA.S4~q\,
	combout => \L1|Selector8~1_combout\);

-- Location: FF_X83_Y1_N2
\L1|EA.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L1|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|EA.S7~q\);

-- Location: LABCELL_X83_Y1_N51
\L1|WideOr10\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|WideOr10~combout\ = ((!\L1|EA.S0~q\) # ((\L1|EA.S1~q\) # (\L1|EA.S2~q\))) # (\L1|EA.S7~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111111111111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|ALT_INV_EA.S7~q\,
	datab => \L1|ALT_INV_EA.S0~q\,
	datac => \L1|ALT_INV_EA.S2~q\,
	datad => \L1|ALT_INV_EA.S1~q\,
	combout => \L1|WideOr10~combout\);

-- Location: LABCELL_X83_Y1_N15
\L1|Selecao~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Selecao~0_combout\ = ( \L1|EA.S4~q\ ) # ( !\L1|EA.S4~q\ & ( \L1|EA.S6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L1|ALT_INV_EA.S6~q\,
	dataf => \L1|ALT_INV_EA.S4~q\,
	combout => \L1|Selecao~0_combout\);

-- Location: LABCELL_X83_Y1_N6
\L1|Selecao[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Selecao\(0) = ( \L1|Selecao~0_combout\ & ( (!\L1|WideOr10~combout\) # (\L1|Selecao\(0)) ) ) # ( !\L1|Selecao~0_combout\ & ( (\L1|Selecao\(0) & \L1|WideOr10~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|ALT_INV_Selecao\(0),
	datad => \L1|ALT_INV_WideOr10~combout\,
	dataf => \L1|ALT_INV_Selecao~0_combout\,
	combout => \L1|Selecao\(0));

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X83_Y1_N36
\L1|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|WideOr7~combout\ = ( \L1|EA.S5~q\ ) # ( !\L1|EA.S5~q\ & ( (\L1|EA.S6~q\) # (\L1|EA.S1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|ALT_INV_EA.S1~q\,
	datad => \L1|ALT_INV_EA.S6~q\,
	dataf => \L1|ALT_INV_EA.S5~q\,
	combout => \L1|WideOr7~combout\);

-- Location: LABCELL_X83_Y1_N42
\L1|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Selector8~0_combout\ = (\L1|EA.S4~q\) # (\L1|EA.S3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|ALT_INV_EA.S3~q\,
	datad => \L1|ALT_INV_EA.S4~q\,
	combout => \L1|Selector8~0_combout\);

-- Location: LABCELL_X83_Y1_N39
\L1|Enable_1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Enable_1~combout\ = ( \L1|Selector8~0_combout\ & ( \L1|Enable_1~combout\ ) ) # ( !\L1|Selector8~0_combout\ & ( \L1|WideOr7~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|ALT_INV_Enable_1~combout\,
	datad => \L1|ALT_INV_WideOr7~combout\,
	dataf => \L1|ALT_INV_Selector8~0_combout\,
	combout => \L1|Enable_1~combout\);

-- Location: FF_X85_Y1_N17
\L2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|Q\(5));

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X85_Y1_N23
\L2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|Q\(7));

-- Location: LABCELL_X83_Y1_N33
\L1|WideOr7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|WideOr7~0_combout\ = ( !\L1|EA.S5~q\ & ( !\L1|EA.S6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L1|ALT_INV_EA.S6~q\,
	dataf => \L1|ALT_INV_EA.S5~q\,
	combout => \L1|WideOr7~0_combout\);

-- Location: LABCELL_X83_Y1_N12
\L1|Selecao[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Selecao\(1) = ( \L1|WideOr7~0_combout\ & ( (\L1|Selecao\(1) & \L1|WideOr10~combout\) ) ) # ( !\L1|WideOr7~0_combout\ & ( (!\L1|WideOr10~combout\) # (\L1|Selecao\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|ALT_INV_Selecao\(1),
	datad => \L1|ALT_INV_WideOr10~combout\,
	dataf => \L1|ALT_INV_WideOr7~0_combout\,
	combout => \L1|Selecao\(1));

-- Location: FF_X85_Y1_N20
\L2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|Q\(6));

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X85_Y1_N14
\L2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|Q\(4));

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X85_Y1_N11
\L2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|Q\(3));

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X85_Y1_N8
\L2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|Q\(2));

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X85_Y1_N5
\L2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|Q\(1));

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X85_Y1_N2
\L2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|Q\(0));

-- Location: LABCELL_X85_Y1_N0
\L3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|Add0~29_sumout\ = SUM(( \L2|Q\(0) ) + ( \SW[0]~input_o\ ) + ( !VCC ))
-- \L3|Add0~30\ = CARRY(( \L2|Q\(0) ) + ( \SW[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \L2|ALT_INV_Q\(0),
	cin => GND,
	sumout => \L3|Add0~29_sumout\,
	cout => \L3|Add0~30\);

-- Location: LABCELL_X85_Y1_N3
\L3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|Add0~25_sumout\ = SUM(( \L2|Q\(1) ) + ( \SW[1]~input_o\ ) + ( \L3|Add0~30\ ))
-- \L3|Add0~26\ = CARRY(( \L2|Q\(1) ) + ( \SW[1]~input_o\ ) + ( \L3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datad => \L2|ALT_INV_Q\(1),
	cin => \L3|Add0~30\,
	sumout => \L3|Add0~25_sumout\,
	cout => \L3|Add0~26\);

-- Location: LABCELL_X85_Y1_N6
\L3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|Add0~17_sumout\ = SUM(( \SW[2]~input_o\ ) + ( \L2|Q\(2) ) + ( \L3|Add0~26\ ))
-- \L3|Add0~18\ = CARRY(( \SW[2]~input_o\ ) + ( \L2|Q\(2) ) + ( \L3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|ALT_INV_Q\(2),
	datad => \ALT_INV_SW[2]~input_o\,
	cin => \L3|Add0~26\,
	sumout => \L3|Add0~17_sumout\,
	cout => \L3|Add0~18\);

-- Location: LABCELL_X85_Y1_N9
\L3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|Add0~21_sumout\ = SUM(( \SW[3]~input_o\ ) + ( \L2|Q\(3) ) + ( \L3|Add0~18\ ))
-- \L3|Add0~22\ = CARRY(( \SW[3]~input_o\ ) + ( \L2|Q\(3) ) + ( \L3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|ALT_INV_Q\(3),
	datad => \ALT_INV_SW[3]~input_o\,
	cin => \L3|Add0~18\,
	sumout => \L3|Add0~21_sumout\,
	cout => \L3|Add0~22\);

-- Location: LABCELL_X85_Y1_N12
\L3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|Add0~13_sumout\ = SUM(( \SW[4]~input_o\ ) + ( \L2|Q\(4) ) + ( \L3|Add0~22\ ))
-- \L3|Add0~14\ = CARRY(( \SW[4]~input_o\ ) + ( \L2|Q\(4) ) + ( \L3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|ALT_INV_Q\(4),
	datad => \ALT_INV_SW[4]~input_o\,
	cin => \L3|Add0~22\,
	sumout => \L3|Add0~13_sumout\,
	cout => \L3|Add0~14\);

-- Location: LABCELL_X85_Y1_N15
\L3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|Add0~9_sumout\ = SUM(( \L2|Q\(5) ) + ( \SW[5]~input_o\ ) + ( \L3|Add0~14\ ))
-- \L3|Add0~10\ = CARRY(( \L2|Q\(5) ) + ( \SW[5]~input_o\ ) + ( \L3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|ALT_INV_Q\(5),
	dataf => \ALT_INV_SW[5]~input_o\,
	cin => \L3|Add0~14\,
	sumout => \L3|Add0~9_sumout\,
	cout => \L3|Add0~10\);

-- Location: LABCELL_X85_Y1_N18
\L3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|Add0~1_sumout\ = SUM(( \L2|Q\(6) ) + ( \SW[6]~input_o\ ) + ( \L3|Add0~10\ ))
-- \L3|Add0~2\ = CARRY(( \L2|Q\(6) ) + ( \SW[6]~input_o\ ) + ( \L3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \L2|ALT_INV_Q\(6),
	cin => \L3|Add0~10\,
	sumout => \L3|Add0~1_sumout\,
	cout => \L3|Add0~2\);

-- Location: LABCELL_X85_Y1_N54
\L7|m[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7|m[6]~25_combout\ = ( !\L1|Selecao\(1) & ( (!\L1|Selecao\(0) & (((\L3|Add0~1_sumout\)))) # (\L1|Selecao\(0) & ((((\L2|Q\(6)))) # (\SW[6]~input_o\))) ) ) # ( \L1|Selecao\(1) & ( (!\L1|Selecao\(0) & (((\L2|Q\(5))))) # (\L1|Selecao\(0) & 
-- ((((\L2|Q\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101011111010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|ALT_INV_Selecao\(0),
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \L2|ALT_INV_Q\(5),
	datad => \L2|ALT_INV_Q\(7),
	datae => \L1|ALT_INV_Selecao\(1),
	dataf => \L2|ALT_INV_Q\(6),
	datag => \L3|ALT_INV_Add0~1_sumout\,
	combout => \L7|m[6]~25_combout\);

-- Location: LABCELL_X83_Y1_N24
\L1|WideOr9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|WideOr9~combout\ = ( \L1|EA.S5~q\ ) # ( !\L1|EA.S5~q\ & ( (\L1|EA.S7~q\) # (\L1|EA.S6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|ALT_INV_EA.S6~q\,
	datad => \L1|ALT_INV_EA.S7~q\,
	dataf => \L1|ALT_INV_EA.S5~q\,
	combout => \L1|WideOr9~combout\);

-- Location: LABCELL_X83_Y1_N27
\L1|Enable_2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Enable_2~combout\ = ( \L1|WideOr9~combout\ & ( (!\L1|Selector8~0_combout\) # (\L1|Enable_2~combout\) ) ) # ( !\L1|WideOr9~combout\ & ( (\L1|Selector8~0_combout\ & \L1|Enable_2~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|ALT_INV_Selector8~0_combout\,
	datac => \L1|ALT_INV_Enable_2~combout\,
	dataf => \L1|ALT_INV_WideOr9~combout\,
	combout => \L1|Enable_2~combout\);

-- Location: FF_X85_Y1_N35
\L8|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L7|m[6]~25_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|Q\(2));

-- Location: LABCELL_X85_Y1_N24
\L7|m[5]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7|m[5]~17_combout\ = ( !\L1|Selecao\(1) & ( (!\L1|Selecao\(0) & (((\L3|Add0~9_sumout\)))) # (\L1|Selecao\(0) & ((((\L2|Q\(5)))) # (\SW[5]~input_o\))) ) ) # ( \L1|Selecao\(1) & ( (!\L1|Selecao\(0) & (((\L2|Q\(4))))) # (\L1|Selecao\(0) & 
-- ((((\L2|Q\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101101011111000010100000101000011011010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|ALT_INV_Selecao\(0),
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \L2|ALT_INV_Q\(4),
	datad => \L2|ALT_INV_Q\(5),
	datae => \L1|ALT_INV_Selecao\(1),
	dataf => \L2|ALT_INV_Q\(6),
	datag => \L3|ALT_INV_Add0~9_sumout\,
	combout => \L7|m[5]~17_combout\);

-- Location: FF_X85_Y1_N44
\L8|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L7|m[5]~17_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|Q\(1));

-- Location: LABCELL_X83_Y1_N54
\L6|sr[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|sr[7]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \L6|sr[7]~feeder_combout\);

-- Location: FF_X83_Y1_N55
\L6|sr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L6|sr[7]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L1|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|sr\(7));

-- Location: LABCELL_X85_Y1_N21
\L3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|Add0~5_sumout\ = SUM(( \SW[7]~input_o\ ) + ( \L2|Q\(7) ) + ( \L3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|ALT_INV_Q\(7),
	datad => \ALT_INV_SW[7]~input_o\,
	cin => \L3|Add0~2\,
	sumout => \L3|Add0~5_sumout\);

-- Location: LABCELL_X85_Y1_N36
\L7|m[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7|m[7]~21_combout\ = ( !\L1|Selecao\(1) & ( (!\L1|Selecao\(0) & (((\L3|Add0~5_sumout\)))) # (\L1|Selecao\(0) & ((((\L2|Q\(7)))) # (\SW[7]~input_o\))) ) ) # ( \L1|Selecao\(1) & ( (!\L1|Selecao\(0) & (((\L2|Q\(6))))) # (\L1|Selecao\(0) & 
-- ((((\L6|sr\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101101011111000010100000101000011011010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|ALT_INV_Selecao\(0),
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \L2|ALT_INV_Q\(6),
	datad => \L2|ALT_INV_Q\(7),
	datae => \L1|ALT_INV_Selecao\(1),
	dataf => \L6|ALT_INV_sr\(7),
	datag => \L3|ALT_INV_Add0~5_sumout\,
	combout => \L7|m[7]~21_combout\);

-- Location: FF_X85_Y1_N32
\L8|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L7|m[7]~21_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|Q\(3));

-- Location: LABCELL_X85_Y1_N48
\L7|m[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7|m[4]~13_combout\ = ( !\L1|Selecao\(1) & ( (!\L1|Selecao\(0) & (((\L3|Add0~13_sumout\)))) # (\L1|Selecao\(0) & ((((\L2|Q\(4)))) # (\SW[4]~input_o\))) ) ) # ( \L1|Selecao\(1) & ( (!\L1|Selecao\(0) & (((\L2|Q\(3))))) # (\L1|Selecao\(0) & 
-- ((((\L2|Q\(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101011111010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|ALT_INV_Selecao\(0),
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \L2|ALT_INV_Q\(3),
	datad => \L2|ALT_INV_Q\(5),
	datae => \L1|ALT_INV_Selecao\(1),
	dataf => \L2|ALT_INV_Q\(4),
	datag => \L3|ALT_INV_Add0~13_sumout\,
	combout => \L7|m[4]~13_combout\);

-- Location: FF_X85_Y1_N47
\L8|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L7|m[4]~13_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|Q\(0));

-- Location: MLABCELL_X84_Y1_N33
\L10|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F[0]~0_combout\ = ( \L8|Q\(0) & ( (!\L8|Q\(2) & (!\L8|Q\(1) & !\L8|Q\(3))) ) ) # ( !\L8|Q\(0) & ( (!\L8|Q\(2) & (\L8|Q\(1) & \L8|Q\(3))) # (\L8|Q\(2) & (!\L8|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011001000110010001100100011010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L8|ALT_INV_Q\(2),
	datab => \L8|ALT_INV_Q\(1),
	datac => \L8|ALT_INV_Q\(3),
	dataf => \L8|ALT_INV_Q\(0),
	combout => \L10|F[0]~0_combout\);

-- Location: LABCELL_X85_Y1_N30
\L10|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F[1]~1_combout\ = (!\L8|Q\(1) & (\L8|Q\(0) & (\L8|Q\(2)))) # (\L8|Q\(1) & (((!\L8|Q\(0) & \L8|Q\(2))) # (\L8|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000110111000001100011011100000110001101110000011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L8|ALT_INV_Q\(0),
	datab => \L8|ALT_INV_Q\(1),
	datac => \L8|ALT_INV_Q\(2),
	datad => \L8|ALT_INV_Q\(3),
	combout => \L10|F[1]~1_combout\);

-- Location: MLABCELL_X84_Y1_N48
\L10|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F[2]~2_combout\ = ( \L8|Q\(0) & ( (\L8|Q\(3) & ((\L8|Q\(1)) # (\L8|Q\(2)))) ) ) # ( !\L8|Q\(0) & ( (\L8|Q\(1) & (!\L8|Q\(3) $ (\L8|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L8|ALT_INV_Q\(3),
	datac => \L8|ALT_INV_Q\(2),
	datad => \L8|ALT_INV_Q\(1),
	dataf => \L8|ALT_INV_Q\(0),
	combout => \L10|F[2]~2_combout\);

-- Location: LABCELL_X85_Y1_N33
\L10|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F[3]~3_combout\ = (!\L8|Q\(0) & (\L8|Q\(2) & (!\L8|Q\(1) $ (\L8|Q\(3))))) # (\L8|Q\(0) & (!\L8|Q\(1) $ (((\L8|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010010011010001001001001101000100100100110100010010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L8|ALT_INV_Q\(0),
	datab => \L8|ALT_INV_Q\(1),
	datac => \L8|ALT_INV_Q\(3),
	datad => \L8|ALT_INV_Q\(2),
	combout => \L10|F[3]~3_combout\);

-- Location: MLABCELL_X84_Y1_N30
\L10|F~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F~4_combout\ = ( \L8|Q\(0) & ( !\L8|Q\(3) ) ) # ( !\L8|Q\(0) & ( (\L8|Q\(2) & (!\L8|Q\(1) & !\L8|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L8|ALT_INV_Q\(2),
	datab => \L8|ALT_INV_Q\(1),
	datad => \L8|ALT_INV_Q\(3),
	dataf => \L8|ALT_INV_Q\(0),
	combout => \L10|F~4_combout\);

-- Location: LABCELL_X85_Y1_N42
\L10|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F[5]~5_combout\ = (!\L8|Q\(2) & (!\L8|Q\(3) & ((\L8|Q\(1)) # (\L8|Q\(0))))) # (\L8|Q\(2) & ((!\L8|Q\(3) & (\L8|Q\(0) & \L8|Q\(1))) # (\L8|Q\(3) & (!\L8|Q\(0) & !\L8|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100010001100000110001000110000011000100011000001100010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L8|ALT_INV_Q\(2),
	datab => \L8|ALT_INV_Q\(3),
	datac => \L8|ALT_INV_Q\(0),
	datad => \L8|ALT_INV_Q\(1),
	combout => \L10|F[5]~5_combout\);

-- Location: LABCELL_X85_Y1_N45
\L10|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F[6]~6_combout\ = (!\L8|Q\(1) & (((\L8|Q\(3))) # (\L8|Q\(2)))) # (\L8|Q\(1) & ((!\L8|Q\(0)) # (!\L8|Q\(2) $ (\L8|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111001011111110111100101111111011110010111111101111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L8|ALT_INV_Q\(2),
	datab => \L8|ALT_INV_Q\(3),
	datac => \L8|ALT_INV_Q\(1),
	datad => \L8|ALT_INV_Q\(0),
	combout => \L10|F[6]~6_combout\);

-- Location: MLABCELL_X84_Y1_N0
\L7|m[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7|m[1]~1_combout\ = ( !\L1|Selecao\(1) & ( (!\L1|Selecao\(0) & (((\L3|Add0~25_sumout\)))) # (\L1|Selecao\(0) & ((((\L2|Q\(1)))) # (\SW[1]~input_o\))) ) ) # ( \L1|Selecao\(1) & ( ((!\L1|Selecao\(0) & (\L2|Q\(0))) # (\L1|Selecao\(0) & (((\L2|Q\(2)))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000011000011111100111111001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \L1|ALT_INV_Selecao\(0),
	datac => \L2|ALT_INV_Q\(0),
	datad => \L2|ALT_INV_Q\(2),
	datae => \L1|ALT_INV_Selecao\(1),
	dataf => \L2|ALT_INV_Q\(1),
	datag => \L3|ALT_INV_Add0~25_sumout\,
	combout => \L7|m[1]~1_combout\);

-- Location: FF_X84_Y1_N26
\L9|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L7|m[1]~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|Q\(1));

-- Location: MLABCELL_X84_Y1_N12
\L7|m[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7|m[2]~9_combout\ = ( !\L1|Selecao\(1) & ( (!\L1|Selecao\(0) & (((\L3|Add0~17_sumout\)))) # (\L1|Selecao\(0) & ((((\L2|Q\(2)))) # (\SW[2]~input_o\))) ) ) # ( \L1|Selecao\(1) & ( ((!\L1|Selecao\(0) & (\L2|Q\(1))) # (\L1|Selecao\(0) & (((\L2|Q\(3)))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000011000011111100111111001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \L1|ALT_INV_Selecao\(0),
	datac => \L2|ALT_INV_Q\(1),
	datad => \L2|ALT_INV_Q\(3),
	datae => \L1|ALT_INV_Selecao\(1),
	dataf => \L2|ALT_INV_Q\(2),
	datag => \L3|ALT_INV_Add0~17_sumout\,
	combout => \L7|m[2]~9_combout\);

-- Location: MLABCELL_X84_Y1_N9
\L9|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L9|Q[2]~feeder_combout\ = ( \L7|m[2]~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L7|ALT_INV_m[2]~9_combout\,
	combout => \L9|Q[2]~feeder_combout\);

-- Location: FF_X84_Y1_N11
\L9|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L9|Q[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|Q\(2));

-- Location: MLABCELL_X84_Y1_N54
\L7|m[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7|m[0]~0_combout\ = ( \L3|Add0~29_sumout\ & ( \L2|Q\(1) & ( (!\L1|Selecao\(0) & (!\L1|Selecao\(1))) # (\L1|Selecao\(0) & (((\SW[0]~input_o\) # (\L2|Q\(0))) # (\L1|Selecao\(1)))) ) ) ) # ( !\L3|Add0~29_sumout\ & ( \L2|Q\(1) & ( (\L1|Selecao\(0) & 
-- (((\SW[0]~input_o\) # (\L2|Q\(0))) # (\L1|Selecao\(1)))) ) ) ) # ( \L3|Add0~29_sumout\ & ( !\L2|Q\(1) & ( (!\L1|Selecao\(1) & ((!\L1|Selecao\(0)) # ((\SW[0]~input_o\) # (\L2|Q\(0))))) ) ) ) # ( !\L3|Add0~29_sumout\ & ( !\L2|Q\(1) & ( (\L1|Selecao\(0) & 
-- (!\L1|Selecao\(1) & ((\SW[0]~input_o\) # (\L2|Q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100100011001100110000010101010101011001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|ALT_INV_Selecao\(0),
	datab => \L1|ALT_INV_Selecao\(1),
	datac => \L2|ALT_INV_Q\(0),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \L3|ALT_INV_Add0~29_sumout\,
	dataf => \L2|ALT_INV_Q\(1),
	combout => \L7|m[0]~0_combout\);

-- Location: FF_X84_Y1_N59
\L9|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L7|m[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|Q\(0));

-- Location: MLABCELL_X84_Y1_N18
\L7|m[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L7|m[3]~5_combout\ = ( !\L1|Selecao\(1) & ( (!\L1|Selecao\(0) & (((\L3|Add0~21_sumout\)))) # (\L1|Selecao\(0) & ((((\L2|Q\(3)))) # (\SW[3]~input_o\))) ) ) # ( \L1|Selecao\(1) & ( ((!\L1|Selecao\(0) & (\L2|Q\(2))) # (\L1|Selecao\(0) & (((\L2|Q\(4)))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100111111000011000000110000011101001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \L1|ALT_INV_Selecao\(0),
	datac => \L2|ALT_INV_Q\(2),
	datad => \L2|ALT_INV_Q\(3),
	datae => \L1|ALT_INV_Selecao\(1),
	dataf => \L2|ALT_INV_Q\(4),
	datag => \L3|ALT_INV_Add0~21_sumout\,
	combout => \L7|m[3]~5_combout\);

-- Location: MLABCELL_X84_Y1_N6
\L9|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L9|Q[3]~feeder_combout\ = ( \L7|m[3]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L7|ALT_INV_m[3]~5_combout\,
	combout => \L9|Q[3]~feeder_combout\);

-- Location: FF_X84_Y1_N8
\L9|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L9|Q[3]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L9|Q\(3));

-- Location: MLABCELL_X84_Y1_N36
\L11|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L11|F[0]~0_combout\ = ( \L9|Q\(3) & ( (!\L9|Q\(0) & (!\L9|Q\(1) $ (!\L9|Q\(2)))) ) ) # ( !\L9|Q\(3) & ( (!\L9|Q\(1) & (!\L9|Q\(2) $ (!\L9|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L9|ALT_INV_Q\(1),
	datab => \L9|ALT_INV_Q\(2),
	datad => \L9|ALT_INV_Q\(0),
	dataf => \L9|ALT_INV_Q\(3),
	combout => \L11|F[0]~0_combout\);

-- Location: MLABCELL_X84_Y1_N39
\L11|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L11|F[1]~1_combout\ = ( \L9|Q\(3) & ( ((\L9|Q\(2) & \L9|Q\(0))) # (\L9|Q\(1)) ) ) # ( !\L9|Q\(3) & ( (\L9|Q\(2) & (!\L9|Q\(1) $ (!\L9|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L9|ALT_INV_Q\(1),
	datab => \L9|ALT_INV_Q\(2),
	datac => \L9|ALT_INV_Q\(0),
	dataf => \L9|ALT_INV_Q\(3),
	combout => \L11|F[1]~1_combout\);

-- Location: MLABCELL_X84_Y1_N42
\L11|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L11|F[2]~2_combout\ = ( \L9|Q\(3) & ( (!\L9|Q\(1) & (\L9|Q\(2) & \L9|Q\(0))) # (\L9|Q\(1) & ((\L9|Q\(0)) # (\L9|Q\(2)))) ) ) # ( !\L9|Q\(3) & ( (\L9|Q\(1) & (!\L9|Q\(2) & !\L9|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L9|ALT_INV_Q\(1),
	datab => \L9|ALT_INV_Q\(2),
	datad => \L9|ALT_INV_Q\(0),
	dataf => \L9|ALT_INV_Q\(3),
	combout => \L11|F[2]~2_combout\);

-- Location: MLABCELL_X84_Y1_N51
\L11|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L11|F[3]~3_combout\ = ( \L9|Q\(3) & ( (!\L9|Q\(1) & (!\L9|Q\(2) & \L9|Q\(0))) # (\L9|Q\(1) & (\L9|Q\(2))) ) ) # ( !\L9|Q\(3) & ( (!\L9|Q\(1) & (!\L9|Q\(2) $ (!\L9|Q\(0)))) # (\L9|Q\(1) & (\L9|Q\(2) & \L9|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010100000101101001010000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L9|ALT_INV_Q\(1),
	datac => \L9|ALT_INV_Q\(2),
	datad => \L9|ALT_INV_Q\(0),
	dataf => \L9|ALT_INV_Q\(3),
	combout => \L11|F[3]~3_combout\);

-- Location: MLABCELL_X84_Y1_N45
\L11|F~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L11|F~4_combout\ = ( !\L9|Q\(3) & ( ((!\L9|Q\(1) & \L9|Q\(2))) # (\L9|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L9|ALT_INV_Q\(1),
	datab => \L9|ALT_INV_Q\(2),
	datac => \L9|ALT_INV_Q\(0),
	dataf => \L9|ALT_INV_Q\(3),
	combout => \L11|F~4_combout\);

-- Location: LABCELL_X83_Y1_N18
\L11|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L11|F[5]~5_combout\ = ( \L9|Q\(3) & ( (!\L9|Q\(0) & (!\L9|Q\(1) & \L9|Q\(2))) ) ) # ( !\L9|Q\(3) & ( (!\L9|Q\(0) & (\L9|Q\(1) & !\L9|Q\(2))) # (\L9|Q\(0) & ((!\L9|Q\(2)) # (\L9|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L9|ALT_INV_Q\(0),
	datab => \L9|ALT_INV_Q\(1),
	datac => \L9|ALT_INV_Q\(2),
	dataf => \L9|ALT_INV_Q\(3),
	combout => \L11|F[5]~5_combout\);

-- Location: MLABCELL_X84_Y1_N27
\L11|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L11|F[6]~6_combout\ = ( \L9|Q\(3) & ( (!\L9|Q\(1)) # ((!\L9|Q\(0)) # (\L9|Q\(2))) ) ) # ( !\L9|Q\(3) & ( (!\L9|Q\(1) & (\L9|Q\(2))) # (\L9|Q\(1) & ((!\L9|Q\(2)) # (!\L9|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011001110110011101100111011011111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L9|ALT_INV_Q\(1),
	datab => \L9|ALT_INV_Q\(2),
	datac => \L9|ALT_INV_Q\(0),
	dataf => \L9|ALT_INV_Q\(3),
	combout => \L11|F[6]~6_combout\);

-- Location: FF_X84_Y1_N55
\L12|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7|m[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L12|Q\(0));

-- Location: FF_X84_Y1_N2
\L12|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7|m[1]~1_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L12|Q\(1));

-- Location: FF_X84_Y1_N13
\L12|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7|m[2]~9_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L12|Q\(2));

-- Location: FF_X84_Y1_N19
\L12|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7|m[3]~5_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L12|Q\(3));

-- Location: FF_X85_Y1_N49
\L12|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7|m[4]~13_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L12|Q\(4));

-- Location: FF_X85_Y1_N25
\L12|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7|m[5]~17_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L12|Q\(5));

-- Location: FF_X85_Y1_N56
\L12|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7|m[6]~25_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L12|Q\(6));

-- Location: FF_X85_Y1_N37
\L12|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L7|m[7]~21_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L1|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L12|Q\(7));

-- Location: MLABCELL_X25_Y27_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;



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

-- DATE "04/18/2017 10:13:24"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LAB5 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END LAB5;

-- Design Ports Information
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
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LAB5 IS
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
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \L1|Add0~5_sumout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \L5|m[0]~1_combout\ : std_logic;
SIGNAL \L5|m[0]~2_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \L1|Add0~6\ : std_logic;
SIGNAL \L1|Add0~10\ : std_logic;
SIGNAL \L1|Add0~14\ : std_logic;
SIGNAL \L1|Add0~1_sumout\ : std_logic;
SIGNAL \L5|m[3]~0_combout\ : std_logic;
SIGNAL \L1|Add0~13_sumout\ : std_logic;
SIGNAL \L5|m[2]~4_combout\ : std_logic;
SIGNAL \L1|Add0~9_sumout\ : std_logic;
SIGNAL \L5|m[1]~3_combout\ : std_logic;
SIGNAL \L6|F[0]~0_combout\ : std_logic;
SIGNAL \L6|F[1]~1_combout\ : std_logic;
SIGNAL \L6|F[2]~2_combout\ : std_logic;
SIGNAL \L6|F[3]~3_combout\ : std_logic;
SIGNAL \L6|F~4_combout\ : std_logic;
SIGNAL \L6|F[5]~5_combout\ : std_logic;
SIGNAL \L6|F[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \L5|ALT_INV_m[2]~4_combout\ : std_logic;
SIGNAL \L5|ALT_INV_m[1]~3_combout\ : std_logic;
SIGNAL \L5|ALT_INV_m[0]~2_combout\ : std_logic;
SIGNAL \L5|ALT_INV_m[0]~1_combout\ : std_logic;
SIGNAL \L5|ALT_INV_m[3]~0_combout\ : std_logic;
SIGNAL \L1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \L1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \L1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \L1|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\L5|ALT_INV_m[2]~4_combout\ <= NOT \L5|m[2]~4_combout\;
\L5|ALT_INV_m[1]~3_combout\ <= NOT \L5|m[1]~3_combout\;
\L5|ALT_INV_m[0]~2_combout\ <= NOT \L5|m[0]~2_combout\;
\L5|ALT_INV_m[0]~1_combout\ <= NOT \L5|m[0]~1_combout\;
\L5|ALT_INV_m[3]~0_combout\ <= NOT \L5|m[3]~0_combout\;
\L1|ALT_INV_Add0~13_sumout\ <= NOT \L1|Add0~13_sumout\;
\L1|ALT_INV_Add0~9_sumout\ <= NOT \L1|Add0~9_sumout\;
\L1|ALT_INV_Add0~5_sumout\ <= NOT \L1|Add0~5_sumout\;
\L1|ALT_INV_Add0~1_sumout\ <= NOT \L1|Add0~1_sumout\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L6|F[0]~0_combout\,
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
	i => \L6|F[1]~1_combout\,
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
	i => \L6|F[2]~2_combout\,
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
	i => \L6|F[3]~3_combout\,
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
	i => \L6|F~4_combout\,
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
	i => \L6|F[5]~5_combout\,
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
	i => \L6|F[6]~6_combout\,
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
	i => \L5|m[0]~2_combout\,
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
	i => \L5|m[1]~3_combout\,
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
	i => \L5|m[2]~4_combout\,
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
	i => \L5|ALT_INV_m[3]~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: MLABCELL_X8_Y1_N0
\L1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Add0~5_sumout\ = SUM(( \SW[4]~input_o\ ) + ( \SW[0]~input_o\ ) + ( !VCC ))
-- \L1|Add0~6\ = CARRY(( \SW[4]~input_o\ ) + ( \SW[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	cin => GND,
	sumout => \L1|Add0~5_sumout\,
	cout => \L1|Add0~6\);

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

-- Location: MLABCELL_X8_Y1_N15
\L5|m[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L5|m[0]~1_combout\ = ( \SW[0]~input_o\ & ( \SW[9]~input_o\ ) ) # ( !\SW[0]~input_o\ & ( (!\SW[9]~input_o\ & !\SW[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \L5|m[0]~1_combout\);

-- Location: MLABCELL_X8_Y1_N18
\L5|m[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L5|m[0]~2_combout\ = ( \L1|Add0~5_sumout\ & ( \L5|m[0]~1_combout\ & ( !\SW[8]~input_o\ ) ) ) # ( \L1|Add0~5_sumout\ & ( !\L5|m[0]~1_combout\ ) ) # ( !\L1|Add0~5_sumout\ & ( !\L5|m[0]~1_combout\ & ( \SW[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[8]~input_o\,
	datae => \L1|ALT_INV_Add0~5_sumout\,
	dataf => \L5|ALT_INV_m[0]~1_combout\,
	combout => \L5|m[0]~2_combout\);

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

-- Location: MLABCELL_X8_Y1_N3
\L1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Add0~9_sumout\ = SUM(( \SW[5]~input_o\ ) + ( \SW[1]~input_o\ ) + ( \L1|Add0~6\ ))
-- \L1|Add0~10\ = CARRY(( \SW[5]~input_o\ ) + ( \SW[1]~input_o\ ) + ( \L1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	cin => \L1|Add0~6\,
	sumout => \L1|Add0~9_sumout\,
	cout => \L1|Add0~10\);

-- Location: MLABCELL_X8_Y1_N6
\L1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Add0~13_sumout\ = SUM(( \SW[6]~input_o\ ) + ( \SW[2]~input_o\ ) + ( \L1|Add0~10\ ))
-- \L1|Add0~14\ = CARRY(( \SW[6]~input_o\ ) + ( \SW[2]~input_o\ ) + ( \L1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	cin => \L1|Add0~10\,
	sumout => \L1|Add0~13_sumout\,
	cout => \L1|Add0~14\);

-- Location: MLABCELL_X8_Y1_N9
\L1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Add0~1_sumout\ = SUM(( \SW[7]~input_o\ ) + ( \SW[3]~input_o\ ) + ( \L1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	cin => \L1|Add0~14\,
	sumout => \L1|Add0~1_sumout\);

-- Location: MLABCELL_X8_Y1_N12
\L5|m[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L5|m[3]~0_combout\ = ( \SW[8]~input_o\ & ( (!\SW[9]~input_o\ & (!\SW[7]~input_o\ & !\SW[3]~input_o\)) # (\SW[9]~input_o\ & ((\SW[3]~input_o\))) ) ) # ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & (((!\L1|Add0~1_sumout\)))) # (\SW[9]~input_o\ & 
-- (!\SW[7]~input_o\ $ ((\SW[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110100100001111011010010000110000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \L1|ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \L5|m[3]~0_combout\);

-- Location: MLABCELL_X8_Y1_N27
\L5|m[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L5|m[2]~4_combout\ = ( \SW[2]~input_o\ & ( (!\SW[8]~input_o\ & ((!\SW[9]~input_o\ & (\L1|Add0~13_sumout\)) # (\SW[9]~input_o\ & ((!\SW[6]~input_o\))))) # (\SW[8]~input_o\ & (!\SW[9]~input_o\)) ) ) # ( !\SW[2]~input_o\ & ( (!\SW[8]~input_o\ & 
-- ((!\SW[9]~input_o\ & (\L1|Add0~13_sumout\)) # (\SW[9]~input_o\ & ((\SW[6]~input_o\))))) # (\SW[8]~input_o\ & (((\SW[6]~input_o\)) # (\SW[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100101111111000110010111111101101110010011000110111001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \L1|ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \L5|m[2]~4_combout\);

-- Location: MLABCELL_X8_Y1_N24
\L5|m[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L5|m[1]~3_combout\ = ( \L1|Add0~9_sumout\ & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\) # ((\SW[5]~input_o\) # (\SW[1]~input_o\)))) # (\SW[9]~input_o\ & (!\SW[1]~input_o\ $ (((!\SW[8]~input_o\ & !\SW[5]~input_o\))))) ) ) # ( !\L1|Add0~9_sumout\ & ( 
-- (!\SW[9]~input_o\ & (\SW[8]~input_o\ & ((\SW[5]~input_o\) # (\SW[1]~input_o\)))) # (\SW[9]~input_o\ & (!\SW[1]~input_o\ $ (((!\SW[8]~input_o\ & !\SW[5]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011001110100000101100111010010011110111111001001111011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => \L1|ALT_INV_Add0~9_sumout\,
	combout => \L5|m[1]~3_combout\);

-- Location: LABCELL_X88_Y4_N33
\L6|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|F[0]~0_combout\ = ( !\L5|m[2]~4_combout\ & ( \L5|m[1]~3_combout\ & ( (!\L5|m[0]~2_combout\ & !\L5|m[3]~0_combout\) ) ) ) # ( \L5|m[2]~4_combout\ & ( !\L5|m[1]~3_combout\ & ( !\L5|m[0]~2_combout\ ) ) ) # ( !\L5|m[2]~4_combout\ & ( !\L5|m[1]~3_combout\ 
-- & ( (\L5|m[0]~2_combout\ & \L5|m[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101010101010101010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L5|ALT_INV_m[0]~2_combout\,
	datac => \L5|ALT_INV_m[3]~0_combout\,
	datae => \L5|ALT_INV_m[2]~4_combout\,
	dataf => \L5|ALT_INV_m[1]~3_combout\,
	combout => \L6|F[0]~0_combout\);

-- Location: MLABCELL_X8_Y1_N30
\L6|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|F[1]~1_combout\ = ( \L1|Add0~5_sumout\ & ( \L5|m[1]~3_combout\ & ( (!\L5|m[3]~0_combout\) # ((\L5|m[2]~4_combout\ & (\L5|m[0]~1_combout\ & \SW[8]~input_o\))) ) ) ) # ( !\L1|Add0~5_sumout\ & ( \L5|m[1]~3_combout\ & ( (!\L5|m[3]~0_combout\) # 
-- ((\L5|m[2]~4_combout\ & ((!\SW[8]~input_o\) # (\L5|m[0]~1_combout\)))) ) ) ) # ( \L1|Add0~5_sumout\ & ( !\L5|m[1]~3_combout\ & ( (\L5|m[2]~4_combout\ & ((!\L5|m[0]~1_combout\) # (!\SW[8]~input_o\))) ) ) ) # ( !\L1|Add0~5_sumout\ & ( !\L5|m[1]~3_combout\ & 
-- ( (\L5|m[2]~4_combout\ & (!\L5|m[0]~1_combout\ & \SW[8]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100010101000101010011111111010100011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L5|ALT_INV_m[2]~4_combout\,
	datab => \L5|ALT_INV_m[0]~1_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \L5|ALT_INV_m[3]~0_combout\,
	datae => \L1|ALT_INV_Add0~5_sumout\,
	dataf => \L5|ALT_INV_m[1]~3_combout\,
	combout => \L6|F[1]~1_combout\);

-- Location: LABCELL_X88_Y4_N36
\L6|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|F[2]~2_combout\ = ( \L5|m[2]~4_combout\ & ( \L5|m[1]~3_combout\ & ( !\L5|m[3]~0_combout\ ) ) ) # ( !\L5|m[2]~4_combout\ & ( \L5|m[1]~3_combout\ & ( !\L5|m[3]~0_combout\ $ (!\L5|m[0]~2_combout\) ) ) ) # ( \L5|m[2]~4_combout\ & ( !\L5|m[1]~3_combout\ & 
-- ( (!\L5|m[3]~0_combout\ & \L5|m[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000111100001111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L5|ALT_INV_m[3]~0_combout\,
	datac => \L5|ALT_INV_m[0]~2_combout\,
	datae => \L5|ALT_INV_m[2]~4_combout\,
	dataf => \L5|ALT_INV_m[1]~3_combout\,
	combout => \L6|F[2]~2_combout\);

-- Location: LABCELL_X88_Y4_N45
\L6|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|F[3]~3_combout\ = ( \L5|m[2]~4_combout\ & ( \L5|m[1]~3_combout\ & ( (!\L5|m[3]~0_combout\) # (\L5|m[0]~2_combout\) ) ) ) # ( \L5|m[2]~4_combout\ & ( !\L5|m[1]~3_combout\ & ( (!\L5|m[0]~2_combout\ & \L5|m[3]~0_combout\) ) ) ) # ( !\L5|m[2]~4_combout\ & 
-- ( !\L5|m[1]~3_combout\ & ( \L5|m[0]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000010100000101000000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L5|ALT_INV_m[0]~2_combout\,
	datac => \L5|ALT_INV_m[3]~0_combout\,
	datae => \L5|ALT_INV_m[2]~4_combout\,
	dataf => \L5|ALT_INV_m[1]~3_combout\,
	combout => \L6|F[3]~3_combout\);

-- Location: LABCELL_X88_Y4_N18
\L6|F~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|F~4_combout\ = ( \L5|m[2]~4_combout\ & ( \L5|m[1]~3_combout\ & ( (\L5|m[3]~0_combout\ & \L5|m[0]~2_combout\) ) ) ) # ( !\L5|m[2]~4_combout\ & ( \L5|m[1]~3_combout\ & ( (\L5|m[3]~0_combout\ & \L5|m[0]~2_combout\) ) ) ) # ( \L5|m[2]~4_combout\ & ( 
-- !\L5|m[1]~3_combout\ & ( \L5|m[3]~0_combout\ ) ) ) # ( !\L5|m[2]~4_combout\ & ( !\L5|m[1]~3_combout\ & ( (\L5|m[3]~0_combout\ & \L5|m[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L5|ALT_INV_m[3]~0_combout\,
	datac => \L5|ALT_INV_m[0]~2_combout\,
	datae => \L5|ALT_INV_m[2]~4_combout\,
	dataf => \L5|ALT_INV_m[1]~3_combout\,
	combout => \L6|F~4_combout\);

-- Location: LABCELL_X88_Y4_N57
\L6|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|F[5]~5_combout\ = ( \L5|m[2]~4_combout\ & ( \L5|m[1]~3_combout\ & ( (\L5|m[0]~2_combout\ & \L5|m[3]~0_combout\) ) ) ) # ( !\L5|m[2]~4_combout\ & ( \L5|m[1]~3_combout\ & ( \L5|m[3]~0_combout\ ) ) ) # ( \L5|m[2]~4_combout\ & ( !\L5|m[1]~3_combout\ & ( 
-- (!\L5|m[0]~2_combout\ & !\L5|m[3]~0_combout\) ) ) ) # ( !\L5|m[2]~4_combout\ & ( !\L5|m[1]~3_combout\ & ( (\L5|m[0]~2_combout\ & \L5|m[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101000001010000000001111000011110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L5|ALT_INV_m[0]~2_combout\,
	datac => \L5|ALT_INV_m[3]~0_combout\,
	datae => \L5|ALT_INV_m[2]~4_combout\,
	dataf => \L5|ALT_INV_m[1]~3_combout\,
	combout => \L6|F[5]~5_combout\);

-- Location: LABCELL_X88_Y4_N0
\L6|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|F[6]~6_combout\ = ( \L5|m[2]~4_combout\ & ( \L5|m[1]~3_combout\ & ( (\L5|m[3]~0_combout\ & \L5|m[0]~2_combout\) ) ) ) # ( !\L5|m[2]~4_combout\ & ( \L5|m[1]~3_combout\ & ( (!\L5|m[3]~0_combout\ & \L5|m[0]~2_combout\) ) ) ) # ( !\L5|m[2]~4_combout\ & ( 
-- !\L5|m[1]~3_combout\ & ( \L5|m[3]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L5|ALT_INV_m[3]~0_combout\,
	datac => \L5|ALT_INV_m[0]~2_combout\,
	datae => \L5|ALT_INV_m[2]~4_combout\,
	dataf => \L5|ALT_INV_m[1]~3_combout\,
	combout => \L6|F[6]~6_combout\);

-- Location: MLABCELL_X21_Y57_N3
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



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

-- DATE "05/02/2017 10:06:40"

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

ENTITY 	LAB6 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	clock_50 : IN std_logic
	);
END LAB6;

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
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LAB6 IS
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
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clock_50 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \L1|Add0~14\ : std_logic;
SIGNAL \L1|Add0~10\ : std_logic;
SIGNAL \L1|Add0~2\ : std_logic;
SIGNAL \L1|Add0~5_sumout\ : std_logic;
SIGNAL \L5|m[3]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \L1|Add0~13_sumout\ : std_logic;
SIGNAL \L5|m[0]~3_combout\ : std_logic;
SIGNAL \L6|Q[0]~feeder_combout\ : std_logic;
SIGNAL \L1|Add0~1_sumout\ : std_logic;
SIGNAL \L5|m[2]~0_combout\ : std_logic;
SIGNAL \L1|Add0~9_sumout\ : std_logic;
SIGNAL \L5|m[1]~2_combout\ : std_logic;
SIGNAL \L6|Q[1]~feeder_combout\ : std_logic;
SIGNAL \L8|F[0]~0_combout\ : std_logic;
SIGNAL \L8|F[1]~1_combout\ : std_logic;
SIGNAL \L8|F[2]~2_combout\ : std_logic;
SIGNAL \L8|F[3]~3_combout\ : std_logic;
SIGNAL \L8|F~4_combout\ : std_logic;
SIGNAL \L8|F[5]~5_combout\ : std_logic;
SIGNAL \L8|F[6]~6_combout\ : std_logic;
SIGNAL \L7|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \L5|ALT_INV_m[0]~3_combout\ : std_logic;
SIGNAL \L5|ALT_INV_m[1]~2_combout\ : std_logic;
SIGNAL \L8|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L6|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \L1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \L1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \L1|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_clock_50 <= clock_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\L5|ALT_INV_m[0]~3_combout\ <= NOT \L5|m[0]~3_combout\;
\L5|ALT_INV_m[1]~2_combout\ <= NOT \L5|m[1]~2_combout\;
\L8|ALT_INV_F[6]~6_combout\ <= NOT \L8|F[6]~6_combout\;
\L6|ALT_INV_Q\(0) <= NOT \L6|Q\(0);
\L6|ALT_INV_Q\(1) <= NOT \L6|Q\(1);
\L6|ALT_INV_Q\(3) <= NOT \L6|Q\(3);
\L6|ALT_INV_Q\(2) <= NOT \L6|Q\(2);
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
	i => \L8|F[0]~0_combout\,
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
	i => \L8|F[1]~1_combout\,
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
	i => \L8|F[2]~2_combout\,
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
	i => \L8|F[3]~3_combout\,
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
	i => \L8|F~4_combout\,
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
	i => \L8|F[5]~5_combout\,
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
	i => \L8|ALT_INV_F[6]~6_combout\,
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
	i => \L7|Q\(0),
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
	i => \L7|Q\(1),
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
	i => \L7|Q\(2),
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
	i => \L7|Q\(3),
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

-- Location: IOIBUF_X32_Y0_N1
\clock_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G6
\clock_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~input_o\,
	outclk => \clock_50~inputCLKENA0_outclk\);

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

-- Location: LABCELL_X37_Y2_N0
\L1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Add0~13_sumout\ = SUM(( \SW[4]~input_o\ ) + ( \SW[0]~input_o\ ) + ( !VCC ))
-- \L1|Add0~14\ = CARRY(( \SW[4]~input_o\ ) + ( \SW[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	cin => GND,
	sumout => \L1|Add0~13_sumout\,
	cout => \L1|Add0~14\);

-- Location: LABCELL_X37_Y2_N3
\L1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Add0~9_sumout\ = SUM(( \SW[5]~input_o\ ) + ( \SW[1]~input_o\ ) + ( \L1|Add0~14\ ))
-- \L1|Add0~10\ = CARRY(( \SW[5]~input_o\ ) + ( \SW[1]~input_o\ ) + ( \L1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[5]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	cin => \L1|Add0~14\,
	sumout => \L1|Add0~9_sumout\,
	cout => \L1|Add0~10\);

-- Location: LABCELL_X37_Y2_N6
\L1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Add0~1_sumout\ = SUM(( \SW[6]~input_o\ ) + ( \SW[2]~input_o\ ) + ( \L1|Add0~10\ ))
-- \L1|Add0~2\ = CARRY(( \SW[6]~input_o\ ) + ( \SW[2]~input_o\ ) + ( \L1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	cin => \L1|Add0~10\,
	sumout => \L1|Add0~1_sumout\,
	cout => \L1|Add0~2\);

-- Location: LABCELL_X37_Y2_N9
\L1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Add0~5_sumout\ = SUM(( \SW[7]~input_o\ ) + ( \SW[3]~input_o\ ) + ( \L1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	cin => \L1|Add0~2\,
	sumout => \L1|Add0~5_sumout\);

-- Location: LABCELL_X37_Y2_N27
\L5|m[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L5|m[3]~1_combout\ = ( \L1|Add0~5_sumout\ & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\) # ((\SW[7]~input_o\) # (\SW[3]~input_o\)))) # (\SW[9]~input_o\ & (!\SW[3]~input_o\ $ (((!\SW[8]~input_o\ & !\SW[7]~input_o\))))) ) ) # ( !\L1|Add0~5_sumout\ & ( 
-- (!\SW[9]~input_o\ & (\SW[8]~input_o\ & ((\SW[7]~input_o\) # (\SW[3]~input_o\)))) # (\SW[9]~input_o\ & (!\SW[3]~input_o\ $ (((!\SW[8]~input_o\ & !\SW[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011001110010000101100111001010011110111110101001111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \L1|ALT_INV_Add0~5_sumout\,
	combout => \L5|m[3]~1_combout\);

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

-- Location: FF_X37_Y2_N53
\L6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L5|m[3]~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|Q\(3));

-- Location: LABCELL_X37_Y2_N18
\L5|m[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L5|m[0]~3_combout\ = ( \SW[0]~input_o\ & ( (!\SW[8]~input_o\ & ((\L1|Add0~13_sumout\))) # (\SW[8]~input_o\ & (!\SW[9]~input_o\)) ) ) # ( !\SW[0]~input_o\ & ( (!\SW[8]~input_o\ & (((\L1|Add0~13_sumout\)))) # (\SW[8]~input_o\ & (((\SW[4]~input_o\)) # 
-- (\SW[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001111011111000100111101111100100010111011100010001011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \L1|ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \L5|m[0]~3_combout\);

-- Location: LABCELL_X37_Y2_N42
\L6|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|Q[0]~feeder_combout\ = ( \L5|m[0]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L5|ALT_INV_m[0]~3_combout\,
	combout => \L6|Q[0]~feeder_combout\);

-- Location: FF_X37_Y2_N44
\L6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L6|Q[0]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|Q\(0));

-- Location: LABCELL_X37_Y2_N21
\L5|m[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L5|m[2]~0_combout\ = ( \SW[6]~input_o\ & ( (!\SW[9]~input_o\ & (((\L1|Add0~1_sumout\)) # (\SW[8]~input_o\))) # (\SW[9]~input_o\ & (((!\SW[2]~input_o\)))) ) ) # ( !\SW[6]~input_o\ & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\ & (\L1|Add0~1_sumout\)) # 
-- (\SW[8]~input_o\ & ((\SW[2]~input_o\))))) # (\SW[9]~input_o\ & (!\SW[8]~input_o\ $ (((!\SW[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100101101110000110010110111001111111001010100111111100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \L1|ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \L5|m[2]~0_combout\);

-- Location: FF_X37_Y2_N47
\L6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L5|m[2]~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|Q\(2));

-- Location: LABCELL_X37_Y2_N24
\L5|m[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L5|m[1]~2_combout\ = ( \SW[1]~input_o\ & ( (!\SW[9]~input_o\ & (((\L1|Add0~9_sumout\)) # (\SW[8]~input_o\))) # (\SW[9]~input_o\ & (!\SW[8]~input_o\ & (!\SW[5]~input_o\))) ) ) # ( !\SW[1]~input_o\ & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\ & 
-- ((\L1|Add0~9_sumout\))) # (\SW[8]~input_o\ & (\SW[5]~input_o\)))) # (\SW[9]~input_o\ & (((\SW[5]~input_o\)) # (\SW[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011110011111000101111001111101100010111010100110001011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \L1|ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \L5|m[1]~2_combout\);

-- Location: LABCELL_X37_Y2_N48
\L6|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|Q[1]~feeder_combout\ = ( \L5|m[1]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L5|ALT_INV_m[1]~2_combout\,
	combout => \L6|Q[1]~feeder_combout\);

-- Location: FF_X37_Y2_N50
\L6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L6|Q[1]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|Q\(1));

-- Location: LABCELL_X37_Y2_N54
\L8|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L8|F[0]~0_combout\ = ( \L6|Q\(1) & ( (\L6|Q\(3) & (!\L6|Q\(0) & !\L6|Q\(2))) ) ) # ( !\L6|Q\(1) & ( (!\L6|Q\(0) & ((\L6|Q\(2)))) # (\L6|Q\(0) & (!\L6|Q\(3) & !\L6|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011001100001000101100110001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L6|ALT_INV_Q\(3),
	datab => \L6|ALT_INV_Q\(0),
	datad => \L6|ALT_INV_Q\(2),
	dataf => \L6|ALT_INV_Q\(1),
	combout => \L8|F[0]~0_combout\);

-- Location: LABCELL_X37_Y2_N57
\L8|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L8|F[1]~1_combout\ = ( \L6|Q\(1) & ( ((!\L6|Q\(0) & \L6|Q\(2))) # (\L6|Q\(3)) ) ) # ( !\L6|Q\(1) & ( (\L6|Q\(0) & \L6|Q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L6|ALT_INV_Q\(3),
	datab => \L6|ALT_INV_Q\(0),
	datac => \L6|ALT_INV_Q\(2),
	dataf => \L6|ALT_INV_Q\(1),
	combout => \L8|F[1]~1_combout\);

-- Location: LABCELL_X37_Y2_N30
\L8|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L8|F[2]~2_combout\ = ( \L6|Q\(1) & ( !\L6|Q\(3) $ (((\L6|Q\(2)) # (\L6|Q\(0)))) ) ) # ( !\L6|Q\(1) & ( (\L6|Q\(3) & (\L6|Q\(0) & \L6|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000110011001010101011001100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L6|ALT_INV_Q\(3),
	datab => \L6|ALT_INV_Q\(0),
	datad => \L6|ALT_INV_Q\(2),
	dataf => \L6|ALT_INV_Q\(1),
	combout => \L8|F[2]~2_combout\);

-- Location: LABCELL_X37_Y2_N36
\L8|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L8|F[3]~3_combout\ = ( \L6|Q\(1) & ( (\L6|Q\(2) & ((\L6|Q\(0)) # (\L6|Q\(3)))) ) ) # ( !\L6|Q\(1) & ( (!\L6|Q\(0) & (!\L6|Q\(3) & \L6|Q\(2))) # (\L6|Q\(0) & ((!\L6|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110001000001100111000100000000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L6|ALT_INV_Q\(3),
	datab => \L6|ALT_INV_Q\(0),
	datad => \L6|ALT_INV_Q\(2),
	dataf => \L6|ALT_INV_Q\(1),
	combout => \L8|F[3]~3_combout\);

-- Location: LABCELL_X37_Y2_N12
\L8|F~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L8|F~4_combout\ = ( \L6|Q\(2) & ( \L6|Q\(1) & ( (\L6|Q\(0) & !\L6|Q\(3)) ) ) ) # ( !\L6|Q\(2) & ( \L6|Q\(1) & ( (\L6|Q\(0) & !\L6|Q\(3)) ) ) ) # ( \L6|Q\(2) & ( !\L6|Q\(1) & ( !\L6|Q\(3) ) ) ) # ( !\L6|Q\(2) & ( !\L6|Q\(1) & ( (\L6|Q\(0) & !\L6|Q\(3)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111100001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L6|ALT_INV_Q\(0),
	datac => \L6|ALT_INV_Q\(3),
	datae => \L6|ALT_INV_Q\(2),
	dataf => \L6|ALT_INV_Q\(1),
	combout => \L8|F~4_combout\);

-- Location: LABCELL_X37_Y2_N39
\L8|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L8|F[5]~5_combout\ = ( \L6|Q\(1) & ( (!\L6|Q\(3) & ((!\L6|Q\(2)) # (\L6|Q\(0)))) ) ) # ( !\L6|Q\(1) & ( (!\L6|Q\(3) & (\L6|Q\(0) & !\L6|Q\(2))) # (\L6|Q\(3) & (!\L6|Q\(0) & \L6|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L6|ALT_INV_Q\(3),
	datab => \L6|ALT_INV_Q\(0),
	datac => \L6|ALT_INV_Q\(2),
	dataf => \L6|ALT_INV_Q\(1),
	combout => \L8|F[5]~5_combout\);

-- Location: LABCELL_X37_Y2_N33
\L8|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L8|F[6]~6_combout\ = ( \L6|Q\(1) & ( (!\L6|Q\(0)) # (!\L6|Q\(3) $ (\L6|Q\(2))) ) ) # ( !\L6|Q\(1) & ( (\L6|Q\(2)) # (\L6|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111101101111011011110110111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L6|ALT_INV_Q\(3),
	datab => \L6|ALT_INV_Q\(0),
	datac => \L6|ALT_INV_Q\(2),
	dataf => \L6|ALT_INV_Q\(1),
	combout => \L8|F[6]~6_combout\);

-- Location: FF_X37_Y2_N19
\L7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L5|m[0]~3_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|Q\(0));

-- Location: FF_X37_Y2_N25
\L7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L5|m[1]~2_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|Q\(1));

-- Location: FF_X37_Y2_N22
\L7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L5|m[2]~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|Q\(2));

-- Location: FF_X37_Y2_N28
\L7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L5|m[3]~1_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|Q\(3));

-- Location: MLABCELL_X28_Y75_N3
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



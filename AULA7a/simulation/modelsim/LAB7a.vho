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

-- DATE "05/09/2017 10:37:52"

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

ENTITY 	Lab7a IS
    PORT (
	LEDR : OUT std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Lab7a;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab7a IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[1]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \L0|EA.S4~q\ : std_logic;
SIGNAL \L0|EA.S0~0_combout\ : std_logic;
SIGNAL \L0|EA.S0~q\ : std_logic;
SIGNAL \L0|EA.S1~0_combout\ : std_logic;
SIGNAL \L0|EA.S1~q\ : std_logic;
SIGNAL \L0|EA.S2~q\ : std_logic;
SIGNAL \L0|EA.S3~q\ : std_logic;
SIGNAL \L0|EA.S1~DUPLICATE_q\ : std_logic;
SIGNAL \L0|contagem~4_combout\ : std_logic;
SIGNAL \L0|EA.S2~DUPLICATE_q\ : std_logic;
SIGNAL \L1|F~0_combout\ : std_logic;
SIGNAL \L1|F[1]~1_combout\ : std_logic;
SIGNAL \L1|F[2]~2_combout\ : std_logic;
SIGNAL \L1|F[4]~3_combout\ : std_logic;
SIGNAL \L1|F[6]~4_combout\ : std_logic;
SIGNAL \L0|contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L0|ALT_INV_EA.S2~DUPLICATE_q\ : std_logic;
SIGNAL \L0|ALT_INV_EA.S1~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \L0|ALT_INV_EA.S0~q\ : std_logic;
SIGNAL \L1|ALT_INV_F[6]~4_combout\ : std_logic;
SIGNAL \L1|ALT_INV_F[2]~2_combout\ : std_logic;
SIGNAL \L1|ALT_INV_F~0_combout\ : std_logic;
SIGNAL \L0|ALT_INV_contagem\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \L0|ALT_INV_EA.S4~q\ : std_logic;
SIGNAL \L0|ALT_INV_contagem~4_combout\ : std_logic;
SIGNAL \L0|ALT_INV_EA.S3~q\ : std_logic;

BEGIN

LEDR <= ww_LEDR;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\L0|ALT_INV_EA.S2~DUPLICATE_q\ <= NOT \L0|EA.S2~DUPLICATE_q\;
\L0|ALT_INV_EA.S1~DUPLICATE_q\ <= NOT \L0|EA.S1~DUPLICATE_q\;
\ALT_INV_KEY[1]~inputCLKENA0_outclk\ <= NOT \KEY[1]~inputCLKENA0_outclk\;
\L0|ALT_INV_EA.S0~q\ <= NOT \L0|EA.S0~q\;
\L1|ALT_INV_F[6]~4_combout\ <= NOT \L1|F[6]~4_combout\;
\L1|ALT_INV_F[2]~2_combout\ <= NOT \L1|F[2]~2_combout\;
\L1|ALT_INV_F~0_combout\ <= NOT \L1|F~0_combout\;
\L0|ALT_INV_contagem\(2) <= NOT \L0|contagem\(2);
\L0|ALT_INV_EA.S4~q\ <= NOT \L0|EA.S4~q\;
\L0|ALT_INV_contagem~4_combout\ <= NOT \L0|contagem~4_combout\;
\L0|ALT_INV_EA.S3~q\ <= NOT \L0|EA.S3~q\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L0|ALT_INV_contagem~4_combout\,
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
	i => \L0|contagem\(1),
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
	i => \L0|contagem\(2),
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
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|ALT_INV_F~0_combout\,
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
	i => \L1|F[1]~1_combout\,
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
	i => \L1|ALT_INV_F[2]~2_combout\,
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
	i => \L1|ALT_INV_F~0_combout\,
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
	i => \L1|F[4]~3_combout\,
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
	i => \L0|ALT_INV_contagem\(2),
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
	i => \L1|ALT_INV_F[6]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

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

-- Location: CLKCTRL_G6
\KEY[1]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[1]~input_o\,
	outclk => \KEY[1]~inputCLKENA0_outclk\);

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

-- Location: FF_X88_Y4_N22
\L0|EA.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	asdata => \L0|EA.S3~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.S4~q\);

-- Location: LABCELL_X88_Y4_N24
\L0|EA.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|EA.S0~0_combout\ = ( !\L0|EA.S4~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L0|ALT_INV_EA.S4~q\,
	combout => \L0|EA.S0~0_combout\);

-- Location: FF_X88_Y4_N25
\L0|EA.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	d => \L0|EA.S0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.S0~q\);

-- Location: LABCELL_X88_Y4_N51
\L0|EA.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|EA.S1~0_combout\ = ( !\L0|EA.S0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L0|ALT_INV_EA.S0~q\,
	combout => \L0|EA.S1~0_combout\);

-- Location: FF_X88_Y4_N53
\L0|EA.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	d => \L0|EA.S1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.S1~q\);

-- Location: FF_X88_Y4_N56
\L0|EA.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	asdata => \L0|EA.S1~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.S2~q\);

-- Location: FF_X88_Y4_N5
\L0|EA.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	asdata => \L0|EA.S2~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.S3~q\);

-- Location: FF_X88_Y4_N52
\L0|EA.S1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	d => \L0|EA.S1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.S1~DUPLICATE_q\);

-- Location: LABCELL_X88_Y4_N48
\L0|contagem~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|contagem~4_combout\ = (\L0|EA.S1~DUPLICATE_q\) # (\L0|EA.S3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.S3~q\,
	datab => \L0|ALT_INV_EA.S1~DUPLICATE_q\,
	combout => \L0|contagem~4_combout\);

-- Location: FF_X88_Y4_N55
\L0|EA.S2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	asdata => \L0|EA.S1~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.S2~DUPLICATE_q\);

-- Location: LABCELL_X88_Y4_N6
\L0|contagem[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|contagem\(1) = ( \L0|EA.S2~DUPLICATE_q\ ) # ( !\L0|EA.S2~DUPLICATE_q\ & ( \L0|EA.S1~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L0|ALT_INV_EA.S1~DUPLICATE_q\,
	datae => \L0|ALT_INV_EA.S2~DUPLICATE_q\,
	combout => \L0|contagem\(1));

-- Location: LABCELL_X88_Y4_N57
\L0|contagem[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|contagem\(2) = ( \L0|EA.S3~q\ ) # ( !\L0|EA.S3~q\ & ( \L0|EA.S4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_EA.S4~q\,
	datae => \L0|ALT_INV_EA.S3~q\,
	combout => \L0|contagem\(2));

-- Location: LABCELL_X88_Y4_N12
\L1|F~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|F~0_combout\ = ( \L0|EA.S2~DUPLICATE_q\ & ( \L0|EA.S4~q\ ) ) # ( !\L0|EA.S2~DUPLICATE_q\ & ( \L0|EA.S4~q\ & ( (!\L0|EA.S3~q\) # (\L0|EA.S1~DUPLICATE_q\) ) ) ) # ( \L0|EA.S2~DUPLICATE_q\ & ( !\L0|EA.S4~q\ ) ) # ( !\L0|EA.S2~DUPLICATE_q\ & ( 
-- !\L0|EA.S4~q\ & ( \L0|EA.S1~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111110111011101110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.S3~q\,
	datab => \L0|ALT_INV_EA.S1~DUPLICATE_q\,
	datae => \L0|ALT_INV_EA.S2~DUPLICATE_q\,
	dataf => \L0|ALT_INV_EA.S4~q\,
	combout => \L1|F~0_combout\);

-- Location: LABCELL_X88_Y4_N36
\L1|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|F[1]~1_combout\ = ( \L0|EA.S2~DUPLICATE_q\ & ( \L0|EA.S4~q\ & ( (\L0|EA.S1~DUPLICATE_q\) # (\L0|EA.S3~q\) ) ) ) # ( !\L0|EA.S2~DUPLICATE_q\ & ( \L0|EA.S4~q\ & ( (!\L0|EA.S3~q\) # (\L0|EA.S1~DUPLICATE_q\) ) ) ) # ( \L0|EA.S2~DUPLICATE_q\ & ( 
-- !\L0|EA.S4~q\ & ( \L0|EA.S3~q\ ) ) ) # ( !\L0|EA.S2~DUPLICATE_q\ & ( !\L0|EA.S4~q\ & ( (\L0|EA.S3~q\ & \L0|EA.S1~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001010101010101010110111011101110110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.S3~q\,
	datab => \L0|ALT_INV_EA.S1~DUPLICATE_q\,
	datae => \L0|ALT_INV_EA.S2~DUPLICATE_q\,
	dataf => \L0|ALT_INV_EA.S4~q\,
	combout => \L1|F[1]~1_combout\);

-- Location: LABCELL_X88_Y4_N45
\L1|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|F[2]~2_combout\ = ( \L0|EA.S3~q\ & ( \L0|EA.S4~q\ ) ) # ( !\L0|EA.S3~q\ & ( \L0|EA.S4~q\ ) ) # ( \L0|EA.S3~q\ & ( !\L0|EA.S4~q\ ) ) # ( !\L0|EA.S3~q\ & ( !\L0|EA.S4~q\ & ( !\L0|EA.S1~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_EA.S1~DUPLICATE_q\,
	datae => \L0|ALT_INV_EA.S3~q\,
	dataf => \L0|ALT_INV_EA.S4~q\,
	combout => \L1|F[2]~2_combout\);

-- Location: LABCELL_X88_Y4_N30
\L1|F[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|F[4]~3_combout\ = ( !\L0|EA.S2~DUPLICATE_q\ & ( \L0|EA.S4~q\ & ( !\L0|EA.S1~DUPLICATE_q\ ) ) ) # ( \L0|EA.S2~DUPLICATE_q\ & ( !\L0|EA.S4~q\ & ( (!\L0|EA.S3~q\ & !\L0|EA.S1~DUPLICATE_q\) ) ) ) # ( !\L0|EA.S2~DUPLICATE_q\ & ( !\L0|EA.S4~q\ & ( 
-- !\L0|EA.S1~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100100010001000100011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.S3~q\,
	datab => \L0|ALT_INV_EA.S1~DUPLICATE_q\,
	datae => \L0|ALT_INV_EA.S2~DUPLICATE_q\,
	dataf => \L0|ALT_INV_EA.S4~q\,
	combout => \L1|F[4]~3_combout\);

-- Location: LABCELL_X88_Y4_N0
\L1|F[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|F[6]~4_combout\ = ( \L0|EA.S1~DUPLICATE_q\ ) # ( !\L0|EA.S1~DUPLICATE_q\ & ( ((\L0|EA.S2~DUPLICATE_q\) # (\L0|EA.S4~q\)) # (\L0|EA.S3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111111111111111111101110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.S3~q\,
	datab => \L0|ALT_INV_EA.S4~q\,
	datad => \L0|ALT_INV_EA.S2~DUPLICATE_q\,
	datae => \L0|ALT_INV_EA.S1~DUPLICATE_q\,
	combout => \L1|F[6]~4_combout\);

-- Location: LABCELL_X29_Y27_N0
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



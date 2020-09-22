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

-- DATE "10/02/2017 18:48:20"

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

ENTITY 	lab4_top IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab4_top;

-- Design Ports Information
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4_top IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \next~14_combout\ : std_logic;
SIGNAL \present.001~q\ : std_logic;
SIGNAL \next~12_combout\ : std_logic;
SIGNAL \present.000~q\ : std_logic;
SIGNAL \next~15_combout\ : std_logic;
SIGNAL \present.100~q\ : std_logic;
SIGNAL \next~13_combout\ : std_logic;
SIGNAL \present.011~q\ : std_logic;
SIGNAL \next~11_combout\ : std_logic;
SIGNAL \present.010~q\ : std_logic;
SIGNAL \HEX0~0_combout\ : std_logic;
SIGNAL \HEX0[0]~reg0_q\ : std_logic;
SIGNAL \HEX0[2]~reg0_q\ : std_logic;
SIGNAL \HEX0[3]~reg0_q\ : std_logic;
SIGNAL \HEX0~1_combout\ : std_logic;
SIGNAL \HEX0[4]~reg0_q\ : std_logic;
SIGNAL \HEX0~2_combout\ : std_logic;
SIGNAL \HEX0[5]~reg0_q\ : std_logic;
SIGNAL \HEX0~3_combout\ : std_logic;
SIGNAL \HEX0[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_present.100~q\ : std_logic;
SIGNAL \ALT_INV_present.001~q\ : std_logic;
SIGNAL \ALT_INV_present.011~q\ : std_logic;
SIGNAL \ALT_INV_present.010~q\ : std_logic;
SIGNAL \ALT_INV_present.000~q\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_present.100~q\ <= NOT \present.100~q\;
\ALT_INV_present.001~q\ <= NOT \present.001~q\;
\ALT_INV_present.011~q\ <= NOT \present.011~q\;
\ALT_INV_present.010~q\ <= NOT \present.010~q\;
\ALT_INV_present.000~q\ <= NOT \present.000~q\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[0]~reg0_q\,
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
	i => GND,
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
	i => \HEX0[2]~reg0_q\,
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
	i => \HEX0[3]~reg0_q\,
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
	i => \HEX0[4]~reg0_q\,
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
	i => \HEX0[5]~reg0_q\,
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
	i => \HEX0[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

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

-- Location: CLKCTRL_G6
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

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

-- Location: LABCELL_X88_Y4_N30
\next~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \next~14_combout\ = ( \present.000~q\ & ( (\KEY[1]~input_o\ & (!\SW[0]~input_o\ & \present.010~q\)) ) ) # ( !\present.000~q\ & ( (\KEY[1]~input_o\ & ((\present.010~q\) # (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_present.010~q\,
	dataf => \ALT_INV_present.000~q\,
	combout => \next~14_combout\);

-- Location: FF_X88_Y4_N32
\present.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \next~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present.001~q\);

-- Location: LABCELL_X88_Y4_N9
\next~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \next~12_combout\ = ( !\present.100~q\ & ( \present.001~q\ & ( (\KEY[1]~input_o\ & \SW[0]~input_o\) ) ) ) # ( \present.100~q\ & ( !\present.001~q\ & ( (\KEY[1]~input_o\ & !\SW[0]~input_o\) ) ) ) # ( !\present.100~q\ & ( !\present.001~q\ & ( 
-- \KEY[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_present.100~q\,
	dataf => \ALT_INV_present.001~q\,
	combout => \next~12_combout\);

-- Location: FF_X88_Y4_N11
\present.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \next~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present.000~q\);

-- Location: LABCELL_X88_Y4_N36
\next~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \next~15_combout\ = ( \SW[0]~input_o\ & ( \present.011~q\ & ( \KEY[1]~input_o\ ) ) ) # ( !\SW[0]~input_o\ & ( \present.011~q\ & ( (\KEY[1]~input_o\ & !\present.000~q\) ) ) ) # ( !\SW[0]~input_o\ & ( !\present.011~q\ & ( (\KEY[1]~input_o\ & 
-- !\present.000~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000000000000000001010101000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_present.000~q\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_present.011~q\,
	combout => \next~15_combout\);

-- Location: FF_X88_Y4_N38
\present.100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \next~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present.100~q\);

-- Location: LABCELL_X88_Y4_N51
\next~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \next~13_combout\ = ( \present.010~q\ & ( (\KEY[1]~input_o\ & ((\SW[0]~input_o\) # (\present.100~q\))) ) ) # ( !\present.010~q\ & ( (\present.100~q\ & (\KEY[1]~input_o\ & !\SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_present.100~q\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_present.010~q\,
	combout => \next~13_combout\);

-- Location: FF_X88_Y4_N53
\present.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \next~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present.011~q\);

-- Location: LABCELL_X88_Y4_N54
\next~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \next~11_combout\ = ( \SW[0]~input_o\ & ( \present.001~q\ & ( \KEY[1]~input_o\ ) ) ) # ( !\SW[0]~input_o\ & ( \present.001~q\ & ( (\KEY[1]~input_o\ & \present.011~q\) ) ) ) # ( !\SW[0]~input_o\ & ( !\present.001~q\ & ( (\KEY[1]~input_o\ & \present.011~q\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000101000001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_present.011~q\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_present.001~q\,
	combout => \next~11_combout\);

-- Location: FF_X88_Y4_N41
\present.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \next~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present.010~q\);

-- Location: LABCELL_X88_Y4_N21
\HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~0_combout\ = ( \SW[0]~input_o\ & ( \present.000~q\ & ( (\KEY[1]~input_o\ & \present.011~q\) ) ) ) # ( !\SW[0]~input_o\ & ( \present.000~q\ & ( (\KEY[1]~input_o\ & \present.010~q\) ) ) ) # ( \SW[0]~input_o\ & ( !\present.000~q\ & ( \KEY[1]~input_o\ ) 
-- ) ) # ( !\SW[0]~input_o\ & ( !\present.000~q\ & ( \KEY[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000101000001010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_present.010~q\,
	datad => \ALT_INV_present.011~q\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_present.000~q\,
	combout => \HEX0~0_combout\);

-- Location: FF_X88_Y4_N28
\HEX0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \HEX0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[0]~reg0_q\);

-- Location: FF_X88_Y4_N19
\HEX0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \next~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[2]~reg0_q\);

-- Location: FF_X88_Y4_N22
\HEX0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \HEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[3]~reg0_q\);

-- Location: LABCELL_X88_Y4_N48
\HEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~1_combout\ = ( \present.011~q\ & ( (!\present.100~q\ & (\KEY[1]~input_o\ & (\SW[0]~input_o\ & !\present.001~q\))) ) ) # ( !\present.011~q\ & ( (\KEY[1]~input_o\ & (!\present.001~q\ & ((!\present.100~q\) # (!\SW[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000000000001100100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_present.100~q\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_present.001~q\,
	dataf => \ALT_INV_present.011~q\,
	combout => \HEX0~1_combout\);

-- Location: FF_X88_Y4_N49
\HEX0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \HEX0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[4]~reg0_q\);

-- Location: LABCELL_X88_Y4_N24
\HEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~2_combout\ = ( \present.011~q\ & ( \present.000~q\ & ( (\KEY[1]~input_o\ & (!\present.001~q\ & !\SW[0]~input_o\)) ) ) ) # ( !\present.011~q\ & ( \present.000~q\ & ( (\KEY[1]~input_o\ & ((!\SW[0]~input_o\ & (!\present.001~q\)) # (\SW[0]~input_o\ & 
-- ((!\present.100~q\))))) ) ) ) # ( !\present.011~q\ & ( !\present.000~q\ & ( (\KEY[1]~input_o\ & (!\present.100~q\ & \SW[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000000001000100010100000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_present.001~q\,
	datac => \ALT_INV_present.100~q\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_present.011~q\,
	dataf => \ALT_INV_present.000~q\,
	combout => \HEX0~2_combout\);

-- Location: FF_X88_Y4_N26
\HEX0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \HEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[5]~reg0_q\);

-- Location: LABCELL_X88_Y4_N42
\HEX0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~3_combout\ = ( \SW[0]~input_o\ & ( \present.001~q\ & ( (!\KEY[1]~input_o\) # ((!\present.000~q\) # (\present.100~q\)) ) ) ) # ( !\SW[0]~input_o\ & ( \present.001~q\ ) ) # ( \SW[0]~input_o\ & ( !\present.001~q\ & ( (!\KEY[1]~input_o\) # 
-- ((!\present.000~q\) # (\present.100~q\)) ) ) ) # ( !\SW[0]~input_o\ & ( !\present.001~q\ & ( (!\KEY[1]~input_o\) # (\present.010~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011111111111010111111111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_present.010~q\,
	datac => \ALT_INV_present.100~q\,
	datad => \ALT_INV_present.000~q\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_present.001~q\,
	combout => \HEX0~3_combout\);

-- Location: FF_X88_Y4_N43
\HEX0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \HEX0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[6]~reg0_q\);

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

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

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



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

-- DATE "10/21/2017 20:47:11"

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

ENTITY 	cpu IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	s : IN std_logic;
	load : IN std_logic;
	\in\ : IN std_logic_vector(15 DOWNTO 0);
	\out\ : BUFFER std_logic_vector(15 DOWNTO 0);
	N : BUFFER std_logic;
	V : BUFFER std_logic;
	Z : BUFFER std_logic;
	w : BUFFER std_logic
	);
END cpu;

-- Design Ports Information
-- in[0]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[1]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[2]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[5]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[6]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[7]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[9]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[10]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[12]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[13]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[14]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[15]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[2]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[3]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[4]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[6]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[7]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[8]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[9]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[10]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[12]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[13]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[14]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[15]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[11]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL \ww_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ww_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_N : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL \in[0]~input_o\ : std_logic;
SIGNAL \in[1]~input_o\ : std_logic;
SIGNAL \in[2]~input_o\ : std_logic;
SIGNAL \in[3]~input_o\ : std_logic;
SIGNAL \in[4]~input_o\ : std_logic;
SIGNAL \in[5]~input_o\ : std_logic;
SIGNAL \in[6]~input_o\ : std_logic;
SIGNAL \in[7]~input_o\ : std_logic;
SIGNAL \in[8]~input_o\ : std_logic;
SIGNAL \in[9]~input_o\ : std_logic;
SIGNAL \in[10]~input_o\ : std_logic;
SIGNAL \in[12]~input_o\ : std_logic;
SIGNAL \in[13]~input_o\ : std_logic;
SIGNAL \in[14]~input_o\ : std_logic;
SIGNAL \in[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \in[11]~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \instruction|out[11]~0_combout\ : std_logic;
SIGNAL \bruce|next_state~18_combout\ : std_logic;
SIGNAL \bruce|present_state.0000~q\ : std_logic;
SIGNAL \bruce|next_state~23_combout\ : std_logic;
SIGNAL \bruce|present_state.0001~q\ : std_logic;
SIGNAL \bruce|next_state~22_combout\ : std_logic;
SIGNAL \bruce|present_state.0011~q\ : std_logic;
SIGNAL \bruce|next_state~21_combout\ : std_logic;
SIGNAL \bruce|present_state.0100~q\ : std_logic;
SIGNAL \bruce|next_state~20_combout\ : std_logic;
SIGNAL \bruce|present_state.0110~q\ : std_logic;
SIGNAL \bruce|next_state~19_combout\ : std_logic;
SIGNAL \bruce|present_state.0101~q\ : std_logic;
SIGNAL \bruce|present_state~16_combout\ : std_logic;
SIGNAL \bruce|present_state.1001~q\ : std_logic;
SIGNAL \bruce|w~0_combout\ : std_logic;
SIGNAL \bruce|w~q\ : std_logic;
SIGNAL \instruction|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_in[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_load~input_o\ : std_logic;
SIGNAL \ALT_INV_s~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \bruce|ALT_INV_present_state.0001~q\ : std_logic;
SIGNAL \bruce|ALT_INV_present_state.0011~q\ : std_logic;
SIGNAL \bruce|ALT_INV_present_state.0100~q\ : std_logic;
SIGNAL \instruction|ALT_INV_out\ : std_logic_vector(11 DOWNTO 11);
SIGNAL \bruce|ALT_INV_present_state.0110~q\ : std_logic;
SIGNAL \bruce|ALT_INV_present_state.0101~q\ : std_logic;
SIGNAL \bruce|ALT_INV_present_state.1001~q\ : std_logic;
SIGNAL \bruce|ALT_INV_present_state.0000~q\ : std_logic;
SIGNAL \bruce|ALT_INV_w~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_s <= s;
ww_load <= load;
\ww_in\ <= \in\;
\out\ <= \ww_out\;
N <= ww_N;
V <= ww_V;
Z <= ww_Z;
w <= ww_w;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_in[11]~input_o\ <= NOT \in[11]~input_o\;
\ALT_INV_load~input_o\ <= NOT \load~input_o\;
\ALT_INV_s~input_o\ <= NOT \s~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\bruce|ALT_INV_present_state.0001~q\ <= NOT \bruce|present_state.0001~q\;
\bruce|ALT_INV_present_state.0011~q\ <= NOT \bruce|present_state.0011~q\;
\bruce|ALT_INV_present_state.0100~q\ <= NOT \bruce|present_state.0100~q\;
\instruction|ALT_INV_out\(11) <= NOT \instruction|out\(11);
\bruce|ALT_INV_present_state.0110~q\ <= NOT \bruce|present_state.0110~q\;
\bruce|ALT_INV_present_state.0101~q\ <= NOT \bruce|present_state.0101~q\;
\bruce|ALT_INV_present_state.1001~q\ <= NOT \bruce|present_state.1001~q\;
\bruce|ALT_INV_present_state.0000~q\ <= NOT \bruce|present_state.0000~q\;
\bruce|ALT_INV_w~q\ <= NOT \bruce|w~q\;

-- Location: IOOBUF_X38_Y81_N2
\out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(0));

-- Location: IOOBUF_X84_Y0_N19
\out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(1));

-- Location: IOOBUF_X62_Y0_N53
\out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(2));

-- Location: IOOBUF_X14_Y0_N36
\out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(3));

-- Location: IOOBUF_X2_Y81_N93
\out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(4));

-- Location: IOOBUF_X40_Y81_N2
\out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(5));

-- Location: IOOBUF_X16_Y0_N19
\out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(6));

-- Location: IOOBUF_X22_Y81_N53
\out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(7));

-- Location: IOOBUF_X14_Y0_N19
\out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(8));

-- Location: IOOBUF_X58_Y0_N42
\out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(9));

-- Location: IOOBUF_X38_Y0_N19
\out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(10));

-- Location: IOOBUF_X22_Y81_N19
\out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(11));

-- Location: IOOBUF_X84_Y0_N2
\out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(12));

-- Location: IOOBUF_X30_Y81_N36
\out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(13));

-- Location: IOOBUF_X8_Y0_N36
\out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(14));

-- Location: IOOBUF_X8_Y81_N53
\out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_out\(15));

-- Location: IOOBUF_X89_Y8_N5
\N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_N);

-- Location: IOOBUF_X56_Y0_N19
\V~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_V);

-- Location: IOOBUF_X89_Y4_N45
\Z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Z);

-- Location: IOOBUF_X89_Y15_N39
\w~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bruce|w~q\,
	devoe => ww_devoe,
	o => ww_w);

-- Location: IOIBUF_X89_Y23_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G11
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y16_N55
\s~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: IOIBUF_X89_Y16_N4
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X89_Y16_N21
\in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(11),
	o => \in[11]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LABCELL_X88_Y16_N54
\instruction|out[11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instruction|out[11]~0_combout\ = ( \instruction|out\(11) & ( \load~input_o\ & ( \in[11]~input_o\ ) ) ) # ( !\instruction|out\(11) & ( \load~input_o\ & ( \in[11]~input_o\ ) ) ) # ( \instruction|out\(11) & ( !\load~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_in[11]~input_o\,
	datae => \instruction|ALT_INV_out\(11),
	dataf => \ALT_INV_load~input_o\,
	combout => \instruction|out[11]~0_combout\);

-- Location: FF_X88_Y16_N56
\instruction|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \instruction|out[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|out\(11));

-- Location: LABCELL_X88_Y16_N51
\bruce|next_state~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \bruce|next_state~18_combout\ = ( \bruce|present_state.0000~q\ & ( !\bruce|present_state.1001~q\ & ( !\reset~input_o\ ) ) ) # ( !\bruce|present_state.0000~q\ & ( !\bruce|present_state.1001~q\ & ( (\s~input_o\ & !\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~input_o\,
	datad => \ALT_INV_reset~input_o\,
	datae => \bruce|ALT_INV_present_state.0000~q\,
	dataf => \bruce|ALT_INV_present_state.1001~q\,
	combout => \bruce|next_state~18_combout\);

-- Location: FF_X88_Y16_N53
\bruce|present_state.0000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bruce|next_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruce|present_state.0000~q\);

-- Location: LABCELL_X88_Y16_N27
\bruce|next_state~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \bruce|next_state~23_combout\ = ( !\bruce|present_state.0000~q\ & ( (!\reset~input_o\ & \s~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_s~input_o\,
	dataf => \bruce|ALT_INV_present_state.0000~q\,
	combout => \bruce|next_state~23_combout\);

-- Location: FF_X88_Y16_N28
\bruce|present_state.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bruce|next_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruce|present_state.0001~q\);

-- Location: LABCELL_X88_Y16_N30
\bruce|next_state~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \bruce|next_state~22_combout\ = ( \bruce|present_state.0001~q\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \bruce|ALT_INV_present_state.0001~q\,
	combout => \bruce|next_state~22_combout\);

-- Location: FF_X88_Y16_N31
\bruce|present_state.0011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bruce|next_state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruce|present_state.0011~q\);

-- Location: LABCELL_X88_Y16_N33
\bruce|next_state~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bruce|next_state~21_combout\ = ( \bruce|present_state.0011~q\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \bruce|ALT_INV_present_state.0011~q\,
	combout => \bruce|next_state~21_combout\);

-- Location: FF_X88_Y16_N35
\bruce|present_state.0100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bruce|next_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruce|present_state.0100~q\);

-- Location: LABCELL_X88_Y16_N15
\bruce|next_state~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \bruce|next_state~20_combout\ = ( \bruce|present_state.0100~q\ & ( (!\reset~input_o\ & \instruction|out\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datad => \instruction|ALT_INV_out\(11),
	dataf => \bruce|ALT_INV_present_state.0100~q\,
	combout => \bruce|next_state~20_combout\);

-- Location: FF_X88_Y16_N17
\bruce|present_state.0110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bruce|next_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruce|present_state.0110~q\);

-- Location: LABCELL_X88_Y16_N12
\bruce|next_state~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \bruce|next_state~19_combout\ = ( \bruce|present_state.0100~q\ & ( (!\reset~input_o\ & !\instruction|out\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datad => \instruction|ALT_INV_out\(11),
	dataf => \bruce|ALT_INV_present_state.0100~q\,
	combout => \bruce|next_state~19_combout\);

-- Location: FF_X88_Y16_N13
\bruce|present_state.0101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bruce|next_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruce|present_state.0101~q\);

-- Location: LABCELL_X88_Y16_N24
\bruce|present_state~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \bruce|present_state~16_combout\ = ( \bruce|present_state.0101~q\ & ( !\reset~input_o\ ) ) # ( !\bruce|present_state.0101~q\ & ( (!\reset~input_o\ & \bruce|present_state.0110~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \bruce|ALT_INV_present_state.0110~q\,
	dataf => \bruce|ALT_INV_present_state.0101~q\,
	combout => \bruce|present_state~16_combout\);

-- Location: FF_X88_Y16_N26
\bruce|present_state.1001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bruce|present_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruce|present_state.1001~q\);

-- Location: LABCELL_X88_Y16_N39
\bruce|w~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bruce|w~0_combout\ = ( \bruce|w~q\ & ( \bruce|present_state.0000~q\ & ( ((!\s~input_o\ & \bruce|present_state.1001~q\)) # (\reset~input_o\) ) ) ) # ( !\bruce|w~q\ & ( \bruce|present_state.0000~q\ & ( (!\s~input_o\ & (!\reset~input_o\ & 
-- \bruce|present_state.1001~q\)) ) ) ) # ( \bruce|w~q\ & ( !\bruce|present_state.0000~q\ & ( (!\s~input_o\) # (\reset~input_o\) ) ) ) # ( !\bruce|w~q\ & ( !\bruce|present_state.0000~q\ & ( (!\s~input_o\ & !\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101011111010111100000000101000000000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => \bruce|ALT_INV_present_state.1001~q\,
	datae => \bruce|ALT_INV_w~q\,
	dataf => \bruce|ALT_INV_present_state.0000~q\,
	combout => \bruce|w~0_combout\);

-- Location: FF_X88_Y16_N40
\bruce|w\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bruce|w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bruce|w~q\);

-- Location: IOIBUF_X26_Y0_N92
\in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(0),
	o => \in[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N35
\in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(1),
	o => \in[1]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(2),
	o => \in[2]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(3),
	o => \in[3]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(4),
	o => \in[4]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(5),
	o => \in[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(6),
	o => \in[6]~input_o\);

-- Location: IOIBUF_X24_Y81_N18
\in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(7),
	o => \in[7]~input_o\);

-- Location: IOIBUF_X20_Y0_N18
\in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(8),
	o => \in[8]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(9),
	o => \in[9]~input_o\);

-- Location: IOIBUF_X4_Y81_N52
\in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(10),
	o => \in[10]~input_o\);

-- Location: IOIBUF_X2_Y81_N41
\in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(12),
	o => \in[12]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(13),
	o => \in[13]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(14),
	o => \in[14]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(15),
	o => \in[15]~input_o\);

-- Location: LABCELL_X81_Y2_N3
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



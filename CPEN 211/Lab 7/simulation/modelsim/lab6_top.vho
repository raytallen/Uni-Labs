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

-- DATE "10/23/2017 18:49:31"

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

ENTITY 	lab6_top IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END lab6_top;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab6_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \IN|LEDR[0]~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \IN|LEDR[1]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \IN|LEDR[2]~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \IN|REG|Q[11]~feeder_combout\ : std_logic;
SIGNAL \IN|LEDR[3]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \IN|LEDR[4]~4_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \IN|REG|Q[5]~feeder_combout\ : std_logic;
SIGNAL \IN|LEDR[5]~5_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \IN|LEDR[6]~6_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \IN|REG|Q[7]~feeder_combout\ : std_logic;
SIGNAL \IN|LEDR[7]~7_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \U|instruction|out[11]~feeder_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \U|FSM|Selector1~0_combout\ : std_logic;
SIGNAL \U|FSM|next_state.0001~q\ : std_logic;
SIGNAL \U|FSM|Selector9~0_combout\ : std_logic;
SIGNAL \U|FSM|next_state.1001~q\ : std_logic;
SIGNAL \U|FSM|next_state~36_combout\ : std_logic;
SIGNAL \U|FSM|next_state.1010~q\ : std_logic;
SIGNAL \U|FSM|next_state~43_combout\ : std_logic;
SIGNAL \U|FSM|next_state.1011~q\ : std_logic;
SIGNAL \U|FSM|next_state~42_combout\ : std_logic;
SIGNAL \U|FSM|next_state.1100~q\ : std_logic;
SIGNAL \U|FSM|next_state~37_combout\ : std_logic;
SIGNAL \U|FSM|next_state.1101~q\ : std_logic;
SIGNAL \U|FSM|Selector9~1_combout\ : std_logic;
SIGNAL \U|FSM|next_state~45_combout\ : std_logic;
SIGNAL \U|FSM|next_state.0010~q\ : std_logic;
SIGNAL \U|FSM|next_state~44_combout\ : std_logic;
SIGNAL \U|FSM|next_state.0011~q\ : std_logic;
SIGNAL \U|FSM|next_state~38_combout\ : std_logic;
SIGNAL \U|FSM|next_state.0100~q\ : std_logic;
SIGNAL \U|FSM|next_state~41_combout\ : std_logic;
SIGNAL \U|FSM|next_state.0111~q\ : std_logic;
SIGNAL \U|FSM|next_state~40_combout\ : std_logic;
SIGNAL \U|FSM|next_state.0110~q\ : std_logic;
SIGNAL \U|FSM|next_state~39_combout\ : std_logic;
SIGNAL \U|FSM|next_state.0101~q\ : std_logic;
SIGNAL \U|FSM|Selector8~0_combout\ : std_logic;
SIGNAL \U|FSM|next_state~35_combout\ : std_logic;
SIGNAL \U|FSM|next_state.1000~q\ : std_logic;
SIGNAL \U|FSM|Selector0~0_combout\ : std_logic;
SIGNAL \U|FSM|next_state~34_combout\ : std_logic;
SIGNAL \U|FSM|next_state.0000~q\ : std_logic;
SIGNAL \U|FSM|w~0_combout\ : std_logic;
SIGNAL \U|FSM|w~q\ : std_logic;
SIGNAL \U|FSM|next_state~46_combout\ : std_logic;
SIGNAL \U|FSM|nsel~2_combout\ : std_logic;
SIGNAL \U|FSM|nsel~0_combout\ : std_logic;
SIGNAL \U|FSM|nsel~1_combout\ : std_logic;
SIGNAL \U|FSM|loadb~q\ : std_logic;
SIGNAL \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \U|FSM|Selector10~0_combout\ : std_logic;
SIGNAL \U|FSM|asel~q\ : std_logic;
SIGNAL \U|FSM|Selector2~0_combout\ : std_logic;
SIGNAL \U|FSM|loada~q\ : std_logic;
SIGNAL \rtl~48_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add2~0_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~14_combout\ : std_logic;
SIGNAL \rtl~47_combout\ : std_logic;
SIGNAL \U|DP|loadB|out[12]~DUPLICATE_q\ : std_logic;
SIGNAL \rtl~46_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~13_combout\ : std_logic;
SIGNAL \U|DP|loadB|out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \rtl~45_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~12_combout\ : std_logic;
SIGNAL \rtl~44_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~11_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~10_combout\ : std_logic;
SIGNAL \rtl~58_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~9_combout\ : std_logic;
SIGNAL \rtl~57_combout\ : std_logic;
SIGNAL \rtl~56_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~8_combout\ : std_logic;
SIGNAL \rtl~55_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~7_combout\ : std_logic;
SIGNAL \rtl~54_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~6_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~5_combout\ : std_logic;
SIGNAL \rtl~53_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~3_combout\ : std_logic;
SIGNAL \U|FSM|Selector1~1_combout\ : std_logic;
SIGNAL \U|FSM|WideOr10~combout\ : std_logic;
SIGNAL \U|FSM|write~q\ : std_logic;
SIGNAL \U|DP|REGFILE|comb~6_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg7|out[3]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|comb~7_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[3]~11_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|comb~2_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|comb~3_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|comb~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[3]~9_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg5|out[3]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|comb~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg1|out[3]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|comb~4_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|comb~5_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[3]~10_combout\ : std_logic;
SIGNAL \U|DP|loadB|out[3]~DUPLICATE_q\ : std_logic;
SIGNAL \rtl~52_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~4_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~0_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~66_cout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~1_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[0]~feeder_combout\ : std_logic;
SIGNAL \rtl~33_combout\ : std_logic;
SIGNAL \U|DP|alu|Equal0~0_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector15~0_combout\ : std_logic;
SIGNAL \U|FSM|WideOr11~0_combout\ : std_logic;
SIGNAL \U|FSM|loadc~q\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg7|out[0]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[0]~2_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[0]~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg3|out[0]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[0]~1_combout\ : std_logic;
SIGNAL \rtl~49_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~1_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~2\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~5_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[1]~feeder_combout\ : std_logic;
SIGNAL \rtl~34_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector14~0_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg1|out[1]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[1]~4_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg2|out[1]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[1]~3_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[1]~5_combout\ : std_logic;
SIGNAL \rtl~50_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~2_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~6\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~9_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[2]~feeder_combout\ : std_logic;
SIGNAL \rtl~35_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector13~0_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~2_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg1|out[2]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[2]~7_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg2|out[2]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg0|out[2]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[2]~6_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg7|out[2]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[2]~8_combout\ : std_logic;
SIGNAL \rtl~51_combout\ : std_logic;
SIGNAL \U|DP|Muxa|comb~3_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~10\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~14\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~18\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~22\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~26\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~30\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~34\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~38\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~42\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~46\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~50\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~54\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~58\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~61_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add3~0_combout\ : std_logic;
SIGNAL \U|DP|loadC|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector0~0_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~15_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[15]~45_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[15]~47_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg1|out[15]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[15]~46_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~57_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[14]~feeder_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector1~0_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~14_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg5|out[14]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[14]~42_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg1|out[14]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[14]~43_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[14]~44_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~53_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[13]~feeder_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector2~0_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~13_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg5|out[13]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg4|out[13]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg2|out[13]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[13]~39_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg7|out[13]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[13]~41_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[13]~40_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~49_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[12]~feeder_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector3~0_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~12_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg4|out[12]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg2|out[12]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[12]~36_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[12]~37_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[12]~38_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~45_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[11]~feeder_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector4~0_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~11_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[11]~33_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg1|out[11]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[11]~34_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg7|out[11]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[11]~35_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~41_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[10]~feeder_combout\ : std_logic;
SIGNAL \rtl~43_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector5~0_combout\ : std_logic;
SIGNAL \U|DP|loadC|out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~10_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[10]~31_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[10]~30_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[10]~32_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~37_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[9]~feeder_combout\ : std_logic;
SIGNAL \rtl~42_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector6~0_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~9_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg2|out[9]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg4|out[9]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[9]~27_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg3|out[9]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[9]~28_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg7|out[9]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[9]~29_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~33_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[8]~feeder_combout\ : std_logic;
SIGNAL \rtl~41_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector7~0_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~8_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg2|out[8]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg4|out[8]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[8]~24_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg7|out[8]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg6|out[8]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[8]~26_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg5|out[8]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[8]~25_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~29_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[7]~feeder_combout\ : std_logic;
SIGNAL \rtl~40_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector8~0_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~7_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg6|out[7]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[7]~23_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg5|out[7]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[7]~22_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[7]~21_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~25_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[6]~feeder_combout\ : std_logic;
SIGNAL \rtl~39_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector9~0_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~6_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg1|out[6]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[6]~19_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg2|out[6]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[6]~18_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[6]~20_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~21_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[5]~feeder_combout\ : std_logic;
SIGNAL \rtl~38_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector10~0_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~5_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg5|out[5]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg6|out[5]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[5]~17_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg4|out[5]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg2|out[5]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[5]~15_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg1|out[5]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[5]~16_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~17_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[4]~feeder_combout\ : std_logic;
SIGNAL \rtl~37_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector11~0_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|comb~4_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg4|out[4]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg2|out[4]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[4]~12_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg5|out[4]~feeder_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[4]~14_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|b[4]~13_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|Add0~13_sumout\ : std_logic;
SIGNAL \U|DP|loadC|out[3]~feeder_combout\ : std_logic;
SIGNAL \rtl~36_combout\ : std_logic;
SIGNAL \U|DP|alu|Selector12~0_combout\ : std_logic;
SIGNAL \H0|WideOr6~0_combout\ : std_logic;
SIGNAL \H0|WideOr5~0_combout\ : std_logic;
SIGNAL \H0|WideOr4~0_combout\ : std_logic;
SIGNAL \H0|WideOr3~0_combout\ : std_logic;
SIGNAL \H0|WideOr2~0_combout\ : std_logic;
SIGNAL \H0|WideOr1~0_combout\ : std_logic;
SIGNAL \H0|WideOr0~0_combout\ : std_logic;
SIGNAL \H1|WideOr6~0_combout\ : std_logic;
SIGNAL \H1|WideOr5~0_combout\ : std_logic;
SIGNAL \H1|WideOr4~0_combout\ : std_logic;
SIGNAL \H1|WideOr3~0_combout\ : std_logic;
SIGNAL \H1|WideOr2~0_combout\ : std_logic;
SIGNAL \H1|WideOr1~0_combout\ : std_logic;
SIGNAL \H1|WideOr0~0_combout\ : std_logic;
SIGNAL \H2|WideOr6~0_combout\ : std_logic;
SIGNAL \H2|WideOr5~0_combout\ : std_logic;
SIGNAL \H2|WideOr4~0_combout\ : std_logic;
SIGNAL \H2|WideOr3~0_combout\ : std_logic;
SIGNAL \H2|WideOr2~0_combout\ : std_logic;
SIGNAL \H2|WideOr1~0_combout\ : std_logic;
SIGNAL \H2|WideOr0~0_combout\ : std_logic;
SIGNAL \H3|WideOr6~0_combout\ : std_logic;
SIGNAL \H3|WideOr5~0_combout\ : std_logic;
SIGNAL \H3|WideOr4~0_combout\ : std_logic;
SIGNAL \H3|WideOr3~0_combout\ : std_logic;
SIGNAL \H3|WideOr2~0_combout\ : std_logic;
SIGNAL \H3|WideOr1~0_combout\ : std_logic;
SIGNAL \H3|WideOr0~0_combout\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~1_combout\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~2_combout\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~4_combout\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~5_combout\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~3_combout\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~6_combout\ : std_logic;
SIGNAL \U|FSM|Selector5~0_combout\ : std_logic;
SIGNAL \U|FSM|loads~q\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~7_combout\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~8_combout\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~12_combout\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~13_combout\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~9_combout\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~0_combout\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~10_combout\ : std_logic;
SIGNAL \U|DP|loadS|out[0]~11_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ovf~combout\ : std_logic;
SIGNAL \U|DP|loadC|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|instruction|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|loadA|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|loadS|out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \IN|REG|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|loadB|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|FSM|nsel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U|insDec|Rmux|b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Reg5|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Reg0|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Reg2|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Reg4|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Reg1|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Reg3|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Reg6|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Reg7|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|regmux|b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|FSM|vsel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U|DP|loadB|ALT_INV_out[12]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|loadB|ALT_INV_out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|loadB|ALT_INV_out[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U|DP|loadC|ALT_INV_out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out[0]~13_combout\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out[0]~12_combout\ : std_logic;
SIGNAL \U|FSM|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \U|FSM|ALT_INV_next_state~46_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~15_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~14_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~13_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \U|FSM|ALT_INV_write~q\ : std_logic;
SIGNAL \U|DP|Mux1lab6|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \U|FSM|ALT_INV_vsel\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \U|FSM|ALT_INV_next_state.0010~q\ : std_logic;
SIGNAL \U|FSM|ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[15]~47_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg7|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Reg6|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[15]~46_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg3|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Reg1|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[15]~45_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|Reg4|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Reg2|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Reg0|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|Reg5|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[14]~44_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[14]~43_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[14]~42_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[13]~41_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[13]~40_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[13]~39_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[12]~38_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[12]~37_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[12]~36_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[11]~35_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[11]~34_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[11]~33_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~58_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[10]~32_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[10]~31_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[10]~30_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~57_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[9]~29_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[9]~28_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[9]~27_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~56_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[8]~26_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[8]~25_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[8]~24_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~55_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[7]~23_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[7]~22_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[7]~21_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~54_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[6]~20_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[6]~19_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[6]~18_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~53_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[5]~17_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[5]~16_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[5]~15_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~52_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[4]~14_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[4]~13_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[4]~12_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~51_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[3]~11_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[3]~10_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[3]~9_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~50_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[2]~8_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[2]~7_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[2]~6_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~49_combout\ : std_logic;
SIGNAL \U|FSM|ALT_INV_next_state.0011~q\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[1]~5_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[1]~4_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[1]~3_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[0]~2_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[0]~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|regmux|ALT_INV_b[0]~0_combout\ : std_logic;
SIGNAL \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \U|insDec|Rmux|ALT_INV_b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U|instruction|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|FSM|ALT_INV_loadb~q\ : std_logic;
SIGNAL \U|FSM|ALT_INV_nsel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U|FSM|ALT_INV_next_state.1011~q\ : std_logic;
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \U|FSM|ALT_INV_next_state.1100~q\ : std_logic;
SIGNAL \U|FSM|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \U|FSM|ALT_INV_next_state.0111~q\ : std_logic;
SIGNAL \U|FSM|ALT_INV_next_state.0110~q\ : std_logic;
SIGNAL \U|FSM|ALT_INV_next_state.0101~q\ : std_logic;
SIGNAL \U|FSM|ALT_INV_next_state.0100~q\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out[0]~10_combout\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out[0]~9_combout\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out[0]~8_combout\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out[0]~7_combout\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out[0]~6_combout\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out[0]~5_combout\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out[0]~4_combout\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out[0]~3_combout\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out[0]~2_combout\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out[0]~1_combout\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out[0]~0_combout\ : std_logic;
SIGNAL \U|FSM|ALT_INV_loads~q\ : std_logic;
SIGNAL \U|DP|alu|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~48_combout\ : std_logic;
SIGNAL \U|DP|loadA|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|alu|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~14_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~47_combout\ : std_logic;
SIGNAL \U|DP|loadB|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|DP|alu|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~13_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~46_combout\ : std_logic;
SIGNAL \U|DP|alu|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~45_combout\ : std_logic;
SIGNAL \U|DP|alu|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~44_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~43_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~42_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~41_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~40_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~39_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~38_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~37_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~36_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~35_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~34_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~33_combout\ : std_logic;
SIGNAL \U|DP|alu|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U|DP|Muxa|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \U|FSM|ALT_INV_asel~q\ : std_logic;
SIGNAL \U|FSM|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \U|FSM|ALT_INV_next_state.1101~q\ : std_logic;
SIGNAL \U|FSM|ALT_INV_next_state.1010~q\ : std_logic;
SIGNAL \U|FSM|ALT_INV_next_state.1000~q\ : std_logic;
SIGNAL \U|FSM|ALT_INV_next_state.0000~q\ : std_logic;
SIGNAL \U|DP|loadS|ALT_INV_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \H3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \IN|REG|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U|FSM|ALT_INV_next_state.0001~q\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \U|DP|alu|addersubtractor|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \U|FSM|ALT_INV_next_state.1001~q\ : std_logic;
SIGNAL \U|DP|loadC|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U|DP|loadB|ALT_INV_out[12]~DUPLICATE_q\ <= NOT \U|DP|loadB|out[12]~DUPLICATE_q\;
\U|DP|loadB|ALT_INV_out[11]~DUPLICATE_q\ <= NOT \U|DP|loadB|out[11]~DUPLICATE_q\;
\U|DP|loadB|ALT_INV_out[3]~DUPLICATE_q\ <= NOT \U|DP|loadB|out[3]~DUPLICATE_q\;
\U|DP|loadC|ALT_INV_out[10]~DUPLICATE_q\ <= NOT \U|DP|loadC|out[10]~DUPLICATE_q\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\U|DP|loadS|ALT_INV_out[0]~13_combout\ <= NOT \U|DP|loadS|out[0]~13_combout\;
\U|DP|loadS|ALT_INV_out[0]~12_combout\ <= NOT \U|DP|loadS|out[0]~12_combout\;
\U|FSM|ALT_INV_Selector1~1_combout\ <= NOT \U|FSM|Selector1~1_combout\;
\U|FSM|ALT_INV_next_state~46_combout\ <= NOT \U|FSM|next_state~46_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~15_combout\ <= NOT \U|DP|Mux1lab6|comb~15_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~14_combout\ <= NOT \U|DP|Mux1lab6|comb~14_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~13_combout\ <= NOT \U|DP|Mux1lab6|comb~13_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~12_combout\ <= NOT \U|DP|Mux1lab6|comb~12_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~11_combout\ <= NOT \U|DP|Mux1lab6|comb~11_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~9_combout\ <= NOT \U|DP|Mux1lab6|comb~9_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~8_combout\ <= NOT \U|DP|Mux1lab6|comb~8_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~7_combout\ <= NOT \U|DP|Mux1lab6|comb~7_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~6_combout\ <= NOT \U|DP|Mux1lab6|comb~6_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~5_combout\ <= NOT \U|DP|Mux1lab6|comb~5_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~4_combout\ <= NOT \U|DP|Mux1lab6|comb~4_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~3_combout\ <= NOT \U|DP|Mux1lab6|comb~3_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~2_combout\ <= NOT \U|DP|Mux1lab6|comb~2_combout\;
\U|DP|Mux1lab6|ALT_INV_comb~1_combout\ <= NOT \U|DP|Mux1lab6|comb~1_combout\;
\U|FSM|ALT_INV_write~q\ <= NOT \U|FSM|write~q\;
\U|DP|Mux1lab6|ALT_INV_comb~0_combout\ <= NOT \U|DP|Mux1lab6|comb~0_combout\;
\U|FSM|ALT_INV_vsel\(1) <= NOT \U|FSM|vsel\(1);
\U|FSM|ALT_INV_next_state.0010~q\ <= NOT \U|FSM|next_state.0010~q\;
\U|FSM|ALT_INV_Selector9~1_combout\ <= NOT \U|FSM|Selector9~1_combout\;
\U|DP|REGFILE|regmux|ALT_INV_b[15]~47_combout\ <= NOT \U|DP|REGFILE|regmux|b[15]~47_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Reg7|out\(15);
\U|DP|REGFILE|Reg6|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Reg6|out\(15);
\U|DP|REGFILE|regmux|ALT_INV_b[15]~46_combout\ <= NOT \U|DP|REGFILE|regmux|b[15]~46_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Reg3|out\(15);
\U|DP|REGFILE|Reg1|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Reg1|out\(15);
\U|DP|REGFILE|regmux|ALT_INV_b[15]~45_combout\ <= NOT \U|DP|REGFILE|regmux|b[15]~45_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Reg4|out\(15);
\U|DP|REGFILE|Reg2|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Reg2|out\(15);
\U|DP|REGFILE|Reg0|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Reg0|out\(15);
\U|DP|REGFILE|Reg5|ALT_INV_out\(15) <= NOT \U|DP|REGFILE|Reg5|out\(15);
\U|DP|REGFILE|regmux|ALT_INV_b[14]~44_combout\ <= NOT \U|DP|REGFILE|regmux|b[14]~44_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Reg7|out\(14);
\U|DP|REGFILE|Reg6|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Reg6|out\(14);
\U|DP|REGFILE|regmux|ALT_INV_b[14]~43_combout\ <= NOT \U|DP|REGFILE|regmux|b[14]~43_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Reg3|out\(14);
\U|DP|REGFILE|Reg1|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Reg1|out\(14);
\U|DP|REGFILE|regmux|ALT_INV_b[14]~42_combout\ <= NOT \U|DP|REGFILE|regmux|b[14]~42_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Reg4|out\(14);
\U|DP|REGFILE|Reg2|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Reg2|out\(14);
\U|DP|REGFILE|Reg0|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Reg0|out\(14);
\U|DP|REGFILE|Reg5|ALT_INV_out\(14) <= NOT \U|DP|REGFILE|Reg5|out\(14);
\U|DP|REGFILE|regmux|ALT_INV_b[13]~41_combout\ <= NOT \U|DP|REGFILE|regmux|b[13]~41_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Reg7|out\(13);
\U|DP|REGFILE|Reg6|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Reg6|out\(13);
\U|DP|REGFILE|regmux|ALT_INV_b[13]~40_combout\ <= NOT \U|DP|REGFILE|regmux|b[13]~40_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Reg3|out\(13);
\U|DP|REGFILE|Reg1|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Reg1|out\(13);
\U|DP|REGFILE|regmux|ALT_INV_b[13]~39_combout\ <= NOT \U|DP|REGFILE|regmux|b[13]~39_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Reg4|out\(13);
\U|DP|REGFILE|Reg2|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Reg2|out\(13);
\U|DP|REGFILE|Reg0|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Reg0|out\(13);
\U|DP|REGFILE|Reg5|ALT_INV_out\(13) <= NOT \U|DP|REGFILE|Reg5|out\(13);
\U|DP|REGFILE|regmux|ALT_INV_b[12]~38_combout\ <= NOT \U|DP|REGFILE|regmux|b[12]~38_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Reg7|out\(12);
\U|DP|REGFILE|Reg6|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Reg6|out\(12);
\U|DP|REGFILE|regmux|ALT_INV_b[12]~37_combout\ <= NOT \U|DP|REGFILE|regmux|b[12]~37_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Reg3|out\(12);
\U|DP|REGFILE|Reg1|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Reg1|out\(12);
\U|DP|REGFILE|regmux|ALT_INV_b[12]~36_combout\ <= NOT \U|DP|REGFILE|regmux|b[12]~36_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Reg4|out\(12);
\U|DP|REGFILE|Reg2|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Reg2|out\(12);
\U|DP|REGFILE|Reg0|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Reg0|out\(12);
\U|DP|REGFILE|Reg5|ALT_INV_out\(12) <= NOT \U|DP|REGFILE|Reg5|out\(12);
\U|DP|REGFILE|regmux|ALT_INV_b[11]~35_combout\ <= NOT \U|DP|REGFILE|regmux|b[11]~35_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Reg7|out\(11);
\U|DP|REGFILE|Reg6|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Reg6|out\(11);
\U|DP|REGFILE|regmux|ALT_INV_b[11]~34_combout\ <= NOT \U|DP|REGFILE|regmux|b[11]~34_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Reg3|out\(11);
\U|DP|REGFILE|Reg1|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Reg1|out\(11);
\U|DP|REGFILE|regmux|ALT_INV_b[11]~33_combout\ <= NOT \U|DP|REGFILE|regmux|b[11]~33_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Reg4|out\(11);
\U|DP|REGFILE|Reg2|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Reg2|out\(11);
\U|DP|REGFILE|Reg0|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Reg0|out\(11);
\U|DP|REGFILE|Reg5|ALT_INV_out\(11) <= NOT \U|DP|REGFILE|Reg5|out\(11);
\ALT_INV_rtl~58_combout\ <= NOT \rtl~58_combout\;
\U|DP|REGFILE|regmux|ALT_INV_b[10]~32_combout\ <= NOT \U|DP|REGFILE|regmux|b[10]~32_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Reg7|out\(10);
\U|DP|REGFILE|Reg6|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Reg6|out\(10);
\U|DP|REGFILE|regmux|ALT_INV_b[10]~31_combout\ <= NOT \U|DP|REGFILE|regmux|b[10]~31_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Reg3|out\(10);
\U|DP|REGFILE|Reg1|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Reg1|out\(10);
\U|DP|REGFILE|regmux|ALT_INV_b[10]~30_combout\ <= NOT \U|DP|REGFILE|regmux|b[10]~30_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Reg4|out\(10);
\U|DP|REGFILE|Reg2|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Reg2|out\(10);
\U|DP|REGFILE|Reg0|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Reg0|out\(10);
\U|DP|REGFILE|Reg5|ALT_INV_out\(10) <= NOT \U|DP|REGFILE|Reg5|out\(10);
\ALT_INV_rtl~57_combout\ <= NOT \rtl~57_combout\;
\U|DP|REGFILE|regmux|ALT_INV_b[9]~29_combout\ <= NOT \U|DP|REGFILE|regmux|b[9]~29_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Reg7|out\(9);
\U|DP|REGFILE|Reg6|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Reg6|out\(9);
\U|DP|REGFILE|regmux|ALT_INV_b[9]~28_combout\ <= NOT \U|DP|REGFILE|regmux|b[9]~28_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Reg3|out\(9);
\U|DP|REGFILE|Reg1|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Reg1|out\(9);
\U|DP|REGFILE|regmux|ALT_INV_b[9]~27_combout\ <= NOT \U|DP|REGFILE|regmux|b[9]~27_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Reg4|out\(9);
\U|DP|REGFILE|Reg2|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Reg2|out\(9);
\U|DP|REGFILE|Reg0|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Reg0|out\(9);
\U|DP|REGFILE|Reg5|ALT_INV_out\(9) <= NOT \U|DP|REGFILE|Reg5|out\(9);
\ALT_INV_rtl~56_combout\ <= NOT \rtl~56_combout\;
\U|DP|REGFILE|regmux|ALT_INV_b[8]~26_combout\ <= NOT \U|DP|REGFILE|regmux|b[8]~26_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Reg7|out\(8);
\U|DP|REGFILE|Reg6|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Reg6|out\(8);
\U|DP|REGFILE|regmux|ALT_INV_b[8]~25_combout\ <= NOT \U|DP|REGFILE|regmux|b[8]~25_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Reg3|out\(8);
\U|DP|REGFILE|Reg1|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Reg1|out\(8);
\U|DP|REGFILE|regmux|ALT_INV_b[8]~24_combout\ <= NOT \U|DP|REGFILE|regmux|b[8]~24_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Reg4|out\(8);
\U|DP|REGFILE|Reg2|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Reg2|out\(8);
\U|DP|REGFILE|Reg0|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Reg0|out\(8);
\U|DP|REGFILE|Reg5|ALT_INV_out\(8) <= NOT \U|DP|REGFILE|Reg5|out\(8);
\ALT_INV_rtl~55_combout\ <= NOT \rtl~55_combout\;
\U|DP|REGFILE|regmux|ALT_INV_b[7]~23_combout\ <= NOT \U|DP|REGFILE|regmux|b[7]~23_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Reg7|out\(7);
\U|DP|REGFILE|Reg6|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Reg6|out\(7);
\U|DP|REGFILE|regmux|ALT_INV_b[7]~22_combout\ <= NOT \U|DP|REGFILE|regmux|b[7]~22_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Reg3|out\(7);
\U|DP|REGFILE|Reg1|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Reg1|out\(7);
\U|DP|REGFILE|regmux|ALT_INV_b[7]~21_combout\ <= NOT \U|DP|REGFILE|regmux|b[7]~21_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Reg4|out\(7);
\U|DP|REGFILE|Reg2|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Reg2|out\(7);
\U|DP|REGFILE|Reg0|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Reg0|out\(7);
\U|DP|REGFILE|Reg5|ALT_INV_out\(7) <= NOT \U|DP|REGFILE|Reg5|out\(7);
\ALT_INV_rtl~54_combout\ <= NOT \rtl~54_combout\;
\U|DP|REGFILE|regmux|ALT_INV_b[6]~20_combout\ <= NOT \U|DP|REGFILE|regmux|b[6]~20_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Reg7|out\(6);
\U|DP|REGFILE|Reg6|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Reg6|out\(6);
\U|DP|REGFILE|regmux|ALT_INV_b[6]~19_combout\ <= NOT \U|DP|REGFILE|regmux|b[6]~19_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Reg3|out\(6);
\U|DP|REGFILE|Reg1|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Reg1|out\(6);
\U|DP|REGFILE|regmux|ALT_INV_b[6]~18_combout\ <= NOT \U|DP|REGFILE|regmux|b[6]~18_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Reg4|out\(6);
\U|DP|REGFILE|Reg2|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Reg2|out\(6);
\U|DP|REGFILE|Reg0|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Reg0|out\(6);
\U|DP|REGFILE|Reg5|ALT_INV_out\(6) <= NOT \U|DP|REGFILE|Reg5|out\(6);
\ALT_INV_rtl~53_combout\ <= NOT \rtl~53_combout\;
\U|DP|REGFILE|regmux|ALT_INV_b[5]~17_combout\ <= NOT \U|DP|REGFILE|regmux|b[5]~17_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Reg7|out\(5);
\U|DP|REGFILE|Reg6|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Reg6|out\(5);
\U|DP|REGFILE|regmux|ALT_INV_b[5]~16_combout\ <= NOT \U|DP|REGFILE|regmux|b[5]~16_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Reg3|out\(5);
\U|DP|REGFILE|Reg1|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Reg1|out\(5);
\U|DP|REGFILE|regmux|ALT_INV_b[5]~15_combout\ <= NOT \U|DP|REGFILE|regmux|b[5]~15_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Reg4|out\(5);
\U|DP|REGFILE|Reg2|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Reg2|out\(5);
\U|DP|REGFILE|Reg0|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Reg0|out\(5);
\U|DP|REGFILE|Reg5|ALT_INV_out\(5) <= NOT \U|DP|REGFILE|Reg5|out\(5);
\ALT_INV_rtl~52_combout\ <= NOT \rtl~52_combout\;
\U|DP|REGFILE|regmux|ALT_INV_b[4]~14_combout\ <= NOT \U|DP|REGFILE|regmux|b[4]~14_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Reg7|out\(4);
\U|DP|REGFILE|Reg6|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Reg6|out\(4);
\U|DP|REGFILE|regmux|ALT_INV_b[4]~13_combout\ <= NOT \U|DP|REGFILE|regmux|b[4]~13_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Reg3|out\(4);
\U|DP|REGFILE|Reg1|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Reg1|out\(4);
\U|DP|REGFILE|regmux|ALT_INV_b[4]~12_combout\ <= NOT \U|DP|REGFILE|regmux|b[4]~12_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Reg4|out\(4);
\U|DP|REGFILE|Reg2|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Reg2|out\(4);
\U|DP|REGFILE|Reg0|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Reg0|out\(4);
\U|DP|REGFILE|Reg5|ALT_INV_out\(4) <= NOT \U|DP|REGFILE|Reg5|out\(4);
\ALT_INV_rtl~51_combout\ <= NOT \rtl~51_combout\;
\U|DP|REGFILE|regmux|ALT_INV_b[3]~11_combout\ <= NOT \U|DP|REGFILE|regmux|b[3]~11_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Reg7|out\(3);
\U|DP|REGFILE|Reg6|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Reg6|out\(3);
\U|DP|REGFILE|regmux|ALT_INV_b[3]~10_combout\ <= NOT \U|DP|REGFILE|regmux|b[3]~10_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Reg3|out\(3);
\U|DP|REGFILE|Reg1|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Reg1|out\(3);
\U|DP|REGFILE|regmux|ALT_INV_b[3]~9_combout\ <= NOT \U|DP|REGFILE|regmux|b[3]~9_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Reg4|out\(3);
\U|DP|REGFILE|Reg2|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Reg2|out\(3);
\U|DP|REGFILE|Reg0|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Reg0|out\(3);
\U|DP|REGFILE|Reg5|ALT_INV_out\(3) <= NOT \U|DP|REGFILE|Reg5|out\(3);
\ALT_INV_rtl~50_combout\ <= NOT \rtl~50_combout\;
\U|DP|REGFILE|regmux|ALT_INV_b[2]~8_combout\ <= NOT \U|DP|REGFILE|regmux|b[2]~8_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Reg7|out\(2);
\U|DP|REGFILE|Reg6|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Reg6|out\(2);
\U|DP|REGFILE|regmux|ALT_INV_b[2]~7_combout\ <= NOT \U|DP|REGFILE|regmux|b[2]~7_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Reg3|out\(2);
\U|DP|REGFILE|Reg1|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Reg1|out\(2);
\U|DP|REGFILE|regmux|ALT_INV_b[2]~6_combout\ <= NOT \U|DP|REGFILE|regmux|b[2]~6_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Reg4|out\(2);
\U|DP|REGFILE|Reg2|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Reg2|out\(2);
\U|DP|REGFILE|Reg0|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Reg0|out\(2);
\U|DP|REGFILE|Reg5|ALT_INV_out\(2) <= NOT \U|DP|REGFILE|Reg5|out\(2);
\ALT_INV_rtl~49_combout\ <= NOT \rtl~49_combout\;
\U|FSM|ALT_INV_next_state.0011~q\ <= NOT \U|FSM|next_state.0011~q\;
\U|DP|REGFILE|regmux|ALT_INV_b[1]~5_combout\ <= NOT \U|DP|REGFILE|regmux|b[1]~5_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Reg7|out\(1);
\U|DP|REGFILE|Reg6|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Reg6|out\(1);
\U|DP|REGFILE|regmux|ALT_INV_b[1]~4_combout\ <= NOT \U|DP|REGFILE|regmux|b[1]~4_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Reg3|out\(1);
\U|DP|REGFILE|Reg1|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Reg1|out\(1);
\U|DP|REGFILE|regmux|ALT_INV_b[1]~3_combout\ <= NOT \U|DP|REGFILE|regmux|b[1]~3_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Reg4|out\(1);
\U|DP|REGFILE|Reg2|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Reg2|out\(1);
\U|DP|REGFILE|Reg0|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Reg0|out\(1);
\U|DP|REGFILE|Reg5|ALT_INV_out\(1) <= NOT \U|DP|REGFILE|Reg5|out\(1);
\U|DP|REGFILE|regmux|ALT_INV_b[0]~2_combout\ <= NOT \U|DP|REGFILE|regmux|b[0]~2_combout\;
\U|DP|REGFILE|Reg7|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Reg7|out\(0);
\U|DP|REGFILE|Reg6|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Reg6|out\(0);
\U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\ <= NOT \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\;
\U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\ <= NOT \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\;
\U|DP|REGFILE|regmux|ALT_INV_b[0]~1_combout\ <= NOT \U|DP|REGFILE|regmux|b[0]~1_combout\;
\U|DP|REGFILE|Reg3|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Reg3|out\(0);
\U|DP|REGFILE|Reg1|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Reg1|out\(0);
\U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\ <= NOT \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\;
\U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\ <= NOT \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\;
\U|DP|REGFILE|regmux|ALT_INV_b[0]~0_combout\ <= NOT \U|DP|REGFILE|regmux|b[0]~0_combout\;
\U|DP|REGFILE|Reg4|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Reg4|out\(0);
\U|DP|REGFILE|Reg2|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Reg2|out\(0);
\U|DP|REGFILE|Reg0|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Reg0|out\(0);
\U|DP|REGFILE|Reg5|ALT_INV_out\(0) <= NOT \U|DP|REGFILE|Reg5|out\(0);
\U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\ <= NOT \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\;
\U|insDec|Rmux|ALT_INV_b\(2) <= NOT \U|insDec|Rmux|b\(2);
\U|instruction|ALT_INV_out\(2) <= NOT \U|instruction|out\(2);
\U|instruction|ALT_INV_out\(7) <= NOT \U|instruction|out\(7);
\U|instruction|ALT_INV_out\(10) <= NOT \U|instruction|out\(10);
\U|insDec|Rmux|ALT_INV_b\(1) <= NOT \U|insDec|Rmux|b\(1);
\U|instruction|ALT_INV_out\(1) <= NOT \U|instruction|out\(1);
\U|instruction|ALT_INV_out\(6) <= NOT \U|instruction|out\(6);
\U|instruction|ALT_INV_out\(9) <= NOT \U|instruction|out\(9);
\U|insDec|Rmux|ALT_INV_b\(0) <= NOT \U|insDec|Rmux|b\(0);
\U|instruction|ALT_INV_out\(0) <= NOT \U|instruction|out\(0);
\U|instruction|ALT_INV_out\(5) <= NOT \U|instruction|out\(5);
\U|instruction|ALT_INV_out\(8) <= NOT \U|instruction|out\(8);
\U|FSM|ALT_INV_loadb~q\ <= NOT \U|FSM|loadb~q\;
\U|FSM|ALT_INV_nsel\(1) <= NOT \U|FSM|nsel\(1);
\U|FSM|ALT_INV_nsel\(0) <= NOT \U|FSM|nsel\(0);
\U|FSM|ALT_INV_next_state.1011~q\ <= NOT \U|FSM|next_state.1011~q\;
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\U|FSM|ALT_INV_next_state.1100~q\ <= NOT \U|FSM|next_state.1100~q\;
\U|FSM|ALT_INV_Selector8~0_combout\ <= NOT \U|FSM|Selector8~0_combout\;
\U|FSM|ALT_INV_next_state.0111~q\ <= NOT \U|FSM|next_state.0111~q\;
\U|FSM|ALT_INV_next_state.0110~q\ <= NOT \U|FSM|next_state.0110~q\;
\U|FSM|ALT_INV_next_state.0101~q\ <= NOT \U|FSM|next_state.0101~q\;
\U|FSM|ALT_INV_next_state.0100~q\ <= NOT \U|FSM|next_state.0100~q\;
\U|instruction|ALT_INV_out\(15) <= NOT \U|instruction|out\(15);
\U|instruction|ALT_INV_out\(14) <= NOT \U|instruction|out\(14);
\U|instruction|ALT_INV_out\(13) <= NOT \U|instruction|out\(13);
\U|DP|loadS|ALT_INV_out[0]~10_combout\ <= NOT \U|DP|loadS|out[0]~10_combout\;
\U|DP|loadS|ALT_INV_out[0]~9_combout\ <= NOT \U|DP|loadS|out[0]~9_combout\;
\U|DP|loadS|ALT_INV_out[0]~8_combout\ <= NOT \U|DP|loadS|out[0]~8_combout\;
\U|DP|loadS|ALT_INV_out[0]~7_combout\ <= NOT \U|DP|loadS|out[0]~7_combout\;
\U|DP|loadS|ALT_INV_out[0]~6_combout\ <= NOT \U|DP|loadS|out[0]~6_combout\;
\U|DP|loadS|ALT_INV_out[0]~5_combout\ <= NOT \U|DP|loadS|out[0]~5_combout\;
\U|DP|loadS|ALT_INV_out[0]~4_combout\ <= NOT \U|DP|loadS|out[0]~4_combout\;
\U|DP|loadS|ALT_INV_out[0]~3_combout\ <= NOT \U|DP|loadS|out[0]~3_combout\;
\U|DP|loadS|ALT_INV_out[0]~2_combout\ <= NOT \U|DP|loadS|out[0]~2_combout\;
\U|DP|loadS|ALT_INV_out[0]~1_combout\ <= NOT \U|DP|loadS|out[0]~1_combout\;
\U|DP|loadS|ALT_INV_out[0]~0_combout\ <= NOT \U|DP|loadS|out[0]~0_combout\;
\U|FSM|ALT_INV_loads~q\ <= NOT \U|FSM|loads~q\;
\U|DP|alu|ALT_INV_Selector0~0_combout\ <= NOT \U|DP|alu|Selector0~0_combout\;
\U|DP|alu|addersubtractor|ALT_INV_Add3~0_combout\ <= NOT \U|DP|alu|addersubtractor|Add3~0_combout\;
\U|DP|alu|addersubtractor|ALT_INV_Add2~0_combout\ <= NOT \U|DP|alu|addersubtractor|Add2~0_combout\;
\ALT_INV_rtl~48_combout\ <= NOT \rtl~48_combout\;
\U|DP|loadA|ALT_INV_out\(15) <= NOT \U|DP|loadA|out\(15);
\U|DP|alu|ALT_INV_Selector1~0_combout\ <= NOT \U|DP|alu|Selector1~0_combout\;
\U|DP|Muxa|ALT_INV_comb~14_combout\ <= NOT \U|DP|Muxa|comb~14_combout\;
\U|DP|loadA|ALT_INV_out\(14) <= NOT \U|DP|loadA|out\(14);
\ALT_INV_rtl~47_combout\ <= NOT \rtl~47_combout\;
\U|DP|loadB|ALT_INV_out\(15) <= NOT \U|DP|loadB|out\(15);
\U|DP|alu|ALT_INV_Selector2~0_combout\ <= NOT \U|DP|alu|Selector2~0_combout\;
\U|DP|Muxa|ALT_INV_comb~13_combout\ <= NOT \U|DP|Muxa|comb~13_combout\;
\U|DP|loadA|ALT_INV_out\(13) <= NOT \U|DP|loadA|out\(13);
\ALT_INV_rtl~46_combout\ <= NOT \rtl~46_combout\;
\U|DP|loadB|ALT_INV_out\(14) <= NOT \U|DP|loadB|out\(14);
\U|DP|alu|ALT_INV_Selector3~0_combout\ <= NOT \U|DP|alu|Selector3~0_combout\;
\U|DP|Muxa|ALT_INV_comb~12_combout\ <= NOT \U|DP|Muxa|comb~12_combout\;
\U|DP|loadA|ALT_INV_out\(12) <= NOT \U|DP|loadA|out\(12);
\ALT_INV_rtl~45_combout\ <= NOT \rtl~45_combout\;
\U|DP|loadB|ALT_INV_out\(13) <= NOT \U|DP|loadB|out\(13);
\U|DP|alu|ALT_INV_Selector4~0_combout\ <= NOT \U|DP|alu|Selector4~0_combout\;
\U|DP|Muxa|ALT_INV_comb~11_combout\ <= NOT \U|DP|Muxa|comb~11_combout\;
\U|DP|loadA|ALT_INV_out\(11) <= NOT \U|DP|loadA|out\(11);
\ALT_INV_rtl~44_combout\ <= NOT \rtl~44_combout\;
\U|DP|loadB|ALT_INV_out\(12) <= NOT \U|DP|loadB|out\(12);
\ALT_INV_rtl~43_combout\ <= NOT \rtl~43_combout\;
\U|DP|loadB|ALT_INV_out\(11) <= NOT \U|DP|loadB|out\(11);
\U|DP|Muxa|ALT_INV_comb~10_combout\ <= NOT \U|DP|Muxa|comb~10_combout\;
\U|DP|loadA|ALT_INV_out\(10) <= NOT \U|DP|loadA|out\(10);
\ALT_INV_rtl~42_combout\ <= NOT \rtl~42_combout\;
\U|DP|loadB|ALT_INV_out\(10) <= NOT \U|DP|loadB|out\(10);
\U|DP|Muxa|ALT_INV_comb~9_combout\ <= NOT \U|DP|Muxa|comb~9_combout\;
\U|DP|loadA|ALT_INV_out\(9) <= NOT \U|DP|loadA|out\(9);
\ALT_INV_rtl~41_combout\ <= NOT \rtl~41_combout\;
\U|DP|loadB|ALT_INV_out\(9) <= NOT \U|DP|loadB|out\(9);
\U|DP|Muxa|ALT_INV_comb~8_combout\ <= NOT \U|DP|Muxa|comb~8_combout\;
\U|DP|loadA|ALT_INV_out\(8) <= NOT \U|DP|loadA|out\(8);
\ALT_INV_rtl~40_combout\ <= NOT \rtl~40_combout\;
\U|DP|loadB|ALT_INV_out\(8) <= NOT \U|DP|loadB|out\(8);
\U|DP|Muxa|ALT_INV_comb~7_combout\ <= NOT \U|DP|Muxa|comb~7_combout\;
\U|DP|loadA|ALT_INV_out\(7) <= NOT \U|DP|loadA|out\(7);
\ALT_INV_rtl~39_combout\ <= NOT \rtl~39_combout\;
\U|DP|loadB|ALT_INV_out\(7) <= NOT \U|DP|loadB|out\(7);
\U|DP|Muxa|ALT_INV_comb~6_combout\ <= NOT \U|DP|Muxa|comb~6_combout\;
\U|DP|loadA|ALT_INV_out\(6) <= NOT \U|DP|loadA|out\(6);
\ALT_INV_rtl~38_combout\ <= NOT \rtl~38_combout\;
\U|DP|loadB|ALT_INV_out\(6) <= NOT \U|DP|loadB|out\(6);
\U|DP|Muxa|ALT_INV_comb~5_combout\ <= NOT \U|DP|Muxa|comb~5_combout\;
\U|DP|loadA|ALT_INV_out\(5) <= NOT \U|DP|loadA|out\(5);
\ALT_INV_rtl~37_combout\ <= NOT \rtl~37_combout\;
\U|DP|loadB|ALT_INV_out\(5) <= NOT \U|DP|loadB|out\(5);
\U|DP|Muxa|ALT_INV_comb~4_combout\ <= NOT \U|DP|Muxa|comb~4_combout\;
\U|DP|loadA|ALT_INV_out\(4) <= NOT \U|DP|loadA|out\(4);
\ALT_INV_rtl~36_combout\ <= NOT \rtl~36_combout\;
\U|DP|loadB|ALT_INV_out\(4) <= NOT \U|DP|loadB|out\(4);
\U|DP|Muxa|ALT_INV_comb~3_combout\ <= NOT \U|DP|Muxa|comb~3_combout\;
\U|DP|loadA|ALT_INV_out\(3) <= NOT \U|DP|loadA|out\(3);
\ALT_INV_rtl~35_combout\ <= NOT \rtl~35_combout\;
\U|DP|loadB|ALT_INV_out\(3) <= NOT \U|DP|loadB|out\(3);
\U|DP|Muxa|ALT_INV_comb~2_combout\ <= NOT \U|DP|Muxa|comb~2_combout\;
\U|DP|loadA|ALT_INV_out\(2) <= NOT \U|DP|loadA|out\(2);
\ALT_INV_rtl~34_combout\ <= NOT \rtl~34_combout\;
\U|DP|loadB|ALT_INV_out\(2) <= NOT \U|DP|loadB|out\(2);
\U|DP|Muxa|ALT_INV_comb~1_combout\ <= NOT \U|DP|Muxa|comb~1_combout\;
\U|DP|loadA|ALT_INV_out\(1) <= NOT \U|DP|loadA|out\(1);
\ALT_INV_rtl~33_combout\ <= NOT \rtl~33_combout\;
\U|DP|loadB|ALT_INV_out\(0) <= NOT \U|DP|loadB|out\(0);
\U|instruction|ALT_INV_out\(3) <= NOT \U|instruction|out\(3);
\U|DP|loadB|ALT_INV_out\(1) <= NOT \U|DP|loadB|out\(1);
\U|instruction|ALT_INV_out\(4) <= NOT \U|instruction|out\(4);
\U|DP|alu|ALT_INV_Equal0~0_combout\ <= NOT \U|DP|alu|Equal0~0_combout\;
\U|instruction|ALT_INV_out\(12) <= NOT \U|instruction|out\(12);
\U|DP|Muxa|ALT_INV_comb~0_combout\ <= NOT \U|DP|Muxa|comb~0_combout\;
\U|DP|loadA|ALT_INV_out\(0) <= NOT \U|DP|loadA|out\(0);
\U|FSM|ALT_INV_asel~q\ <= NOT \U|FSM|asel~q\;
\U|FSM|ALT_INV_Selector0~0_combout\ <= NOT \U|FSM|Selector0~0_combout\;
\U|FSM|ALT_INV_next_state.1101~q\ <= NOT \U|FSM|next_state.1101~q\;
\U|FSM|ALT_INV_next_state.1010~q\ <= NOT \U|FSM|next_state.1010~q\;
\U|FSM|ALT_INV_next_state.1000~q\ <= NOT \U|FSM|next_state.1000~q\;
\U|instruction|ALT_INV_out\(11) <= NOT \U|instruction|out\(11);
\U|FSM|ALT_INV_next_state.0000~q\ <= NOT \U|FSM|next_state.0000~q\;
\U|DP|loadS|ALT_INV_out\(0) <= NOT \U|DP|loadS|out\(0);
\H3|ALT_INV_WideOr0~0_combout\ <= NOT \H3|WideOr0~0_combout\;
\H2|ALT_INV_WideOr0~0_combout\ <= NOT \H2|WideOr0~0_combout\;
\H1|ALT_INV_WideOr0~0_combout\ <= NOT \H1|WideOr0~0_combout\;
\H0|ALT_INV_WideOr0~0_combout\ <= NOT \H0|WideOr0~0_combout\;
\IN|REG|ALT_INV_Q\(15) <= NOT \IN|REG|Q\(15);
\IN|REG|ALT_INV_Q\(7) <= NOT \IN|REG|Q\(7);
\IN|REG|ALT_INV_Q\(14) <= NOT \IN|REG|Q\(14);
\IN|REG|ALT_INV_Q\(6) <= NOT \IN|REG|Q\(6);
\IN|REG|ALT_INV_Q\(13) <= NOT \IN|REG|Q\(13);
\IN|REG|ALT_INV_Q\(5) <= NOT \IN|REG|Q\(5);
\IN|REG|ALT_INV_Q\(12) <= NOT \IN|REG|Q\(12);
\IN|REG|ALT_INV_Q\(4) <= NOT \IN|REG|Q\(4);
\IN|REG|ALT_INV_Q\(11) <= NOT \IN|REG|Q\(11);
\IN|REG|ALT_INV_Q\(3) <= NOT \IN|REG|Q\(3);
\IN|REG|ALT_INV_Q\(10) <= NOT \IN|REG|Q\(10);
\IN|REG|ALT_INV_Q\(2) <= NOT \IN|REG|Q\(2);
\IN|REG|ALT_INV_Q\(9) <= NOT \IN|REG|Q\(9);
\IN|REG|ALT_INV_Q\(1) <= NOT \IN|REG|Q\(1);
\IN|REG|ALT_INV_Q\(8) <= NOT \IN|REG|Q\(8);
\IN|REG|ALT_INV_Q\(0) <= NOT \IN|REG|Q\(0);
\U|FSM|ALT_INV_next_state.0001~q\ <= NOT \U|FSM|next_state.0001~q\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~61_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~61_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~57_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~57_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~53_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~53_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~49_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~49_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~45_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~45_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~41_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~41_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~37_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~37_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~33_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~33_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~29_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~29_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~25_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~25_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~21_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~21_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~17_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~17_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~13_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~13_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~9_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~9_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~5_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~5_sumout\;
\U|DP|alu|addersubtractor|ALT_INV_Add0~1_sumout\ <= NOT \U|DP|alu|addersubtractor|Add0~1_sumout\;
\U|FSM|ALT_INV_next_state.1001~q\ <= NOT \U|FSM|next_state.1001~q\;
\U|DP|loadS|ALT_INV_out\(1) <= NOT \U|DP|loadS|out\(1);
\U|DP|loadS|ALT_INV_out\(2) <= NOT \U|DP|loadS|out\(2);
\U|DP|loadC|ALT_INV_out\(15) <= NOT \U|DP|loadC|out\(15);
\U|DP|loadC|ALT_INV_out\(14) <= NOT \U|DP|loadC|out\(14);
\U|DP|loadC|ALT_INV_out\(13) <= NOT \U|DP|loadC|out\(13);
\U|DP|loadC|ALT_INV_out\(12) <= NOT \U|DP|loadC|out\(12);
\U|DP|loadC|ALT_INV_out\(11) <= NOT \U|DP|loadC|out\(11);
\U|DP|loadC|ALT_INV_out\(10) <= NOT \U|DP|loadC|out\(10);
\U|DP|loadC|ALT_INV_out\(9) <= NOT \U|DP|loadC|out\(9);
\U|DP|loadC|ALT_INV_out\(8) <= NOT \U|DP|loadC|out\(8);
\U|DP|loadC|ALT_INV_out\(7) <= NOT \U|DP|loadC|out\(7);
\U|DP|loadC|ALT_INV_out\(6) <= NOT \U|DP|loadC|out\(6);
\U|DP|loadC|ALT_INV_out\(5) <= NOT \U|DP|loadC|out\(5);
\U|DP|loadC|ALT_INV_out\(4) <= NOT \U|DP|loadC|out\(4);
\U|DP|loadC|ALT_INV_out\(3) <= NOT \U|DP|loadC|out\(3);
\U|DP|loadC|ALT_INV_out\(2) <= NOT \U|DP|loadC|out\(2);
\U|DP|loadC|ALT_INV_out\(1) <= NOT \U|DP|loadC|out\(1);
\U|DP|loadC|ALT_INV_out\(0) <= NOT \U|DP|loadC|out\(0);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IN|LEDR[0]~0_combout\,
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
	i => \IN|LEDR[1]~1_combout\,
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
	i => \IN|LEDR[2]~2_combout\,
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
	i => \IN|LEDR[3]~3_combout\,
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
	i => \IN|LEDR[4]~4_combout\,
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
	i => \IN|LEDR[5]~5_combout\,
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
	i => \IN|LEDR[6]~6_combout\,
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
	i => \IN|LEDR[7]~7_combout\,
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
	i => \U|FSM|w~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr6~0_combout\,
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
	i => \H0|WideOr5~0_combout\,
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
	i => \H0|WideOr4~0_combout\,
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
	i => \H0|WideOr3~0_combout\,
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
	i => \H0|WideOr2~0_combout\,
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
	i => \H0|WideOr1~0_combout\,
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
	i => \H0|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|WideOr6~0_combout\,
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
	i => \H1|WideOr5~0_combout\,
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
	i => \H1|WideOr4~0_combout\,
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
	i => \H1|WideOr3~0_combout\,
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
	i => \H1|WideOr2~0_combout\,
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
	i => \H1|WideOr1~0_combout\,
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
	i => \H1|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H3|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U|DP|loadS|ALT_INV_out\(0),
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U|DP|loadS|ALT_INV_out\(2),
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U|DP|loadS|ALT_INV_out\(1),
	devoe => ww_devoe,
	o => ww_HEX5(6));

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

-- Location: CLKCTRL_G7
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

-- Location: FF_X87_Y6_N29
\IN|REG|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(0));

-- Location: FF_X87_Y6_N56
\IN|REG|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(8));

-- Location: LABCELL_X81_Y6_N36
\IN|LEDR[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[0]~0_combout\ = ( \SW[9]~input_o\ & ( \IN|REG|Q\(8) & ( \IN|REG|Q\(0) ) ) ) # ( !\SW[9]~input_o\ & ( \IN|REG|Q\(8) ) ) # ( \SW[9]~input_o\ & ( !\IN|REG|Q\(8) & ( \IN|REG|Q\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IN|REG|ALT_INV_Q\(0),
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \IN|REG|ALT_INV_Q\(8),
	combout => \IN|LEDR[0]~0_combout\);

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

-- Location: FF_X87_Y6_N59
\IN|REG|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(9));

-- Location: FF_X87_Y6_N53
\IN|REG|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(1));

-- Location: MLABCELL_X87_Y6_N54
\IN|LEDR[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[1]~1_combout\ = ( \IN|REG|Q\(9) & ( \IN|REG|Q\(1) ) ) # ( !\IN|REG|Q\(9) & ( \IN|REG|Q\(1) & ( \SW[9]~input_o\ ) ) ) # ( \IN|REG|Q\(9) & ( !\IN|REG|Q\(1) & ( !\SW[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datae => \IN|REG|ALT_INV_Q\(9),
	dataf => \IN|REG|ALT_INV_Q\(1),
	combout => \IN|LEDR[1]~1_combout\);

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

-- Location: FF_X87_Y6_N8
\IN|REG|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(10));

-- Location: FF_X87_Y6_N26
\IN|REG|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(2));

-- Location: LABCELL_X81_Y6_N42
\IN|LEDR[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[2]~2_combout\ = ( \SW[9]~input_o\ & ( \IN|REG|Q\(2) ) ) # ( !\SW[9]~input_o\ & ( \IN|REG|Q\(2) & ( \IN|REG|Q\(10) ) ) ) # ( !\SW[9]~input_o\ & ( !\IN|REG|Q\(2) & ( \IN|REG|Q\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IN|REG|ALT_INV_Q\(10),
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \IN|REG|ALT_INV_Q\(2),
	combout => \IN|LEDR[2]~2_combout\);

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

-- Location: LABCELL_X85_Y3_N51
\IN|REG|Q[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|REG|Q[11]~feeder_combout\ = ( \SW[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \IN|REG|Q[11]~feeder_combout\);

-- Location: FF_X85_Y3_N53
\IN|REG|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \IN|REG|Q[11]~feeder_combout\,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(11));

-- Location: FF_X87_Y3_N26
\IN|REG|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(3));

-- Location: LABCELL_X85_Y3_N0
\IN|LEDR[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[3]~3_combout\ = ( \IN|REG|Q\(3) & ( (\SW[9]~input_o\) # (\IN|REG|Q\(11)) ) ) # ( !\IN|REG|Q\(3) & ( (\IN|REG|Q\(11) & !\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IN|REG|ALT_INV_Q\(11),
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \IN|REG|ALT_INV_Q\(3),
	combout => \IN|LEDR[3]~3_combout\);

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

-- Location: FF_X88_Y4_N26
\IN|REG|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(12));

-- Location: FF_X87_Y3_N53
\IN|REG|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(4));

-- Location: LABCELL_X85_Y3_N54
\IN|LEDR[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[4]~4_combout\ = ( \IN|REG|Q\(4) & ( (\SW[9]~input_o\) # (\IN|REG|Q\(12)) ) ) # ( !\IN|REG|Q\(4) & ( (\IN|REG|Q\(12) & !\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IN|REG|ALT_INV_Q\(12),
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \IN|REG|ALT_INV_Q\(4),
	combout => \IN|LEDR[4]~4_combout\);

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

-- Location: LABCELL_X88_Y8_N24
\IN|REG|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|REG|Q[5]~feeder_combout\ = ( \SW[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \IN|REG|Q[5]~feeder_combout\);

-- Location: FF_X88_Y8_N26
\IN|REG|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \IN|REG|Q[5]~feeder_combout\,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(5));

-- Location: FF_X88_Y6_N46
\IN|REG|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(13));

-- Location: MLABCELL_X84_Y4_N33
\IN|LEDR[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[5]~5_combout\ = ( \SW[9]~input_o\ & ( \IN|REG|Q\(13) & ( \IN|REG|Q\(5) ) ) ) # ( !\SW[9]~input_o\ & ( \IN|REG|Q\(13) ) ) # ( \SW[9]~input_o\ & ( !\IN|REG|Q\(13) & ( \IN|REG|Q\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IN|REG|ALT_INV_Q\(5),
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \IN|REG|ALT_INV_Q\(13),
	combout => \IN|LEDR[5]~5_combout\);

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

-- Location: FF_X87_Y6_N20
\IN|REG|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(14));

-- Location: FF_X87_Y6_N2
\IN|REG|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(6));

-- Location: LABCELL_X81_Y6_N0
\IN|LEDR[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[6]~6_combout\ = ( \SW[9]~input_o\ & ( \IN|REG|Q\(6) ) ) # ( !\SW[9]~input_o\ & ( \IN|REG|Q\(6) & ( \IN|REG|Q\(14) ) ) ) # ( !\SW[9]~input_o\ & ( !\IN|REG|Q\(6) & ( \IN|REG|Q\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \IN|REG|ALT_INV_Q\(14),
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \IN|REG|ALT_INV_Q\(6),
	combout => \IN|LEDR[6]~6_combout\);

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

-- Location: FF_X88_Y6_N44
\IN|REG|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(15));

-- Location: LABCELL_X88_Y8_N27
\IN|REG|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|REG|Q[7]~feeder_combout\ = ( \SW[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \IN|REG|Q[7]~feeder_combout\);

-- Location: FF_X88_Y8_N29
\IN|REG|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \IN|REG|Q[7]~feeder_combout\,
	ena => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IN|REG|Q\(7));

-- Location: LABCELL_X88_Y8_N21
\IN|LEDR[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \IN|LEDR[7]~7_combout\ = ( \IN|REG|Q\(7) & ( (\SW[9]~input_o\) # (\IN|REG|Q\(15)) ) ) # ( !\IN|REG|Q\(7) & ( (\IN|REG|Q\(15) & !\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IN|REG|ALT_INV_Q\(15),
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \IN|REG|ALT_INV_Q\(7),
	combout => \IN|LEDR[7]~7_combout\);

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

-- Location: LABCELL_X85_Y3_N42
\U|instruction|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|instruction|out[11]~feeder_combout\ = ( \IN|REG|Q\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \IN|REG|ALT_INV_Q\(11),
	combout => \U|instruction|out[11]~feeder_combout\);

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

-- Location: FF_X85_Y3_N44
\U|instruction|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|instruction|out[11]~feeder_combout\,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(11));

-- Location: FF_X88_Y4_N5
\U|instruction|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(12),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(12));

-- Location: FF_X88_Y8_N20
\U|instruction|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(15),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(15));

-- Location: FF_X88_Y5_N56
\U|instruction|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(13),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(13));

-- Location: FF_X87_Y6_N14
\U|instruction|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(14),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(14));

-- Location: LABCELL_X88_Y8_N6
\U|FSM|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|Selector1~0_combout\ = ( \KEY[2]~input_o\ & ( (\U|FSM|next_state.1001~q\ & (\U|instruction|out\(11) & \U|FSM|next_state.0001~q\)) ) ) # ( !\KEY[2]~input_o\ & ( (!\U|FSM|next_state.0000~q\) # ((\U|FSM|next_state.1001~q\ & (\U|instruction|out\(11) & 
-- \U|FSM|next_state.0001~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110001111100001111000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_next_state.1001~q\,
	datab => \U|instruction|ALT_INV_out\(11),
	datac => \U|FSM|ALT_INV_next_state.0000~q\,
	datad => \U|FSM|ALT_INV_next_state.0001~q\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \U|FSM|Selector1~0_combout\);

-- Location: FF_X88_Y8_N8
\U|FSM|next_state.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|Selector1~0_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.0001~q\);

-- Location: LABCELL_X88_Y8_N48
\U|FSM|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|Selector9~0_combout\ = ( \U|FSM|next_state.1001~q\ & ( \U|FSM|next_state.0001~q\ & ( ((\U|instruction|out\(15) & (!\U|instruction|out\(13) & \U|instruction|out\(14)))) # (\U|instruction|out\(11)) ) ) ) # ( !\U|FSM|next_state.1001~q\ & ( 
-- \U|FSM|next_state.0001~q\ & ( (\U|instruction|out\(15) & (!\U|instruction|out\(13) & \U|instruction|out\(14))) ) ) ) # ( \U|FSM|next_state.1001~q\ & ( !\U|FSM|next_state.0001~q\ & ( \U|instruction|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000010100000011001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(15),
	datab => \U|instruction|ALT_INV_out\(11),
	datac => \U|instruction|ALT_INV_out\(13),
	datad => \U|instruction|ALT_INV_out\(14),
	datae => \U|FSM|ALT_INV_next_state.1001~q\,
	dataf => \U|FSM|ALT_INV_next_state.0001~q\,
	combout => \U|FSM|Selector9~0_combout\);

-- Location: FF_X88_Y8_N50
\U|FSM|next_state.1001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|Selector9~0_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.1001~q\);

-- Location: LABCELL_X88_Y6_N39
\U|FSM|next_state~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|next_state~36_combout\ = ( \KEY[1]~input_o\ & ( (\U|FSM|next_state.1001~q\ & ((!\U|instruction|out\(11) & (\U|instruction|out\(12))) # (\U|instruction|out\(11) & ((\U|FSM|next_state.1010~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100110001000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(12),
	datab => \U|FSM|ALT_INV_next_state.1001~q\,
	datac => \U|instruction|ALT_INV_out\(11),
	datad => \U|FSM|ALT_INV_next_state.1010~q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \U|FSM|next_state~36_combout\);

-- Location: FF_X88_Y6_N41
\U|FSM|next_state.1010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|next_state~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.1010~q\);

-- Location: LABCELL_X88_Y6_N36
\U|FSM|next_state~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|next_state~43_combout\ = ( \KEY[1]~input_o\ & ( (\U|FSM|next_state.1001~q\ & ((!\U|instruction|out\(11) & (!\U|instruction|out\(12))) # (\U|instruction|out\(11) & ((\U|FSM|next_state.1011~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000110010000000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(12),
	datab => \U|FSM|ALT_INV_next_state.1001~q\,
	datac => \U|instruction|ALT_INV_out\(11),
	datad => \U|FSM|ALT_INV_next_state.1011~q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \U|FSM|next_state~43_combout\);

-- Location: FF_X88_Y6_N38
\U|FSM|next_state.1011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|next_state~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.1011~q\);

-- Location: LABCELL_X88_Y6_N24
\U|FSM|next_state~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|next_state~42_combout\ = ( \KEY[1]~input_o\ & ( ((\U|instruction|out\(11) & (\U|FSM|next_state.1001~q\ & \U|FSM|next_state.1100~q\))) # (\U|FSM|next_state.1011~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|FSM|ALT_INV_next_state.1001~q\,
	datac => \U|FSM|ALT_INV_next_state.1011~q\,
	datad => \U|FSM|ALT_INV_next_state.1100~q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \U|FSM|next_state~42_combout\);

-- Location: FF_X88_Y6_N26
\U|FSM|next_state.1100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|next_state~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.1100~q\);

-- Location: LABCELL_X88_Y6_N54
\U|FSM|next_state~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|next_state~37_combout\ = ( \KEY[1]~input_o\ & ( ((\U|instruction|out\(11) & (\U|FSM|next_state.1001~q\ & \U|FSM|next_state.1101~q\))) # (\U|FSM|next_state.1100~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|FSM|ALT_INV_next_state.1001~q\,
	datac => \U|FSM|ALT_INV_next_state.1100~q\,
	datad => \U|FSM|ALT_INV_next_state.1101~q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \U|FSM|next_state~37_combout\);

-- Location: FF_X88_Y6_N56
\U|FSM|next_state.1101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|next_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.1101~q\);

-- Location: LABCELL_X88_Y8_N18
\U|FSM|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|Selector9~1_combout\ = ( !\U|instruction|out\(13) & ( (\U|instruction|out\(14) & \U|instruction|out\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instruction|ALT_INV_out\(14),
	datad => \U|instruction|ALT_INV_out\(15),
	dataf => \U|instruction|ALT_INV_out\(13),
	combout => \U|FSM|Selector9~1_combout\);

-- Location: LABCELL_X88_Y8_N45
\U|FSM|next_state~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|next_state~45_combout\ = ( \U|FSM|next_state.0010~q\ & ( \U|FSM|next_state.0001~q\ & ( (\KEY[1]~input_o\ & ((!\U|FSM|Selector9~1_combout\) # ((\U|FSM|next_state.1001~q\ & \U|instruction|out\(11))))) ) ) ) # ( !\U|FSM|next_state.0010~q\ & ( 
-- \U|FSM|next_state.0001~q\ & ( (!\U|FSM|Selector9~1_combout\ & \KEY[1]~input_o\) ) ) ) # ( \U|FSM|next_state.0010~q\ & ( !\U|FSM|next_state.0001~q\ & ( (\U|FSM|next_state.1001~q\ & (\KEY[1]~input_o\ & \U|instruction|out\(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100001100000011000000110000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_next_state.1001~q\,
	datab => \U|FSM|ALT_INV_Selector9~1_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \U|instruction|ALT_INV_out\(11),
	datae => \U|FSM|ALT_INV_next_state.0010~q\,
	dataf => \U|FSM|ALT_INV_next_state.0001~q\,
	combout => \U|FSM|next_state~45_combout\);

-- Location: FF_X88_Y8_N47
\U|FSM|next_state.0010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|next_state~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.0010~q\);

-- Location: LABCELL_X88_Y8_N9
\U|FSM|next_state~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|next_state~44_combout\ = ( \U|FSM|next_state.0010~q\ & ( \KEY[1]~input_o\ ) ) # ( !\U|FSM|next_state.0010~q\ & ( (\U|FSM|next_state.1001~q\ & (\U|instruction|out\(11) & (\KEY[1]~input_o\ & \U|FSM|next_state.0011~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_next_state.1001~q\,
	datab => \U|instruction|ALT_INV_out\(11),
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \U|FSM|ALT_INV_next_state.0011~q\,
	dataf => \U|FSM|ALT_INV_next_state.0010~q\,
	combout => \U|FSM|next_state~44_combout\);

-- Location: FF_X88_Y8_N11
\U|FSM|next_state.0011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|next_state~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.0011~q\);

-- Location: LABCELL_X88_Y8_N54
\U|FSM|next_state~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|next_state~38_combout\ = ( \U|FSM|next_state.0100~q\ & ( \U|FSM|next_state.1001~q\ & ( (\KEY[1]~input_o\ & (((\U|FSM|next_state.0011~q\ & !\U|instruction|out\(12))) # (\U|instruction|out\(11)))) ) ) ) # ( !\U|FSM|next_state.0100~q\ & ( 
-- \U|FSM|next_state.1001~q\ & ( (\U|FSM|next_state.0011~q\ & (\KEY[1]~input_o\ & (!\U|instruction|out\(12) & !\U|instruction|out\(11)))) ) ) ) # ( \U|FSM|next_state.0100~q\ & ( !\U|FSM|next_state.1001~q\ & ( (\U|FSM|next_state.0011~q\ & (\KEY[1]~input_o\ & 
-- (!\U|instruction|out\(12) & !\U|instruction|out\(11)))) ) ) ) # ( !\U|FSM|next_state.0100~q\ & ( !\U|FSM|next_state.1001~q\ & ( (\U|FSM|next_state.0011~q\ & (\KEY[1]~input_o\ & (!\U|instruction|out\(12) & !\U|instruction|out\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_next_state.0011~q\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \U|instruction|ALT_INV_out\(12),
	datad => \U|instruction|ALT_INV_out\(11),
	datae => \U|FSM|ALT_INV_next_state.0100~q\,
	dataf => \U|FSM|ALT_INV_next_state.1001~q\,
	combout => \U|FSM|next_state~38_combout\);

-- Location: FF_X88_Y8_N56
\U|FSM|next_state.0100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|next_state~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.0100~q\);

-- Location: LABCELL_X88_Y8_N30
\U|FSM|next_state~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|next_state~41_combout\ = ( \U|FSM|next_state.0111~q\ & ( \U|FSM|next_state.1001~q\ & ( (\KEY[1]~input_o\ & \U|instruction|out\(11)) ) ) ) # ( !\U|FSM|next_state.0111~q\ & ( \U|FSM|next_state.1001~q\ & ( (\U|FSM|next_state.0011~q\ & 
-- (\KEY[1]~input_o\ & (\U|instruction|out\(12) & \U|instruction|out\(11)))) ) ) ) # ( \U|FSM|next_state.0111~q\ & ( !\U|FSM|next_state.1001~q\ & ( (\U|FSM|next_state.0011~q\ & (\KEY[1]~input_o\ & (\U|instruction|out\(12) & \U|instruction|out\(11)))) ) ) ) # 
-- ( !\U|FSM|next_state.0111~q\ & ( !\U|FSM|next_state.1001~q\ & ( (\U|FSM|next_state.0011~q\ & (\KEY[1]~input_o\ & (\U|instruction|out\(12) & \U|instruction|out\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_next_state.0011~q\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \U|instruction|ALT_INV_out\(12),
	datad => \U|instruction|ALT_INV_out\(11),
	datae => \U|FSM|ALT_INV_next_state.0111~q\,
	dataf => \U|FSM|ALT_INV_next_state.1001~q\,
	combout => \U|FSM|next_state~41_combout\);

-- Location: FF_X88_Y8_N32
\U|FSM|next_state.0111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|next_state~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.0111~q\);

-- Location: LABCELL_X88_Y8_N12
\U|FSM|next_state~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|next_state~40_combout\ = ( \U|FSM|next_state.0110~q\ & ( \U|FSM|next_state.1001~q\ & ( (\KEY[1]~input_o\ & (((\U|FSM|next_state.0011~q\ & \U|instruction|out\(12))) # (\U|instruction|out\(11)))) ) ) ) # ( !\U|FSM|next_state.0110~q\ & ( 
-- \U|FSM|next_state.1001~q\ & ( (\KEY[1]~input_o\ & (\U|FSM|next_state.0011~q\ & (\U|instruction|out\(12) & !\U|instruction|out\(11)))) ) ) ) # ( \U|FSM|next_state.0110~q\ & ( !\U|FSM|next_state.1001~q\ & ( (\KEY[1]~input_o\ & (\U|FSM|next_state.0011~q\ & 
-- (\U|instruction|out\(12) & !\U|instruction|out\(11)))) ) ) ) # ( !\U|FSM|next_state.0110~q\ & ( !\U|FSM|next_state.1001~q\ & ( (\KEY[1]~input_o\ & (\U|FSM|next_state.0011~q\ & (\U|instruction|out\(12) & !\U|instruction|out\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \U|FSM|ALT_INV_next_state.0011~q\,
	datac => \U|instruction|ALT_INV_out\(12),
	datad => \U|instruction|ALT_INV_out\(11),
	datae => \U|FSM|ALT_INV_next_state.0110~q\,
	dataf => \U|FSM|ALT_INV_next_state.1001~q\,
	combout => \U|FSM|next_state~40_combout\);

-- Location: FF_X88_Y8_N14
\U|FSM|next_state.0110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|next_state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.0110~q\);

-- Location: MLABCELL_X87_Y9_N36
\U|FSM|next_state~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|next_state~39_combout\ = ( \U|FSM|next_state.0101~q\ & ( \U|instruction|out\(11) & ( (\KEY[1]~input_o\ & (((\U|FSM|next_state.0011~q\ & !\U|instruction|out\(12))) # (\U|FSM|next_state.1001~q\))) ) ) ) # ( !\U|FSM|next_state.0101~q\ & ( 
-- \U|instruction|out\(11) & ( (\KEY[1]~input_o\ & (\U|FSM|next_state.0011~q\ & !\U|instruction|out\(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \U|FSM|ALT_INV_next_state.0011~q\,
	datac => \U|instruction|ALT_INV_out\(12),
	datad => \U|FSM|ALT_INV_next_state.1001~q\,
	datae => \U|FSM|ALT_INV_next_state.0101~q\,
	dataf => \U|instruction|ALT_INV_out\(11),
	combout => \U|FSM|next_state~39_combout\);

-- Location: FF_X87_Y9_N38
\U|FSM|next_state.0101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|next_state~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.0101~q\);

-- Location: LABCELL_X88_Y8_N36
\U|FSM|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|Selector8~0_combout\ = ( !\U|FSM|next_state.0101~q\ & ( (!\U|FSM|next_state.0100~q\ & (!\U|FSM|next_state.0111~q\ & !\U|FSM|next_state.0110~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000000000000000000010001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_next_state.0100~q\,
	datab => \U|FSM|ALT_INV_next_state.0111~q\,
	datad => \U|FSM|ALT_INV_next_state.0110~q\,
	datae => \U|FSM|ALT_INV_next_state.0101~q\,
	combout => \U|FSM|Selector8~0_combout\);

-- Location: LABCELL_X88_Y6_N57
\U|FSM|next_state~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|next_state~35_combout\ = ( \KEY[1]~input_o\ & ( (!\U|FSM|Selector8~0_combout\) # ((\U|instruction|out\(11) & (\U|FSM|next_state.1001~q\ & \U|FSM|next_state.1000~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|FSM|ALT_INV_next_state.1001~q\,
	datac => \U|FSM|ALT_INV_Selector8~0_combout\,
	datad => \U|FSM|ALT_INV_next_state.1000~q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \U|FSM|next_state~35_combout\);

-- Location: FF_X88_Y6_N59
\U|FSM|next_state.1000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|next_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.1000~q\);

-- Location: LABCELL_X88_Y6_N45
\U|FSM|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|Selector0~0_combout\ = ( !\U|FSM|next_state.1101~q\ & ( !\U|FSM|next_state.1000~q\ & ( !\U|FSM|next_state.1010~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|FSM|ALT_INV_next_state.1010~q\,
	datae => \U|FSM|ALT_INV_next_state.1101~q\,
	dataf => \U|FSM|ALT_INV_next_state.1000~q\,
	combout => \U|FSM|Selector0~0_combout\);

-- Location: LABCELL_X88_Y8_N0
\U|FSM|next_state~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|next_state~34_combout\ = ( \U|FSM|next_state.0000~q\ & ( \U|FSM|next_state.1001~q\ & ( (\KEY[1]~input_o\ & \U|FSM|Selector0~0_combout\) ) ) ) # ( !\U|FSM|next_state.0000~q\ & ( \U|FSM|next_state.1001~q\ & ( (\KEY[1]~input_o\ & (!\KEY[2]~input_o\ & 
-- (!\U|instruction|out\(11) & \U|FSM|Selector0~0_combout\))) ) ) ) # ( \U|FSM|next_state.0000~q\ & ( !\U|FSM|next_state.1001~q\ & ( (\KEY[1]~input_o\ & \U|FSM|Selector0~0_combout\) ) ) ) # ( !\U|FSM|next_state.0000~q\ & ( !\U|FSM|next_state.1001~q\ & ( 
-- (\KEY[1]~input_o\ & (!\KEY[2]~input_o\ & \U|FSM|Selector0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000101010100000000010000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \U|instruction|ALT_INV_out\(11),
	datad => \U|FSM|ALT_INV_Selector0~0_combout\,
	datae => \U|FSM|ALT_INV_next_state.0000~q\,
	dataf => \U|FSM|ALT_INV_next_state.1001~q\,
	combout => \U|FSM|next_state~34_combout\);

-- Location: FF_X88_Y8_N2
\U|FSM|next_state.0000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|next_state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|next_state.0000~q\);

-- Location: LABCELL_X88_Y6_N51
\U|FSM|w~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|w~0_combout\ = ( \KEY[2]~input_o\ & ( (!\U|FSM|next_state.0000~q\) # (!\U|FSM|Selector0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|FSM|ALT_INV_next_state.0000~q\,
	datad => \U|FSM|ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \U|FSM|w~0_combout\);

-- Location: FF_X88_Y6_N52
\U|FSM|w\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|w~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|w~q\);

-- Location: FF_X87_Y3_N32
\U|instruction|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(4),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(4));

-- Location: MLABCELL_X87_Y9_N21
\U|FSM|next_state~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|next_state~46_combout\ = ( \U|instruction|out\(12) & ( \U|instruction|out\(11) & ( (\U|FSM|next_state.1010~q\ & \U|FSM|next_state.1001~q\) ) ) ) # ( !\U|instruction|out\(12) & ( \U|instruction|out\(11) & ( (\U|FSM|next_state.1010~q\ & 
-- \U|FSM|next_state.1001~q\) ) ) ) # ( \U|instruction|out\(12) & ( !\U|instruction|out\(11) & ( \U|FSM|next_state.1001~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|FSM|ALT_INV_next_state.1010~q\,
	datac => \U|FSM|ALT_INV_next_state.1001~q\,
	datae => \U|instruction|ALT_INV_out\(12),
	dataf => \U|instruction|ALT_INV_out\(11),
	combout => \U|FSM|next_state~46_combout\);

-- Location: FF_X87_Y9_N23
\U|FSM|vsel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|next_state~46_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|vsel\(1));

-- Location: FF_X88_Y8_N40
\U|instruction|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(5),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(5));

-- Location: LABCELL_X88_Y6_N0
\U|FSM|nsel~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|nsel~2_combout\ = ( !\U|instruction|out\(11) & ( (!\U|FSM|Selector9~1_combout\ & ((((\U|instruction|out\(12) & \U|FSM|next_state.1001~q\)) # (\U|FSM|next_state.0001~q\)))) # (\U|FSM|Selector9~1_combout\ & (((\U|instruction|out\(12) & 
-- (\U|FSM|next_state.1001~q\))))) ) ) # ( \U|instruction|out\(11) & ( (!\U|FSM|next_state.1001~q\ & (!\U|FSM|Selector9~1_combout\ & (((\U|FSM|next_state.0001~q\))))) # (\U|FSM|next_state.1001~q\ & ((((!\U|FSM|Selector9~1_combout\ & 
-- \U|FSM|next_state.0001~q\)) # (\U|FSM|next_state.1010~q\)) # (\U|FSM|next_state.0010~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000011111110101010101011111010101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_Selector9~1_combout\,
	datab => \U|FSM|ALT_INV_next_state.0010~q\,
	datac => \U|FSM|ALT_INV_next_state.1010~q\,
	datad => \U|FSM|ALT_INV_next_state.1001~q\,
	datae => \U|instruction|ALT_INV_out\(11),
	dataf => \U|FSM|ALT_INV_next_state.0001~q\,
	datag => \U|instruction|ALT_INV_out\(12),
	combout => \U|FSM|nsel~2_combout\);

-- Location: FF_X88_Y6_N2
\U|FSM|nsel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|nsel~2_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|nsel\(0));

-- Location: LABCELL_X88_Y6_N18
\U|FSM|nsel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|nsel~0_combout\ = ( \U|FSM|next_state.1001~q\ & ( \U|FSM|Selector8~0_combout\ & ( ((\U|instruction|out\(11) & ((\U|FSM|next_state.1000~q\) # (\U|FSM|next_state.1101~q\)))) # (\U|FSM|next_state.1100~q\) ) ) ) # ( !\U|FSM|next_state.1001~q\ & ( 
-- \U|FSM|Selector8~0_combout\ & ( \U|FSM|next_state.1100~q\ ) ) ) # ( \U|FSM|next_state.1001~q\ & ( !\U|FSM|Selector8~0_combout\ ) ) # ( !\U|FSM|next_state.1001~q\ & ( !\U|FSM|Selector8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_next_state.1101~q\,
	datab => \U|FSM|ALT_INV_next_state.1000~q\,
	datac => \U|instruction|ALT_INV_out\(11),
	datad => \U|FSM|ALT_INV_next_state.1100~q\,
	datae => \U|FSM|ALT_INV_next_state.1001~q\,
	dataf => \U|FSM|ALT_INV_Selector8~0_combout\,
	combout => \U|FSM|nsel~0_combout\);

-- Location: FF_X88_Y6_N20
\U|FSM|nsel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|nsel~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|nsel\(1));

-- Location: FF_X87_Y6_N38
\U|instruction|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(10),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(10));

-- Location: FF_X87_Y6_N17
\U|instruction|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(2),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(2));

-- Location: FF_X88_Y8_N23
\U|instruction|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(7),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(7));

-- Location: LABCELL_X88_Y6_N12
\U|FSM|nsel~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|nsel~1_combout\ = ( \U|FSM|next_state.1001~q\ & ( \U|FSM|next_state.1011~q\ & ( ((!\U|instruction|out\(12)) # (\U|FSM|next_state.0010~q\)) # (\U|instruction|out\(11)) ) ) ) # ( !\U|FSM|next_state.1001~q\ & ( \U|FSM|next_state.1011~q\ & ( 
-- \U|FSM|next_state.0010~q\ ) ) ) # ( \U|FSM|next_state.1001~q\ & ( !\U|FSM|next_state.1011~q\ & ( ((!\U|instruction|out\(11) & (!\U|instruction|out\(12))) # (\U|instruction|out\(11) & ((\U|FSM|next_state.0011~q\)))) # (\U|FSM|next_state.0010~q\) ) ) ) # ( 
-- !\U|FSM|next_state.1001~q\ & ( !\U|FSM|next_state.1011~q\ & ( \U|FSM|next_state.0010~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101100111111011100110011001100111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|FSM|ALT_INV_next_state.0010~q\,
	datac => \U|instruction|ALT_INV_out\(12),
	datad => \U|FSM|ALT_INV_next_state.0011~q\,
	datae => \U|FSM|ALT_INV_next_state.1001~q\,
	dataf => \U|FSM|ALT_INV_next_state.1011~q\,
	combout => \U|FSM|nsel~1_combout\);

-- Location: FF_X88_Y6_N14
\U|FSM|loadb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|nsel~1_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|loadb~q\);

-- Location: MLABCELL_X87_Y6_N12
\U|insDec|Rmux|b[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|insDec|Rmux|b\(2) = ( \U|instruction|out\(7) & ( \U|FSM|loadb~q\ & ( (!\U|FSM|nsel\(1) & (!\U|instruction|out\(2) & ((!\U|FSM|nsel\(0)) # (!\U|instruction|out\(10))))) ) ) ) # ( !\U|instruction|out\(7) & ( \U|FSM|loadb~q\ & ( (!\U|instruction|out\(2) & 
-- ((!\U|FSM|nsel\(0)) # (!\U|instruction|out\(10)))) ) ) ) # ( \U|instruction|out\(7) & ( !\U|FSM|loadb~q\ & ( (!\U|FSM|nsel\(1) & ((!\U|FSM|nsel\(0)) # (!\U|instruction|out\(10)))) ) ) ) # ( !\U|instruction|out\(7) & ( !\U|FSM|loadb~q\ & ( 
-- (!\U|FSM|nsel\(0)) # (!\U|instruction|out\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110010001100100011111010000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_nsel\(0),
	datab => \U|FSM|ALT_INV_nsel\(1),
	datac => \U|instruction|ALT_INV_out\(10),
	datad => \U|instruction|ALT_INV_out\(2),
	datae => \U|instruction|ALT_INV_out\(7),
	dataf => \U|FSM|ALT_INV_loadb~q\,
	combout => \U|insDec|Rmux|b\(2));

-- Location: FF_X87_Y6_N35
\U|instruction|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(1),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(1));

-- Location: FF_X87_Y6_N47
\U|instruction|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(6),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(6));

-- Location: FF_X87_Y6_N44
\U|instruction|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(9),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(9));

-- Location: MLABCELL_X87_Y6_N36
\U|insDec|Rmux|b[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|insDec|Rmux|b\(1) = ( \U|FSM|nsel\(0) & ( \U|FSM|loadb~q\ & ( (!\U|instruction|out\(1) & (!\U|instruction|out\(9) & ((!\U|instruction|out\(6)) # (!\U|FSM|nsel\(1))))) ) ) ) # ( !\U|FSM|nsel\(0) & ( \U|FSM|loadb~q\ & ( (!\U|instruction|out\(1) & 
-- ((!\U|instruction|out\(6)) # (!\U|FSM|nsel\(1)))) ) ) ) # ( \U|FSM|nsel\(0) & ( !\U|FSM|loadb~q\ & ( (!\U|instruction|out\(9) & ((!\U|instruction|out\(6)) # (!\U|FSM|nsel\(1)))) ) ) ) # ( !\U|FSM|nsel\(0) & ( !\U|FSM|loadb~q\ & ( (!\U|instruction|out\(6)) 
-- # (!\U|FSM|nsel\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111100001100000010101010100010001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(1),
	datab => \U|instruction|ALT_INV_out\(6),
	datac => \U|instruction|ALT_INV_out\(9),
	datad => \U|FSM|ALT_INV_nsel\(1),
	datae => \U|FSM|ALT_INV_nsel\(0),
	dataf => \U|FSM|ALT_INV_loadb~q\,
	combout => \U|insDec|Rmux|b\(1));

-- Location: FF_X87_Y6_N32
\U|instruction|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(8),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(8));

-- Location: FF_X87_Y6_N41
\U|instruction|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(0),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(0));

-- Location: MLABCELL_X87_Y6_N30
\U|insDec|Rmux|b[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|insDec|Rmux|b\(0) = ( \U|instruction|out\(8) & ( \U|instruction|out\(0) & ( (!\U|FSM|nsel\(0) & (!\U|FSM|loadb~q\ & ((!\U|FSM|nsel\(1)) # (!\U|instruction|out\(5))))) ) ) ) # ( !\U|instruction|out\(8) & ( \U|instruction|out\(0) & ( (!\U|FSM|loadb~q\ & 
-- ((!\U|FSM|nsel\(1)) # (!\U|instruction|out\(5)))) ) ) ) # ( \U|instruction|out\(8) & ( !\U|instruction|out\(0) & ( (!\U|FSM|nsel\(0) & ((!\U|FSM|nsel\(1)) # (!\U|instruction|out\(5)))) ) ) ) # ( !\U|instruction|out\(8) & ( !\U|instruction|out\(0) & ( 
-- (!\U|FSM|nsel\(1)) # (!\U|instruction|out\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100101010001010100011111100000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_nsel\(0),
	datab => \U|FSM|ALT_INV_nsel\(1),
	datac => \U|instruction|ALT_INV_out\(5),
	datad => \U|FSM|ALT_INV_loadb~q\,
	datae => \U|instruction|ALT_INV_out\(8),
	dataf => \U|instruction|ALT_INV_out\(0),
	combout => \U|insDec|Rmux|b\(0));

-- Location: MLABCELL_X87_Y6_N51
\U|DP|REGFILE|readnum_dec|ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ = ( !\U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(2) & \U|insDec|Rmux|b\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|insDec|Rmux|ALT_INV_b\(2),
	datac => \U|insDec|Rmux|ALT_INV_b\(1),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\);

-- Location: MLABCELL_X87_Y5_N42
\U|FSM|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|Selector10~0_combout\ = ( \U|FSM|next_state.1001~q\ & ( ((\U|FSM|next_state.1100~q\ & \U|instruction|out\(11))) # (\U|FSM|next_state.1011~q\) ) ) # ( !\U|FSM|next_state.1001~q\ & ( \U|FSM|next_state.1011~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|FSM|ALT_INV_next_state.1100~q\,
	datac => \U|FSM|ALT_INV_next_state.1011~q\,
	datad => \U|instruction|ALT_INV_out\(11),
	dataf => \U|FSM|ALT_INV_next_state.1001~q\,
	combout => \U|FSM|Selector10~0_combout\);

-- Location: FF_X87_Y5_N44
\U|FSM|asel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|Selector10~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|asel~q\);

-- Location: LABCELL_X88_Y6_N48
\U|FSM|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|Selector2~0_combout\ = ( \U|FSM|next_state.0001~q\ & ( (!\U|FSM|Selector9~1_combout\) # ((\U|FSM|next_state.1001~q\ & (\U|instruction|out\(11) & \U|FSM|next_state.0010~q\))) ) ) # ( !\U|FSM|next_state.0001~q\ & ( (\U|FSM|next_state.1001~q\ & 
-- (\U|instruction|out\(11) & \U|FSM|next_state.0010~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001110101010101010111010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_Selector9~1_combout\,
	datab => \U|FSM|ALT_INV_next_state.1001~q\,
	datac => \U|instruction|ALT_INV_out\(11),
	datad => \U|FSM|ALT_INV_next_state.0010~q\,
	dataf => \U|FSM|ALT_INV_next_state.0001~q\,
	combout => \U|FSM|Selector2~0_combout\);

-- Location: FF_X88_Y6_N50
\U|FSM|loada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|Selector2~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|loada~q\);

-- Location: FF_X85_Y5_N14
\U|DP|loadA|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|regmux|b\(15),
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(15));

-- Location: FF_X87_Y3_N35
\U|instruction|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \IN|REG|Q\(3),
	sload => VCC,
	ena => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|instruction|out\(3));

-- Location: LABCELL_X85_Y5_N30
\rtl~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~48_combout\ = ( \U|instruction|out\(3) & ( (!\U|instruction|out\(4) & (\U|DP|loadB|out\(14))) # (\U|instruction|out\(4) & ((\U|DP|loadB|out\(15)))) ) ) # ( !\U|instruction|out\(3) & ( (!\U|instruction|out\(4) & \U|DP|loadB|out\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadB|ALT_INV_out\(14),
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \U|DP|loadB|ALT_INV_out\(15),
	dataf => \U|instruction|ALT_INV_out\(3),
	combout => \rtl~48_combout\);

-- Location: MLABCELL_X87_Y4_N33
\U|DP|alu|addersubtractor|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add2~0_combout\ = ( \U|DP|loadA|out\(15) & ( \rtl~48_combout\ & ( !\U|instruction|out\(11) $ (!\U|FSM|asel~q\) ) ) ) # ( !\U|DP|loadA|out\(15) & ( \rtl~48_combout\ & ( !\U|instruction|out\(11) ) ) ) # ( \U|DP|loadA|out\(15) & ( 
-- !\rtl~48_combout\ & ( !\U|instruction|out\(11) $ (\U|FSM|asel~q\) ) ) ) # ( !\U|DP|loadA|out\(15) & ( !\rtl~48_combout\ & ( \U|instruction|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100000000111111110000111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instruction|ALT_INV_out\(11),
	datad => \U|FSM|ALT_INV_asel~q\,
	datae => \U|DP|loadA|ALT_INV_out\(15),
	dataf => \ALT_INV_rtl~48_combout\,
	combout => \U|DP|alu|addersubtractor|Add2~0_combout\);

-- Location: FF_X85_Y5_N20
\U|DP|loadA|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(14),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(14));

-- Location: LABCELL_X85_Y5_N0
\U|DP|Muxa|comb~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~14_combout\ = (\U|DP|loadA|out\(14) & !\U|FSM|asel~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadA|ALT_INV_out\(14),
	datad => \U|FSM|ALT_INV_asel~q\,
	combout => \U|DP|Muxa|comb~14_combout\);

-- Location: LABCELL_X85_Y5_N48
\rtl~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~47_combout\ = ( \U|instruction|out\(3) & ( \U|DP|loadB|out\(13) ) ) # ( !\U|instruction|out\(3) & ( \U|DP|loadB|out\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadB|ALT_INV_out\(13),
	datad => \U|DP|loadB|ALT_INV_out\(14),
	dataf => \U|instruction|ALT_INV_out\(3),
	combout => \rtl~47_combout\);

-- Location: FF_X87_Y3_N47
\U|DP|loadB|out[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(12),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out[12]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y5_N9
\rtl~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~46_combout\ = ( \U|instruction|out\(3) & ( \U|DP|loadB|out[12]~DUPLICATE_q\ ) ) # ( !\U|instruction|out\(3) & ( \U|DP|loadB|out\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadB|ALT_INV_out\(13),
	datad => \U|DP|loadB|ALT_INV_out[12]~DUPLICATE_q\,
	dataf => \U|instruction|ALT_INV_out\(3),
	combout => \rtl~46_combout\);

-- Location: FF_X85_Y5_N58
\U|DP|loadA|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(13),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(13));

-- Location: LABCELL_X88_Y5_N48
\U|DP|Muxa|comb~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~13_combout\ = ( !\U|FSM|asel~q\ & ( \U|DP|loadA|out\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|loadA|ALT_INV_out\(13),
	dataf => \U|FSM|ALT_INV_asel~q\,
	combout => \U|DP|Muxa|comb~13_combout\);

-- Location: FF_X87_Y4_N31
\U|DP|loadB|out[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(11),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out[11]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y3_N3
\rtl~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~45_combout\ = ( \U|instruction|out\(3) & ( \U|DP|loadB|out[11]~DUPLICATE_q\ ) ) # ( !\U|instruction|out\(3) & ( \U|DP|loadB|out[12]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadB|ALT_INV_out[12]~DUPLICATE_q\,
	datad => \U|DP|loadB|ALT_INV_out[11]~DUPLICATE_q\,
	dataf => \U|instruction|ALT_INV_out\(3),
	combout => \rtl~45_combout\);

-- Location: FF_X88_Y7_N8
\U|DP|loadA|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(12),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(12));

-- Location: LABCELL_X88_Y7_N3
\U|DP|Muxa|comb~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~12_combout\ = ( !\U|FSM|asel~q\ & ( \U|DP|loadA|out\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadA|ALT_INV_out\(12),
	dataf => \U|FSM|ALT_INV_asel~q\,
	combout => \U|DP|Muxa|comb~12_combout\);

-- Location: MLABCELL_X87_Y4_N36
\rtl~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~44_combout\ = ( \U|DP|loadB|out\(11) & ( (!\U|instruction|out\(3)) # (\U|DP|loadB|out\(10)) ) ) # ( !\U|DP|loadB|out\(11) & ( (\U|DP|loadB|out\(10) & \U|instruction|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadB|ALT_INV_out\(10),
	datad => \U|instruction|ALT_INV_out\(3),
	dataf => \U|DP|loadB|ALT_INV_out\(11),
	combout => \rtl~44_combout\);

-- Location: FF_X88_Y5_N41
\U|DP|loadA|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(11),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(11));

-- Location: LABCELL_X88_Y5_N33
\U|DP|Muxa|comb~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~11_combout\ = ( !\U|FSM|asel~q\ & ( \U|DP|loadA|out\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadA|ALT_INV_out\(11),
	dataf => \U|FSM|ALT_INV_asel~q\,
	combout => \U|DP|Muxa|comb~11_combout\);

-- Location: FF_X88_Y7_N17
\U|DP|loadA|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(10),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(10));

-- Location: LABCELL_X88_Y7_N27
\U|DP|Muxa|comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~10_combout\ = ( !\U|FSM|asel~q\ & ( \U|DP|loadA|out\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadA|ALT_INV_out\(10),
	dataf => \U|FSM|ALT_INV_asel~q\,
	combout => \U|DP|Muxa|comb~10_combout\);

-- Location: MLABCELL_X87_Y3_N6
\rtl~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~58_combout\ = ( \U|DP|loadB|out\(9) & ( (\U|DP|loadB|out\(10)) # (\U|instruction|out\(3)) ) ) # ( !\U|DP|loadB|out\(9) & ( (!\U|instruction|out\(3) & \U|DP|loadB|out\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instruction|ALT_INV_out\(3),
	datad => \U|DP|loadB|ALT_INV_out\(10),
	dataf => \U|DP|loadB|ALT_INV_out\(9),
	combout => \rtl~58_combout\);

-- Location: FF_X88_Y7_N46
\U|DP|loadA|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(9),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(9));

-- Location: LABCELL_X88_Y7_N39
\U|DP|Muxa|comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~9_combout\ = ( !\U|FSM|asel~q\ & ( \U|DP|loadA|out\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U|DP|loadA|ALT_INV_out\(9),
	dataf => \U|FSM|ALT_INV_asel~q\,
	combout => \U|DP|Muxa|comb~9_combout\);

-- Location: LABCELL_X88_Y7_N18
\rtl~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~57_combout\ = ( \U|instruction|out\(3) & ( \U|DP|loadB|out\(8) ) ) # ( !\U|instruction|out\(3) & ( \U|DP|loadB|out\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadB|ALT_INV_out\(9),
	datad => \U|DP|loadB|ALT_INV_out\(8),
	dataf => \U|instruction|ALT_INV_out\(3),
	combout => \rtl~57_combout\);

-- Location: LABCELL_X88_Y7_N51
\rtl~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~56_combout\ = ( \U|DP|loadB|out\(7) & ( (\U|DP|loadB|out\(8)) # (\U|instruction|out\(3)) ) ) # ( !\U|DP|loadB|out\(7) & ( (!\U|instruction|out\(3) & \U|DP|loadB|out\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(3),
	datac => \U|DP|loadB|ALT_INV_out\(8),
	dataf => \U|DP|loadB|ALT_INV_out\(7),
	combout => \rtl~56_combout\);

-- Location: FF_X88_Y7_N44
\U|DP|loadA|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(8),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(8));

-- Location: LABCELL_X88_Y7_N9
\U|DP|Muxa|comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~8_combout\ = ( !\U|FSM|asel~q\ & ( \U|DP|loadA|out\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadA|ALT_INV_out\(8),
	dataf => \U|FSM|ALT_INV_asel~q\,
	combout => \U|DP|Muxa|comb~8_combout\);

-- Location: MLABCELL_X87_Y3_N15
\rtl~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~55_combout\ = ( \U|DP|loadB|out\(6) & ( (\U|instruction|out\(3)) # (\U|DP|loadB|out\(7)) ) ) # ( !\U|DP|loadB|out\(6) & ( (\U|DP|loadB|out\(7) & !\U|instruction|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadB|ALT_INV_out\(7),
	datad => \U|instruction|ALT_INV_out\(3),
	dataf => \U|DP|loadB|ALT_INV_out\(6),
	combout => \rtl~55_combout\);

-- Location: FF_X87_Y5_N32
\U|DP|loadA|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(7),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(7));

-- Location: MLABCELL_X87_Y5_N30
\U|DP|Muxa|comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~7_combout\ = (!\U|FSM|asel~q\ & \U|DP|loadA|out\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|FSM|ALT_INV_asel~q\,
	datad => \U|DP|loadA|ALT_INV_out\(7),
	combout => \U|DP|Muxa|comb~7_combout\);

-- Location: LABCELL_X88_Y5_N21
\rtl~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~54_combout\ = ( \U|DP|loadB|out\(6) & ( \U|instruction|out\(3) & ( \U|DP|loadB|out\(5) ) ) ) # ( !\U|DP|loadB|out\(6) & ( \U|instruction|out\(3) & ( \U|DP|loadB|out\(5) ) ) ) # ( \U|DP|loadB|out\(6) & ( !\U|instruction|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadB|ALT_INV_out\(5),
	datae => \U|DP|loadB|ALT_INV_out\(6),
	dataf => \U|instruction|ALT_INV_out\(3),
	combout => \rtl~54_combout\);

-- Location: FF_X88_Y5_N29
\U|DP|loadA|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(6),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(6));

-- Location: LABCELL_X88_Y5_N45
\U|DP|Muxa|comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~6_combout\ = ( !\U|FSM|asel~q\ & ( \U|DP|loadA|out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U|DP|loadA|ALT_INV_out\(6),
	dataf => \U|FSM|ALT_INV_asel~q\,
	combout => \U|DP|Muxa|comb~6_combout\);

-- Location: FF_X87_Y5_N56
\U|DP|loadA|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(5),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(5));

-- Location: MLABCELL_X87_Y5_N54
\U|DP|Muxa|comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~5_combout\ = (!\U|FSM|asel~q\ & \U|DP|loadA|out\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|FSM|ALT_INV_asel~q\,
	datad => \U|DP|loadA|ALT_INV_out\(5),
	combout => \U|DP|Muxa|comb~5_combout\);

-- Location: MLABCELL_X87_Y5_N45
\rtl~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~53_combout\ = ( \U|DP|loadB|out\(4) & ( (\U|instruction|out\(3)) # (\U|DP|loadB|out\(5)) ) ) # ( !\U|DP|loadB|out\(4) & ( (\U|DP|loadB|out\(5) & !\U|instruction|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadB|ALT_INV_out\(5),
	datad => \U|instruction|ALT_INV_out\(3),
	dataf => \U|DP|loadB|ALT_INV_out\(4),
	combout => \rtl~53_combout\);

-- Location: MLABCELL_X82_Y7_N27
\U|DP|Mux1lab6|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~3_combout\ = ( \U|FSM|vsel\(1) & ( \U|instruction|out\(3) ) ) # ( !\U|FSM|vsel\(1) & ( \U|instruction|out\(3) & ( \U|DP|loadC|out\(3) ) ) ) # ( !\U|FSM|vsel\(1) & ( !\U|instruction|out\(3) & ( \U|DP|loadC|out\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadC|ALT_INV_out\(3),
	datae => \U|FSM|ALT_INV_vsel\(1),
	dataf => \U|instruction|ALT_INV_out\(3),
	combout => \U|DP|Mux1lab6|comb~3_combout\);

-- Location: LABCELL_X88_Y6_N27
\U|FSM|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|Selector1~1_combout\ = (\U|FSM|next_state.1001~q\ & \U|instruction|out\(11))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|FSM|ALT_INV_next_state.1001~q\,
	datad => \U|instruction|ALT_INV_out\(11),
	combout => \U|FSM|Selector1~1_combout\);

-- Location: LABCELL_X88_Y6_N6
\U|FSM|WideOr10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|WideOr10~combout\ = ( \U|FSM|next_state~46_combout\ & ( \U|FSM|Selector8~0_combout\ ) ) # ( !\U|FSM|next_state~46_combout\ & ( \U|FSM|Selector8~0_combout\ & ( ((\U|FSM|Selector1~1_combout\ & ((\U|FSM|next_state.1000~q\) # 
-- (\U|FSM|next_state.1101~q\)))) # (\U|FSM|next_state.1100~q\) ) ) ) # ( \U|FSM|next_state~46_combout\ & ( !\U|FSM|Selector8~0_combout\ ) ) # ( !\U|FSM|next_state~46_combout\ & ( !\U|FSM|Selector8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_next_state.1101~q\,
	datab => \U|FSM|ALT_INV_next_state.1000~q\,
	datac => \U|FSM|ALT_INV_Selector1~1_combout\,
	datad => \U|FSM|ALT_INV_next_state.1100~q\,
	datae => \U|FSM|ALT_INV_next_state~46_combout\,
	dataf => \U|FSM|ALT_INV_Selector8~0_combout\,
	combout => \U|FSM|WideOr10~combout\);

-- Location: FF_X88_Y6_N8
\U|FSM|write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|WideOr10~combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|write~q\);

-- Location: MLABCELL_X87_Y7_N42
\U|DP|REGFILE|comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|comb~6_combout\ = ( \U|FSM|write~q\ & ( (!\U|insDec|Rmux|b\(2) & (!\U|insDec|Rmux|b\(1) & \U|insDec|Rmux|b\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000100000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|insDec|Rmux|ALT_INV_b\(2),
	datab => \U|insDec|Rmux|ALT_INV_b\(1),
	datac => \U|insDec|Rmux|ALT_INV_b\(0),
	datae => \U|FSM|ALT_INV_write~q\,
	combout => \U|DP|REGFILE|comb~6_combout\);

-- Location: FF_X85_Y7_N1
\U|DP|REGFILE|Reg6|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~3_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(3));

-- Location: LABCELL_X83_Y6_N36
\U|DP|REGFILE|Reg7|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg7|out[3]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~3_combout\,
	combout => \U|DP|REGFILE|Reg7|out[3]~feeder_combout\);

-- Location: LABCELL_X85_Y6_N51
\U|DP|REGFILE|comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|comb~7_combout\ = ( !\U|insDec|Rmux|b\(2) & ( !\U|insDec|Rmux|b\(0) & ( (\U|FSM|write~q\ & !\U|insDec|Rmux|b\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_write~q\,
	datac => \U|insDec|Rmux|ALT_INV_b\(1),
	datae => \U|insDec|Rmux|ALT_INV_b\(2),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|comb~7_combout\);

-- Location: FF_X83_Y6_N38
\U|DP|REGFILE|Reg7|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg7|out[3]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(3));

-- Location: MLABCELL_X87_Y6_N9
\U|DP|REGFILE|readnum_dec|ShiftLeft0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ = ( !\U|insDec|Rmux|b\(1) & ( !\U|insDec|Rmux|b\(0) & ( !\U|insDec|Rmux|b\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|insDec|Rmux|ALT_INV_b\(2),
	datae => \U|insDec|Rmux|ALT_INV_b\(1),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\);

-- Location: MLABCELL_X87_Y6_N21
\U|DP|REGFILE|readnum_dec|ShiftLeft0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ = ( !\U|insDec|Rmux|b\(1) & ( \U|insDec|Rmux|b\(0) & ( !\U|insDec|Rmux|b\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|insDec|Rmux|ALT_INV_b\(2),
	datae => \U|insDec|Rmux|ALT_INV_b\(1),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\);

-- Location: LABCELL_X85_Y6_N30
\U|DP|REGFILE|regmux|b[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[3]~11_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(3)) # (\U|DP|REGFILE|Reg6|out\(3)) ) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( \U|DP|REGFILE|Reg6|out\(3) ) ) ) # ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( 
-- \U|DP|REGFILE|Reg7|out\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg6|ALT_INV_out\(3),
	datac => \U|DP|REGFILE|Reg7|ALT_INV_out\(3),
	datae => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	combout => \U|DP|REGFILE|regmux|b[3]~11_combout\);

-- Location: MLABCELL_X84_Y7_N3
\U|DP|REGFILE|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|comb~2_combout\ = ( !\U|insDec|Rmux|b\(1) & ( \U|insDec|Rmux|b\(2) & ( (\U|FSM|write~q\ & \U|insDec|Rmux|b\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_write~q\,
	datac => \U|insDec|Rmux|ALT_INV_b\(0),
	datae => \U|insDec|Rmux|ALT_INV_b\(1),
	dataf => \U|insDec|Rmux|ALT_INV_b\(2),
	combout => \U|DP|REGFILE|comb~2_combout\);

-- Location: FF_X82_Y7_N49
\U|DP|REGFILE|Reg2|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~3_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(3));

-- Location: LABCELL_X85_Y6_N36
\U|DP|REGFILE|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|comb~3_combout\ = ( \U|insDec|Rmux|b\(0) & ( (\U|insDec|Rmux|b\(1) & (!\U|insDec|Rmux|b\(2) & \U|FSM|write~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|insDec|Rmux|ALT_INV_b\(1),
	datac => \U|insDec|Rmux|ALT_INV_b\(2),
	datad => \U|FSM|ALT_INV_write~q\,
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|comb~3_combout\);

-- Location: FF_X82_Y7_N7
\U|DP|REGFILE|Reg4|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~3_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(3));

-- Location: MLABCELL_X87_Y7_N30
\U|DP|REGFILE|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|comb~1_combout\ = ( \U|FSM|write~q\ & ( (\U|insDec|Rmux|b\(2) & (\U|insDec|Rmux|b\(1) & \U|insDec|Rmux|b\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|insDec|Rmux|ALT_INV_b\(2),
	datab => \U|insDec|Rmux|ALT_INV_b\(1),
	datac => \U|insDec|Rmux|ALT_INV_b\(0),
	datae => \U|FSM|ALT_INV_write~q\,
	combout => \U|DP|REGFILE|comb~1_combout\);

-- Location: FF_X85_Y7_N32
\U|DP|REGFILE|Reg0|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~3_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(3));

-- Location: LABCELL_X85_Y7_N30
\U|DP|REGFILE|regmux|b[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[3]~9_combout\ = ( \U|DP|REGFILE|Reg0|out\(3) & ( \U|insDec|Rmux|b\(2) & ( (\U|insDec|Rmux|b\(0) & ((\U|insDec|Rmux|b\(1)) # (\U|DP|REGFILE|Reg2|out\(3)))) ) ) ) # ( !\U|DP|REGFILE|Reg0|out\(3) & ( \U|insDec|Rmux|b\(2) & ( 
-- (\U|DP|REGFILE|Reg2|out\(3) & (!\U|insDec|Rmux|b\(1) & \U|insDec|Rmux|b\(0))) ) ) ) # ( \U|DP|REGFILE|Reg0|out\(3) & ( !\U|insDec|Rmux|b\(2) & ( (\U|DP|REGFILE|Reg4|out\(3) & (\U|insDec|Rmux|b\(1) & \U|insDec|Rmux|b\(0))) ) ) ) # ( 
-- !\U|DP|REGFILE|Reg0|out\(3) & ( !\U|insDec|Rmux|b\(2) & ( (\U|DP|REGFILE|Reg4|out\(3) & (\U|insDec|Rmux|b\(1) & \U|insDec|Rmux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000010100000000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg2|ALT_INV_out\(3),
	datab => \U|DP|REGFILE|Reg4|ALT_INV_out\(3),
	datac => \U|insDec|Rmux|ALT_INV_b\(1),
	datad => \U|insDec|Rmux|ALT_INV_b\(0),
	datae => \U|DP|REGFILE|Reg0|ALT_INV_out\(3),
	dataf => \U|insDec|Rmux|ALT_INV_b\(2),
	combout => \U|DP|REGFILE|regmux|b[3]~9_combout\);

-- Location: LABCELL_X85_Y7_N12
\U|DP|REGFILE|Reg5|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg5|out[3]~feeder_combout\ = \U|DP|Mux1lab6|comb~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|Mux1lab6|ALT_INV_comb~3_combout\,
	combout => \U|DP|REGFILE|Reg5|out[3]~feeder_combout\);

-- Location: LABCELL_X85_Y7_N24
\U|DP|REGFILE|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|comb~0_combout\ = ( !\U|insDec|Rmux|b\(2) & ( (\U|insDec|Rmux|b\(1) & (!\U|insDec|Rmux|b\(0) & \U|FSM|write~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|insDec|Rmux|ALT_INV_b\(1),
	datab => \U|insDec|Rmux|ALT_INV_b\(0),
	datac => \U|FSM|ALT_INV_write~q\,
	dataf => \U|insDec|Rmux|ALT_INV_b\(2),
	combout => \U|DP|REGFILE|comb~0_combout\);

-- Location: FF_X85_Y7_N14
\U|DP|REGFILE|Reg5|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg5|out[3]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(3));

-- Location: LABCELL_X85_Y4_N15
\U|DP|REGFILE|Reg1|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg1|out[3]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~3_combout\,
	combout => \U|DP|REGFILE|Reg1|out[3]~feeder_combout\);

-- Location: LABCELL_X85_Y6_N9
\U|DP|REGFILE|comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|comb~4_combout\ = ( \U|insDec|Rmux|b\(2) & ( (!\U|insDec|Rmux|b\(0) & (\U|insDec|Rmux|b\(1) & \U|FSM|write~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|insDec|Rmux|ALT_INV_b\(0),
	datac => \U|insDec|Rmux|ALT_INV_b\(1),
	datad => \U|FSM|ALT_INV_write~q\,
	dataf => \U|insDec|Rmux|ALT_INV_b\(2),
	combout => \U|DP|REGFILE|comb~4_combout\);

-- Location: FF_X85_Y4_N17
\U|DP|REGFILE|Reg1|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg1|out[3]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(3));

-- Location: MLABCELL_X87_Y6_N3
\U|DP|REGFILE|readnum_dec|ShiftLeft0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ = ( !\U|insDec|Rmux|b\(0) & ( (\U|insDec|Rmux|b\(2) & \U|insDec|Rmux|b\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|insDec|Rmux|ALT_INV_b\(2),
	datad => \U|insDec|Rmux|ALT_INV_b\(1),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\);

-- Location: LABCELL_X85_Y6_N24
\U|DP|REGFILE|comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|comb~5_combout\ = ( !\U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (\U|insDec|Rmux|b\(2) & \U|FSM|write~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|insDec|Rmux|ALT_INV_b\(1),
	datac => \U|insDec|Rmux|ALT_INV_b\(2),
	datad => \U|FSM|ALT_INV_write~q\,
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|comb~5_combout\);

-- Location: FF_X85_Y4_N23
\U|DP|REGFILE|Reg3|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~3_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(3));

-- Location: MLABCELL_X87_Y6_N48
\U|DP|REGFILE|readnum_dec|ShiftLeft0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ = ( !\U|insDec|Rmux|b\(0) & ( (\U|insDec|Rmux|b\(2) & !\U|insDec|Rmux|b\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|insDec|Rmux|ALT_INV_b\(2),
	datad => \U|insDec|Rmux|ALT_INV_b\(1),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\);

-- Location: LABCELL_X85_Y4_N21
\U|DP|REGFILE|regmux|b[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[3]~10_combout\ = ( \U|DP|REGFILE|Reg3|out\(3) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ ) ) # ( !\U|DP|REGFILE|Reg3|out\(3) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( (\U|DP|REGFILE|Reg1|out\(3) & 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\) ) ) ) # ( \U|DP|REGFILE|Reg3|out\(3) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( (\U|DP|REGFILE|Reg1|out\(3) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\) ) ) ) # ( 
-- !\U|DP|REGFILE|Reg3|out\(3) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( (\U|DP|REGFILE|Reg1|out\(3) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg1|ALT_INV_out\(3),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	datae => \U|DP|REGFILE|Reg3|ALT_INV_out\(3),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	combout => \U|DP|REGFILE|regmux|b[3]~10_combout\);

-- Location: LABCELL_X85_Y5_N6
\U|DP|REGFILE|regmux|b[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(3) = ( \U|DP|REGFILE|regmux|b[3]~10_combout\ ) # ( !\U|DP|REGFILE|regmux|b[3]~10_combout\ & ( (((\U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & \U|DP|REGFILE|Reg5|out\(3))) # (\U|DP|REGFILE|regmux|b[3]~9_combout\)) # 
-- (\U|DP|REGFILE|regmux|b[3]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101111111010111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|regmux|ALT_INV_b[3]~11_combout\,
	datab => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datac => \U|DP|REGFILE|regmux|ALT_INV_b[3]~9_combout\,
	datad => \U|DP|REGFILE|Reg5|ALT_INV_out\(3),
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[3]~10_combout\,
	combout => \U|DP|REGFILE|regmux|b\(3));

-- Location: FF_X85_Y5_N46
\U|DP|loadB|out[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(3),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out[3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y5_N57
\rtl~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~52_combout\ = ( \U|DP|loadB|out\(4) & ( \U|DP|loadB|out[3]~DUPLICATE_q\ ) ) # ( !\U|DP|loadB|out\(4) & ( \U|DP|loadB|out[3]~DUPLICATE_q\ & ( \U|instruction|out\(3) ) ) ) # ( \U|DP|loadB|out\(4) & ( !\U|DP|loadB|out[3]~DUPLICATE_q\ & ( 
-- !\U|instruction|out\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instruction|ALT_INV_out\(3),
	datae => \U|DP|loadB|ALT_INV_out\(4),
	dataf => \U|DP|loadB|ALT_INV_out[3]~DUPLICATE_q\,
	combout => \rtl~52_combout\);

-- Location: FF_X88_Y3_N38
\U|DP|loadA|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(4),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(4));

-- Location: LABCELL_X88_Y3_N9
\U|DP|Muxa|comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~4_combout\ = ( \U|DP|loadA|out\(4) & ( !\U|FSM|asel~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U|DP|loadA|ALT_INV_out\(4),
	dataf => \U|FSM|ALT_INV_asel~q\,
	combout => \U|DP|Muxa|comb~4_combout\);

-- Location: FF_X85_Y5_N47
\U|DP|loadB|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(3),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(3));

-- Location: FF_X87_Y5_N58
\U|DP|loadA|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(0),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(0));

-- Location: MLABCELL_X87_Y5_N36
\U|DP|Muxa|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~0_combout\ = ( \U|DP|loadA|out\(0) & ( !\U|FSM|asel~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|FSM|ALT_INV_asel~q\,
	dataf => \U|DP|loadA|ALT_INV_out\(0),
	combout => \U|DP|Muxa|comb~0_combout\);

-- Location: MLABCELL_X87_Y3_N21
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = ( !\U|instruction|out\(3) & ( \U|DP|loadB|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadB|ALT_INV_out\(0),
	dataf => \U|instruction|ALT_INV_out\(3),
	combout => \rtl~0_combout\);

-- Location: MLABCELL_X87_Y5_N0
\U|DP|alu|addersubtractor|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~66_cout\ = CARRY(( \U|instruction|out\(11) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instruction|ALT_INV_out\(11),
	cin => GND,
	cout => \U|DP|alu|addersubtractor|Add0~66_cout\);

-- Location: MLABCELL_X87_Y5_N3
\U|DP|alu|addersubtractor|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~1_sumout\ = SUM(( \U|DP|Muxa|comb~0_combout\ ) + ( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~0_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(1))))) ) + ( 
-- \U|DP|alu|addersubtractor|Add0~66_cout\ ))
-- \U|DP|alu|addersubtractor|Add0~2\ = CARRY(( \U|DP|Muxa|comb~0_combout\ ) + ( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~0_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(1))))) ) + ( \U|DP|alu|addersubtractor|Add0~66_cout\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010101100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|DP|loadB|ALT_INV_out\(1),
	datac => \U|instruction|ALT_INV_out\(4),
	datad => \U|DP|Muxa|ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_rtl~0_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~66_cout\,
	sumout => \U|DP|alu|addersubtractor|Add0~1_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~2\);

-- Location: MLABCELL_X84_Y4_N24
\U|DP|loadC|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[0]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~1_sumout\,
	combout => \U|DP|loadC|out[0]~feeder_combout\);

-- Location: MLABCELL_X87_Y3_N39
\rtl~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~33_combout\ = ( \U|DP|loadB|out\(1) & ( \U|instruction|out\(4) ) ) # ( \U|DP|loadB|out\(1) & ( !\U|instruction|out\(4) & ( (\U|DP|loadB|out\(0) & !\U|instruction|out\(3)) ) ) ) # ( !\U|DP|loadB|out\(1) & ( !\U|instruction|out\(4) & ( 
-- (\U|DP|loadB|out\(0) & !\U|instruction|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadB|ALT_INV_out\(0),
	datad => \U|instruction|ALT_INV_out\(3),
	datae => \U|DP|loadB|ALT_INV_out\(1),
	dataf => \U|instruction|ALT_INV_out\(4),
	combout => \rtl~33_combout\);

-- Location: LABCELL_X85_Y5_N36
\U|DP|alu|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Equal0~0_combout\ = (\U|instruction|out\(11) & \U|instruction|out\(12))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|instruction|ALT_INV_out\(11),
	datad => \U|instruction|ALT_INV_out\(12),
	combout => \U|DP|alu|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y4_N27
\U|DP|alu|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector15~0_combout\ = ( \U|DP|Muxa|comb~0_combout\ & ( !\rtl~33_combout\ $ (!\U|DP|alu|Equal0~0_combout\) ) ) # ( !\U|DP|Muxa|comb~0_combout\ & ( (!\rtl~33_combout\ & \U|DP|alu|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~33_combout\,
	datac => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~0_combout\,
	combout => \U|DP|alu|Selector15~0_combout\);

-- Location: LABCELL_X88_Y6_N30
\U|FSM|WideOr11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|WideOr11~0_combout\ = ( \U|FSM|Selector8~0_combout\ & ( \U|FSM|next_state.1100~q\ & ( (((\U|instruction|out\(11) & \U|FSM|next_state.1001~q\)) # (\U|FSM|next_state.0011~q\)) # (\U|FSM|next_state.1011~q\) ) ) ) # ( !\U|FSM|Selector8~0_combout\ & ( 
-- \U|FSM|next_state.1100~q\ & ( (((\U|instruction|out\(11) & \U|FSM|next_state.1001~q\)) # (\U|FSM|next_state.0011~q\)) # (\U|FSM|next_state.1011~q\) ) ) ) # ( \U|FSM|Selector8~0_combout\ & ( !\U|FSM|next_state.1100~q\ & ( (\U|FSM|next_state.0011~q\) # 
-- (\U|FSM|next_state.1011~q\) ) ) ) # ( !\U|FSM|Selector8~0_combout\ & ( !\U|FSM|next_state.1100~q\ & ( (((\U|instruction|out\(11) & \U|FSM|next_state.1001~q\)) # (\U|FSM|next_state.0011~q\)) # (\U|FSM|next_state.1011~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000011111111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|FSM|ALT_INV_next_state.1001~q\,
	datac => \U|FSM|ALT_INV_next_state.1011~q\,
	datad => \U|FSM|ALT_INV_next_state.0011~q\,
	datae => \U|FSM|ALT_INV_Selector8~0_combout\,
	dataf => \U|FSM|ALT_INV_next_state.1100~q\,
	combout => \U|FSM|WideOr11~0_combout\);

-- Location: FF_X88_Y6_N32
\U|FSM|loadc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|WideOr11~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|loadc~q\);

-- Location: FF_X84_Y4_N25
\U|DP|loadC|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[0]~feeder_combout\,
	asdata => \U|DP|alu|Selector15~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(0));

-- Location: LABCELL_X85_Y6_N27
\U|DP|Mux1lab6|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~0_combout\ = ( \U|FSM|vsel\(1) & ( \U|instruction|out\(0) ) ) # ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(0),
	datac => \U|DP|loadC|ALT_INV_out\(0),
	dataf => \U|FSM|ALT_INV_vsel\(1),
	combout => \U|DP|Mux1lab6|comb~0_combout\);

-- Location: FF_X85_Y6_N49
\U|DP|REGFILE|Reg5|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(0));

-- Location: MLABCELL_X82_Y5_N48
\U|DP|REGFILE|Reg7|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg7|out[0]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~0_combout\,
	combout => \U|DP|REGFILE|Reg7|out[0]~feeder_combout\);

-- Location: FF_X82_Y5_N49
\U|DP|REGFILE|Reg7|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg7|out[0]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(0));

-- Location: FF_X88_Y3_N59
\U|DP|REGFILE|Reg6|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(0));

-- Location: LABCELL_X88_Y3_N57
\U|DP|REGFILE|regmux|b[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[0]~2_combout\ = ( \U|DP|REGFILE|Reg6|out\(0) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ ) ) # ( !\U|DP|REGFILE|Reg6|out\(0) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(0) & 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) ) # ( \U|DP|REGFILE|Reg6|out\(0) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(0) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) ) # ( 
-- !\U|DP|REGFILE|Reg6|out\(0) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(0) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg7|ALT_INV_out\(0),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	datae => \U|DP|REGFILE|Reg6|ALT_INV_out\(0),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	combout => \U|DP|REGFILE|regmux|b[0]~2_combout\);

-- Location: FF_X84_Y7_N40
\U|DP|REGFILE|Reg2|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(0));

-- Location: FF_X84_Y7_N55
\U|DP|REGFILE|Reg4|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(0));

-- Location: FF_X87_Y7_N2
\U|DP|REGFILE|Reg0|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(0));

-- Location: MLABCELL_X87_Y7_N0
\U|DP|REGFILE|regmux|b[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[0]~0_combout\ = ( \U|DP|REGFILE|Reg0|out\(0) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (\U|DP|REGFILE|Reg2|out\(0) & (\U|insDec|Rmux|b\(2)))) # (\U|insDec|Rmux|b\(1) & (((\U|DP|REGFILE|Reg4|out\(0)) # 
-- (\U|insDec|Rmux|b\(2))))) ) ) ) # ( !\U|DP|REGFILE|Reg0|out\(0) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (\U|DP|REGFILE|Reg2|out\(0) & (\U|insDec|Rmux|b\(2)))) # (\U|insDec|Rmux|b\(1) & (((!\U|insDec|Rmux|b\(2) & 
-- \U|DP|REGFILE|Reg4|out\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100001101000000011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg2|ALT_INV_out\(0),
	datab => \U|insDec|Rmux|ALT_INV_b\(1),
	datac => \U|insDec|Rmux|ALT_INV_b\(2),
	datad => \U|DP|REGFILE|Reg4|ALT_INV_out\(0),
	datae => \U|DP|REGFILE|Reg0|ALT_INV_out\(0),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|regmux|b[0]~0_combout\);

-- Location: FF_X85_Y4_N26
\U|DP|REGFILE|Reg1|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~0_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(0));

-- Location: LABCELL_X85_Y4_N54
\U|DP|REGFILE|Reg3|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg3|out[0]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~0_combout\,
	combout => \U|DP|REGFILE|Reg3|out[0]~feeder_combout\);

-- Location: FF_X85_Y4_N55
\U|DP|REGFILE|Reg3|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg3|out[0]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(0));

-- Location: LABCELL_X88_Y3_N42
\U|DP|REGFILE|regmux|b[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[0]~1_combout\ = ( \U|DP|REGFILE|Reg3|out\(0) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( (\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\) # (\U|DP|REGFILE|Reg1|out\(0)) ) ) ) # ( !\U|DP|REGFILE|Reg3|out\(0) & ( 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( \U|DP|REGFILE|Reg1|out\(0) ) ) ) # ( \U|DP|REGFILE|Reg3|out\(0) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg1|ALT_INV_out\(0),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	datae => \U|DP|REGFILE|Reg3|ALT_INV_out\(0),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \U|DP|REGFILE|regmux|b[0]~1_combout\);

-- Location: LABCELL_X88_Y3_N27
\U|DP|REGFILE|regmux|b[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(0) = ( \U|DP|REGFILE|regmux|b[0]~0_combout\ & ( \U|DP|REGFILE|regmux|b[0]~1_combout\ ) ) # ( !\U|DP|REGFILE|regmux|b[0]~0_combout\ & ( \U|DP|REGFILE|regmux|b[0]~1_combout\ ) ) # ( \U|DP|REGFILE|regmux|b[0]~0_combout\ & ( 
-- !\U|DP|REGFILE|regmux|b[0]~1_combout\ ) ) # ( !\U|DP|REGFILE|regmux|b[0]~0_combout\ & ( !\U|DP|REGFILE|regmux|b[0]~1_combout\ & ( ((\U|DP|REGFILE|Reg5|out\(0) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|regmux|b[0]~2_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg5|ALT_INV_out\(0),
	datac => \U|DP|REGFILE|regmux|ALT_INV_b[0]~2_combout\,
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datae => \U|DP|REGFILE|regmux|ALT_INV_b[0]~0_combout\,
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[0]~1_combout\,
	combout => \U|DP|REGFILE|regmux|b\(0));

-- Location: FF_X87_Y3_N38
\U|DP|loadB|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(0),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(0));

-- Location: MLABCELL_X87_Y3_N57
\rtl~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~49_combout\ = ( \U|DP|loadB|out\(1) & ( \U|instruction|out\(3) & ( \U|DP|loadB|out\(0) ) ) ) # ( !\U|DP|loadB|out\(1) & ( \U|instruction|out\(3) & ( \U|DP|loadB|out\(0) ) ) ) # ( \U|DP|loadB|out\(1) & ( !\U|instruction|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U|DP|loadB|ALT_INV_out\(0),
	datae => \U|DP|loadB|ALT_INV_out\(1),
	dataf => \U|instruction|ALT_INV_out\(3),
	combout => \rtl~49_combout\);

-- Location: FF_X87_Y5_N35
\U|DP|loadA|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(1),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(1));

-- Location: MLABCELL_X87_Y5_N33
\U|DP|Muxa|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~1_combout\ = ( !\U|FSM|asel~q\ & ( \U|DP|loadA|out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U|DP|loadA|ALT_INV_out\(1),
	dataf => \U|FSM|ALT_INV_asel~q\,
	combout => \U|DP|Muxa|comb~1_combout\);

-- Location: MLABCELL_X87_Y5_N6
\U|DP|alu|addersubtractor|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~5_sumout\ = SUM(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~49_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(2))))) ) + ( \U|DP|Muxa|comb~1_combout\ ) + ( \U|DP|alu|addersubtractor|Add0~2\ 
-- ))
-- \U|DP|alu|addersubtractor|Add0~6\ = CARRY(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~49_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(2))))) ) + ( \U|DP|Muxa|comb~1_combout\ ) + ( \U|DP|alu|addersubtractor|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \U|DP|loadB|ALT_INV_out\(2),
	datad => \ALT_INV_rtl~49_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~1_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~2\,
	sumout => \U|DP|alu|addersubtractor|Add0~5_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~6\);

-- Location: MLABCELL_X84_Y4_N57
\U|DP|loadC|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[1]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~5_sumout\,
	combout => \U|DP|loadC|out[1]~feeder_combout\);

-- Location: MLABCELL_X87_Y3_N30
\rtl~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~34_combout\ = ( \U|instruction|out\(3) & ( (!\U|instruction|out\(4) & ((\U|DP|loadB|out\(0)))) # (\U|instruction|out\(4) & (\U|DP|loadB|out\(2))) ) ) # ( !\U|instruction|out\(3) & ( (!\U|instruction|out\(4) & (\U|DP|loadB|out\(1))) # 
-- (\U|instruction|out\(4) & ((\U|DP|loadB|out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadB|ALT_INV_out\(1),
	datab => \U|DP|loadB|ALT_INV_out\(2),
	datac => \U|DP|loadB|ALT_INV_out\(0),
	datad => \U|instruction|ALT_INV_out\(4),
	dataf => \U|instruction|ALT_INV_out\(3),
	combout => \rtl~34_combout\);

-- Location: MLABCELL_X84_Y4_N54
\U|DP|alu|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector14~0_combout\ = ( \U|DP|Muxa|comb~1_combout\ & ( !\rtl~34_combout\ $ (!\U|DP|alu|Equal0~0_combout\) ) ) # ( !\U|DP|Muxa|comb~1_combout\ & ( (!\rtl~34_combout\ & \U|DP|alu|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rtl~34_combout\,
	datad => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~1_combout\,
	combout => \U|DP|alu|Selector14~0_combout\);

-- Location: FF_X84_Y4_N58
\U|DP|loadC|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[1]~feeder_combout\,
	asdata => \U|DP|alu|Selector14~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(1));

-- Location: LABCELL_X85_Y6_N6
\U|DP|Mux1lab6|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~1_combout\ = ( \U|FSM|vsel\(1) & ( \U|instruction|out\(1) ) ) # ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instruction|ALT_INV_out\(1),
	datac => \U|DP|loadC|ALT_INV_out\(1),
	dataf => \U|FSM|ALT_INV_vsel\(1),
	combout => \U|DP|Mux1lab6|comb~1_combout\);

-- Location: LABCELL_X81_Y3_N15
\U|DP|REGFILE|Reg1|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg1|out[1]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~1_combout\,
	combout => \U|DP|REGFILE|Reg1|out[1]~feeder_combout\);

-- Location: FF_X81_Y3_N16
\U|DP|REGFILE|Reg1|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg1|out[1]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(1));

-- Location: FF_X88_Y3_N53
\U|DP|REGFILE|Reg3|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~1_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(1));

-- Location: LABCELL_X88_Y3_N51
\U|DP|REGFILE|regmux|b[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[1]~4_combout\ = ( \U|DP|REGFILE|Reg3|out\(1) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( (\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\) # (\U|DP|REGFILE|Reg1|out\(1)) ) ) ) # ( !\U|DP|REGFILE|Reg3|out\(1) & ( 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( \U|DP|REGFILE|Reg1|out\(1) ) ) ) # ( \U|DP|REGFILE|Reg3|out\(1) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100110011001100110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg1|ALT_INV_out\(1),
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	datae => \U|DP|REGFILE|Reg3|ALT_INV_out\(1),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \U|DP|REGFILE|regmux|b[1]~4_combout\);

-- Location: FF_X85_Y6_N55
\U|DP|REGFILE|Reg5|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~1_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(1));

-- Location: FF_X85_Y6_N2
\U|DP|REGFILE|Reg4|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~1_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(1));

-- Location: FF_X87_Y7_N32
\U|DP|REGFILE|Reg0|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~1_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(1));

-- Location: LABCELL_X83_Y7_N39
\U|DP|REGFILE|Reg2|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg2|out[1]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~1_combout\,
	combout => \U|DP|REGFILE|Reg2|out[1]~feeder_combout\);

-- Location: FF_X83_Y7_N40
\U|DP|REGFILE|Reg2|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg2|out[1]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(1));

-- Location: MLABCELL_X87_Y7_N12
\U|DP|REGFILE|regmux|b[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[1]~3_combout\ = ( \U|insDec|Rmux|b\(2) & ( \U|insDec|Rmux|b\(1) & ( (\U|DP|REGFILE|Reg0|out\(1) & \U|insDec|Rmux|b\(0)) ) ) ) # ( !\U|insDec|Rmux|b\(2) & ( \U|insDec|Rmux|b\(1) & ( (\U|DP|REGFILE|Reg4|out\(1) & \U|insDec|Rmux|b\(0)) 
-- ) ) ) # ( \U|insDec|Rmux|b\(2) & ( !\U|insDec|Rmux|b\(1) & ( (\U|insDec|Rmux|b\(0) & \U|DP|REGFILE|Reg2|out\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000101000001010000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg4|ALT_INV_out\(1),
	datab => \U|DP|REGFILE|Reg0|ALT_INV_out\(1),
	datac => \U|insDec|Rmux|ALT_INV_b\(0),
	datad => \U|DP|REGFILE|Reg2|ALT_INV_out\(1),
	datae => \U|insDec|Rmux|ALT_INV_b\(2),
	dataf => \U|insDec|Rmux|ALT_INV_b\(1),
	combout => \U|DP|REGFILE|regmux|b[1]~3_combout\);

-- Location: FF_X84_Y5_N38
\U|DP|REGFILE|Reg7|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~1_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(1));

-- Location: FF_X87_Y7_N43
\U|DP|REGFILE|Reg6|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~1_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(1));

-- Location: MLABCELL_X87_Y3_N18
\U|DP|REGFILE|regmux|b[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[1]~5_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( ((\U|DP|REGFILE|Reg7|out\(1) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\)) # (\U|DP|REGFILE|Reg6|out\(1)) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(1) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg7|ALT_INV_out\(1),
	datac => \U|DP|REGFILE|Reg6|ALT_INV_out\(1),
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	combout => \U|DP|REGFILE|regmux|b[1]~5_combout\);

-- Location: MLABCELL_X87_Y3_N0
\U|DP|REGFILE|regmux|b[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(1) = ( \U|DP|REGFILE|regmux|b[1]~5_combout\ ) # ( !\U|DP|REGFILE|regmux|b[1]~5_combout\ & ( (((\U|DP|REGFILE|Reg5|out\(1) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|regmux|b[1]~3_combout\)) # 
-- (\U|DP|REGFILE|regmux|b[1]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101111111010111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|regmux|ALT_INV_b[1]~4_combout\,
	datab => \U|DP|REGFILE|Reg5|ALT_INV_out\(1),
	datac => \U|DP|REGFILE|regmux|ALT_INV_b[1]~3_combout\,
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[1]~5_combout\,
	combout => \U|DP|REGFILE|regmux|b\(1));

-- Location: FF_X87_Y3_N2
\U|DP|loadB|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|regmux|b\(1),
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(1));

-- Location: MLABCELL_X87_Y5_N48
\rtl~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~50_combout\ = ( \U|DP|loadB|out\(1) & ( (\U|DP|loadB|out\(2)) # (\U|instruction|out\(3)) ) ) # ( !\U|DP|loadB|out\(1) & ( (!\U|instruction|out\(3) & \U|DP|loadB|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instruction|ALT_INV_out\(3),
	datac => \U|DP|loadB|ALT_INV_out\(2),
	dataf => \U|DP|loadB|ALT_INV_out\(1),
	combout => \rtl~50_combout\);

-- Location: FF_X87_Y5_N41
\U|DP|loadA|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(2),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(2));

-- Location: MLABCELL_X87_Y5_N39
\U|DP|Muxa|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~2_combout\ = ( !\U|FSM|asel~q\ & ( \U|DP|loadA|out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U|DP|loadA|ALT_INV_out\(2),
	dataf => \U|FSM|ALT_INV_asel~q\,
	combout => \U|DP|Muxa|comb~2_combout\);

-- Location: MLABCELL_X87_Y5_N9
\U|DP|alu|addersubtractor|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~9_sumout\ = SUM(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~50_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(3))))) ) + ( \U|DP|Muxa|comb~2_combout\ ) + ( \U|DP|alu|addersubtractor|Add0~6\ 
-- ))
-- \U|DP|alu|addersubtractor|Add0~10\ = CARRY(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~50_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(3))))) ) + ( \U|DP|Muxa|comb~2_combout\ ) + ( \U|DP|alu|addersubtractor|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \U|DP|loadB|ALT_INV_out\(3),
	datad => \ALT_INV_rtl~50_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~2_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~6\,
	sumout => \U|DP|alu|addersubtractor|Add0~9_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~10\);

-- Location: LABCELL_X81_Y5_N39
\U|DP|loadC|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[2]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~9_sumout\,
	combout => \U|DP|loadC|out[2]~feeder_combout\);

-- Location: MLABCELL_X87_Y3_N33
\rtl~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~35_combout\ = ( \U|instruction|out\(4) & ( \U|DP|loadB|out[3]~DUPLICATE_q\ ) ) # ( !\U|instruction|out\(4) & ( (!\U|instruction|out\(3) & ((\U|DP|loadB|out\(2)))) # (\U|instruction|out\(3) & (\U|DP|loadB|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadB|ALT_INV_out\(1),
	datab => \U|DP|loadB|ALT_INV_out\(2),
	datac => \U|DP|loadB|ALT_INV_out[3]~DUPLICATE_q\,
	datad => \U|instruction|ALT_INV_out\(3),
	dataf => \U|instruction|ALT_INV_out\(4),
	combout => \rtl~35_combout\);

-- Location: MLABCELL_X82_Y3_N48
\U|DP|alu|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector13~0_combout\ = ( !\U|DP|alu|Equal0~0_combout\ & ( \rtl~35_combout\ & ( \U|DP|Muxa|comb~2_combout\ ) ) ) # ( \U|DP|alu|Equal0~0_combout\ & ( !\rtl~35_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|Muxa|ALT_INV_comb~2_combout\,
	datae => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_rtl~35_combout\,
	combout => \U|DP|alu|Selector13~0_combout\);

-- Location: FF_X81_Y5_N40
\U|DP|loadC|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[2]~feeder_combout\,
	asdata => \U|DP|alu|Selector13~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(2));

-- Location: LABCELL_X83_Y7_N48
\U|DP|Mux1lab6|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~2_combout\ = ( \U|instruction|out\(2) & ( (\U|FSM|vsel\(1)) # (\U|DP|loadC|out\(2)) ) ) # ( !\U|instruction|out\(2) & ( (\U|DP|loadC|out\(2) & !\U|FSM|vsel\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(2),
	datac => \U|FSM|ALT_INV_vsel\(1),
	dataf => \U|instruction|ALT_INV_out\(2),
	combout => \U|DP|Mux1lab6|comb~2_combout\);

-- Location: FF_X85_Y7_N53
\U|DP|REGFILE|Reg5|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~2_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(2));

-- Location: MLABCELL_X82_Y5_N9
\U|DP|REGFILE|Reg1|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg1|out[2]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~2_combout\,
	combout => \U|DP|REGFILE|Reg1|out[2]~feeder_combout\);

-- Location: FF_X82_Y5_N10
\U|DP|REGFILE|Reg1|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg1|out[2]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(2));

-- Location: FF_X88_Y5_N44
\U|DP|REGFILE|Reg3|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~2_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(2));

-- Location: LABCELL_X88_Y5_N42
\U|DP|REGFILE|regmux|b[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[2]~7_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( ((\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & \U|DP|REGFILE|Reg3|out\(2))) # (\U|DP|REGFILE|Reg1|out\(2)) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( (\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & \U|DP|REGFILE|Reg3|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	datac => \U|DP|REGFILE|Reg1|ALT_INV_out\(2),
	datad => \U|DP|REGFILE|Reg3|ALT_INV_out\(2),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \U|DP|REGFILE|regmux|b[2]~7_combout\);

-- Location: FF_X85_Y6_N4
\U|DP|REGFILE|Reg4|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~2_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(2));

-- Location: MLABCELL_X84_Y6_N30
\U|DP|REGFILE|Reg2|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg2|out[2]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~2_combout\,
	combout => \U|DP|REGFILE|Reg2|out[2]~feeder_combout\);

-- Location: FF_X84_Y6_N32
\U|DP|REGFILE|Reg2|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg2|out[2]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(2));

-- Location: MLABCELL_X84_Y6_N12
\U|DP|REGFILE|Reg0|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg0|out[2]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~2_combout\,
	combout => \U|DP|REGFILE|Reg0|out[2]~feeder_combout\);

-- Location: FF_X84_Y6_N13
\U|DP|REGFILE|Reg0|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg0|out[2]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(2));

-- Location: LABCELL_X85_Y6_N57
\U|DP|REGFILE|regmux|b[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[2]~6_combout\ = ( \U|DP|REGFILE|Reg0|out\(2) & ( \U|insDec|Rmux|b\(2) & ( (\U|insDec|Rmux|b\(0) & ((\U|DP|REGFILE|Reg2|out\(2)) # (\U|insDec|Rmux|b\(1)))) ) ) ) # ( !\U|DP|REGFILE|Reg0|out\(2) & ( \U|insDec|Rmux|b\(2) & ( 
-- (\U|insDec|Rmux|b\(0) & (!\U|insDec|Rmux|b\(1) & \U|DP|REGFILE|Reg2|out\(2))) ) ) ) # ( \U|DP|REGFILE|Reg0|out\(2) & ( !\U|insDec|Rmux|b\(2) & ( (\U|insDec|Rmux|b\(0) & (\U|insDec|Rmux|b\(1) & \U|DP|REGFILE|Reg4|out\(2))) ) ) ) # ( 
-- !\U|DP|REGFILE|Reg0|out\(2) & ( !\U|insDec|Rmux|b\(2) & ( (\U|insDec|Rmux|b\(0) & (\U|insDec|Rmux|b\(1) & \U|DP|REGFILE|Reg4|out\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000010001000001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|insDec|Rmux|ALT_INV_b\(0),
	datab => \U|insDec|Rmux|ALT_INV_b\(1),
	datac => \U|DP|REGFILE|Reg4|ALT_INV_out\(2),
	datad => \U|DP|REGFILE|Reg2|ALT_INV_out\(2),
	datae => \U|DP|REGFILE|Reg0|ALT_INV_out\(2),
	dataf => \U|insDec|Rmux|ALT_INV_b\(2),
	combout => \U|DP|REGFILE|regmux|b[2]~6_combout\);

-- Location: MLABCELL_X82_Y6_N24
\U|DP|REGFILE|Reg7|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg7|out[2]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~2_combout\,
	combout => \U|DP|REGFILE|Reg7|out[2]~feeder_combout\);

-- Location: FF_X82_Y6_N25
\U|DP|REGFILE|Reg7|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg7|out[2]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(2));

-- Location: FF_X85_Y7_N46
\U|DP|REGFILE|Reg6|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~2_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(2));

-- Location: LABCELL_X88_Y5_N12
\U|DP|REGFILE|regmux|b[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[2]~8_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( ((\U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & \U|DP|REGFILE|Reg7|out\(2))) # (\U|DP|REGFILE|Reg6|out\(2)) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & \U|DP|REGFILE|Reg7|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	datac => \U|DP|REGFILE|Reg7|ALT_INV_out\(2),
	datad => \U|DP|REGFILE|Reg6|ALT_INV_out\(2),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	combout => \U|DP|REGFILE|regmux|b[2]~8_combout\);

-- Location: LABCELL_X88_Y5_N36
\U|DP|REGFILE|regmux|b[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(2) = ( \U|DP|REGFILE|regmux|b[2]~6_combout\ & ( \U|DP|REGFILE|regmux|b[2]~8_combout\ ) ) # ( !\U|DP|REGFILE|regmux|b[2]~6_combout\ & ( \U|DP|REGFILE|regmux|b[2]~8_combout\ ) ) # ( \U|DP|REGFILE|regmux|b[2]~6_combout\ & ( 
-- !\U|DP|REGFILE|regmux|b[2]~8_combout\ ) ) # ( !\U|DP|REGFILE|regmux|b[2]~6_combout\ & ( !\U|DP|REGFILE|regmux|b[2]~8_combout\ & ( ((\U|DP|REGFILE|Reg5|out\(2) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|regmux|b[2]~7_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg5|ALT_INV_out\(2),
	datab => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datad => \U|DP|REGFILE|regmux|ALT_INV_b[2]~7_combout\,
	datae => \U|DP|REGFILE|regmux|ALT_INV_b[2]~6_combout\,
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[2]~8_combout\,
	combout => \U|DP|REGFILE|regmux|b\(2));

-- Location: FF_X87_Y5_N53
\U|DP|loadB|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(2),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(2));

-- Location: MLABCELL_X87_Y5_N51
\rtl~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~51_combout\ = ( \U|instruction|out\(3) & ( \U|DP|loadB|out\(2) ) ) # ( !\U|instruction|out\(3) & ( \U|DP|loadB|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadB|ALT_INV_out\(3),
	datad => \U|DP|loadB|ALT_INV_out\(2),
	dataf => \U|instruction|ALT_INV_out\(3),
	combout => \rtl~51_combout\);

-- Location: FF_X85_Y5_N40
\U|DP|loadA|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(3),
	sload => VCC,
	ena => \U|FSM|loada~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadA|out\(3));

-- Location: LABCELL_X85_Y5_N27
\U|DP|Muxa|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Muxa|comb~3_combout\ = ( !\U|FSM|asel~q\ & ( \U|DP|loadA|out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U|DP|loadA|ALT_INV_out\(3),
	dataf => \U|FSM|ALT_INV_asel~q\,
	combout => \U|DP|Muxa|comb~3_combout\);

-- Location: MLABCELL_X87_Y5_N12
\U|DP|alu|addersubtractor|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~13_sumout\ = SUM(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~51_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(4))))) ) + ( \U|DP|Muxa|comb~3_combout\ ) + ( 
-- \U|DP|alu|addersubtractor|Add0~10\ ))
-- \U|DP|alu|addersubtractor|Add0~14\ = CARRY(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~51_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(4))))) ) + ( \U|DP|Muxa|comb~3_combout\ ) + ( \U|DP|alu|addersubtractor|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \U|DP|loadB|ALT_INV_out\(4),
	datad => \ALT_INV_rtl~51_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~3_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~10\,
	sumout => \U|DP|alu|addersubtractor|Add0~13_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~14\);

-- Location: MLABCELL_X87_Y5_N15
\U|DP|alu|addersubtractor|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~17_sumout\ = SUM(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~52_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(5))))) ) + ( \U|DP|Muxa|comb~4_combout\ ) + ( 
-- \U|DP|alu|addersubtractor|Add0~14\ ))
-- \U|DP|alu|addersubtractor|Add0~18\ = CARRY(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~52_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(5))))) ) + ( \U|DP|Muxa|comb~4_combout\ ) + ( \U|DP|alu|addersubtractor|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \U|DP|loadB|ALT_INV_out\(5),
	datad => \ALT_INV_rtl~52_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~4_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~14\,
	sumout => \U|DP|alu|addersubtractor|Add0~17_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~18\);

-- Location: MLABCELL_X87_Y5_N18
\U|DP|alu|addersubtractor|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~21_sumout\ = SUM(( \U|DP|Muxa|comb~5_combout\ ) + ( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~53_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(6))))) ) + ( 
-- \U|DP|alu|addersubtractor|Add0~18\ ))
-- \U|DP|alu|addersubtractor|Add0~22\ = CARRY(( \U|DP|Muxa|comb~5_combout\ ) + ( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~53_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(6))))) ) + ( \U|DP|alu|addersubtractor|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \U|DP|loadB|ALT_INV_out\(6),
	datad => \U|DP|Muxa|ALT_INV_comb~5_combout\,
	dataf => \ALT_INV_rtl~53_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~18\,
	sumout => \U|DP|alu|addersubtractor|Add0~21_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~22\);

-- Location: MLABCELL_X87_Y5_N21
\U|DP|alu|addersubtractor|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~25_sumout\ = SUM(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~54_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(7))))) ) + ( \U|DP|Muxa|comb~6_combout\ ) + ( 
-- \U|DP|alu|addersubtractor|Add0~22\ ))
-- \U|DP|alu|addersubtractor|Add0~26\ = CARRY(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~54_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(7))))) ) + ( \U|DP|Muxa|comb~6_combout\ ) + ( \U|DP|alu|addersubtractor|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \U|DP|loadB|ALT_INV_out\(7),
	datad => \ALT_INV_rtl~54_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~6_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~22\,
	sumout => \U|DP|alu|addersubtractor|Add0~25_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~26\);

-- Location: MLABCELL_X87_Y5_N24
\U|DP|alu|addersubtractor|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~29_sumout\ = SUM(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~55_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(8))))) ) + ( \U|DP|Muxa|comb~7_combout\ ) + ( 
-- \U|DP|alu|addersubtractor|Add0~26\ ))
-- \U|DP|alu|addersubtractor|Add0~30\ = CARRY(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~55_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(8))))) ) + ( \U|DP|Muxa|comb~7_combout\ ) + ( \U|DP|alu|addersubtractor|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \U|DP|loadB|ALT_INV_out\(8),
	datad => \ALT_INV_rtl~55_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~7_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~26\,
	sumout => \U|DP|alu|addersubtractor|Add0~29_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~30\);

-- Location: MLABCELL_X87_Y5_N27
\U|DP|alu|addersubtractor|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~33_sumout\ = SUM(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~56_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(9))))) ) + ( \U|DP|Muxa|comb~8_combout\ ) + ( 
-- \U|DP|alu|addersubtractor|Add0~30\ ))
-- \U|DP|alu|addersubtractor|Add0~34\ = CARRY(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~56_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(9))))) ) + ( \U|DP|Muxa|comb~8_combout\ ) + ( \U|DP|alu|addersubtractor|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \U|DP|loadB|ALT_INV_out\(9),
	datad => \ALT_INV_rtl~56_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~8_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~30\,
	sumout => \U|DP|alu|addersubtractor|Add0~33_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~34\);

-- Location: MLABCELL_X87_Y4_N0
\U|DP|alu|addersubtractor|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~37_sumout\ = SUM(( \U|DP|Muxa|comb~9_combout\ ) + ( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~57_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(10))))) ) + ( 
-- \U|DP|alu|addersubtractor|Add0~34\ ))
-- \U|DP|alu|addersubtractor|Add0~38\ = CARRY(( \U|DP|Muxa|comb~9_combout\ ) + ( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~57_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(10))))) ) + ( \U|DP|alu|addersubtractor|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \U|DP|loadB|ALT_INV_out\(10),
	datad => \U|DP|Muxa|ALT_INV_comb~9_combout\,
	dataf => \ALT_INV_rtl~57_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~34\,
	sumout => \U|DP|alu|addersubtractor|Add0~37_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~38\);

-- Location: MLABCELL_X87_Y4_N3
\U|DP|alu|addersubtractor|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~41_sumout\ = SUM(( \U|DP|Muxa|comb~10_combout\ ) + ( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~58_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(11))))) ) + ( 
-- \U|DP|alu|addersubtractor|Add0~38\ ))
-- \U|DP|alu|addersubtractor|Add0~42\ = CARRY(( \U|DP|Muxa|comb~10_combout\ ) + ( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~58_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(11))))) ) + ( \U|DP|alu|addersubtractor|Add0~38\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \U|DP|loadB|ALT_INV_out\(11),
	datad => \U|DP|Muxa|ALT_INV_comb~10_combout\,
	dataf => \ALT_INV_rtl~58_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~38\,
	sumout => \U|DP|alu|addersubtractor|Add0~41_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~42\);

-- Location: MLABCELL_X87_Y4_N6
\U|DP|alu|addersubtractor|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~45_sumout\ = SUM(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~44_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(12))))) ) + ( \U|DP|Muxa|comb~11_combout\ ) + ( 
-- \U|DP|alu|addersubtractor|Add0~42\ ))
-- \U|DP|alu|addersubtractor|Add0~46\ = CARRY(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~44_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(12))))) ) + ( \U|DP|Muxa|comb~11_combout\ ) + ( \U|DP|alu|addersubtractor|Add0~42\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(4),
	datab => \U|instruction|ALT_INV_out\(11),
	datac => \U|DP|loadB|ALT_INV_out\(12),
	datad => \ALT_INV_rtl~44_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~11_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~42\,
	sumout => \U|DP|alu|addersubtractor|Add0~45_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~46\);

-- Location: MLABCELL_X87_Y4_N9
\U|DP|alu|addersubtractor|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~49_sumout\ = SUM(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~45_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(13))))) ) + ( \U|DP|Muxa|comb~12_combout\ ) + ( 
-- \U|DP|alu|addersubtractor|Add0~46\ ))
-- \U|DP|alu|addersubtractor|Add0~50\ = CARRY(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~45_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(13))))) ) + ( \U|DP|Muxa|comb~12_combout\ ) + ( \U|DP|alu|addersubtractor|Add0~46\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(4),
	datab => \U|instruction|ALT_INV_out\(11),
	datac => \U|DP|loadB|ALT_INV_out\(13),
	datad => \ALT_INV_rtl~45_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~12_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~46\,
	sumout => \U|DP|alu|addersubtractor|Add0~49_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~50\);

-- Location: MLABCELL_X87_Y4_N12
\U|DP|alu|addersubtractor|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~53_sumout\ = SUM(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~46_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(14))))) ) + ( \U|DP|Muxa|comb~13_combout\ ) + ( 
-- \U|DP|alu|addersubtractor|Add0~50\ ))
-- \U|DP|alu|addersubtractor|Add0~54\ = CARRY(( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~46_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(14))))) ) + ( \U|DP|Muxa|comb~13_combout\ ) + ( \U|DP|alu|addersubtractor|Add0~50\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(4),
	datab => \U|instruction|ALT_INV_out\(11),
	datac => \U|DP|loadB|ALT_INV_out\(14),
	datad => \ALT_INV_rtl~46_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~13_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~50\,
	sumout => \U|DP|alu|addersubtractor|Add0~53_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~54\);

-- Location: MLABCELL_X87_Y4_N15
\U|DP|alu|addersubtractor|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~57_sumout\ = SUM(( \U|DP|Muxa|comb~14_combout\ ) + ( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~47_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(15))))) ) + ( 
-- \U|DP|alu|addersubtractor|Add0~54\ ))
-- \U|DP|alu|addersubtractor|Add0~58\ = CARRY(( \U|DP|Muxa|comb~14_combout\ ) + ( !\U|instruction|out\(11) $ (((!\U|instruction|out\(4) & ((!\rtl~47_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(15))))) ) + ( \U|DP|alu|addersubtractor|Add0~54\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010010110001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(4),
	datab => \U|instruction|ALT_INV_out\(11),
	datac => \U|DP|loadB|ALT_INV_out\(15),
	datad => \U|DP|Muxa|ALT_INV_comb~14_combout\,
	dataf => \ALT_INV_rtl~47_combout\,
	cin => \U|DP|alu|addersubtractor|Add0~54\,
	sumout => \U|DP|alu|addersubtractor|Add0~57_sumout\,
	cout => \U|DP|alu|addersubtractor|Add0~58\);

-- Location: MLABCELL_X87_Y4_N18
\U|DP|alu|addersubtractor|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add0~61_sumout\ = SUM(( GND ) + ( GND ) + ( \U|DP|alu|addersubtractor|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \U|DP|alu|addersubtractor|Add0~58\,
	sumout => \U|DP|alu|addersubtractor|Add0~61_sumout\);

-- Location: MLABCELL_X87_Y8_N51
\U|DP|alu|addersubtractor|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|Add3~0_combout\ = ( \U|DP|alu|addersubtractor|Add0~61_sumout\ & ( !\U|DP|alu|addersubtractor|Add2~0_combout\ ) ) # ( !\U|DP|alu|addersubtractor|Add0~61_sumout\ & ( \U|DP|alu|addersubtractor|Add2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|alu|addersubtractor|ALT_INV_Add2~0_combout\,
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~61_sumout\,
	combout => \U|DP|alu|addersubtractor|Add3~0_combout\);

-- Location: MLABCELL_X87_Y8_N30
\U|DP|loadC|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[15]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add3~0_combout\,
	combout => \U|DP|loadC|out[15]~feeder_combout\);

-- Location: LABCELL_X85_Y5_N24
\U|DP|alu|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector0~0_combout\ = ( \rtl~48_combout\ & ( (!\U|FSM|asel~q\ & (\U|DP|loadA|out\(15) & !\U|DP|alu|Equal0~0_combout\)) ) ) # ( !\rtl~48_combout\ & ( \U|DP|alu|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_asel~q\,
	datab => \U|DP|loadA|ALT_INV_out\(15),
	datad => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_rtl~48_combout\,
	combout => \U|DP|alu|Selector0~0_combout\);

-- Location: FF_X87_Y8_N32
\U|DP|loadC|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[15]~feeder_combout\,
	asdata => \U|DP|alu|Selector0~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(15));

-- Location: MLABCELL_X87_Y8_N54
\U|DP|Mux1lab6|comb~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~15_combout\ = ( \U|instruction|out\(7) & ( \U|FSM|vsel\(1) ) ) # ( \U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(15) ) ) ) # ( !\U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|loadC|ALT_INV_out\(15),
	datae => \U|instruction|ALT_INV_out\(7),
	dataf => \U|FSM|ALT_INV_vsel\(1),
	combout => \U|DP|Mux1lab6|comb~15_combout\);

-- Location: FF_X84_Y6_N23
\U|DP|REGFILE|Reg2|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~15_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(15));

-- Location: FF_X84_Y6_N52
\U|DP|REGFILE|Reg4|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~15_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(15));

-- Location: FF_X84_Y6_N44
\U|DP|REGFILE|Reg0|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~15_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(15));

-- Location: MLABCELL_X84_Y6_N42
\U|DP|REGFILE|regmux|b[15]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[15]~45_combout\ = ( \U|DP|REGFILE|Reg0|out\(15) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(2) & (((\U|DP|REGFILE|Reg4|out\(15) & \U|insDec|Rmux|b\(1))))) # (\U|insDec|Rmux|b\(2) & (((\U|insDec|Rmux|b\(1))) # 
-- (\U|DP|REGFILE|Reg2|out\(15)))) ) ) ) # ( !\U|DP|REGFILE|Reg0|out\(15) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(2) & (((\U|DP|REGFILE|Reg4|out\(15) & \U|insDec|Rmux|b\(1))))) # (\U|insDec|Rmux|b\(2) & (\U|DP|REGFILE|Reg2|out\(15) & 
-- ((!\U|insDec|Rmux|b\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101001100000000010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg2|ALT_INV_out\(15),
	datab => \U|DP|REGFILE|Reg4|ALT_INV_out\(15),
	datac => \U|insDec|Rmux|ALT_INV_b\(2),
	datad => \U|insDec|Rmux|ALT_INV_b\(1),
	datae => \U|DP|REGFILE|Reg0|ALT_INV_out\(15),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|regmux|b[15]~45_combout\);

-- Location: FF_X82_Y7_N34
\U|DP|REGFILE|Reg7|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~15_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(15));

-- Location: FF_X85_Y7_N5
\U|DP|REGFILE|Reg6|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~15_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(15));

-- Location: LABCELL_X85_Y7_N3
\U|DP|REGFILE|regmux|b[15]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[15]~47_combout\ = ( \U|DP|REGFILE|Reg6|out\(15) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ ) ) # ( !\U|DP|REGFILE|Reg6|out\(15) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(15) & 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) ) # ( \U|DP|REGFILE|Reg6|out\(15) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(15) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) ) # ( 
-- !\U|DP|REGFILE|Reg6|out\(15) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(15) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg7|ALT_INV_out\(15),
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	datae => \U|DP|REGFILE|Reg6|ALT_INV_out\(15),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	combout => \U|DP|REGFILE|regmux|b[15]~47_combout\);

-- Location: LABCELL_X85_Y8_N18
\U|DP|REGFILE|Reg1|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg1|out[15]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~15_combout\,
	combout => \U|DP|REGFILE|Reg1|out[15]~feeder_combout\);

-- Location: FF_X85_Y8_N20
\U|DP|REGFILE|Reg1|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg1|out[15]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(15));

-- Location: FF_X85_Y8_N50
\U|DP|REGFILE|Reg3|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~15_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(15));

-- Location: LABCELL_X85_Y8_N48
\U|DP|REGFILE|regmux|b[15]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[15]~46_combout\ = ( \U|DP|REGFILE|Reg3|out\(15) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( (\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\) # (\U|DP|REGFILE|Reg1|out\(15)) ) ) ) # ( !\U|DP|REGFILE|Reg3|out\(15) & ( 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( \U|DP|REGFILE|Reg1|out\(15) ) ) ) # ( \U|DP|REGFILE|Reg3|out\(15) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg1|ALT_INV_out\(15),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	datae => \U|DP|REGFILE|Reg3|ALT_INV_out\(15),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \U|DP|REGFILE|regmux|b[15]~46_combout\);

-- Location: FF_X84_Y5_N34
\U|DP|REGFILE|Reg5|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~15_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(15));

-- Location: LABCELL_X85_Y5_N12
\U|DP|REGFILE|regmux|b[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(15) = ( \U|DP|REGFILE|regmux|b[15]~46_combout\ & ( \U|DP|REGFILE|Reg5|out\(15) ) ) # ( !\U|DP|REGFILE|regmux|b[15]~46_combout\ & ( \U|DP|REGFILE|Reg5|out\(15) & ( ((\U|DP|REGFILE|regmux|b[15]~47_combout\) # 
-- (\U|DP|REGFILE|regmux|b[15]~45_combout\)) # (\U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\) ) ) ) # ( \U|DP|REGFILE|regmux|b[15]~46_combout\ & ( !\U|DP|REGFILE|Reg5|out\(15) ) ) # ( !\U|DP|REGFILE|regmux|b[15]~46_combout\ & ( 
-- !\U|DP|REGFILE|Reg5|out\(15) & ( (\U|DP|REGFILE|regmux|b[15]~47_combout\) # (\U|DP|REGFILE|regmux|b[15]~45_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111111111111111111100111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datac => \U|DP|REGFILE|regmux|ALT_INV_b[15]~45_combout\,
	datad => \U|DP|REGFILE|regmux|ALT_INV_b[15]~47_combout\,
	datae => \U|DP|REGFILE|regmux|ALT_INV_b[15]~46_combout\,
	dataf => \U|DP|REGFILE|Reg5|ALT_INV_out\(15),
	combout => \U|DP|REGFILE|regmux|b\(15));

-- Location: FF_X85_Y5_N5
\U|DP|loadB|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(15),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(15));

-- Location: MLABCELL_X87_Y8_N3
\U|DP|loadC|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[14]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~57_sumout\,
	combout => \U|DP|loadC|out[14]~feeder_combout\);

-- Location: LABCELL_X85_Y5_N51
\U|DP|alu|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector1~0_combout\ = ( \U|DP|Muxa|comb~14_combout\ & ( !\U|DP|alu|Equal0~0_combout\ $ (((!\U|instruction|out\(4) & ((!\rtl~47_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(15))))) ) ) # ( !\U|DP|Muxa|comb~14_combout\ & ( 
-- (\U|DP|alu|Equal0~0_combout\ & ((!\U|instruction|out\(4) & ((!\rtl~47_combout\))) # (\U|instruction|out\(4) & (!\U|DP|loadB|out\(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000011101111000100001110111100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadB|ALT_INV_out\(15),
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \ALT_INV_rtl~47_combout\,
	datad => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~14_combout\,
	combout => \U|DP|alu|Selector1~0_combout\);

-- Location: FF_X87_Y8_N5
\U|DP|loadC|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[14]~feeder_combout\,
	asdata => \U|DP|alu|Selector1~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(14));

-- Location: MLABCELL_X87_Y8_N9
\U|DP|Mux1lab6|comb~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~14_combout\ = ( \U|instruction|out\(7) & ( \U|FSM|vsel\(1) ) ) # ( \U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(14) ) ) ) # ( !\U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(14),
	datae => \U|instruction|ALT_INV_out\(7),
	dataf => \U|FSM|ALT_INV_vsel\(1),
	combout => \U|DP|Mux1lab6|comb~14_combout\);

-- Location: LABCELL_X85_Y7_N48
\U|DP|REGFILE|Reg5|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg5|out[14]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~14_combout\,
	combout => \U|DP|REGFILE|Reg5|out[14]~feeder_combout\);

-- Location: FF_X85_Y7_N49
\U|DP|REGFILE|Reg5|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg5|out[14]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(14));

-- Location: FF_X84_Y6_N50
\U|DP|REGFILE|Reg4|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~14_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(14));

-- Location: FF_X84_Y6_N19
\U|DP|REGFILE|Reg2|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~14_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(14));

-- Location: FF_X84_Y6_N8
\U|DP|REGFILE|Reg0|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~14_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(14));

-- Location: MLABCELL_X84_Y6_N6
\U|DP|REGFILE|regmux|b[14]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[14]~42_combout\ = ( \U|DP|REGFILE|Reg0|out\(14) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (((\U|insDec|Rmux|b\(2) & \U|DP|REGFILE|Reg2|out\(14))))) # (\U|insDec|Rmux|b\(1) & (((\U|insDec|Rmux|b\(2))) # 
-- (\U|DP|REGFILE|Reg4|out\(14)))) ) ) ) # ( !\U|DP|REGFILE|Reg0|out\(14) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (((\U|insDec|Rmux|b\(2) & \U|DP|REGFILE|Reg2|out\(14))))) # (\U|insDec|Rmux|b\(1) & (\U|DP|REGFILE|Reg4|out\(14) & 
-- (!\U|insDec|Rmux|b\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000111000001001100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg4|ALT_INV_out\(14),
	datab => \U|insDec|Rmux|ALT_INV_b\(1),
	datac => \U|insDec|Rmux|ALT_INV_b\(2),
	datad => \U|DP|REGFILE|Reg2|ALT_INV_out\(14),
	datae => \U|DP|REGFILE|Reg0|ALT_INV_out\(14),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|regmux|b[14]~42_combout\);

-- Location: FF_X88_Y5_N50
\U|DP|REGFILE|Reg3|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~14_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(14));

-- Location: LABCELL_X85_Y8_N24
\U|DP|REGFILE|Reg1|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg1|out[14]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~14_combout\,
	combout => \U|DP|REGFILE|Reg1|out[14]~feeder_combout\);

-- Location: FF_X85_Y8_N25
\U|DP|REGFILE|Reg1|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg1|out[14]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(14));

-- Location: LABCELL_X88_Y5_N30
\U|DP|REGFILE|regmux|b[14]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[14]~43_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( ((\U|DP|REGFILE|Reg1|out\(14) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\)) # (\U|DP|REGFILE|Reg3|out\(14)) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( (\U|DP|REGFILE|Reg1|out\(14) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg3|ALT_INV_out\(14),
	datab => \U|DP|REGFILE|Reg1|ALT_INV_out\(14),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	combout => \U|DP|REGFILE|regmux|b[14]~43_combout\);

-- Location: FF_X79_Y7_N43
\U|DP|REGFILE|Reg7|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~14_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(14));

-- Location: FF_X85_Y7_N44
\U|DP|REGFILE|Reg6|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~14_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(14));

-- Location: LABCELL_X85_Y7_N42
\U|DP|REGFILE|regmux|b[14]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[14]~44_combout\ = ( \U|DP|REGFILE|Reg6|out\(14) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( (\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\) # (\U|DP|REGFILE|Reg7|out\(14)) ) ) ) # ( !\U|DP|REGFILE|Reg6|out\(14) & ( 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( \U|DP|REGFILE|Reg7|out\(14) ) ) ) # ( \U|DP|REGFILE|Reg6|out\(14) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg7|ALT_INV_out\(14),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	datae => \U|DP|REGFILE|Reg6|ALT_INV_out\(14),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	combout => \U|DP|REGFILE|regmux|b[14]~44_combout\);

-- Location: LABCELL_X85_Y5_N54
\U|DP|REGFILE|regmux|b[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(14) = ( \U|DP|REGFILE|regmux|b[14]~43_combout\ & ( \U|DP|REGFILE|regmux|b[14]~44_combout\ ) ) # ( !\U|DP|REGFILE|regmux|b[14]~43_combout\ & ( \U|DP|REGFILE|regmux|b[14]~44_combout\ ) ) # ( \U|DP|REGFILE|regmux|b[14]~43_combout\ & ( 
-- !\U|DP|REGFILE|regmux|b[14]~44_combout\ ) ) # ( !\U|DP|REGFILE|regmux|b[14]~43_combout\ & ( !\U|DP|REGFILE|regmux|b[14]~44_combout\ & ( ((\U|DP|REGFILE|Reg5|out\(14) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # 
-- (\U|DP|REGFILE|regmux|b[14]~42_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg5|ALT_INV_out\(14),
	datac => \U|DP|REGFILE|regmux|ALT_INV_b[14]~42_combout\,
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datae => \U|DP|REGFILE|regmux|ALT_INV_b[14]~43_combout\,
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[14]~44_combout\,
	combout => \U|DP|REGFILE|regmux|b\(14));

-- Location: FF_X85_Y5_N50
\U|DP|loadB|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(14),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(14));

-- Location: LABCELL_X83_Y4_N0
\U|DP|loadC|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[13]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~53_sumout\,
	combout => \U|DP|loadC|out[13]~feeder_combout\);

-- Location: LABCELL_X85_Y5_N33
\U|DP|alu|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector2~0_combout\ = ( \rtl~46_combout\ & ( (!\U|DP|alu|Equal0~0_combout\ & (\U|DP|Muxa|comb~13_combout\ & ((!\U|instruction|out\(4)) # (\U|DP|loadB|out\(14))))) # (\U|DP|alu|Equal0~0_combout\ & (!\U|DP|loadB|out\(14) & 
-- (\U|instruction|out\(4)))) ) ) # ( !\rtl~46_combout\ & ( (!\U|DP|loadB|out\(14) & (((\U|DP|alu|Equal0~0_combout\)))) # (\U|DP|loadB|out\(14) & ((!\U|instruction|out\(4) & ((\U|DP|alu|Equal0~0_combout\))) # (\U|instruction|out\(4) & 
-- (\U|DP|Muxa|comb~13_combout\ & !\U|DP|alu|Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101110000000011110111000001101001000100000110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadB|ALT_INV_out\(14),
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \U|DP|Muxa|ALT_INV_comb~13_combout\,
	datad => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_rtl~46_combout\,
	combout => \U|DP|alu|Selector2~0_combout\);

-- Location: FF_X83_Y4_N2
\U|DP|loadC|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[13]~feeder_combout\,
	asdata => \U|DP|alu|Selector2~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(13));

-- Location: MLABCELL_X82_Y6_N3
\U|DP|Mux1lab6|comb~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~13_combout\ = ( \U|instruction|out\(7) & ( \U|FSM|vsel\(1) ) ) # ( \U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(13) ) ) ) # ( !\U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(13),
	datae => \U|instruction|ALT_INV_out\(7),
	dataf => \U|FSM|ALT_INV_vsel\(1),
	combout => \U|DP|Mux1lab6|comb~13_combout\);

-- Location: LABCELL_X85_Y7_N27
\U|DP|REGFILE|Reg5|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg5|out[13]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~13_combout\,
	combout => \U|DP|REGFILE|Reg5|out[13]~feeder_combout\);

-- Location: FF_X85_Y7_N29
\U|DP|REGFILE|Reg5|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg5|out[13]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(13));

-- Location: MLABCELL_X84_Y6_N3
\U|DP|REGFILE|Reg4|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg4|out[13]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~13_combout\,
	combout => \U|DP|REGFILE|Reg4|out[13]~feeder_combout\);

-- Location: FF_X84_Y6_N4
\U|DP|REGFILE|Reg4|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg4|out[13]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(13));

-- Location: MLABCELL_X84_Y6_N33
\U|DP|REGFILE|Reg2|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg2|out[13]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~13_combout\,
	combout => \U|DP|REGFILE|Reg2|out[13]~feeder_combout\);

-- Location: FF_X84_Y6_N34
\U|DP|REGFILE|Reg2|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg2|out[13]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(13));

-- Location: FF_X85_Y6_N44
\U|DP|REGFILE|Reg0|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~13_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(13));

-- Location: LABCELL_X85_Y6_N42
\U|DP|REGFILE|regmux|b[13]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[13]~39_combout\ = ( \U|DP|REGFILE|Reg0|out\(13) & ( \U|insDec|Rmux|b\(1) & ( (\U|insDec|Rmux|b\(0) & ((\U|DP|REGFILE|Reg4|out\(13)) # (\U|insDec|Rmux|b\(2)))) ) ) ) # ( !\U|DP|REGFILE|Reg0|out\(13) & ( \U|insDec|Rmux|b\(1) & ( 
-- (!\U|insDec|Rmux|b\(2) & (\U|DP|REGFILE|Reg4|out\(13) & \U|insDec|Rmux|b\(0))) ) ) ) # ( \U|DP|REGFILE|Reg0|out\(13) & ( !\U|insDec|Rmux|b\(1) & ( (\U|insDec|Rmux|b\(2) & (\U|insDec|Rmux|b\(0) & \U|DP|REGFILE|Reg2|out\(13))) ) ) ) # ( 
-- !\U|DP|REGFILE|Reg0|out\(13) & ( !\U|insDec|Rmux|b\(1) & ( (\U|insDec|Rmux|b\(2) & (\U|insDec|Rmux|b\(0) & \U|DP|REGFILE|Reg2|out\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000010000000100000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|insDec|Rmux|ALT_INV_b\(2),
	datab => \U|DP|REGFILE|Reg4|ALT_INV_out\(13),
	datac => \U|insDec|Rmux|ALT_INV_b\(0),
	datad => \U|DP|REGFILE|Reg2|ALT_INV_out\(13),
	datae => \U|DP|REGFILE|Reg0|ALT_INV_out\(13),
	dataf => \U|insDec|Rmux|ALT_INV_b\(1),
	combout => \U|DP|REGFILE|regmux|b[13]~39_combout\);

-- Location: MLABCELL_X82_Y7_N39
\U|DP|REGFILE|Reg7|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg7|out[13]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~13_combout\,
	combout => \U|DP|REGFILE|Reg7|out[13]~feeder_combout\);

-- Location: FF_X82_Y7_N40
\U|DP|REGFILE|Reg7|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg7|out[13]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(13));

-- Location: FF_X85_Y7_N11
\U|DP|REGFILE|Reg6|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~13_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(13));

-- Location: LABCELL_X85_Y7_N9
\U|DP|REGFILE|regmux|b[13]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[13]~41_combout\ = ( \U|DP|REGFILE|Reg6|out\(13) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ ) ) # ( !\U|DP|REGFILE|Reg6|out\(13) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(13) & 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) ) # ( \U|DP|REGFILE|Reg6|out\(13) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(13) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) ) # ( 
-- !\U|DP|REGFILE|Reg6|out\(13) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(13) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg7|ALT_INV_out\(13),
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	datae => \U|DP|REGFILE|Reg6|ALT_INV_out\(13),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	combout => \U|DP|REGFILE|regmux|b[13]~41_combout\);

-- Location: FF_X85_Y8_N17
\U|DP|REGFILE|Reg1|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~13_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(13));

-- Location: FF_X85_Y8_N59
\U|DP|REGFILE|Reg3|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~13_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(13));

-- Location: LABCELL_X85_Y8_N57
\U|DP|REGFILE|regmux|b[13]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[13]~40_combout\ = ( \U|DP|REGFILE|Reg3|out\(13) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( (\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\) # (\U|DP|REGFILE|Reg1|out\(13)) ) ) ) # ( !\U|DP|REGFILE|Reg3|out\(13) & ( 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( \U|DP|REGFILE|Reg1|out\(13) ) ) ) # ( \U|DP|REGFILE|Reg3|out\(13) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|REGFILE|Reg1|ALT_INV_out\(13),
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	datae => \U|DP|REGFILE|Reg3|ALT_INV_out\(13),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \U|DP|REGFILE|regmux|b[13]~40_combout\);

-- Location: LABCELL_X85_Y5_N3
\U|DP|REGFILE|regmux|b[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(13) = ( \U|DP|REGFILE|regmux|b[13]~40_combout\ ) # ( !\U|DP|REGFILE|regmux|b[13]~40_combout\ & ( (((\U|DP|REGFILE|Reg5|out\(13) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|regmux|b[13]~41_combout\)) # 
-- (\U|DP|REGFILE|regmux|b[13]~39_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111001101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg5|ALT_INV_out\(13),
	datab => \U|DP|REGFILE|regmux|ALT_INV_b[13]~39_combout\,
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datad => \U|DP|REGFILE|regmux|ALT_INV_b[13]~41_combout\,
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[13]~40_combout\,
	combout => \U|DP|REGFILE|regmux|b\(13));

-- Location: FF_X85_Y5_N32
\U|DP|loadB|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(13),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(13));

-- Location: MLABCELL_X84_Y4_N18
\U|DP|loadC|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[12]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~49_sumout\,
	combout => \U|DP|loadC|out[12]~feeder_combout\);

-- Location: LABCELL_X85_Y5_N21
\U|DP|alu|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector3~0_combout\ = ( \U|DP|Muxa|comb~12_combout\ & ( \rtl~45_combout\ & ( !\U|DP|alu|Equal0~0_combout\ $ (((\U|instruction|out\(4) & !\U|DP|loadB|out\(13)))) ) ) ) # ( !\U|DP|Muxa|comb~12_combout\ & ( \rtl~45_combout\ & ( 
-- (\U|DP|alu|Equal0~0_combout\ & (\U|instruction|out\(4) & !\U|DP|loadB|out\(13))) ) ) ) # ( \U|DP|Muxa|comb~12_combout\ & ( !\rtl~45_combout\ & ( !\U|DP|alu|Equal0~0_combout\ $ (((!\U|instruction|out\(4)) # (!\U|DP|loadB|out\(13)))) ) ) ) # ( 
-- !\U|DP|Muxa|comb~12_combout\ & ( !\rtl~45_combout\ & ( (\U|DP|alu|Equal0~0_combout\ & ((!\U|instruction|out\(4)) # (!\U|DP|loadB|out\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101100101011000010000000100001001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	datab => \U|instruction|ALT_INV_out\(4),
	datac => \U|DP|loadB|ALT_INV_out\(13),
	datae => \U|DP|Muxa|ALT_INV_comb~12_combout\,
	dataf => \ALT_INV_rtl~45_combout\,
	combout => \U|DP|alu|Selector3~0_combout\);

-- Location: FF_X84_Y4_N19
\U|DP|loadC|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[12]~feeder_combout\,
	asdata => \U|DP|alu|Selector3~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(12));

-- Location: MLABCELL_X87_Y8_N48
\U|DP|Mux1lab6|comb~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~12_combout\ = ( \U|FSM|vsel\(1) & ( \U|instruction|out\(7) ) ) # ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|loadC|ALT_INV_out\(12),
	datac => \U|instruction|ALT_INV_out\(7),
	dataf => \U|FSM|ALT_INV_vsel\(1),
	combout => \U|DP|Mux1lab6|comb~12_combout\);

-- Location: FF_X85_Y7_N13
\U|DP|REGFILE|Reg5|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~12_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(12));

-- Location: MLABCELL_X84_Y6_N27
\U|DP|REGFILE|Reg4|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg4|out[12]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~12_combout\,
	combout => \U|DP|REGFILE|Reg4|out[12]~feeder_combout\);

-- Location: FF_X84_Y6_N29
\U|DP|REGFILE|Reg4|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg4|out[12]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(12));

-- Location: FF_X84_Y6_N37
\U|DP|REGFILE|Reg0|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~12_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(12));

-- Location: MLABCELL_X84_Y6_N57
\U|DP|REGFILE|Reg2|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg2|out[12]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~12_combout\,
	combout => \U|DP|REGFILE|Reg2|out[12]~feeder_combout\);

-- Location: FF_X84_Y6_N58
\U|DP|REGFILE|Reg2|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg2|out[12]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(12));

-- Location: MLABCELL_X87_Y6_N24
\U|DP|REGFILE|regmux|b[12]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[12]~36_combout\ = ( \U|DP|REGFILE|Reg2|out\(12) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (((\U|insDec|Rmux|b\(2))))) # (\U|insDec|Rmux|b\(1) & ((!\U|insDec|Rmux|b\(2) & (\U|DP|REGFILE|Reg4|out\(12))) # 
-- (\U|insDec|Rmux|b\(2) & ((\U|DP|REGFILE|Reg0|out\(12)))))) ) ) ) # ( !\U|DP|REGFILE|Reg2|out\(12) & ( \U|insDec|Rmux|b\(0) & ( (\U|insDec|Rmux|b\(1) & ((!\U|insDec|Rmux|b\(2) & (\U|DP|REGFILE|Reg4|out\(12))) # (\U|insDec|Rmux|b\(2) & 
-- ((\U|DP|REGFILE|Reg0|out\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000110001000111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg4|ALT_INV_out\(12),
	datab => \U|insDec|Rmux|ALT_INV_b\(1),
	datac => \U|DP|REGFILE|Reg0|ALT_INV_out\(12),
	datad => \U|insDec|Rmux|ALT_INV_b\(2),
	datae => \U|DP|REGFILE|Reg2|ALT_INV_out\(12),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|regmux|b[12]~36_combout\);

-- Location: FF_X83_Y7_N43
\U|DP|REGFILE|Reg1|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~12_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(12));

-- Location: FF_X87_Y7_N16
\U|DP|REGFILE|Reg3|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~12_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(12));

-- Location: LABCELL_X88_Y7_N45
\U|DP|REGFILE|regmux|b[12]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[12]~37_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( ((\U|DP|REGFILE|Reg1|out\(12) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\)) # (\U|DP|REGFILE|Reg3|out\(12)) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( (\U|DP|REGFILE|Reg1|out\(12) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg1|ALT_INV_out\(12),
	datac => \U|DP|REGFILE|Reg3|ALT_INV_out\(12),
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	combout => \U|DP|REGFILE|regmux|b[12]~37_combout\);

-- Location: FF_X85_Y7_N55
\U|DP|REGFILE|Reg6|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~12_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(12));

-- Location: FF_X83_Y7_N25
\U|DP|REGFILE|Reg7|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~12_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(12));

-- Location: LABCELL_X88_Y7_N48
\U|DP|REGFILE|regmux|b[12]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[12]~38_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( ((\U|DP|REGFILE|Reg6|out\(12) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\)) # (\U|DP|REGFILE|Reg7|out\(12)) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( (\U|DP|REGFILE|Reg6|out\(12) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg6|ALT_INV_out\(12),
	datac => \U|DP|REGFILE|Reg7|ALT_INV_out\(12),
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	combout => \U|DP|REGFILE|regmux|b[12]~38_combout\);

-- Location: LABCELL_X88_Y7_N21
\U|DP|REGFILE|regmux|b[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(12) = ( \U|DP|REGFILE|regmux|b[12]~38_combout\ ) # ( !\U|DP|REGFILE|regmux|b[12]~38_combout\ & ( (((\U|DP|REGFILE|Reg5|out\(12) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|regmux|b[12]~37_combout\)) # 
-- (\U|DP|REGFILE|regmux|b[12]~36_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101111111001111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg5|ALT_INV_out\(12),
	datab => \U|DP|REGFILE|regmux|ALT_INV_b[12]~36_combout\,
	datac => \U|DP|REGFILE|regmux|ALT_INV_b[12]~37_combout\,
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[12]~38_combout\,
	combout => \U|DP|REGFILE|regmux|b\(12));

-- Location: FF_X87_Y3_N46
\U|DP|loadB|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(12),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(12));

-- Location: MLABCELL_X84_Y4_N0
\U|DP|loadC|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[11]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~45_sumout\,
	combout => \U|DP|loadC|out[11]~feeder_combout\);

-- Location: LABCELL_X85_Y5_N39
\U|DP|alu|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector4~0_combout\ = ( \rtl~44_combout\ & ( (!\U|DP|alu|Equal0~0_combout\ & (\U|DP|Muxa|comb~11_combout\ & ((!\U|instruction|out\(4)) # (\U|DP|loadB|out[12]~DUPLICATE_q\)))) # (\U|DP|alu|Equal0~0_combout\ & (!\U|DP|loadB|out[12]~DUPLICATE_q\ & 
-- ((\U|instruction|out\(4))))) ) ) # ( !\rtl~44_combout\ & ( (!\U|DP|loadB|out[12]~DUPLICATE_q\ & (((\U|DP|alu|Equal0~0_combout\)))) # (\U|DP|loadB|out[12]~DUPLICATE_q\ & ((!\U|instruction|out\(4) & ((\U|DP|alu|Equal0~0_combout\))) # (\U|instruction|out\(4) 
-- & (\U|DP|Muxa|comb~11_combout\ & !\U|DP|alu|Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111010000000011111101000110001000010100011000100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadB|ALT_INV_out[12]~DUPLICATE_q\,
	datab => \U|DP|Muxa|ALT_INV_comb~11_combout\,
	datac => \U|instruction|ALT_INV_out\(4),
	datad => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_rtl~44_combout\,
	combout => \U|DP|alu|Selector4~0_combout\);

-- Location: FF_X84_Y4_N1
\U|DP|loadC|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[11]~feeder_combout\,
	asdata => \U|DP|alu|Selector4~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(11));

-- Location: MLABCELL_X82_Y6_N9
\U|DP|Mux1lab6|comb~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~11_combout\ = ( \U|instruction|out\(7) & ( \U|FSM|vsel\(1) ) ) # ( \U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(11) ) ) ) # ( !\U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(11),
	datae => \U|instruction|ALT_INV_out\(7),
	dataf => \U|FSM|ALT_INV_vsel\(1),
	combout => \U|DP|Mux1lab6|comb~11_combout\);

-- Location: FF_X84_Y5_N31
\U|DP|REGFILE|Reg5|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~11_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(11));

-- Location: FF_X84_Y6_N55
\U|DP|REGFILE|Reg2|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~11_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(11));

-- Location: FF_X84_Y6_N25
\U|DP|REGFILE|Reg4|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~11_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(11));

-- Location: FF_X85_Y6_N14
\U|DP|REGFILE|Reg0|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~11_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(11));

-- Location: LABCELL_X85_Y6_N12
\U|DP|REGFILE|regmux|b[11]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[11]~33_combout\ = ( \U|DP|REGFILE|Reg0|out\(11) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (\U|DP|REGFILE|Reg2|out\(11) & (\U|insDec|Rmux|b\(2)))) # (\U|insDec|Rmux|b\(1) & (((\U|DP|REGFILE|Reg4|out\(11)) # 
-- (\U|insDec|Rmux|b\(2))))) ) ) ) # ( !\U|DP|REGFILE|Reg0|out\(11) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (\U|DP|REGFILE|Reg2|out\(11) & (\U|insDec|Rmux|b\(2)))) # (\U|insDec|Rmux|b\(1) & (((!\U|insDec|Rmux|b\(2) & 
-- \U|DP|REGFILE|Reg4|out\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100001101000000011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg2|ALT_INV_out\(11),
	datab => \U|insDec|Rmux|ALT_INV_b\(1),
	datac => \U|insDec|Rmux|ALT_INV_b\(2),
	datad => \U|DP|REGFILE|Reg4|ALT_INV_out\(11),
	datae => \U|DP|REGFILE|Reg0|ALT_INV_out\(11),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|regmux|b[11]~33_combout\);

-- Location: LABCELL_X83_Y5_N42
\U|DP|REGFILE|Reg1|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg1|out[11]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~11_combout\,
	combout => \U|DP|REGFILE|Reg1|out[11]~feeder_combout\);

-- Location: FF_X83_Y5_N43
\U|DP|REGFILE|Reg1|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg1|out[11]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(11));

-- Location: FF_X88_Y5_N17
\U|DP|REGFILE|Reg3|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~11_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(11));

-- Location: LABCELL_X88_Y5_N15
\U|DP|REGFILE|regmux|b[11]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[11]~34_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( ((\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & \U|DP|REGFILE|Reg3|out\(11))) # (\U|DP|REGFILE|Reg1|out\(11)) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( (\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & \U|DP|REGFILE|Reg3|out\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg1|ALT_INV_out\(11),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	datad => \U|DP|REGFILE|Reg3|ALT_INV_out\(11),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \U|DP|REGFILE|regmux|b[11]~34_combout\);

-- Location: MLABCELL_X84_Y7_N42
\U|DP|REGFILE|Reg7|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg7|out[11]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~11_combout\,
	combout => \U|DP|REGFILE|Reg7|out[11]~feeder_combout\);

-- Location: FF_X84_Y7_N43
\U|DP|REGFILE|Reg7|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg7|out[11]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(11));

-- Location: FF_X85_Y7_N38
\U|DP|REGFILE|Reg6|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~11_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(11));

-- Location: LABCELL_X85_Y7_N36
\U|DP|REGFILE|regmux|b[11]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[11]~35_combout\ = ( \U|DP|REGFILE|Reg6|out\(11) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( (\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\) # (\U|DP|REGFILE|Reg7|out\(11)) ) ) ) # ( !\U|DP|REGFILE|Reg6|out\(11) & ( 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( \U|DP|REGFILE|Reg7|out\(11) ) ) ) # ( \U|DP|REGFILE|Reg6|out\(11) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg7|ALT_INV_out\(11),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	datae => \U|DP|REGFILE|Reg6|ALT_INV_out\(11),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	combout => \U|DP|REGFILE|regmux|b[11]~35_combout\);

-- Location: LABCELL_X88_Y5_N6
\U|DP|REGFILE|regmux|b[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(11) = ( \U|DP|REGFILE|regmux|b[11]~35_combout\ ) # ( !\U|DP|REGFILE|regmux|b[11]~35_combout\ & ( (((\U|DP|REGFILE|Reg5|out\(11) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|regmux|b[11]~34_combout\)) # 
-- (\U|DP|REGFILE|regmux|b[11]~33_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg5|ALT_INV_out\(11),
	datab => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datac => \U|DP|REGFILE|regmux|ALT_INV_b[11]~33_combout\,
	datad => \U|DP|REGFILE|regmux|ALT_INV_b[11]~34_combout\,
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[11]~35_combout\,
	combout => \U|DP|REGFILE|regmux|b\(11));

-- Location: FF_X87_Y4_N32
\U|DP|loadB|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(11),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(11));

-- Location: MLABCELL_X84_Y4_N21
\U|DP|loadC|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[10]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~41_sumout\,
	combout => \U|DP|loadC|out[10]~feeder_combout\);

-- Location: MLABCELL_X87_Y4_N54
\rtl~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~43_combout\ = ( \U|DP|loadB|out\(11) & ( ((!\U|instruction|out\(3) & (\U|DP|loadB|out\(10))) # (\U|instruction|out\(3) & ((\U|DP|loadB|out\(9))))) # (\U|instruction|out\(4)) ) ) # ( !\U|DP|loadB|out\(11) & ( (!\U|instruction|out\(4) & 
-- ((!\U|instruction|out\(3) & (\U|DP|loadB|out\(10))) # (\U|instruction|out\(3) & ((\U|DP|loadB|out\(9)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(4),
	datab => \U|instruction|ALT_INV_out\(3),
	datac => \U|DP|loadB|ALT_INV_out\(10),
	datad => \U|DP|loadB|ALT_INV_out\(9),
	dataf => \U|DP|loadB|ALT_INV_out\(11),
	combout => \rtl~43_combout\);

-- Location: LABCELL_X85_Y4_N3
\U|DP|alu|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector5~0_combout\ = ( \rtl~43_combout\ & ( (\U|DP|Muxa|comb~10_combout\ & !\U|DP|alu|Equal0~0_combout\) ) ) # ( !\rtl~43_combout\ & ( \U|DP|alu|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010100000101000000001111000011110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|Muxa|ALT_INV_comb~10_combout\,
	datac => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_rtl~43_combout\,
	combout => \U|DP|alu|Selector5~0_combout\);

-- Location: FF_X84_Y4_N22
\U|DP|loadC|out[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[10]~feeder_combout\,
	asdata => \U|DP|alu|Selector5~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out[10]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y6_N12
\U|DP|Mux1lab6|comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~10_combout\ = ( \U|instruction|out\(7) & ( \U|FSM|vsel\(1) ) ) # ( \U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out[10]~DUPLICATE_q\ ) ) ) # ( !\U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( 
-- \U|DP|loadC|out[10]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|loadC|ALT_INV_out[10]~DUPLICATE_q\,
	datae => \U|instruction|ALT_INV_out\(7),
	dataf => \U|FSM|ALT_INV_vsel\(1),
	combout => \U|DP|Mux1lab6|comb~10_combout\);

-- Location: FF_X85_Y7_N28
\U|DP|REGFILE|Reg5|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~10_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(10));

-- Location: FF_X83_Y7_N34
\U|DP|REGFILE|Reg1|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~10_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(10));

-- Location: FF_X88_Y7_N32
\U|DP|REGFILE|Reg3|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~10_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(10));

-- Location: LABCELL_X88_Y7_N30
\U|DP|REGFILE|regmux|b[10]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[10]~31_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( ((\U|DP|REGFILE|Reg1|out\(10) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\)) # (\U|DP|REGFILE|Reg3|out\(10)) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( (\U|DP|REGFILE|Reg1|out\(10) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg1|ALT_INV_out\(10),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	datad => \U|DP|REGFILE|Reg3|ALT_INV_out\(10),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	combout => \U|DP|REGFILE|regmux|b[10]~31_combout\);

-- Location: FF_X83_Y7_N13
\U|DP|REGFILE|Reg2|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~10_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(10));

-- Location: FF_X84_Y7_N16
\U|DP|REGFILE|Reg4|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~10_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(10));

-- Location: FF_X87_Y7_N20
\U|DP|REGFILE|Reg0|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~10_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(10));

-- Location: MLABCELL_X87_Y7_N18
\U|DP|REGFILE|regmux|b[10]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[10]~30_combout\ = ( \U|DP|REGFILE|Reg0|out\(10) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (\U|DP|REGFILE|Reg2|out\(10) & (\U|insDec|Rmux|b\(2)))) # (\U|insDec|Rmux|b\(1) & (((\U|DP|REGFILE|Reg4|out\(10)) # 
-- (\U|insDec|Rmux|b\(2))))) ) ) ) # ( !\U|DP|REGFILE|Reg0|out\(10) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (\U|DP|REGFILE|Reg2|out\(10) & (\U|insDec|Rmux|b\(2)))) # (\U|insDec|Rmux|b\(1) & (((!\U|insDec|Rmux|b\(2) & 
-- \U|DP|REGFILE|Reg4|out\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100001101000000011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg2|ALT_INV_out\(10),
	datab => \U|insDec|Rmux|ALT_INV_b\(1),
	datac => \U|insDec|Rmux|ALT_INV_b\(2),
	datad => \U|DP|REGFILE|Reg4|ALT_INV_out\(10),
	datae => \U|DP|REGFILE|Reg0|ALT_INV_out\(10),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|regmux|b[10]~30_combout\);

-- Location: FF_X83_Y7_N49
\U|DP|REGFILE|Reg7|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~10_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(10));

-- Location: FF_X85_Y7_N40
\U|DP|REGFILE|Reg6|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~10_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(10));

-- Location: LABCELL_X88_Y7_N33
\U|DP|REGFILE|regmux|b[10]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[10]~32_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( ((\U|DP|REGFILE|Reg6|out\(10) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\)) # (\U|DP|REGFILE|Reg7|out\(10)) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( (\U|DP|REGFILE|Reg6|out\(10) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg7|ALT_INV_out\(10),
	datac => \U|DP|REGFILE|Reg6|ALT_INV_out\(10),
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	combout => \U|DP|REGFILE|regmux|b[10]~32_combout\);

-- Location: LABCELL_X88_Y7_N57
\U|DP|REGFILE|regmux|b[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(10) = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( \U|DP|REGFILE|regmux|b[10]~32_combout\ ) ) # ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( \U|DP|REGFILE|regmux|b[10]~32_combout\ ) ) # ( 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( !\U|DP|REGFILE|regmux|b[10]~32_combout\ & ( ((\U|DP|REGFILE|regmux|b[10]~30_combout\) # (\U|DP|REGFILE|regmux|b[10]~31_combout\)) # (\U|DP|REGFILE|Reg5|out\(10)) ) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( !\U|DP|REGFILE|regmux|b[10]~32_combout\ & ( (\U|DP|REGFILE|regmux|b[10]~30_combout\) # (\U|DP|REGFILE|regmux|b[10]~31_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg5|ALT_INV_out\(10),
	datab => \U|DP|REGFILE|regmux|ALT_INV_b[10]~31_combout\,
	datac => \U|DP|REGFILE|regmux|ALT_INV_b[10]~30_combout\,
	datae => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[10]~32_combout\,
	combout => \U|DP|REGFILE|regmux|b\(10));

-- Location: FF_X87_Y3_N23
\U|DP|loadB|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(10),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(10));

-- Location: MLABCELL_X84_Y4_N48
\U|DP|loadC|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[9]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~37_sumout\,
	combout => \U|DP|loadC|out[9]~feeder_combout\);

-- Location: MLABCELL_X87_Y4_N51
\rtl~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~42_combout\ = ( \U|DP|loadB|out\(9) & ( \U|DP|loadB|out\(8) & ( (!\U|instruction|out\(4)) # (\U|DP|loadB|out\(10)) ) ) ) # ( !\U|DP|loadB|out\(9) & ( \U|DP|loadB|out\(8) & ( (!\U|instruction|out\(4) & (\U|instruction|out\(3))) # 
-- (\U|instruction|out\(4) & ((\U|DP|loadB|out\(10)))) ) ) ) # ( \U|DP|loadB|out\(9) & ( !\U|DP|loadB|out\(8) & ( (!\U|instruction|out\(4) & (!\U|instruction|out\(3))) # (\U|instruction|out\(4) & ((\U|DP|loadB|out\(10)))) ) ) ) # ( !\U|DP|loadB|out\(9) & ( 
-- !\U|DP|loadB|out\(8) & ( (\U|instruction|out\(4) & \U|DP|loadB|out\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111110000001100111100110000001111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|instruction|ALT_INV_out\(3),
	datac => \U|instruction|ALT_INV_out\(4),
	datad => \U|DP|loadB|ALT_INV_out\(10),
	datae => \U|DP|loadB|ALT_INV_out\(9),
	dataf => \U|DP|loadB|ALT_INV_out\(8),
	combout => \rtl~42_combout\);

-- Location: LABCELL_X85_Y4_N9
\U|DP|alu|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector6~0_combout\ = ( \rtl~42_combout\ & ( \U|DP|Muxa|comb~9_combout\ & ( !\U|DP|alu|Equal0~0_combout\ ) ) ) # ( !\rtl~42_combout\ & ( \U|DP|Muxa|comb~9_combout\ & ( \U|DP|alu|Equal0~0_combout\ ) ) ) # ( !\rtl~42_combout\ & ( 
-- !\U|DP|Muxa|comb~9_combout\ & ( \U|DP|alu|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_rtl~42_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~9_combout\,
	combout => \U|DP|alu|Selector6~0_combout\);

-- Location: FF_X84_Y4_N49
\U|DP|loadC|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[9]~feeder_combout\,
	asdata => \U|DP|alu|Selector6~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(9));

-- Location: MLABCELL_X82_Y6_N42
\U|DP|Mux1lab6|comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~9_combout\ = ( \U|instruction|out\(7) & ( \U|FSM|vsel\(1) ) ) # ( \U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(9) ) ) ) # ( !\U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|loadC|ALT_INV_out\(9),
	datae => \U|instruction|ALT_INV_out\(7),
	dataf => \U|FSM|ALT_INV_vsel\(1),
	combout => \U|DP|Mux1lab6|comb~9_combout\);

-- Location: FF_X85_Y7_N25
\U|DP|REGFILE|Reg5|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~9_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(9));

-- Location: LABCELL_X83_Y7_N0
\U|DP|REGFILE|Reg2|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg2|out[9]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~9_combout\,
	combout => \U|DP|REGFILE|Reg2|out[9]~feeder_combout\);

-- Location: FF_X83_Y7_N1
\U|DP|REGFILE|Reg2|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg2|out[9]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(9));

-- Location: MLABCELL_X84_Y7_N6
\U|DP|REGFILE|Reg4|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg4|out[9]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~9_combout\,
	combout => \U|DP|REGFILE|Reg4|out[9]~feeder_combout\);

-- Location: FF_X84_Y7_N7
\U|DP|REGFILE|Reg4|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg4|out[9]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(9));

-- Location: FF_X87_Y7_N41
\U|DP|REGFILE|Reg0|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~9_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(9));

-- Location: MLABCELL_X87_Y7_N39
\U|DP|REGFILE|regmux|b[9]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[9]~27_combout\ = ( \U|DP|REGFILE|Reg0|out\(9) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(2) & (\U|insDec|Rmux|b\(1) & ((\U|DP|REGFILE|Reg4|out\(9))))) # (\U|insDec|Rmux|b\(2) & (((\U|DP|REGFILE|Reg2|out\(9))) # 
-- (\U|insDec|Rmux|b\(1)))) ) ) ) # ( !\U|DP|REGFILE|Reg0|out\(9) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(2) & (\U|insDec|Rmux|b\(1) & ((\U|DP|REGFILE|Reg4|out\(9))))) # (\U|insDec|Rmux|b\(2) & (!\U|insDec|Rmux|b\(1) & (\U|DP|REGFILE|Reg2|out\(9)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100001001100001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|insDec|Rmux|ALT_INV_b\(2),
	datab => \U|insDec|Rmux|ALT_INV_b\(1),
	datac => \U|DP|REGFILE|Reg2|ALT_INV_out\(9),
	datad => \U|DP|REGFILE|Reg4|ALT_INV_out\(9),
	datae => \U|DP|REGFILE|Reg0|ALT_INV_out\(9),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|regmux|b[9]~27_combout\);

-- Location: FF_X81_Y6_N13
\U|DP|REGFILE|Reg1|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~9_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(9));

-- Location: MLABCELL_X82_Y6_N21
\U|DP|REGFILE|Reg3|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg3|out[9]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~9_combout\,
	combout => \U|DP|REGFILE|Reg3|out[9]~feeder_combout\);

-- Location: FF_X82_Y6_N22
\U|DP|REGFILE|Reg3|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg3|out[9]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(9));

-- Location: MLABCELL_X87_Y6_N45
\U|DP|REGFILE|regmux|b[9]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[9]~28_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( (\U|DP|REGFILE|Reg3|out\(9)) # (\U|DP|REGFILE|Reg1|out\(9)) ) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( \U|DP|REGFILE|Reg3|out\(9) ) ) ) # ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( 
-- \U|DP|REGFILE|Reg1|out\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg1|ALT_INV_out\(9),
	datac => \U|DP|REGFILE|Reg3|ALT_INV_out\(9),
	datae => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	combout => \U|DP|REGFILE|regmux|b[9]~28_combout\);

-- Location: LABCELL_X83_Y7_N57
\U|DP|REGFILE|Reg7|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg7|out[9]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~9_combout\,
	combout => \U|DP|REGFILE|Reg7|out[9]~feeder_combout\);

-- Location: FF_X83_Y7_N58
\U|DP|REGFILE|Reg7|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg7|out[9]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(9));

-- Location: FF_X85_Y7_N59
\U|DP|REGFILE|Reg6|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~9_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(9));

-- Location: LABCELL_X85_Y7_N57
\U|DP|REGFILE|regmux|b[9]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[9]~29_combout\ = ( \U|DP|REGFILE|Reg6|out\(9) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( (\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\) # (\U|DP|REGFILE|Reg7|out\(9)) ) ) ) # ( !\U|DP|REGFILE|Reg6|out\(9) & ( 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( \U|DP|REGFILE|Reg7|out\(9) ) ) ) # ( \U|DP|REGFILE|Reg6|out\(9) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111101010101010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg7|ALT_INV_out\(9),
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	datae => \U|DP|REGFILE|Reg6|ALT_INV_out\(9),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	combout => \U|DP|REGFILE|regmux|b[9]~29_combout\);

-- Location: LABCELL_X88_Y7_N36
\U|DP|REGFILE|regmux|b[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(9) = ( \U|DP|REGFILE|regmux|b[9]~29_combout\ ) # ( !\U|DP|REGFILE|regmux|b[9]~29_combout\ & ( (((\U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & \U|DP|REGFILE|Reg5|out\(9))) # (\U|DP|REGFILE|regmux|b[9]~28_combout\)) # 
-- (\U|DP|REGFILE|regmux|b[9]~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datab => \U|DP|REGFILE|Reg5|ALT_INV_out\(9),
	datac => \U|DP|REGFILE|regmux|ALT_INV_b[9]~27_combout\,
	datad => \U|DP|REGFILE|regmux|ALT_INV_b[9]~28_combout\,
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[9]~29_combout\,
	combout => \U|DP|REGFILE|regmux|b\(9));

-- Location: FF_X88_Y7_N53
\U|DP|loadB|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(9),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(9));

-- Location: LABCELL_X83_Y5_N6
\U|DP|loadC|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[8]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~33_sumout\,
	combout => \U|DP|loadC|out[8]~feeder_combout\);

-- Location: LABCELL_X88_Y4_N9
\rtl~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~41_combout\ = ( \U|DP|loadB|out\(7) & ( (!\U|instruction|out\(4) & (((\U|DP|loadB|out\(8))) # (\U|instruction|out\(3)))) # (\U|instruction|out\(4) & (((\U|DP|loadB|out\(9))))) ) ) # ( !\U|DP|loadB|out\(7) & ( (!\U|instruction|out\(4) & 
-- (!\U|instruction|out\(3) & (\U|DP|loadB|out\(8)))) # (\U|instruction|out\(4) & (((\U|DP|loadB|out\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(4),
	datab => \U|instruction|ALT_INV_out\(3),
	datac => \U|DP|loadB|ALT_INV_out\(8),
	datad => \U|DP|loadB|ALT_INV_out\(9),
	dataf => \U|DP|loadB|ALT_INV_out\(7),
	combout => \rtl~41_combout\);

-- Location: MLABCELL_X84_Y4_N42
\U|DP|alu|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector7~0_combout\ = ( \U|DP|alu|Equal0~0_combout\ & ( \U|DP|Muxa|comb~8_combout\ & ( !\rtl~41_combout\ ) ) ) # ( !\U|DP|alu|Equal0~0_combout\ & ( \U|DP|Muxa|comb~8_combout\ & ( \rtl~41_combout\ ) ) ) # ( \U|DP|alu|Equal0~0_combout\ & ( 
-- !\U|DP|Muxa|comb~8_combout\ & ( !\rtl~41_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~41_combout\,
	datae => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~8_combout\,
	combout => \U|DP|alu|Selector7~0_combout\);

-- Location: FF_X83_Y5_N7
\U|DP|loadC|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[8]~feeder_combout\,
	asdata => \U|DP|alu|Selector7~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(8));

-- Location: MLABCELL_X82_Y6_N36
\U|DP|Mux1lab6|comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~8_combout\ = ( \U|instruction|out\(7) & ( \U|FSM|vsel\(1) ) ) # ( \U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(8) ) ) ) # ( !\U|instruction|out\(7) & ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|loadC|ALT_INV_out\(8),
	datae => \U|instruction|ALT_INV_out\(7),
	dataf => \U|FSM|ALT_INV_vsel\(1),
	combout => \U|DP|Mux1lab6|comb~8_combout\);

-- Location: MLABCELL_X78_Y6_N39
\U|DP|REGFILE|Reg2|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg2|out[8]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~8_combout\,
	combout => \U|DP|REGFILE|Reg2|out[8]~feeder_combout\);

-- Location: FF_X78_Y6_N40
\U|DP|REGFILE|Reg2|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg2|out[8]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(8));

-- Location: LABCELL_X83_Y6_N9
\U|DP|REGFILE|Reg4|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg4|out[8]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~8_combout\,
	combout => \U|DP|REGFILE|Reg4|out[8]~feeder_combout\);

-- Location: FF_X83_Y6_N10
\U|DP|REGFILE|Reg4|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg4|out[8]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(8));

-- Location: FF_X85_Y6_N20
\U|DP|REGFILE|Reg0|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~8_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(8));

-- Location: LABCELL_X85_Y6_N18
\U|DP|REGFILE|regmux|b[8]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[8]~24_combout\ = ( \U|DP|REGFILE|Reg0|out\(8) & ( \U|insDec|Rmux|b\(1) & ( (\U|insDec|Rmux|b\(0) & ((\U|DP|REGFILE|Reg4|out\(8)) # (\U|insDec|Rmux|b\(2)))) ) ) ) # ( !\U|DP|REGFILE|Reg0|out\(8) & ( \U|insDec|Rmux|b\(1) & ( 
-- (!\U|insDec|Rmux|b\(2) & (\U|insDec|Rmux|b\(0) & \U|DP|REGFILE|Reg4|out\(8))) ) ) ) # ( \U|DP|REGFILE|Reg0|out\(8) & ( !\U|insDec|Rmux|b\(1) & ( (\U|insDec|Rmux|b\(2) & (\U|insDec|Rmux|b\(0) & \U|DP|REGFILE|Reg2|out\(8))) ) ) ) # ( 
-- !\U|DP|REGFILE|Reg0|out\(8) & ( !\U|insDec|Rmux|b\(1) & ( (\U|insDec|Rmux|b\(2) & (\U|insDec|Rmux|b\(0) & \U|DP|REGFILE|Reg2|out\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000001000100001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|insDec|Rmux|ALT_INV_b\(2),
	datab => \U|insDec|Rmux|ALT_INV_b\(0),
	datac => \U|DP|REGFILE|Reg2|ALT_INV_out\(8),
	datad => \U|DP|REGFILE|Reg4|ALT_INV_out\(8),
	datae => \U|DP|REGFILE|Reg0|ALT_INV_out\(8),
	dataf => \U|insDec|Rmux|ALT_INV_b\(1),
	combout => \U|DP|REGFILE|regmux|b[8]~24_combout\);

-- Location: LABCELL_X83_Y7_N6
\U|DP|REGFILE|Reg7|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg7|out[8]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~8_combout\,
	combout => \U|DP|REGFILE|Reg7|out[8]~feeder_combout\);

-- Location: FF_X83_Y7_N7
\U|DP|REGFILE|Reg7|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg7|out[8]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(8));

-- Location: LABCELL_X85_Y7_N18
\U|DP|REGFILE|Reg6|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg6|out[8]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~8_combout\,
	combout => \U|DP|REGFILE|Reg6|out[8]~feeder_combout\);

-- Location: FF_X85_Y7_N19
\U|DP|REGFILE|Reg6|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg6|out[8]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(8));

-- Location: LABCELL_X88_Y7_N6
\U|DP|REGFILE|regmux|b[8]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[8]~26_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( ((\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & \U|DP|REGFILE|Reg6|out\(8))) # (\U|DP|REGFILE|Reg7|out\(8)) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( (\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & \U|DP|REGFILE|Reg6|out\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg7|ALT_INV_out\(8),
	datab => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	datac => \U|DP|REGFILE|Reg6|ALT_INV_out\(8),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	combout => \U|DP|REGFILE|regmux|b[8]~26_combout\);

-- Location: LABCELL_X85_Y7_N51
\U|DP|REGFILE|Reg5|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg5|out[8]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~8_combout\,
	combout => \U|DP|REGFILE|Reg5|out[8]~feeder_combout\);

-- Location: FF_X85_Y7_N52
\U|DP|REGFILE|Reg5|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg5|out[8]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(8));

-- Location: FF_X85_Y4_N44
\U|DP|REGFILE|Reg1|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~8_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(8));

-- Location: FF_X85_Y4_N38
\U|DP|REGFILE|Reg3|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~8_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(8));

-- Location: LABCELL_X85_Y4_N36
\U|DP|REGFILE|regmux|b[8]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[8]~25_combout\ = ( \U|DP|REGFILE|Reg3|out\(8) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ ) ) # ( !\U|DP|REGFILE|Reg3|out\(8) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( (\U|DP|REGFILE|Reg1|out\(8) & 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\) ) ) ) # ( \U|DP|REGFILE|Reg3|out\(8) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( (\U|DP|REGFILE|Reg1|out\(8) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\) ) ) ) # ( 
-- !\U|DP|REGFILE|Reg3|out\(8) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( (\U|DP|REGFILE|Reg1|out\(8) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg1|ALT_INV_out\(8),
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	datae => \U|DP|REGFILE|Reg3|ALT_INV_out\(8),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	combout => \U|DP|REGFILE|regmux|b[8]~25_combout\);

-- Location: LABCELL_X88_Y7_N0
\U|DP|REGFILE|regmux|b[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(8) = ( \U|DP|REGFILE|regmux|b[8]~25_combout\ ) # ( !\U|DP|REGFILE|regmux|b[8]~25_combout\ & ( (((\U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & \U|DP|REGFILE|Reg5|out\(8))) # (\U|DP|REGFILE|regmux|b[8]~26_combout\)) # 
-- (\U|DP|REGFILE|regmux|b[8]~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101111111011101110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|regmux|ALT_INV_b[8]~24_combout\,
	datab => \U|DP|REGFILE|regmux|ALT_INV_b[8]~26_combout\,
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datad => \U|DP|REGFILE|Reg5|ALT_INV_out\(8),
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[8]~25_combout\,
	combout => \U|DP|REGFILE|regmux|b\(8));

-- Location: FF_X88_Y7_N56
\U|DP|loadB|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(8),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(8));

-- Location: MLABCELL_X84_Y5_N9
\U|DP|loadC|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[7]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~29_sumout\,
	combout => \U|DP|loadC|out[7]~feeder_combout\);

-- Location: MLABCELL_X87_Y4_N57
\rtl~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~40_combout\ = ( \U|DP|loadB|out\(7) & ( (!\U|instruction|out\(4) & ((!\U|instruction|out\(3)) # ((\U|DP|loadB|out\(6))))) # (\U|instruction|out\(4) & (((\U|DP|loadB|out\(8))))) ) ) # ( !\U|DP|loadB|out\(7) & ( (!\U|instruction|out\(4) & 
-- (\U|instruction|out\(3) & ((\U|DP|loadB|out\(6))))) # (\U|instruction|out\(4) & (((\U|DP|loadB|out\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(4),
	datab => \U|instruction|ALT_INV_out\(3),
	datac => \U|DP|loadB|ALT_INV_out\(8),
	datad => \U|DP|loadB|ALT_INV_out\(6),
	dataf => \U|DP|loadB|ALT_INV_out\(7),
	combout => \rtl~40_combout\);

-- Location: MLABCELL_X84_Y5_N6
\U|DP|alu|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector8~0_combout\ = (!\U|DP|alu|Equal0~0_combout\ & (\U|DP|Muxa|comb~7_combout\ & \rtl~40_combout\)) # (\U|DP|alu|Equal0~0_combout\ & ((!\rtl~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001100001100110000110000110011000011000011001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	datac => \U|DP|Muxa|ALT_INV_comb~7_combout\,
	datad => \ALT_INV_rtl~40_combout\,
	combout => \U|DP|alu|Selector8~0_combout\);

-- Location: FF_X84_Y5_N10
\U|DP|loadC|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[7]~feeder_combout\,
	asdata => \U|DP|alu|Selector8~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(7));

-- Location: MLABCELL_X84_Y5_N18
\U|DP|Mux1lab6|comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~7_combout\ = ( \U|DP|loadC|out\(7) & ( (!\U|FSM|vsel\(1)) # (\U|instruction|out\(7)) ) ) # ( !\U|DP|loadC|out\(7) & ( (\U|FSM|vsel\(1) & \U|instruction|out\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|FSM|ALT_INV_vsel\(1),
	datad => \U|instruction|ALT_INV_out\(7),
	dataf => \U|DP|loadC|ALT_INV_out\(7),
	combout => \U|DP|Mux1lab6|comb~7_combout\);

-- Location: LABCELL_X88_Y3_N3
\U|DP|REGFILE|Reg6|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg6|out[7]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~7_combout\,
	combout => \U|DP|REGFILE|Reg6|out[7]~feeder_combout\);

-- Location: FF_X88_Y3_N5
\U|DP|REGFILE|Reg6|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg6|out[7]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(7));

-- Location: FF_X84_Y5_N20
\U|DP|REGFILE|Reg7|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|Mux1lab6|comb~7_combout\,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(7));

-- Location: MLABCELL_X87_Y3_N48
\U|DP|REGFILE|regmux|b[7]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[7]~23_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(7)) # (\U|DP|REGFILE|Reg6|out\(7)) ) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( \U|DP|REGFILE|Reg6|out\(7) ) ) ) # ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( 
-- \U|DP|REGFILE|Reg7|out\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg6|ALT_INV_out\(7),
	datac => \U|DP|REGFILE|Reg7|ALT_INV_out\(7),
	datae => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	combout => \U|DP|REGFILE|regmux|b[7]~23_combout\);

-- Location: LABCELL_X81_Y7_N27
\U|DP|REGFILE|Reg5|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg5|out[7]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~7_combout\,
	combout => \U|DP|REGFILE|Reg5|out[7]~feeder_combout\);

-- Location: FF_X81_Y7_N28
\U|DP|REGFILE|Reg5|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg5|out[7]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(7));

-- Location: FF_X87_Y7_N8
\U|DP|REGFILE|Reg3|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~7_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(7));

-- Location: FF_X85_Y4_N52
\U|DP|REGFILE|Reg1|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~7_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(7));

-- Location: MLABCELL_X87_Y6_N0
\U|DP|REGFILE|regmux|b[7]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[7]~22_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( ((\U|DP|REGFILE|Reg1|out\(7) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\)) # (\U|DP|REGFILE|Reg3|out\(7)) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( (\U|DP|REGFILE|Reg1|out\(7) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg3|ALT_INV_out\(7),
	datab => \U|DP|REGFILE|Reg1|ALT_INV_out\(7),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	combout => \U|DP|REGFILE|regmux|b[7]~22_combout\);

-- Location: FF_X84_Y7_N49
\U|DP|REGFILE|Reg2|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~7_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(7));

-- Location: FF_X85_Y6_N41
\U|DP|REGFILE|Reg4|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~7_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(7));

-- Location: FF_X87_Y7_N26
\U|DP|REGFILE|Reg0|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~7_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(7));

-- Location: MLABCELL_X87_Y7_N24
\U|DP|REGFILE|regmux|b[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[7]~21_combout\ = ( \U|DP|REGFILE|Reg0|out\(7) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (\U|DP|REGFILE|Reg2|out\(7) & (\U|insDec|Rmux|b\(2)))) # (\U|insDec|Rmux|b\(1) & (((\U|DP|REGFILE|Reg4|out\(7)) # 
-- (\U|insDec|Rmux|b\(2))))) ) ) ) # ( !\U|DP|REGFILE|Reg0|out\(7) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (\U|DP|REGFILE|Reg2|out\(7) & (\U|insDec|Rmux|b\(2)))) # (\U|insDec|Rmux|b\(1) & (((!\U|insDec|Rmux|b\(2) & 
-- \U|DP|REGFILE|Reg4|out\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100001101000000011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg2|ALT_INV_out\(7),
	datab => \U|insDec|Rmux|ALT_INV_b\(1),
	datac => \U|insDec|Rmux|ALT_INV_b\(2),
	datad => \U|DP|REGFILE|Reg4|ALT_INV_out\(7),
	datae => \U|DP|REGFILE|Reg0|ALT_INV_out\(7),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|regmux|b[7]~21_combout\);

-- Location: MLABCELL_X87_Y3_N9
\U|DP|REGFILE|regmux|b[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(7) = ( \U|DP|REGFILE|regmux|b[7]~21_combout\ ) # ( !\U|DP|REGFILE|regmux|b[7]~21_combout\ & ( (((\U|DP|REGFILE|Reg5|out\(7) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|regmux|b[7]~22_combout\)) # 
-- (\U|DP|REGFILE|regmux|b[7]~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101111111010111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|regmux|ALT_INV_b[7]~23_combout\,
	datab => \U|DP|REGFILE|Reg5|ALT_INV_out\(7),
	datac => \U|DP|REGFILE|regmux|ALT_INV_b[7]~22_combout\,
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[7]~21_combout\,
	combout => \U|DP|REGFILE|regmux|b\(7));

-- Location: FF_X87_Y3_N41
\U|DP|loadB|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(7),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(7));

-- Location: MLABCELL_X84_Y5_N0
\U|DP|loadC|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[6]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~25_sumout\,
	combout => \U|DP|loadC|out[6]~feeder_combout\);

-- Location: LABCELL_X88_Y4_N36
\rtl~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~39_combout\ = ( \U|DP|loadB|out\(6) & ( (!\U|instruction|out\(4) & ((!\U|instruction|out\(3)) # ((\U|DP|loadB|out\(5))))) # (\U|instruction|out\(4) & (((\U|DP|loadB|out\(7))))) ) ) # ( !\U|DP|loadB|out\(6) & ( (!\U|instruction|out\(4) & 
-- (\U|instruction|out\(3) & ((\U|DP|loadB|out\(5))))) # (\U|instruction|out\(4) & (((\U|DP|loadB|out\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(4),
	datab => \U|instruction|ALT_INV_out\(3),
	datac => \U|DP|loadB|ALT_INV_out\(7),
	datad => \U|DP|loadB|ALT_INV_out\(5),
	dataf => \U|DP|loadB|ALT_INV_out\(6),
	combout => \rtl~39_combout\);

-- Location: MLABCELL_X84_Y5_N3
\U|DP|alu|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector9~0_combout\ = (!\U|DP|alu|Equal0~0_combout\ & (\U|DP|Muxa|comb~6_combout\ & \rtl~39_combout\)) # (\U|DP|alu|Equal0~0_combout\ & ((!\rtl~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110000000011110011000000001111001100000000111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|Muxa|ALT_INV_comb~6_combout\,
	datac => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_rtl~39_combout\,
	combout => \U|DP|alu|Selector9~0_combout\);

-- Location: FF_X84_Y5_N2
\U|DP|loadC|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[6]~feeder_combout\,
	asdata => \U|DP|alu|Selector9~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(6));

-- Location: LABCELL_X85_Y6_N39
\U|DP|Mux1lab6|comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~6_combout\ = ( \U|FSM|vsel\(1) & ( \U|instruction|out\(6) ) ) # ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(6),
	datac => \U|instruction|ALT_INV_out\(6),
	dataf => \U|FSM|ALT_INV_vsel\(1),
	combout => \U|DP|Mux1lab6|comb~6_combout\);

-- Location: FF_X85_Y7_N50
\U|DP|REGFILE|Reg5|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~6_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(6));

-- Location: FF_X88_Y7_N5
\U|DP|REGFILE|Reg3|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~6_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(6));

-- Location: LABCELL_X79_Y7_N0
\U|DP|REGFILE|Reg1|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg1|out[6]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~6_combout\,
	combout => \U|DP|REGFILE|Reg1|out[6]~feeder_combout\);

-- Location: FF_X79_Y7_N1
\U|DP|REGFILE|Reg1|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg1|out[6]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(6));

-- Location: LABCELL_X88_Y7_N24
\U|DP|REGFILE|regmux|b[6]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[6]~19_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( ((\U|DP|REGFILE|Reg1|out\(6) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\)) # (\U|DP|REGFILE|Reg3|out\(6)) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & ( (\U|DP|REGFILE|Reg1|out\(6) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg3|ALT_INV_out\(6),
	datab => \U|DP|REGFILE|Reg1|ALT_INV_out\(6),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	combout => \U|DP|REGFILE|regmux|b[6]~19_combout\);

-- Location: FF_X85_Y6_N35
\U|DP|REGFILE|Reg4|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~6_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(6));

-- Location: FF_X82_Y6_N58
\U|DP|REGFILE|Reg0|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~6_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(6));

-- Location: LABCELL_X81_Y6_N18
\U|DP|REGFILE|Reg2|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg2|out[6]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~6_combout\,
	combout => \U|DP|REGFILE|Reg2|out[6]~feeder_combout\);

-- Location: FF_X81_Y6_N19
\U|DP|REGFILE|Reg2|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg2|out[6]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(6));

-- Location: LABCELL_X85_Y6_N0
\U|DP|REGFILE|regmux|b[6]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[6]~18_combout\ = ( \U|insDec|Rmux|b\(2) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & ((\U|DP|REGFILE|Reg2|out\(6)))) # (\U|insDec|Rmux|b\(1) & (\U|DP|REGFILE|Reg0|out\(6))) ) ) ) # ( !\U|insDec|Rmux|b\(2) & ( 
-- \U|insDec|Rmux|b\(0) & ( (\U|DP|REGFILE|Reg4|out\(6) & \U|insDec|Rmux|b\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg4|ALT_INV_out\(6),
	datab => \U|DP|REGFILE|Reg0|ALT_INV_out\(6),
	datac => \U|DP|REGFILE|Reg2|ALT_INV_out\(6),
	datad => \U|insDec|Rmux|ALT_INV_b\(1),
	datae => \U|insDec|Rmux|ALT_INV_b\(2),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|regmux|b[6]~18_combout\);

-- Location: FF_X82_Y6_N52
\U|DP|REGFILE|Reg7|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~6_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(6));

-- Location: FF_X87_Y7_N56
\U|DP|REGFILE|Reg6|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~6_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(6));

-- Location: MLABCELL_X87_Y7_N54
\U|DP|REGFILE|regmux|b[6]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[6]~20_combout\ = ( \U|DP|REGFILE|Reg6|out\(6) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ ) ) # ( !\U|DP|REGFILE|Reg6|out\(6) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(6) & 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) ) # ( \U|DP|REGFILE|Reg6|out\(6) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(6) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) ) # ( 
-- !\U|DP|REGFILE|Reg6|out\(6) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(6) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg7|ALT_INV_out\(6),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	datae => \U|DP|REGFILE|Reg6|ALT_INV_out\(6),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	combout => \U|DP|REGFILE|regmux|b[6]~20_combout\);

-- Location: LABCELL_X88_Y7_N12
\U|DP|REGFILE|regmux|b[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(6) = ( \U|DP|REGFILE|regmux|b[6]~18_combout\ & ( \U|DP|REGFILE|regmux|b[6]~20_combout\ ) ) # ( !\U|DP|REGFILE|regmux|b[6]~18_combout\ & ( \U|DP|REGFILE|regmux|b[6]~20_combout\ ) ) # ( \U|DP|REGFILE|regmux|b[6]~18_combout\ & ( 
-- !\U|DP|REGFILE|regmux|b[6]~20_combout\ ) ) # ( !\U|DP|REGFILE|regmux|b[6]~18_combout\ & ( !\U|DP|REGFILE|regmux|b[6]~20_combout\ & ( ((\U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & \U|DP|REGFILE|Reg5|out\(6))) # (\U|DP|REGFILE|regmux|b[6]~19_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datab => \U|DP|REGFILE|Reg5|ALT_INV_out\(6),
	datac => \U|DP|REGFILE|regmux|ALT_INV_b[6]~19_combout\,
	datae => \U|DP|REGFILE|regmux|ALT_INV_b[6]~18_combout\,
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[6]~20_combout\,
	combout => \U|DP|REGFILE|regmux|b\(6));

-- Location: FF_X88_Y7_N26
\U|DP|loadB|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(6),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(6));

-- Location: MLABCELL_X84_Y5_N54
\U|DP|loadC|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[5]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~21_sumout\,
	combout => \U|DP|loadC|out[5]~feeder_combout\);

-- Location: LABCELL_X88_Y4_N39
\rtl~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~38_combout\ = ( \U|DP|loadB|out\(6) & ( ((!\U|instruction|out\(3) & ((\U|DP|loadB|out\(5)))) # (\U|instruction|out\(3) & (\U|DP|loadB|out\(4)))) # (\U|instruction|out\(4)) ) ) # ( !\U|DP|loadB|out\(6) & ( (!\U|instruction|out\(4) & 
-- ((!\U|instruction|out\(3) & ((\U|DP|loadB|out\(5)))) # (\U|instruction|out\(3) & (\U|DP|loadB|out\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(4),
	datab => \U|instruction|ALT_INV_out\(3),
	datac => \U|DP|loadB|ALT_INV_out\(4),
	datad => \U|DP|loadB|ALT_INV_out\(5),
	dataf => \U|DP|loadB|ALT_INV_out\(6),
	combout => \rtl~38_combout\);

-- Location: MLABCELL_X84_Y5_N57
\U|DP|alu|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector10~0_combout\ = ( \rtl~38_combout\ & ( (\U|DP|Muxa|comb~5_combout\ & !\U|DP|alu|Equal0~0_combout\) ) ) # ( !\rtl~38_combout\ & ( \U|DP|alu|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|Muxa|ALT_INV_comb~5_combout\,
	datac => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_rtl~38_combout\,
	combout => \U|DP|alu|Selector10~0_combout\);

-- Location: FF_X84_Y5_N55
\U|DP|loadC|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[5]~feeder_combout\,
	asdata => \U|DP|alu|Selector10~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(5));

-- Location: MLABCELL_X84_Y5_N21
\U|DP|Mux1lab6|comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~5_combout\ = ( \U|DP|loadC|out\(5) & ( (!\U|FSM|vsel\(1)) # (\U|instruction|out\(5)) ) ) # ( !\U|DP|loadC|out\(5) & ( (\U|FSM|vsel\(1) & \U|instruction|out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|FSM|ALT_INV_vsel\(1),
	datac => \U|instruction|ALT_INV_out\(5),
	dataf => \U|DP|loadC|ALT_INV_out\(5),
	combout => \U|DP|Mux1lab6|comb~5_combout\);

-- Location: LABCELL_X81_Y5_N3
\U|DP|REGFILE|Reg5|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg5|out[5]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~5_combout\,
	combout => \U|DP|REGFILE|Reg5|out[5]~feeder_combout\);

-- Location: FF_X81_Y5_N4
\U|DP|REGFILE|Reg5|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg5|out[5]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(5));

-- Location: FF_X84_Y5_N22
\U|DP|REGFILE|Reg7|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|Mux1lab6|comb~5_combout\,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(5));

-- Location: LABCELL_X83_Y5_N15
\U|DP|REGFILE|Reg6|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg6|out[5]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~5_combout\,
	combout => \U|DP|REGFILE|Reg6|out[5]~feeder_combout\);

-- Location: FF_X83_Y5_N16
\U|DP|REGFILE|Reg6|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg6|out[5]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(5));

-- Location: LABCELL_X88_Y5_N24
\U|DP|REGFILE|regmux|b[5]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[5]~17_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg6|out\(5)) # (\U|DP|REGFILE|Reg7|out\(5)) ) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( \U|DP|REGFILE|Reg6|out\(5) ) ) ) # ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\ & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( 
-- \U|DP|REGFILE|Reg7|out\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg7|ALT_INV_out\(5),
	datad => \U|DP|REGFILE|Reg6|ALT_INV_out\(5),
	datae => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	combout => \U|DP|REGFILE|regmux|b[5]~17_combout\);

-- Location: MLABCELL_X84_Y6_N0
\U|DP|REGFILE|Reg4|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg4|out[5]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~5_combout\,
	combout => \U|DP|REGFILE|Reg4|out[5]~feeder_combout\);

-- Location: FF_X84_Y6_N2
\U|DP|REGFILE|Reg4|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg4|out[5]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(5));

-- Location: MLABCELL_X84_Y6_N21
\U|DP|REGFILE|Reg2|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg2|out[5]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~5_combout\,
	combout => \U|DP|REGFILE|Reg2|out[5]~feeder_combout\);

-- Location: FF_X84_Y6_N22
\U|DP|REGFILE|Reg2|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg2|out[5]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(5));

-- Location: FF_X84_Y6_N41
\U|DP|REGFILE|Reg0|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~5_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(5));

-- Location: MLABCELL_X84_Y6_N39
\U|DP|REGFILE|regmux|b[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[5]~15_combout\ = ( \U|DP|REGFILE|Reg0|out\(5) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (((\U|DP|REGFILE|Reg2|out\(5) & \U|insDec|Rmux|b\(2))))) # (\U|insDec|Rmux|b\(1) & (((\U|insDec|Rmux|b\(2))) # 
-- (\U|DP|REGFILE|Reg4|out\(5)))) ) ) ) # ( !\U|DP|REGFILE|Reg0|out\(5) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(1) & (((\U|DP|REGFILE|Reg2|out\(5) & \U|insDec|Rmux|b\(2))))) # (\U|insDec|Rmux|b\(1) & (\U|DP|REGFILE|Reg4|out\(5) & 
-- ((!\U|insDec|Rmux|b\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101001100000000010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg4|ALT_INV_out\(5),
	datab => \U|DP|REGFILE|Reg2|ALT_INV_out\(5),
	datac => \U|insDec|Rmux|ALT_INV_b\(1),
	datad => \U|insDec|Rmux|ALT_INV_b\(2),
	datae => \U|DP|REGFILE|Reg0|ALT_INV_out\(5),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|regmux|b[5]~15_combout\);

-- Location: LABCELL_X81_Y5_N54
\U|DP|REGFILE|Reg1|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg1|out[5]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~5_combout\,
	combout => \U|DP|REGFILE|Reg1|out[5]~feeder_combout\);

-- Location: FF_X81_Y5_N55
\U|DP|REGFILE|Reg1|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg1|out[5]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(5));

-- Location: FF_X88_Y5_N53
\U|DP|REGFILE|Reg3|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~5_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(5));

-- Location: LABCELL_X88_Y5_N51
\U|DP|REGFILE|regmux|b[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[5]~16_combout\ = ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( ((\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & \U|DP|REGFILE|Reg3|out\(5))) # (\U|DP|REGFILE|Reg1|out\(5)) ) ) # ( 
-- !\U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( (\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ & \U|DP|REGFILE|Reg3|out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg1|ALT_INV_out\(5),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	datad => \U|DP|REGFILE|Reg3|ALT_INV_out\(5),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \U|DP|REGFILE|regmux|b[5]~16_combout\);

-- Location: MLABCELL_X87_Y5_N57
\U|DP|REGFILE|regmux|b[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(5) = ( \U|DP|REGFILE|regmux|b[5]~16_combout\ ) # ( !\U|DP|REGFILE|regmux|b[5]~16_combout\ & ( (((\U|DP|REGFILE|Reg5|out\(5) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|regmux|b[5]~15_combout\)) # 
-- (\U|DP|REGFILE|regmux|b[5]~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg5|ALT_INV_out\(5),
	datab => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datac => \U|DP|REGFILE|regmux|ALT_INV_b[5]~17_combout\,
	datad => \U|DP|REGFILE|regmux|ALT_INV_b[5]~15_combout\,
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[5]~16_combout\,
	combout => \U|DP|REGFILE|regmux|b\(5));

-- Location: FF_X87_Y5_N50
\U|DP|loadB|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(5),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(5));

-- Location: MLABCELL_X84_Y5_N24
\U|DP|loadC|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[4]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~17_sumout\,
	combout => \U|DP|loadC|out[4]~feeder_combout\);

-- Location: LABCELL_X88_Y4_N27
\rtl~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~37_combout\ = ( \U|DP|loadB|out\(5) & ( \U|instruction|out\(3) & ( (\U|DP|loadB|out[3]~DUPLICATE_q\) # (\U|instruction|out\(4)) ) ) ) # ( !\U|DP|loadB|out\(5) & ( \U|instruction|out\(3) & ( (!\U|instruction|out\(4) & \U|DP|loadB|out[3]~DUPLICATE_q\) 
-- ) ) ) # ( \U|DP|loadB|out\(5) & ( !\U|instruction|out\(3) & ( (\U|DP|loadB|out\(4)) # (\U|instruction|out\(4)) ) ) ) # ( !\U|DP|loadB|out\(5) & ( !\U|instruction|out\(3) & ( (!\U|instruction|out\(4) & \U|DP|loadB|out\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(4),
	datab => \U|DP|loadB|ALT_INV_out\(4),
	datad => \U|DP|loadB|ALT_INV_out[3]~DUPLICATE_q\,
	datae => \U|DP|loadB|ALT_INV_out\(5),
	dataf => \U|instruction|ALT_INV_out\(3),
	combout => \rtl~37_combout\);

-- Location: MLABCELL_X84_Y5_N27
\U|DP|alu|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector11~0_combout\ = ( \rtl~37_combout\ & ( (!\U|DP|alu|Equal0~0_combout\ & \U|DP|Muxa|comb~4_combout\) ) ) # ( !\rtl~37_combout\ & ( \U|DP|alu|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	datad => \U|DP|Muxa|ALT_INV_comb~4_combout\,
	dataf => \ALT_INV_rtl~37_combout\,
	combout => \U|DP|alu|Selector11~0_combout\);

-- Location: FF_X84_Y5_N26
\U|DP|loadC|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[4]~feeder_combout\,
	asdata => \U|DP|alu|Selector11~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(4));

-- Location: MLABCELL_X84_Y5_N12
\U|DP|Mux1lab6|comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|Mux1lab6|comb~4_combout\ = ( \U|FSM|vsel\(1) & ( \U|instruction|out\(4) ) ) # ( !\U|FSM|vsel\(1) & ( \U|DP|loadC|out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(4),
	datab => \U|instruction|ALT_INV_out\(4),
	dataf => \U|FSM|ALT_INV_vsel\(1),
	combout => \U|DP|Mux1lab6|comb~4_combout\);

-- Location: MLABCELL_X82_Y7_N42
\U|DP|REGFILE|Reg4|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg4|out[4]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~4_combout\,
	combout => \U|DP|REGFILE|Reg4|out[4]~feeder_combout\);

-- Location: FF_X82_Y7_N43
\U|DP|REGFILE|Reg4|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg4|out[4]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg4|out\(4));

-- Location: MLABCELL_X82_Y7_N15
\U|DP|REGFILE|Reg2|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg2|out[4]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~4_combout\,
	combout => \U|DP|REGFILE|Reg2|out[4]~feeder_combout\);

-- Location: FF_X82_Y7_N16
\U|DP|REGFILE|Reg2|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg2|out[4]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg2|out\(4));

-- Location: FF_X87_Y7_N50
\U|DP|REGFILE|Reg0|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~4_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg0|out\(4));

-- Location: MLABCELL_X87_Y7_N48
\U|DP|REGFILE|regmux|b[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[4]~12_combout\ = ( \U|DP|REGFILE|Reg0|out\(4) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(2) & (\U|DP|REGFILE|Reg4|out\(4) & ((\U|insDec|Rmux|b\(1))))) # (\U|insDec|Rmux|b\(2) & (((\U|insDec|Rmux|b\(1)) # 
-- (\U|DP|REGFILE|Reg2|out\(4))))) ) ) ) # ( !\U|DP|REGFILE|Reg0|out\(4) & ( \U|insDec|Rmux|b\(0) & ( (!\U|insDec|Rmux|b\(2) & (\U|DP|REGFILE|Reg4|out\(4) & ((\U|insDec|Rmux|b\(1))))) # (\U|insDec|Rmux|b\(2) & (((\U|DP|REGFILE|Reg2|out\(4) & 
-- !\U|insDec|Rmux|b\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011010100000000001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|Reg4|ALT_INV_out\(4),
	datab => \U|DP|REGFILE|Reg2|ALT_INV_out\(4),
	datac => \U|insDec|Rmux|ALT_INV_b\(2),
	datad => \U|insDec|Rmux|ALT_INV_b\(1),
	datae => \U|DP|REGFILE|Reg0|ALT_INV_out\(4),
	dataf => \U|insDec|Rmux|ALT_INV_b\(0),
	combout => \U|DP|REGFILE|regmux|b[4]~12_combout\);

-- Location: LABCELL_X81_Y5_N6
\U|DP|REGFILE|Reg5|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|Reg5|out[4]~feeder_combout\ = ( \U|DP|Mux1lab6|comb~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|Mux1lab6|ALT_INV_comb~4_combout\,
	combout => \U|DP|REGFILE|Reg5|out[4]~feeder_combout\);

-- Location: FF_X81_Y5_N7
\U|DP|REGFILE|Reg5|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|REGFILE|Reg5|out[4]~feeder_combout\,
	ena => \U|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg5|out\(4));

-- Location: FF_X84_Y5_N46
\U|DP|REGFILE|Reg7|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~4_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg7|out\(4));

-- Location: FF_X88_Y3_N17
\U|DP|REGFILE|Reg6|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~4_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg6|out\(4));

-- Location: LABCELL_X88_Y3_N15
\U|DP|REGFILE|regmux|b[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[4]~14_combout\ = ( \U|DP|REGFILE|Reg6|out\(4) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ ) ) # ( !\U|DP|REGFILE|Reg6|out\(4) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(4) & 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) ) # ( \U|DP|REGFILE|Reg6|out\(4) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(4) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) ) # ( 
-- !\U|DP|REGFILE|Reg6|out\(4) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~3_combout\ & ( (\U|DP|REGFILE|Reg7|out\(4) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg7|ALT_INV_out\(4),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~4_combout\,
	datae => \U|DP|REGFILE|Reg6|ALT_INV_out\(4),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~3_combout\,
	combout => \U|DP|REGFILE|regmux|b[4]~14_combout\);

-- Location: FF_X85_Y3_N16
\U|DP|REGFILE|Reg1|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~4_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg1|out\(4));

-- Location: FF_X88_Y3_N32
\U|DP|REGFILE|Reg3|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|Mux1lab6|comb~4_combout\,
	sload => VCC,
	ena => \U|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|REGFILE|Reg3|out\(4));

-- Location: LABCELL_X88_Y3_N30
\U|DP|REGFILE|regmux|b[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b[4]~13_combout\ = ( \U|DP|REGFILE|Reg3|out\(4) & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( (\U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\) # (\U|DP|REGFILE|Reg1|out\(4)) ) ) ) # ( !\U|DP|REGFILE|Reg3|out\(4) & ( 
-- \U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( \U|DP|REGFILE|Reg1|out\(4) ) ) ) # ( \U|DP|REGFILE|Reg3|out\(4) & ( !\U|DP|REGFILE|readnum_dec|ShiftLeft0~1_combout\ & ( \U|DP|REGFILE|readnum_dec|ShiftLeft0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|REGFILE|Reg1|ALT_INV_out\(4),
	datac => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~2_combout\,
	datae => \U|DP|REGFILE|Reg3|ALT_INV_out\(4),
	dataf => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~1_combout\,
	combout => \U|DP|REGFILE|regmux|b[4]~13_combout\);

-- Location: MLABCELL_X87_Y3_N27
\U|DP|REGFILE|regmux|b[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|REGFILE|regmux|b\(4) = ( \U|DP|REGFILE|regmux|b[4]~14_combout\ & ( \U|DP|REGFILE|regmux|b[4]~13_combout\ ) ) # ( !\U|DP|REGFILE|regmux|b[4]~14_combout\ & ( \U|DP|REGFILE|regmux|b[4]~13_combout\ ) ) # ( \U|DP|REGFILE|regmux|b[4]~14_combout\ & ( 
-- !\U|DP|REGFILE|regmux|b[4]~13_combout\ ) ) # ( !\U|DP|REGFILE|regmux|b[4]~14_combout\ & ( !\U|DP|REGFILE|regmux|b[4]~13_combout\ & ( ((\U|DP|REGFILE|Reg5|out\(4) & \U|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # (\U|DP|REGFILE|regmux|b[4]~12_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|REGFILE|regmux|ALT_INV_b[4]~12_combout\,
	datac => \U|DP|REGFILE|Reg5|ALT_INV_out\(4),
	datad => \U|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datae => \U|DP|REGFILE|regmux|ALT_INV_b[4]~14_combout\,
	dataf => \U|DP|REGFILE|regmux|ALT_INV_b[4]~13_combout\,
	combout => \U|DP|REGFILE|regmux|b\(4));

-- Location: FF_X87_Y3_N55
\U|DP|loadB|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \U|DP|REGFILE|regmux|b\(4),
	sload => VCC,
	ena => \U|FSM|loadb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadB|out\(4));

-- Location: LABCELL_X83_Y5_N51
\U|DP|loadC|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadC|out[3]~feeder_combout\ = ( \U|DP|alu|addersubtractor|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~13_sumout\,
	combout => \U|DP|loadC|out[3]~feeder_combout\);

-- Location: LABCELL_X88_Y4_N6
\rtl~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~36_combout\ = ( \U|DP|loadB|out\(4) & ( ((!\U|instruction|out\(3) & (\U|DP|loadB|out[3]~DUPLICATE_q\)) # (\U|instruction|out\(3) & ((\U|DP|loadB|out\(2))))) # (\U|instruction|out\(4)) ) ) # ( !\U|DP|loadB|out\(4) & ( (!\U|instruction|out\(4) & 
-- ((!\U|instruction|out\(3) & (\U|DP|loadB|out[3]~DUPLICATE_q\)) # (\U|instruction|out\(3) & ((\U|DP|loadB|out\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(4),
	datab => \U|instruction|ALT_INV_out\(3),
	datac => \U|DP|loadB|ALT_INV_out[3]~DUPLICATE_q\,
	datad => \U|DP|loadB|ALT_INV_out\(2),
	dataf => \U|DP|loadB|ALT_INV_out\(4),
	combout => \rtl~36_combout\);

-- Location: LABCELL_X85_Y4_N24
\U|DP|alu|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|Selector12~0_combout\ = ( \rtl~36_combout\ & ( \U|DP|Muxa|comb~3_combout\ & ( !\U|DP|alu|Equal0~0_combout\ ) ) ) # ( !\rtl~36_combout\ & ( \U|DP|Muxa|comb~3_combout\ & ( \U|DP|alu|Equal0~0_combout\ ) ) ) # ( !\rtl~36_combout\ & ( 
-- !\U|DP|Muxa|comb~3_combout\ & ( \U|DP|alu|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|alu|ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_rtl~36_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~3_combout\,
	combout => \U|DP|alu|Selector12~0_combout\);

-- Location: FF_X83_Y5_N52
\U|DP|loadC|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[3]~feeder_combout\,
	asdata => \U|DP|alu|Selector12~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(3));

-- Location: MLABCELL_X87_Y9_N0
\H0|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr6~0_combout\ = ( \U|DP|loadC|out\(1) & ( \U|DP|loadC|out\(0) & ( !\U|DP|loadC|out\(3) $ (!\U|DP|loadC|out\(2)) ) ) ) # ( !\U|DP|loadC|out\(1) & ( \U|DP|loadC|out\(0) & ( !\U|DP|loadC|out\(3) $ (\U|DP|loadC|out\(2)) ) ) ) # ( !\U|DP|loadC|out\(1) 
-- & ( !\U|DP|loadC|out\(0) & ( (!\U|DP|loadC|out\(3) & \U|DP|loadC|out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011000011110000110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|loadC|ALT_INV_out\(3),
	datac => \U|DP|loadC|ALT_INV_out\(2),
	datae => \U|DP|loadC|ALT_INV_out\(1),
	dataf => \U|DP|loadC|ALT_INV_out\(0),
	combout => \H0|WideOr6~0_combout\);

-- Location: MLABCELL_X87_Y9_N42
\H0|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr5~0_combout\ = ( \U|DP|loadC|out\(1) & ( \U|DP|loadC|out\(0) & ( (\U|DP|loadC|out\(2)) # (\U|DP|loadC|out\(3)) ) ) ) # ( !\U|DP|loadC|out\(1) & ( \U|DP|loadC|out\(0) & ( (!\U|DP|loadC|out\(3) & \U|DP|loadC|out\(2)) ) ) ) # ( \U|DP|loadC|out\(1) 
-- & ( !\U|DP|loadC|out\(0) & ( \U|DP|loadC|out\(2) ) ) ) # ( !\U|DP|loadC|out\(1) & ( !\U|DP|loadC|out\(0) & ( (\U|DP|loadC|out\(3) & \U|DP|loadC|out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|loadC|ALT_INV_out\(3),
	datac => \U|DP|loadC|ALT_INV_out\(2),
	datae => \U|DP|loadC|ALT_INV_out\(1),
	dataf => \U|DP|loadC|ALT_INV_out\(0),
	combout => \H0|WideOr5~0_combout\);

-- Location: MLABCELL_X87_Y9_N24
\H0|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr4~0_combout\ = ( \U|DP|loadC|out\(1) & ( \U|DP|loadC|out\(0) & ( \U|DP|loadC|out\(2) ) ) ) # ( \U|DP|loadC|out\(1) & ( !\U|DP|loadC|out\(0) & ( !\U|DP|loadC|out\(3) $ (\U|DP|loadC|out\(2)) ) ) ) # ( !\U|DP|loadC|out\(1) & ( !\U|DP|loadC|out\(0) 
-- & ( (\U|DP|loadC|out\(3) & \U|DP|loadC|out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000111100001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|loadC|ALT_INV_out\(3),
	datac => \U|DP|loadC|ALT_INV_out\(2),
	datae => \U|DP|loadC|ALT_INV_out\(1),
	dataf => \U|DP|loadC|ALT_INV_out\(0),
	combout => \H0|WideOr4~0_combout\);

-- Location: MLABCELL_X87_Y9_N9
\H0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr3~0_combout\ = ( \U|DP|loadC|out\(1) & ( \U|DP|loadC|out\(0) & ( (\U|DP|loadC|out\(2) & \U|DP|loadC|out\(3)) ) ) ) # ( !\U|DP|loadC|out\(1) & ( \U|DP|loadC|out\(0) & ( !\U|DP|loadC|out\(2) ) ) ) # ( \U|DP|loadC|out\(1) & ( !\U|DP|loadC|out\(0) & 
-- ( (!\U|DP|loadC|out\(2) & \U|DP|loadC|out\(3)) ) ) ) # ( !\U|DP|loadC|out\(1) & ( !\U|DP|loadC|out\(0) & ( (\U|DP|loadC|out\(2) & !\U|DP|loadC|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000010100000101010101010101010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(2),
	datac => \U|DP|loadC|ALT_INV_out\(3),
	datae => \U|DP|loadC|ALT_INV_out\(1),
	dataf => \U|DP|loadC|ALT_INV_out\(0),
	combout => \H0|WideOr3~0_combout\);

-- Location: MLABCELL_X87_Y9_N15
\H0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr2~0_combout\ = ( \U|DP|loadC|out\(1) & ( \U|DP|loadC|out\(0) & ( (!\U|DP|loadC|out\(2) & !\U|DP|loadC|out\(3)) ) ) ) # ( !\U|DP|loadC|out\(1) & ( \U|DP|loadC|out\(0) & ( (!\U|DP|loadC|out\(2)) # (!\U|DP|loadC|out\(3)) ) ) ) # ( 
-- !\U|DP|loadC|out\(1) & ( !\U|DP|loadC|out\(0) & ( (\U|DP|loadC|out\(2) & !\U|DP|loadC|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000011111010111110101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(2),
	datac => \U|DP|loadC|ALT_INV_out\(3),
	datae => \U|DP|loadC|ALT_INV_out\(1),
	dataf => \U|DP|loadC|ALT_INV_out\(0),
	combout => \H0|WideOr2~0_combout\);

-- Location: MLABCELL_X87_Y9_N30
\H0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr1~0_combout\ = ( \U|DP|loadC|out\(1) & ( \U|DP|loadC|out\(0) & ( (!\U|DP|loadC|out\(3) & !\U|DP|loadC|out\(2)) ) ) ) # ( !\U|DP|loadC|out\(1) & ( \U|DP|loadC|out\(0) & ( !\U|DP|loadC|out\(3) $ (\U|DP|loadC|out\(2)) ) ) ) # ( \U|DP|loadC|out\(1) 
-- & ( !\U|DP|loadC|out\(0) & ( (!\U|DP|loadC|out\(3) & !\U|DP|loadC|out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000011110000111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|loadC|ALT_INV_out\(3),
	datac => \U|DP|loadC|ALT_INV_out\(2),
	datae => \U|DP|loadC|ALT_INV_out\(1),
	dataf => \U|DP|loadC|ALT_INV_out\(0),
	combout => \H0|WideOr1~0_combout\);

-- Location: MLABCELL_X87_Y9_N51
\H0|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = ( \U|DP|loadC|out\(1) & ( \U|DP|loadC|out\(0) ) ) # ( !\U|DP|loadC|out\(1) & ( \U|DP|loadC|out\(0) & ( (\U|DP|loadC|out\(3)) # (\U|DP|loadC|out\(2)) ) ) ) # ( \U|DP|loadC|out\(1) & ( !\U|DP|loadC|out\(0) ) ) # ( 
-- !\U|DP|loadC|out\(1) & ( !\U|DP|loadC|out\(0) & ( !\U|DP|loadC|out\(2) $ (!\U|DP|loadC|out\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010111111111111111101011111010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(2),
	datac => \U|DP|loadC|ALT_INV_out\(3),
	datae => \U|DP|loadC|ALT_INV_out\(1),
	dataf => \U|DP|loadC|ALT_INV_out\(0),
	combout => \H0|WideOr0~0_combout\);

-- Location: MLABCELL_X84_Y5_N48
\H1|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr6~0_combout\ = ( \U|DP|loadC|out\(7) & ( (\U|DP|loadC|out\(4) & (!\U|DP|loadC|out\(5) $ (!\U|DP|loadC|out\(6)))) ) ) # ( !\U|DP|loadC|out\(7) & ( (!\U|DP|loadC|out\(4) & (!\U|DP|loadC|out\(5) & \U|DP|loadC|out\(6))) # (\U|DP|loadC|out\(4) & 
-- (!\U|DP|loadC|out\(5) $ (\U|DP|loadC|out\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(4),
	datab => \U|DP|loadC|ALT_INV_out\(5),
	datac => \U|DP|loadC|ALT_INV_out\(6),
	dataf => \U|DP|loadC|ALT_INV_out\(7),
	combout => \H1|WideOr6~0_combout\);

-- Location: MLABCELL_X84_Y5_N51
\H1|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr5~0_combout\ = ( \U|DP|loadC|out\(7) & ( (!\U|DP|loadC|out\(4) & ((\U|DP|loadC|out\(6)))) # (\U|DP|loadC|out\(4) & (\U|DP|loadC|out\(5))) ) ) # ( !\U|DP|loadC|out\(7) & ( (\U|DP|loadC|out\(6) & ((\U|DP|loadC|out\(5)) # (\U|DP|loadC|out\(4)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(4),
	datac => \U|DP|loadC|ALT_INV_out\(5),
	datad => \U|DP|loadC|ALT_INV_out\(6),
	dataf => \U|DP|loadC|ALT_INV_out\(7),
	combout => \H1|WideOr5~0_combout\);

-- Location: MLABCELL_X84_Y5_N33
\H1|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr4~0_combout\ = ( \U|DP|loadC|out\(7) & ( (\U|DP|loadC|out\(6) & ((!\U|DP|loadC|out\(4)) # (\U|DP|loadC|out\(5)))) ) ) # ( !\U|DP|loadC|out\(7) & ( (\U|DP|loadC|out\(5) & (!\U|DP|loadC|out\(4) $ (\U|DP|loadC|out\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010100000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(4),
	datac => \U|DP|loadC|ALT_INV_out\(5),
	datad => \U|DP|loadC|ALT_INV_out\(6),
	dataf => \U|DP|loadC|ALT_INV_out\(7),
	combout => \H1|WideOr4~0_combout\);

-- Location: MLABCELL_X84_Y5_N36
\H1|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr3~0_combout\ = ( \U|DP|loadC|out\(5) & ( (\U|DP|loadC|out\(7) & (!\U|DP|loadC|out\(4) $ (\U|DP|loadC|out\(6)))) ) ) # ( !\U|DP|loadC|out\(5) & ( (!\U|DP|loadC|out\(4) & (!\U|DP|loadC|out\(7) & \U|DP|loadC|out\(6))) # (\U|DP|loadC|out\(4) & 
-- ((!\U|DP|loadC|out\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100001011000010110000101100000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(4),
	datab => \U|DP|loadC|ALT_INV_out\(7),
	datac => \U|DP|loadC|ALT_INV_out\(6),
	dataf => \U|DP|loadC|ALT_INV_out\(5),
	combout => \H1|WideOr3~0_combout\);

-- Location: MLABCELL_X84_Y5_N39
\H1|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr2~0_combout\ = (!\U|DP|loadC|out\(6) & (\U|DP|loadC|out\(4) & ((!\U|DP|loadC|out\(7)) # (!\U|DP|loadC|out\(5))))) # (\U|DP|loadC|out\(6) & (((!\U|DP|loadC|out\(7) & !\U|DP|loadC|out\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010011000000010101001100000001010100110000000101010011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(4),
	datab => \U|DP|loadC|ALT_INV_out\(7),
	datac => \U|DP|loadC|ALT_INV_out\(5),
	datad => \U|DP|loadC|ALT_INV_out\(6),
	combout => \H1|WideOr2~0_combout\);

-- Location: MLABCELL_X84_Y5_N42
\H1|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr1~0_combout\ = ( \U|DP|loadC|out\(6) & ( (!\U|DP|loadC|out\(5) & (\U|DP|loadC|out\(7) & \U|DP|loadC|out\(4))) ) ) # ( !\U|DP|loadC|out\(6) & ( (!\U|DP|loadC|out\(7) & ((\U|DP|loadC|out\(4)) # (\U|DP|loadC|out\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100000000100000001001001100010011000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(5),
	datab => \U|DP|loadC|ALT_INV_out\(7),
	datac => \U|DP|loadC|ALT_INV_out\(4),
	datae => \U|DP|loadC|ALT_INV_out\(6),
	combout => \H1|WideOr1~0_combout\);

-- Location: MLABCELL_X84_Y5_N15
\H1|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr0~0_combout\ = ( \U|DP|loadC|out\(7) & ( ((!\U|DP|loadC|out\(6)) # (\U|DP|loadC|out\(5))) # (\U|DP|loadC|out\(4)) ) ) # ( !\U|DP|loadC|out\(7) & ( (\U|DP|loadC|out\(6)) # (\U|DP|loadC|out\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(4),
	datac => \U|DP|loadC|ALT_INV_out\(5),
	datad => \U|DP|loadC|ALT_INV_out\(6),
	dataf => \U|DP|loadC|ALT_INV_out\(7),
	combout => \H1|WideOr0~0_combout\);

-- Location: FF_X84_Y4_N23
\U|DP|loadC|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadC|out[10]~feeder_combout\,
	asdata => \U|DP|alu|Selector5~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loadc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadC|out\(10));

-- Location: MLABCELL_X84_Y4_N3
\H2|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr6~0_combout\ = ( \U|DP|loadC|out\(8) & ( !\U|DP|loadC|out\(11) $ (!\U|DP|loadC|out\(9) $ (!\U|DP|loadC|out\(10))) ) ) # ( !\U|DP|loadC|out\(8) & ( (!\U|DP|loadC|out\(11) & (!\U|DP|loadC|out\(9) & \U|DP|loadC|out\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(11),
	datac => \U|DP|loadC|ALT_INV_out\(9),
	datad => \U|DP|loadC|ALT_INV_out\(10),
	dataf => \U|DP|loadC|ALT_INV_out\(8),
	combout => \H2|WideOr6~0_combout\);

-- Location: MLABCELL_X84_Y4_N36
\H2|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr5~0_combout\ = ( \U|DP|loadC|out\(8) & ( (!\U|DP|loadC|out\(11) & (\U|DP|loadC|out\(10))) # (\U|DP|loadC|out\(11) & ((\U|DP|loadC|out\(9)))) ) ) # ( !\U|DP|loadC|out\(8) & ( (\U|DP|loadC|out\(10) & ((\U|DP|loadC|out\(11)) # 
-- (\U|DP|loadC|out\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(10),
	datab => \U|DP|loadC|ALT_INV_out\(9),
	datac => \U|DP|loadC|ALT_INV_out\(11),
	dataf => \U|DP|loadC|ALT_INV_out\(8),
	combout => \H2|WideOr5~0_combout\);

-- Location: MLABCELL_X84_Y4_N39
\H2|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr4~0_combout\ = ( \U|DP|loadC|out\(8) & ( (\U|DP|loadC|out\(10) & \U|DP|loadC|out\(9)) ) ) # ( !\U|DP|loadC|out\(8) & ( (!\U|DP|loadC|out\(10) & (\U|DP|loadC|out\(9) & !\U|DP|loadC|out\(11))) # (\U|DP|loadC|out\(10) & ((\U|DP|loadC|out\(11)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001010101001000100101010100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(10),
	datab => \U|DP|loadC|ALT_INV_out\(9),
	datad => \U|DP|loadC|ALT_INV_out\(11),
	dataf => \U|DP|loadC|ALT_INV_out\(8),
	combout => \H2|WideOr4~0_combout\);

-- Location: MLABCELL_X84_Y4_N6
\H2|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr3~0_combout\ = ( \U|DP|loadC|out\(8) & ( (!\U|DP|loadC|out\(10) & (!\U|DP|loadC|out\(9))) # (\U|DP|loadC|out\(10) & (\U|DP|loadC|out\(9) & \U|DP|loadC|out\(11))) ) ) # ( !\U|DP|loadC|out\(8) & ( (!\U|DP|loadC|out\(10) & (\U|DP|loadC|out\(9) & 
-- \U|DP|loadC|out\(11))) # (\U|DP|loadC|out\(10) & (!\U|DP|loadC|out\(9) & !\U|DP|loadC|out\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010001001100010011000100110001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(10),
	datab => \U|DP|loadC|ALT_INV_out\(9),
	datac => \U|DP|loadC|ALT_INV_out\(11),
	dataf => \U|DP|loadC|ALT_INV_out\(8),
	combout => \H2|WideOr3~0_combout\);

-- Location: MLABCELL_X84_Y4_N9
\H2|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr2~0_combout\ = ( \U|DP|loadC|out\(8) & ( (!\U|DP|loadC|out\(10) & ((!\U|DP|loadC|out\(9)) # (!\U|DP|loadC|out\(11)))) # (\U|DP|loadC|out\(10) & (!\U|DP|loadC|out\(9) & !\U|DP|loadC|out\(11))) ) ) # ( !\U|DP|loadC|out\(8) & ( 
-- (\U|DP|loadC|out\(10) & (!\U|DP|loadC|out\(9) & !\U|DP|loadC|out\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011101110100010001110111010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(10),
	datab => \U|DP|loadC|ALT_INV_out\(9),
	datad => \U|DP|loadC|ALT_INV_out\(11),
	dataf => \U|DP|loadC|ALT_INV_out\(8),
	combout => \H2|WideOr2~0_combout\);

-- Location: MLABCELL_X84_Y4_N12
\H2|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr1~0_combout\ = (!\U|DP|loadC|out\(9) & (\U|DP|loadC|out\(8) & (!\U|DP|loadC|out\(10) $ (\U|DP|loadC|out\(11))))) # (\U|DP|loadC|out\(9) & (!\U|DP|loadC|out\(10) & ((!\U|DP|loadC|out\(11)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000100001010100000010000101010000001000010101000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(10),
	datab => \U|DP|loadC|ALT_INV_out\(9),
	datac => \U|DP|loadC|ALT_INV_out\(8),
	datad => \U|DP|loadC|ALT_INV_out\(11),
	combout => \H2|WideOr1~0_combout\);

-- Location: MLABCELL_X84_Y4_N15
\H2|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|WideOr0~0_combout\ = ( \U|DP|loadC|out\(8) & ( ((\U|DP|loadC|out\(11)) # (\U|DP|loadC|out\(9))) # (\U|DP|loadC|out\(10)) ) ) # ( !\U|DP|loadC|out\(8) & ( (!\U|DP|loadC|out\(10) $ (!\U|DP|loadC|out\(11))) # (\U|DP|loadC|out\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011110111011011101111011101101110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(10),
	datab => \U|DP|loadC|ALT_INV_out\(9),
	datad => \U|DP|loadC|ALT_INV_out\(11),
	dataf => \U|DP|loadC|ALT_INV_out\(8),
	combout => \H2|WideOr0~0_combout\);

-- Location: MLABCELL_X87_Y8_N12
\H3|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr6~0_combout\ = ( \U|DP|loadC|out\(14) & ( \U|DP|loadC|out\(12) & ( !\U|DP|loadC|out\(15) $ (!\U|DP|loadC|out\(13)) ) ) ) # ( !\U|DP|loadC|out\(14) & ( \U|DP|loadC|out\(12) & ( !\U|DP|loadC|out\(15) $ (\U|DP|loadC|out\(13)) ) ) ) # ( 
-- \U|DP|loadC|out\(14) & ( !\U|DP|loadC|out\(12) & ( (!\U|DP|loadC|out\(15) & !\U|DP|loadC|out\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000011110000110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|loadC|ALT_INV_out\(15),
	datac => \U|DP|loadC|ALT_INV_out\(13),
	datae => \U|DP|loadC|ALT_INV_out\(14),
	dataf => \U|DP|loadC|ALT_INV_out\(12),
	combout => \H3|WideOr6~0_combout\);

-- Location: MLABCELL_X87_Y8_N39
\H3|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr5~0_combout\ = ( \U|DP|loadC|out\(14) & ( (!\U|DP|loadC|out\(15) $ (!\U|DP|loadC|out\(12))) # (\U|DP|loadC|out\(13)) ) ) # ( !\U|DP|loadC|out\(14) & ( (\U|DP|loadC|out\(13) & (\U|DP|loadC|out\(15) & \U|DP|loadC|out\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001011111010111110100000001000000010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(13),
	datab => \U|DP|loadC|ALT_INV_out\(15),
	datac => \U|DP|loadC|ALT_INV_out\(12),
	datae => \U|DP|loadC|ALT_INV_out\(14),
	combout => \H3|WideOr5~0_combout\);

-- Location: MLABCELL_X87_Y8_N45
\H3|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr4~0_combout\ = ( \U|DP|loadC|out\(14) & ( \U|DP|loadC|out\(13) & ( (\U|DP|loadC|out\(12)) # (\U|DP|loadC|out\(15)) ) ) ) # ( !\U|DP|loadC|out\(14) & ( \U|DP|loadC|out\(13) & ( (!\U|DP|loadC|out\(15) & !\U|DP|loadC|out\(12)) ) ) ) # ( 
-- \U|DP|loadC|out\(14) & ( !\U|DP|loadC|out\(13) & ( (\U|DP|loadC|out\(15) & !\U|DP|loadC|out\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011000000110000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|loadC|ALT_INV_out\(15),
	datac => \U|DP|loadC|ALT_INV_out\(12),
	datae => \U|DP|loadC|ALT_INV_out\(14),
	dataf => \U|DP|loadC|ALT_INV_out\(13),
	combout => \H3|WideOr4~0_combout\);

-- Location: MLABCELL_X87_Y8_N24
\H3|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr3~0_combout\ = ( \U|DP|loadC|out\(15) & ( (!\U|DP|loadC|out\(12) & (\U|DP|loadC|out\(13) & !\U|DP|loadC|out\(14))) # (\U|DP|loadC|out\(12) & (!\U|DP|loadC|out\(13) $ (\U|DP|loadC|out\(14)))) ) ) # ( !\U|DP|loadC|out\(15) & ( 
-- (!\U|DP|loadC|out\(13) & (!\U|DP|loadC|out\(12) $ (!\U|DP|loadC|out\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000111100000000110011110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|loadC|ALT_INV_out\(12),
	datac => \U|DP|loadC|ALT_INV_out\(13),
	datad => \U|DP|loadC|ALT_INV_out\(14),
	dataf => \U|DP|loadC|ALT_INV_out\(15),
	combout => \H3|WideOr3~0_combout\);

-- Location: MLABCELL_X87_Y8_N18
\H3|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr2~0_combout\ = ( \U|DP|loadC|out\(15) & ( (!\U|DP|loadC|out\(13) & (\U|DP|loadC|out\(12) & !\U|DP|loadC|out\(14))) ) ) # ( !\U|DP|loadC|out\(15) & ( (!\U|DP|loadC|out\(14) & ((\U|DP|loadC|out\(12)))) # (\U|DP|loadC|out\(14) & 
-- (!\U|DP|loadC|out\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(13),
	datab => \U|DP|loadC|ALT_INV_out\(12),
	datac => \U|DP|loadC|ALT_INV_out\(14),
	dataf => \U|DP|loadC|ALT_INV_out\(15),
	combout => \H3|WideOr2~0_combout\);

-- Location: MLABCELL_X87_Y8_N21
\H3|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr1~0_combout\ = ( \U|DP|loadC|out\(15) & ( (!\U|DP|loadC|out\(13) & (\U|DP|loadC|out\(12) & \U|DP|loadC|out\(14))) ) ) # ( !\U|DP|loadC|out\(15) & ( (!\U|DP|loadC|out\(14) & ((\U|DP|loadC|out\(12)) # (\U|DP|loadC|out\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000011101110000000000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadC|ALT_INV_out\(13),
	datab => \U|DP|loadC|ALT_INV_out\(12),
	datad => \U|DP|loadC|ALT_INV_out\(14),
	dataf => \U|DP|loadC|ALT_INV_out\(15),
	combout => \H3|WideOr1~0_combout\);

-- Location: MLABCELL_X87_Y8_N27
\H3|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H3|WideOr0~0_combout\ = ( \U|DP|loadC|out\(15) & ( ((!\U|DP|loadC|out\(14)) # (\U|DP|loadC|out\(13))) # (\U|DP|loadC|out\(12)) ) ) # ( !\U|DP|loadC|out\(15) & ( (\U|DP|loadC|out\(14)) # (\U|DP|loadC|out\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|loadC|ALT_INV_out\(12),
	datac => \U|DP|loadC|ALT_INV_out\(13),
	datad => \U|DP|loadC|ALT_INV_out\(14),
	dataf => \U|DP|loadC|ALT_INV_out\(15),
	combout => \H3|WideOr0~0_combout\);

-- Location: LABCELL_X88_Y5_N0
\U|DP|loadS|out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~1_combout\ = ( \U|DP|alu|addersubtractor|Add0~13_sumout\ & ( \U|DP|alu|addersubtractor|Add0~17_sumout\ & ( !\U|instruction|out\(12) ) ) ) # ( !\U|DP|alu|addersubtractor|Add0~13_sumout\ & ( \U|DP|alu|addersubtractor|Add0~17_sumout\ & ( 
-- !\U|instruction|out\(12) ) ) ) # ( \U|DP|alu|addersubtractor|Add0~13_sumout\ & ( !\U|DP|alu|addersubtractor|Add0~17_sumout\ & ( !\U|instruction|out\(12) ) ) ) # ( !\U|DP|alu|addersubtractor|Add0~13_sumout\ & ( !\U|DP|alu|addersubtractor|Add0~17_sumout\ & 
-- ( (!\U|instruction|out\(12) & ((\U|DP|alu|addersubtractor|Add0~21_sumout\) # (\U|DP|alu|addersubtractor|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U|DP|alu|addersubtractor|ALT_INV_Add0~9_sumout\,
	datac => \U|instruction|ALT_INV_out\(12),
	datad => \U|DP|alu|addersubtractor|ALT_INV_Add0~21_sumout\,
	datae => \U|DP|alu|addersubtractor|ALT_INV_Add0~13_sumout\,
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~17_sumout\,
	combout => \U|DP|loadS|out[0]~1_combout\);

-- Location: LABCELL_X88_Y4_N42
\U|DP|loadS|out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~2_combout\ = ( !\U|DP|loadS|out[0]~1_combout\ & ( \U|DP|alu|addersubtractor|Add0~61_sumout\ & ( ((!\U|DP|alu|addersubtractor|Add0~25_sumout\ & (\U|DP|alu|addersubtractor|Add2~0_combout\ & !\U|DP|alu|addersubtractor|Add0~57_sumout\))) # 
-- (\U|instruction|out\(12)) ) ) ) # ( !\U|DP|loadS|out[0]~1_combout\ & ( !\U|DP|alu|addersubtractor|Add0~61_sumout\ & ( ((!\U|DP|alu|addersubtractor|Add0~25_sumout\ & (!\U|DP|alu|addersubtractor|Add2~0_combout\ & 
-- !\U|DP|alu|addersubtractor|Add0~57_sumout\))) # (\U|instruction|out\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111100001111000000000000000000101111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|alu|addersubtractor|ALT_INV_Add0~25_sumout\,
	datab => \U|DP|alu|addersubtractor|ALT_INV_Add2~0_combout\,
	datac => \U|instruction|ALT_INV_out\(12),
	datad => \U|DP|alu|addersubtractor|ALT_INV_Add0~57_sumout\,
	datae => \U|DP|loadS|ALT_INV_out[0]~1_combout\,
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~61_sumout\,
	combout => \U|DP|loadS|out[0]~2_combout\);

-- Location: LABCELL_X88_Y4_N48
\U|DP|loadS|out[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~4_combout\ = ( \U|DP|Muxa|comb~7_combout\ & ( \rtl~40_combout\ & ( (\U|instruction|out\(12) & ((!\U|instruction|out\(11)) # (!\rtl~41_combout\))) ) ) ) # ( !\U|DP|Muxa|comb~7_combout\ & ( \rtl~40_combout\ & ( (\U|instruction|out\(12) & 
-- ((!\U|instruction|out\(11) & (\U|DP|Muxa|comb~8_combout\ & \rtl~41_combout\)) # (\U|instruction|out\(11) & ((!\rtl~41_combout\))))) ) ) ) # ( \U|DP|Muxa|comb~7_combout\ & ( !\rtl~40_combout\ & ( (\U|instruction|out\(12) & (((\U|DP|Muxa|comb~8_combout\ & 
-- \rtl~41_combout\)) # (\U|instruction|out\(11)))) ) ) ) # ( !\U|DP|Muxa|comb~7_combout\ & ( !\rtl~40_combout\ & ( (\U|instruction|out\(12) & (((\U|DP|Muxa|comb~8_combout\ & \rtl~41_combout\)) # (\U|instruction|out\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101000001010001010100000101000100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(12),
	datab => \U|DP|Muxa|ALT_INV_comb~8_combout\,
	datac => \U|instruction|ALT_INV_out\(11),
	datad => \ALT_INV_rtl~41_combout\,
	datae => \U|DP|Muxa|ALT_INV_comb~7_combout\,
	dataf => \ALT_INV_rtl~40_combout\,
	combout => \U|DP|loadS|out[0]~4_combout\);

-- Location: LABCELL_X88_Y4_N54
\U|DP|loadS|out[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~5_combout\ = ( \rtl~39_combout\ & ( \U|DP|Muxa|comb~6_combout\ & ( (\U|instruction|out\(12) & ((!\U|instruction|out\(11)) # (!\rtl~38_combout\))) ) ) ) # ( !\rtl~39_combout\ & ( \U|DP|Muxa|comb~6_combout\ & ( (\U|instruction|out\(12) & 
-- (((\U|DP|Muxa|comb~5_combout\ & \rtl~38_combout\)) # (\U|instruction|out\(11)))) ) ) ) # ( \rtl~39_combout\ & ( !\U|DP|Muxa|comb~6_combout\ & ( (\U|instruction|out\(12) & ((!\U|instruction|out\(11) & (\U|DP|Muxa|comb~5_combout\ & \rtl~38_combout\)) # 
-- (\U|instruction|out\(11) & ((!\rtl~38_combout\))))) ) ) ) # ( !\rtl~39_combout\ & ( !\U|DP|Muxa|comb~6_combout\ & ( (\U|instruction|out\(12) & (((\U|DP|Muxa|comb~5_combout\ & \rtl~38_combout\)) # (\U|instruction|out\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101000001010001000000000101000101010101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(12),
	datab => \U|DP|Muxa|ALT_INV_comb~5_combout\,
	datac => \U|instruction|ALT_INV_out\(11),
	datad => \ALT_INV_rtl~38_combout\,
	datae => \ALT_INV_rtl~39_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~6_combout\,
	combout => \U|DP|loadS|out[0]~5_combout\);

-- Location: MLABCELL_X87_Y4_N42
\U|DP|loadS|out[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~3_combout\ = ( \U|DP|Muxa|comb~10_combout\ & ( \rtl~42_combout\ & ( (\U|instruction|out\(12) & ((!\rtl~43_combout\ & ((\U|instruction|out\(11)) # (\U|DP|Muxa|comb~9_combout\))) # (\rtl~43_combout\ & ((!\U|instruction|out\(11)))))) ) ) ) 
-- # ( !\U|DP|Muxa|comb~10_combout\ & ( \rtl~42_combout\ & ( (\U|instruction|out\(12) & ((!\U|instruction|out\(11) & ((\U|DP|Muxa|comb~9_combout\))) # (\U|instruction|out\(11) & (!\rtl~43_combout\)))) ) ) ) # ( \U|DP|Muxa|comb~10_combout\ & ( 
-- !\rtl~42_combout\ & ( (\U|instruction|out\(12) & ((\U|instruction|out\(11)) # (\rtl~43_combout\))) ) ) ) # ( !\U|DP|Muxa|comb~10_combout\ & ( !\rtl~42_combout\ & ( (\U|instruction|out\(11) & \U|instruction|out\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000101111100000000001110100000000001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rtl~43_combout\,
	datab => \U|DP|Muxa|ALT_INV_comb~9_combout\,
	datac => \U|instruction|ALT_INV_out\(11),
	datad => \U|instruction|ALT_INV_out\(12),
	datae => \U|DP|Muxa|ALT_INV_comb~10_combout\,
	dataf => \ALT_INV_rtl~42_combout\,
	combout => \U|DP|loadS|out[0]~3_combout\);

-- Location: LABCELL_X88_Y4_N0
\U|DP|loadS|out[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~6_combout\ = ( \rtl~37_combout\ & ( \U|DP|Muxa|comb~4_combout\ & ( (\U|instruction|out\(12) & ((!\rtl~36_combout\) # (!\U|instruction|out\(11)))) ) ) ) # ( !\rtl~37_combout\ & ( \U|DP|Muxa|comb~4_combout\ & ( (\U|instruction|out\(12) & 
-- (((\rtl~36_combout\ & \U|DP|Muxa|comb~3_combout\)) # (\U|instruction|out\(11)))) ) ) ) # ( \rtl~37_combout\ & ( !\U|DP|Muxa|comb~4_combout\ & ( (\U|instruction|out\(12) & ((!\rtl~36_combout\ & ((\U|instruction|out\(11)))) # (\rtl~36_combout\ & 
-- (\U|DP|Muxa|comb~3_combout\ & !\U|instruction|out\(11))))) ) ) ) # ( !\rtl~37_combout\ & ( !\U|DP|Muxa|comb~4_combout\ & ( (\U|instruction|out\(12) & (((\rtl~36_combout\ & \U|DP|Muxa|comb~3_combout\)) # (\U|instruction|out\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101000000010100010000000001010101010101010101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(12),
	datab => \ALT_INV_rtl~36_combout\,
	datac => \U|DP|Muxa|ALT_INV_comb~3_combout\,
	datad => \U|instruction|ALT_INV_out\(11),
	datae => \ALT_INV_rtl~37_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~4_combout\,
	combout => \U|DP|loadS|out[0]~6_combout\);

-- Location: MLABCELL_X87_Y9_N54
\U|FSM|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|FSM|Selector5~0_combout\ = ( \U|FSM|next_state.0101~q\ & ( (\U|instruction|out\(11) & (((\U|FSM|next_state.0011~q\ & !\U|instruction|out\(12))) # (\U|FSM|next_state.1001~q\))) ) ) # ( !\U|FSM|next_state.0101~q\ & ( (\U|instruction|out\(11) & 
-- (\U|FSM|next_state.0011~q\ & !\U|instruction|out\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000010101010001000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|FSM|ALT_INV_next_state.0011~q\,
	datac => \U|instruction|ALT_INV_out\(12),
	datad => \U|FSM|ALT_INV_next_state.1001~q\,
	dataf => \U|FSM|ALT_INV_next_state.0101~q\,
	combout => \U|FSM|Selector5~0_combout\);

-- Location: FF_X87_Y9_N56
\U|FSM|loads\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|FSM|Selector5~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|FSM|loads~q\);

-- Location: MLABCELL_X87_Y3_N12
\U|DP|loadS|out[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~7_combout\ = ( \U|DP|Muxa|comb~0_combout\ & ( (\U|FSM|loads~q\ & ((!\U|instruction|out\(12)) # (!\U|instruction|out\(11) $ (\rtl~33_combout\)))) ) ) # ( !\U|DP|Muxa|comb~0_combout\ & ( (\U|FSM|loads~q\ & ((!\U|instruction|out\(11)) # 
-- ((!\U|instruction|out\(12)) # (\rtl~33_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001110000011010000111000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(11),
	datab => \U|instruction|ALT_INV_out\(12),
	datac => \U|FSM|ALT_INV_loads~q\,
	datad => \ALT_INV_rtl~33_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~0_combout\,
	combout => \U|DP|loadS|out[0]~7_combout\);

-- Location: MLABCELL_X87_Y3_N42
\U|DP|loadS|out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~8_combout\ = ( \rtl~35_combout\ & ( \U|DP|Muxa|comb~1_combout\ & ( (\U|instruction|out\(12) & ((!\rtl~34_combout\ & ((\U|instruction|out\(11)) # (\U|DP|Muxa|comb~2_combout\))) # (\rtl~34_combout\ & ((!\U|instruction|out\(11)))))) ) ) ) 
-- # ( !\rtl~35_combout\ & ( \U|DP|Muxa|comb~1_combout\ & ( (\U|instruction|out\(12) & ((\U|instruction|out\(11)) # (\rtl~34_combout\))) ) ) ) # ( \rtl~35_combout\ & ( !\U|DP|Muxa|comb~1_combout\ & ( (\U|instruction|out\(12) & ((!\U|instruction|out\(11) & 
-- (\U|DP|Muxa|comb~2_combout\)) # (\U|instruction|out\(11) & ((!\rtl~34_combout\))))) ) ) ) # ( !\rtl~35_combout\ & ( !\U|DP|Muxa|comb~1_combout\ & ( (\U|instruction|out\(11) & \U|instruction|out\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000101110000000000001111110000000001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|Muxa|ALT_INV_comb~2_combout\,
	datab => \ALT_INV_rtl~34_combout\,
	datac => \U|instruction|ALT_INV_out\(11),
	datad => \U|instruction|ALT_INV_out\(12),
	datae => \ALT_INV_rtl~35_combout\,
	dataf => \U|DP|Muxa|ALT_INV_comb~1_combout\,
	combout => \U|DP|loadS|out[0]~8_combout\);

-- Location: LABCELL_X88_Y4_N21
\U|DP|loadS|out[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~12_combout\ = ( \U|DP|loadS|out[0]~7_combout\ & ( !\U|DP|loadS|out[0]~8_combout\ & ( (!\U|DP|loadS|out[0]~4_combout\ & (!\U|DP|loadS|out[0]~5_combout\ & (!\U|DP|loadS|out[0]~3_combout\ & !\U|DP|loadS|out[0]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|loadS|ALT_INV_out[0]~4_combout\,
	datab => \U|DP|loadS|ALT_INV_out[0]~5_combout\,
	datac => \U|DP|loadS|ALT_INV_out[0]~3_combout\,
	datad => \U|DP|loadS|ALT_INV_out[0]~6_combout\,
	datae => \U|DP|loadS|ALT_INV_out[0]~7_combout\,
	dataf => \U|DP|loadS|ALT_INV_out[0]~8_combout\,
	combout => \U|DP|loadS|out[0]~12_combout\);

-- Location: LABCELL_X85_Y5_N42
\U|DP|loadS|out[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~13_combout\ = ( !\U|DP|alu|Selector3~0_combout\ & ( !\U|DP|alu|Selector4~0_combout\ & ( (!\U|DP|alu|Selector2~0_combout\ & (!\U|DP|alu|Selector1~0_combout\ & !\U|DP|alu|Selector0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|alu|ALT_INV_Selector2~0_combout\,
	datac => \U|DP|alu|ALT_INV_Selector1~0_combout\,
	datad => \U|DP|alu|ALT_INV_Selector0~0_combout\,
	datae => \U|DP|alu|ALT_INV_Selector3~0_combout\,
	dataf => \U|DP|alu|ALT_INV_Selector4~0_combout\,
	combout => \U|DP|loadS|out[0]~13_combout\);

-- Location: LABCELL_X88_Y4_N12
\U|DP|loadS|out[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~9_combout\ = ( \U|instruction|out\(12) & ( \U|DP|loadS|out[0]~13_combout\ & ( \U|DP|loadS|out[0]~12_combout\ ) ) ) # ( !\U|instruction|out\(12) & ( \U|DP|loadS|out[0]~13_combout\ & ( (!\U|DP|alu|addersubtractor|Add0~5_sumout\ & 
-- (!\U|DP|alu|addersubtractor|Add0~1_sumout\ & (\U|DP|loadS|out[0]~12_combout\ & !\U|DP|alu|addersubtractor|Add0~41_sumout\))) ) ) ) # ( !\U|instruction|out\(12) & ( !\U|DP|loadS|out[0]~13_combout\ & ( (!\U|DP|alu|addersubtractor|Add0~5_sumout\ & 
-- (!\U|DP|alu|addersubtractor|Add0~1_sumout\ & (\U|DP|loadS|out[0]~12_combout\ & !\U|DP|alu|addersubtractor|Add0~41_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|DP|alu|addersubtractor|ALT_INV_Add0~5_sumout\,
	datab => \U|DP|alu|addersubtractor|ALT_INV_Add0~1_sumout\,
	datac => \U|DP|loadS|ALT_INV_out[0]~12_combout\,
	datad => \U|DP|alu|addersubtractor|ALT_INV_Add0~41_sumout\,
	datae => \U|instruction|ALT_INV_out\(12),
	dataf => \U|DP|loadS|ALT_INV_out[0]~13_combout\,
	combout => \U|DP|loadS|out[0]~9_combout\);

-- Location: LABCELL_X83_Y4_N18
\U|DP|loadS|out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~0_combout\ = ( !\U|FSM|loads~q\ & ( \U|DP|loadS|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U|FSM|ALT_INV_loads~q\,
	dataf => \U|DP|loadS|ALT_INV_out\(0),
	combout => \U|DP|loadS|out[0]~0_combout\);

-- Location: MLABCELL_X87_Y4_N24
\U|DP|loadS|out[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~10_combout\ = ( \U|DP|alu|addersubtractor|Add0~33_sumout\ & ( \U|DP|alu|addersubtractor|Add0~29_sumout\ & ( !\U|instruction|out\(12) ) ) ) # ( !\U|DP|alu|addersubtractor|Add0~33_sumout\ & ( \U|DP|alu|addersubtractor|Add0~29_sumout\ & ( 
-- !\U|instruction|out\(12) ) ) ) # ( \U|DP|alu|addersubtractor|Add0~33_sumout\ & ( !\U|DP|alu|addersubtractor|Add0~29_sumout\ & ( !\U|instruction|out\(12) ) ) ) # ( !\U|DP|alu|addersubtractor|Add0~33_sumout\ & ( !\U|DP|alu|addersubtractor|Add0~29_sumout\ & 
-- ( (!\U|instruction|out\(12) & (((\U|DP|alu|addersubtractor|Add0~49_sumout\) # (\U|DP|alu|addersubtractor|Add0~37_sumout\)) # (\U|DP|alu|addersubtractor|Add0~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(12),
	datab => \U|DP|alu|addersubtractor|ALT_INV_Add0~53_sumout\,
	datac => \U|DP|alu|addersubtractor|ALT_INV_Add0~37_sumout\,
	datad => \U|DP|alu|addersubtractor|ALT_INV_Add0~49_sumout\,
	datae => \U|DP|alu|addersubtractor|ALT_INV_Add0~33_sumout\,
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~29_sumout\,
	combout => \U|DP|loadS|out[0]~10_combout\);

-- Location: LABCELL_X88_Y4_N30
\U|DP|loadS|out[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|loadS|out[0]~11_combout\ = ( \U|DP|loadS|out[0]~0_combout\ & ( \U|DP|loadS|out[0]~10_combout\ ) ) # ( \U|DP|loadS|out[0]~0_combout\ & ( !\U|DP|loadS|out[0]~10_combout\ ) ) # ( !\U|DP|loadS|out[0]~0_combout\ & ( !\U|DP|loadS|out[0]~10_combout\ & ( 
-- (\U|DP|loadS|out[0]~2_combout\ & (\U|DP|loadS|out[0]~9_combout\ & ((!\U|DP|alu|addersubtractor|Add0~45_sumout\) # (\U|instruction|out\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110001111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|instruction|ALT_INV_out\(12),
	datab => \U|DP|loadS|ALT_INV_out[0]~2_combout\,
	datac => \U|DP|alu|addersubtractor|ALT_INV_Add0~45_sumout\,
	datad => \U|DP|loadS|ALT_INV_out[0]~9_combout\,
	datae => \U|DP|loadS|ALT_INV_out[0]~0_combout\,
	dataf => \U|DP|loadS|ALT_INV_out[0]~10_combout\,
	combout => \U|DP|loadS|out[0]~11_combout\);

-- Location: FF_X88_Y4_N31
\U|DP|loadS|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|loadS|out[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadS|out\(0));

-- Location: MLABCELL_X87_Y4_N39
\U|DP|alu|addersubtractor|ovf\ : cyclonev_lcell_comb
-- Equation(s):
-- \U|DP|alu|addersubtractor|ovf~combout\ = ( \U|DP|alu|addersubtractor|Add0~61_sumout\ & ( (!\U|FSM|asel~q\ & (!\U|DP|loadA|out\(15) & (!\rtl~48_combout\ $ (\U|instruction|out\(11))))) # (\U|FSM|asel~q\ & (!\rtl~48_combout\ $ ((\U|instruction|out\(11))))) ) 
-- ) # ( !\U|DP|alu|addersubtractor|Add0~61_sumout\ & ( (!\U|FSM|asel~q\ & (\U|DP|loadA|out\(15) & (!\rtl~48_combout\ $ (!\U|instruction|out\(11))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000010100011000011010000011100001101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U|FSM|ALT_INV_asel~q\,
	datab => \ALT_INV_rtl~48_combout\,
	datac => \U|instruction|ALT_INV_out\(11),
	datad => \U|DP|loadA|ALT_INV_out\(15),
	dataf => \U|DP|alu|addersubtractor|ALT_INV_Add0~61_sumout\,
	combout => \U|DP|alu|addersubtractor|ovf~combout\);

-- Location: FF_X87_Y4_N41
\U|DP|loadS|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|alu|addersubtractor|ovf~combout\,
	sclr => \U|instruction|out\(12),
	ena => \U|FSM|loads~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadS|out\(2));

-- Location: FF_X87_Y8_N52
\U|DP|loadS|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \U|DP|alu|addersubtractor|Add3~0_combout\,
	asdata => \U|DP|alu|Selector0~0_combout\,
	sload => \U|instruction|out\(12),
	ena => \U|FSM|loads~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U|DP|loadS|out\(1));

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

-- Location: LABCELL_X27_Y38_N0
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



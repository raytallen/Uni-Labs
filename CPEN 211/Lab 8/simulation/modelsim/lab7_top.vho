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

-- DATE "10/30/2017 18:06:33"

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

ENTITY 	lab7_top IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab7_top;

-- Design Ports Information
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7_top IS
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
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CPU|ProgramCounter|out[0]~_wirecell_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux2~1_combout\ : std_logic;
SIGNAL \CPU|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|FSM|load_pc~0_combout\ : std_logic;
SIGNAL \CPU|FSM|asel~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|FSM|vsel[1]~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CPU|DP|vselonehot|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU|FSM|Decoder0~3_combout\ : std_logic;
SIGNAL \CPU|ADDR_MUX|b[0]~2_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr3~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \CPU|ADDR_MUX|b[3]~5_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU|ADDR_MUX|b[6]~0_combout\ : std_logic;
SIGNAL \CPU|FSM|loada~0_combout\ : std_logic;
SIGNAL \CPU|DP|loadB|out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \read_data[7]~15_combout\ : std_logic;
SIGNAL \CPU|FSM|Decoder0~4_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[15]~15_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \CPU|FSM|WideOr0~0_combout\ : std_logic;
SIGNAL \read_data[10]~14_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \read_data[2]~9_combout\ : std_logic;
SIGNAL \CPU|insDec|Rmux|comb~2_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr1~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr2~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \read_data[1]~8_combout\ : std_logic;
SIGNAL \CPU|insDec|Rmux|comb~1_combout\ : std_logic;
SIGNAL \read_data[9]~12_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \read_data[8]~10_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \read_data[0]~0_combout\ : std_logic;
SIGNAL \CPU|insDec|Rmux|comb~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|comb~6_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|comb~7_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[15]~47_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg2|out[15]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|comb~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg4|out[15]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|comb~3_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|comb~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[15]~45_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|comb~5_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|comb~4_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[15]~46_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|comb~0_combout\ : std_logic;
SIGNAL \CPU|DP|loadB|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|FSM|Decoder0~1_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[15]~15_combout\ : std_logic;
SIGNAL \CPU|DP|loadB|out[15]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[14]~14_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[11]~11_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[8]~10_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[5]~7_combout\ : std_logic;
SIGNAL \CPU|DP|loadB|out[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[4]~6_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[2]~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg5|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg3|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[2]~7_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg6|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[2]~8_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg4|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[2]~6_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[0]~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg5|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg3|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[0]~4_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg4|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[0]~3_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[0]~5_combout\ : std_logic;
SIGNAL \CPU|DP|loadB|out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[1]~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg2|out[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[1]~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[1]~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[1]~1_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[14]~2_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[14]~1_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[1]~3_combout\ : std_logic;
SIGNAL \CPU|DP|loadA|out[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[0]~0_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~34_cout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~2\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~6\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~10\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~14\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~18\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~22\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~26\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~30\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~38\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~62\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~66\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~42\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~46\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~50\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~54\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~57_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add3~0_combout\ : std_logic;
SIGNAL \read_data[12]~4_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector0~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr4~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[14]~14_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg4|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[14]~42_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[14]~43_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[14]~44_combout\ : std_logic;
SIGNAL \CPU|DP|loadA|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~53_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[14]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector6~0_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector1~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[12]~10_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[12]~32_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg5|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[12]~31_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg2|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg0|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[12]~30_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[13]~13_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~49_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector2~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[13]~13_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg4|out[13]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[13]~39_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[13]~40_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[13]~41_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[12]~12_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~45_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[12]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector3~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[11]~12_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg5|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg4|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[11]~36_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[11]~37_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[11]~38_combout\ : std_logic;
SIGNAL \CPU|DP|loadA|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~41_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[11]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector4~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[9]~9_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg2|out[9]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg4|out[9]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg0|out[9]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[9]~27_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[9]~29_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[9]~28_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[10]~17_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~65_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[10]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector5~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \CPU|DP|loadC|out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[10]~11_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[10]~35_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[10]~34_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg2|out[10]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg0|out[10]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[10]~33_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[9]~16_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~61_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[9]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector6~1_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[7]~7_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[7]~23_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg2|out[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[7]~21_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[7]~22_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[7]~9_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector8~0_combout\ : std_logic;
SIGNAL \CPU|ADDR_MUX|b[7]~8_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \read_data[5]~11_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[5]~5_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[5]~16_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[5]~17_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[5]~15_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector10~0_combout\ : std_logic;
SIGNAL \CPU|ADDR_MUX|b[5]~7_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \read_data[3]~2_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[3]~5_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector12~0_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[3]~3_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[3]~9_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[3]~10_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[3]~11_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[2]~4_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector13~0_combout\ : std_logic;
SIGNAL \CPU|ADDR_MUX|b[2]~4_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \read_data[4]~1_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[4]~4_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg2|out[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[4]~12_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg3|out[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[4]~13_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[4]~14_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector11~0_combout\ : std_logic;
SIGNAL \CPU|ADDR_MUX|b[4]~6_combout\ : std_logic;
SIGNAL \CPU|Add0~30\ : std_logic;
SIGNAL \CPU|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|FSM|addr_sel~0_combout\ : std_logic;
SIGNAL \SWtristate|SWdriverout~3_combout\ : std_logic;
SIGNAL \SWtristate|SWdriverout~4_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[8]~8_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[8]~26_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[8]~25_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg2|out[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[8]~24_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~37_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector7~0_combout\ : std_logic;
SIGNAL \CPU|FSM|Decoder0~0_combout\ : std_logic;
SIGNAL \CPU|FSM|WideOr7~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \read_data[6]~13_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|b[6]~6_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[6]~18_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg5|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg3|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[6]~19_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|b[6]~20_combout\ : std_logic;
SIGNAL \CPU|DP|loadB|out[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|loadB|out[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|Muxb|b[6]~8_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector9~0_combout\ : std_logic;
SIGNAL \SWtristate|SWdriverout~2_combout\ : std_logic;
SIGNAL \read_data[11]~3_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector14~0_combout\ : std_logic;
SIGNAL \CPU|ADDR_MUX|b[1]~3_combout\ : std_logic;
SIGNAL \CPU|dataAddr|out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ADDR_MUX|b[8]~1_combout\ : std_logic;
SIGNAL \SWtristate|SWdriverout~0_combout\ : std_logic;
SIGNAL \read_data[15]~7_combout\ : std_logic;
SIGNAL \read_data[13]~5_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux2~2_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux2~3_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux2~0_combout\ : std_logic;
SIGNAL \CPU|FSM|next_state_reset[2]~13_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux3~0_combout\ : std_logic;
SIGNAL \CPU|FSM|next_state_reset[1]~9_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux4~2_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux4~3_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux4~1_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux4~0_combout\ : std_logic;
SIGNAL \CPU|FSM|next_state_reset[0]~1_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux0~0_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux0~1_combout\ : std_logic;
SIGNAL \CPU|FSM|next_state_reset[4]~0_combout\ : std_logic;
SIGNAL \CPU|FSM|Decoder0~2_combout\ : std_logic;
SIGNAL \CPU|Add0~10\ : std_logic;
SIGNAL \CPU|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|Add0~14\ : std_logic;
SIGNAL \CPU|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|Add0~18\ : std_logic;
SIGNAL \CPU|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|Add0~22\ : std_logic;
SIGNAL \CPU|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|Add0~26\ : std_logic;
SIGNAL \CPU|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|Add0~2\ : std_logic;
SIGNAL \CPU|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|dataAddr|out[7]~DUPLICATE_q\ : std_logic;
SIGNAL \SWtristate|SWdriverout~1_combout\ : std_logic;
SIGNAL \read_data[14]~6_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux1~3_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux1~2_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux1~1_combout\ : std_logic;
SIGNAL \CPU|FSM|Mux1~0_combout\ : std_logic;
SIGNAL \CPU|FSM|next_state_reset[3]~5_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|out[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|alu|Selector15~0_combout\ : std_logic;
SIGNAL \LEDtristate|LEDdriverout~0_combout\ : std_logic;
SIGNAL \LEDreg|out[1]~feeder_combout\ : std_logic;
SIGNAL \LEDreg|out[2]~feeder_combout\ : std_logic;
SIGNAL \LEDreg|out[4]~feeder_combout\ : std_logic;
SIGNAL \LEDreg|out[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg3|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \LEDreg|out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|instruction|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|loadC|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|loadA|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|Reg0|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|ProgramCounter|out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|FSM|state|out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CPU|dataAddr|out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DP|loadB|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|Reg5|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|insDec|Rmux|b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|Reg2|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|Reg4|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|Reg1|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|Reg6|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|Reg7|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|regmux|b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|Mux1lab6|b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|FSM|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \CPU|FSM|state|ALT_INV_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CPU|ADDR_MUX|ALT_INV_b[6]~0_combout\ : std_logic;
SIGNAL \CPU|dataAddr|ALT_INV_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|FSM|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \CPU|DP|loadC|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|DP|alu|addersubtractor|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ProgramCounter|ALT_INV_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DP|loadB|ALT_INV_out[15]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|loadB|ALT_INV_out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|loadB|ALT_INV_out[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|loadB|ALT_INV_out[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|loadB|ALT_INV_out[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|loadB|ALT_INV_out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|dataAddr|ALT_INV_out[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|dataAddr|ALT_INV_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DP|loadC|ALT_INV_out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[15]~15_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[14]~14_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[13]~13_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[11]~12_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[10]~11_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[12]~10_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[15]~47_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg7|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|Reg6|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[15]~46_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg3|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|Reg1|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[15]~45_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|Reg4|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|Reg2|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|Reg0|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|Reg5|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[14]~44_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[14]~43_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[14]~42_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[13]~41_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[13]~40_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[13]~39_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[11]~38_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[11]~37_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[11]~36_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[10]~35_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[10]~34_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[10]~33_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[12]~32_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[12]~31_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[12]~30_combout\ : std_logic;
SIGNAL \CPU|DP|loadA|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|Muxb|ALT_INV_b[10]~17_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[9]~16_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[9]~9_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[15]~15_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[14]~14_combout\ : std_logic;
SIGNAL \CPU|DP|loadB|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|DP|Muxb|ALT_INV_b[13]~13_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[12]~12_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[11]~11_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[8]~8_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[7]~7_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[6]~6_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[5]~5_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[4]~4_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[3]~3_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[2]~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[9]~29_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[9]~28_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[9]~27_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[0]~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \CPU|DP|Mux1lab6|ALT_INV_b[1]~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_vsel[1]~0_combout\ : std_logic;
SIGNAL \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \SWtristate|ALT_INV_SWdriverout~4_combout\ : std_logic;
SIGNAL \SWtristate|ALT_INV_SWdriverout~3_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[8]~26_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[8]~25_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[8]~24_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[7]~23_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[7]~22_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[7]~21_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[6]~20_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[6]~19_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[6]~18_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[5]~17_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[5]~16_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[5]~15_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[4]~14_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[4]~13_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[4]~12_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[3]~11_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[3]~10_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[3]~9_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[2]~8_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[2]~7_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[2]~6_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[8]~10_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[0]~5_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[0]~4_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[0]~3_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[1]~2_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[1]~1_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|regmux|ALT_INV_b[1]~0_combout\ : std_logic;
SIGNAL \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \CPU|insDec|Rmux|ALT_INV_b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CPU|insDec|Rmux|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \CPU|instruction|ALT_INV_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CPU|insDec|Rmux|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \CPU|insDec|Rmux|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \SWtristate|ALT_INV_SWdriverout~2_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[7]~9_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[6]~8_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[5]~7_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[4]~6_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[3]~5_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[2]~4_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[1]~3_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[14]~2_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[14]~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_load_pc~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \CPU|DP|alu|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_asel~0_combout\ : std_logic;
SIGNAL \CPU|DP|alu|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|DP|Muxb|ALT_INV_b[0]~0_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \SWtristate|ALT_INV_SWdriverout~1_combout\ : std_logic;
SIGNAL \CPU|FSM|ALT_INV_addr_sel~0_combout\ : std_logic;
SIGNAL \SWtristate|ALT_INV_SWdriverout~0_combout\ : std_logic;
SIGNAL \CPU|ADDR_MUX|ALT_INV_b[4]~6_combout\ : std_logic;
SIGNAL \CPU|ADDR_MUX|ALT_INV_b[3]~5_combout\ : std_logic;
SIGNAL \CPU|ADDR_MUX|ALT_INV_b[2]~4_combout\ : std_logic;
SIGNAL \CPU|ADDR_MUX|ALT_INV_b[1]~3_combout\ : std_logic;
SIGNAL \CPU|ADDR_MUX|ALT_INV_b[0]~2_combout\ : std_logic;
SIGNAL \CPU|ADDR_MUX|ALT_INV_b[8]~1_combout\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \CPU|DP|loadC|out\(15) & 
\CPU|DP|loadC|out\(14) & \CPU|DP|loadC|out\(13) & \CPU|DP|loadC|out\(12) & \CPU|DP|loadC|out\(11) & \CPU|DP|loadC|out\(10) & \CPU|DP|loadC|out\(9) & \CPU|DP|loadC|out\(8) & \CPU|DP|loadC|out\(7) & \CPU|DP|loadC|out\(6) & 
\CPU|DP|loadC|out\(5) & \CPU|DP|loadC|out\(4) & \CPU|DP|loadC|out\(3) & \CPU|DP|loadC|out\(2) & \CPU|DP|loadC|out\(1) & \CPU|DP|loadC|out\(0));

\MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\CPU|ADDR_MUX|b[7]~8_combout\ & \CPU|ADDR_MUX|b[6]~0_combout\ & \CPU|ADDR_MUX|b[5]~7_combout\ & \CPU|ADDR_MUX|b[4]~6_combout\ & \CPU|ADDR_MUX|b[3]~5_combout\ & \CPU|ADDR_MUX|b[2]~4_combout\ & 
\CPU|ADDR_MUX|b[1]~3_combout\ & \CPU|ADDR_MUX|b[0]~2_combout\);

\MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\CPU|ADDR_MUX|b[7]~8_combout\ & \CPU|ADDR_MUX|b[6]~0_combout\ & \CPU|ADDR_MUX|b[5]~7_combout\ & \CPU|ADDR_MUX|b[4]~6_combout\ & \CPU|ADDR_MUX|b[3]~5_combout\ & \CPU|ADDR_MUX|b[2]~4_combout\ & 
\CPU|ADDR_MUX|b[1]~3_combout\ & \CPU|ADDR_MUX|b[0]~2_combout\);

\MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\MEM|mem_rtl_0|auto_generated|ram_block1a1\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\MEM|mem_rtl_0|auto_generated|ram_block1a2\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\MEM|mem_rtl_0|auto_generated|ram_block1a3\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\MEM|mem_rtl_0|auto_generated|ram_block1a4\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\MEM|mem_rtl_0|auto_generated|ram_block1a5\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\MEM|mem_rtl_0|auto_generated|ram_block1a6\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\MEM|mem_rtl_0|auto_generated|ram_block1a7\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\MEM|mem_rtl_0|auto_generated|ram_block1a8\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\MEM|mem_rtl_0|auto_generated|ram_block1a9\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\MEM|mem_rtl_0|auto_generated|ram_block1a10\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\MEM|mem_rtl_0|auto_generated|ram_block1a11\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\MEM|mem_rtl_0|auto_generated|ram_block1a12\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\MEM|mem_rtl_0|auto_generated|ram_block1a13\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\MEM|mem_rtl_0|auto_generated|ram_block1a14\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\MEM|mem_rtl_0|auto_generated|ram_block1a15\ <= \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\CPU|FSM|ALT_INV_WideOr7~0_combout\ <= NOT \CPU|FSM|WideOr7~0_combout\;
\CPU|FSM|ALT_INV_Decoder0~0_combout\ <= NOT \CPU|FSM|Decoder0~0_combout\;
\CPU|FSM|state|ALT_INV_out\(0) <= NOT \CPU|FSM|state|out\(0);
\CPU|ADDR_MUX|ALT_INV_b[6]~0_combout\ <= NOT \CPU|ADDR_MUX|b[6]~0_combout\;
\CPU|dataAddr|ALT_INV_out\(6) <= NOT \CPU|dataAddr|out\(6);
\CPU|FSM|state|ALT_INV_out\(4) <= NOT \CPU|FSM|state|out\(4);
\CPU|FSM|state|ALT_INV_out\(3) <= NOT \CPU|FSM|state|out\(3);
\CPU|FSM|state|ALT_INV_out\(1) <= NOT \CPU|FSM|state|out\(1);
\CPU|FSM|state|ALT_INV_out\(2) <= NOT \CPU|FSM|state|out\(2);
\CPU|FSM|ALT_INV_Mux3~0_combout\ <= NOT \CPU|FSM|Mux3~0_combout\;
\CPU|FSM|ALT_INV_Mux4~3_combout\ <= NOT \CPU|FSM|Mux4~3_combout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~65_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~65_sumout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~61_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~61_sumout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~57_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~57_sumout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~53_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~53_sumout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~49_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~49_sumout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~45_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~45_sumout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~41_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~41_sumout\;
\CPU|DP|loadC|ALT_INV_out\(9) <= NOT \CPU|DP|loadC|out\(9);
\CPU|DP|loadC|ALT_INV_out\(15) <= NOT \CPU|DP|loadC|out\(15);
\CPU|DP|loadC|ALT_INV_out\(14) <= NOT \CPU|DP|loadC|out\(14);
\CPU|DP|loadC|ALT_INV_out\(13) <= NOT \CPU|DP|loadC|out\(13);
\CPU|DP|loadC|ALT_INV_out\(12) <= NOT \CPU|DP|loadC|out\(12);
\CPU|DP|loadC|ALT_INV_out\(11) <= NOT \CPU|DP|loadC|out\(11);
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~37_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~37_sumout\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a1\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a2\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a3\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a4\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a5\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a6\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a7\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a8\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a9\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a10\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a11\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a12\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a13\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a14\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a15\;
\MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~29_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~29_sumout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~25_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~25_sumout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~21_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~21_sumout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~17_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~17_sumout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~13_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~13_sumout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~9_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~9_sumout\;
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~5_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~5_sumout\;
\CPU|DP|loadC|ALT_INV_out\(8) <= NOT \CPU|DP|loadC|out\(8);
\CPU|DP|alu|addersubtractor|ALT_INV_Add0~1_sumout\ <= NOT \CPU|DP|alu|addersubtractor|Add0~1_sumout\;
\CPU|DP|loadC|ALT_INV_out\(7) <= NOT \CPU|DP|loadC|out\(7);
\CPU|DP|loadC|ALT_INV_out\(6) <= NOT \CPU|DP|loadC|out\(6);
\CPU|DP|loadC|ALT_INV_out\(5) <= NOT \CPU|DP|loadC|out\(5);
\CPU|DP|loadC|ALT_INV_out\(4) <= NOT \CPU|DP|loadC|out\(4);
\CPU|DP|loadC|ALT_INV_out\(3) <= NOT \CPU|DP|loadC|out\(3);
\CPU|DP|loadC|ALT_INV_out\(2) <= NOT \CPU|DP|loadC|out\(2);
\CPU|DP|loadC|ALT_INV_out\(1) <= NOT \CPU|DP|loadC|out\(1);
\CPU|ProgramCounter|ALT_INV_out\(7) <= NOT \CPU|ProgramCounter|out\(7);
\CPU|ProgramCounter|ALT_INV_out\(5) <= NOT \CPU|ProgramCounter|out\(5);
\CPU|ProgramCounter|ALT_INV_out\(4) <= NOT \CPU|ProgramCounter|out\(4);
\CPU|ProgramCounter|ALT_INV_out\(3) <= NOT \CPU|ProgramCounter|out\(3);
\CPU|ProgramCounter|ALT_INV_out\(2) <= NOT \CPU|ProgramCounter|out\(2);
\CPU|ProgramCounter|ALT_INV_out\(1) <= NOT \CPU|ProgramCounter|out\(1);
\CPU|ProgramCounter|ALT_INV_out\(0) <= NOT \CPU|ProgramCounter|out\(0);
\CPU|ProgramCounter|ALT_INV_out\(8) <= NOT \CPU|ProgramCounter|out\(8);
\CPU|ProgramCounter|ALT_INV_out\(6) <= NOT \CPU|ProgramCounter|out\(6);
\CPU|DP|loadC|ALT_INV_out\(0) <= NOT \CPU|DP|loadC|out\(0);
\CPU|DP|loadB|ALT_INV_out[15]~DUPLICATE_q\ <= NOT \CPU|DP|loadB|out[15]~DUPLICATE_q\;
\CPU|DP|loadB|ALT_INV_out[10]~DUPLICATE_q\ <= NOT \CPU|DP|loadB|out[10]~DUPLICATE_q\;
\CPU|DP|loadB|ALT_INV_out[7]~DUPLICATE_q\ <= NOT \CPU|DP|loadB|out[7]~DUPLICATE_q\;
\CPU|DP|loadB|ALT_INV_out[5]~DUPLICATE_q\ <= NOT \CPU|DP|loadB|out[5]~DUPLICATE_q\;
\CPU|DP|loadB|ALT_INV_out[3]~DUPLICATE_q\ <= NOT \CPU|DP|loadB|out[3]~DUPLICATE_q\;
\CPU|DP|loadB|ALT_INV_out[2]~DUPLICATE_q\ <= NOT \CPU|DP|loadB|out[2]~DUPLICATE_q\;
\CPU|dataAddr|ALT_INV_out[7]~DUPLICATE_q\ <= NOT \CPU|dataAddr|out[7]~DUPLICATE_q\;
\CPU|dataAddr|ALT_INV_out[8]~DUPLICATE_q\ <= NOT \CPU|dataAddr|out[8]~DUPLICATE_q\;
\CPU|DP|loadC|ALT_INV_out[10]~DUPLICATE_q\ <= NOT \CPU|DP|loadC|out[10]~DUPLICATE_q\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\CPU|DP|Mux1lab6|ALT_INV_b\(15) <= NOT \CPU|DP|Mux1lab6|b\(15);
\CPU|DP|Mux1lab6|ALT_INV_b[15]~15_combout\ <= NOT \CPU|DP|Mux1lab6|b[15]~15_combout\;
\CPU|DP|Mux1lab6|ALT_INV_b\(14) <= NOT \CPU|DP|Mux1lab6|b\(14);
\CPU|DP|Mux1lab6|ALT_INV_b[14]~14_combout\ <= NOT \CPU|DP|Mux1lab6|b[14]~14_combout\;
\CPU|DP|Mux1lab6|ALT_INV_b\(13) <= NOT \CPU|DP|Mux1lab6|b\(13);
\CPU|DP|Mux1lab6|ALT_INV_b[13]~13_combout\ <= NOT \CPU|DP|Mux1lab6|b[13]~13_combout\;
\CPU|DP|Mux1lab6|ALT_INV_b\(11) <= NOT \CPU|DP|Mux1lab6|b\(11);
\CPU|DP|Mux1lab6|ALT_INV_b[11]~12_combout\ <= NOT \CPU|DP|Mux1lab6|b[11]~12_combout\;
\CPU|DP|Mux1lab6|ALT_INV_b\(10) <= NOT \CPU|DP|Mux1lab6|b\(10);
\CPU|DP|Mux1lab6|ALT_INV_b[10]~11_combout\ <= NOT \CPU|DP|Mux1lab6|b[10]~11_combout\;
\CPU|DP|Mux1lab6|ALT_INV_b\(12) <= NOT \CPU|DP|Mux1lab6|b\(12);
\CPU|DP|Mux1lab6|ALT_INV_b[12]~10_combout\ <= NOT \CPU|DP|Mux1lab6|b[12]~10_combout\;
\CPU|DP|REGFILE|regmux|ALT_INV_b[15]~47_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[15]~47_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|Reg7|out\(15);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|Reg6|out\(15);
\CPU|DP|REGFILE|regmux|ALT_INV_b[15]~46_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[15]~46_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|Reg3|out\(15);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|Reg1|out\(15);
\CPU|DP|REGFILE|regmux|ALT_INV_b[15]~45_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[15]~45_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|Reg4|out\(15);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|Reg2|out\(15);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|Reg0|out\(15);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(15) <= NOT \CPU|DP|REGFILE|Reg5|out\(15);
\CPU|DP|REGFILE|regmux|ALT_INV_b\(14) <= NOT \CPU|DP|REGFILE|regmux|b\(14);
\CPU|DP|REGFILE|regmux|ALT_INV_b[14]~44_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[14]~44_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|Reg7|out\(14);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|Reg6|out\(14);
\CPU|DP|REGFILE|regmux|ALT_INV_b[14]~43_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[14]~43_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|Reg3|out\(14);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|Reg1|out\(14);
\CPU|DP|REGFILE|regmux|ALT_INV_b[14]~42_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[14]~42_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|Reg4|out\(14);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|Reg2|out\(14);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|Reg0|out\(14);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(14) <= NOT \CPU|DP|REGFILE|Reg5|out\(14);
\CPU|DP|REGFILE|regmux|ALT_INV_b[13]~41_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[13]~41_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|Reg7|out\(13);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|Reg6|out\(13);
\CPU|DP|REGFILE|regmux|ALT_INV_b[13]~40_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[13]~40_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|Reg3|out\(13);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|Reg1|out\(13);
\CPU|DP|REGFILE|regmux|ALT_INV_b[13]~39_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[13]~39_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|Reg4|out\(13);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|Reg2|out\(13);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|Reg0|out\(13);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(13) <= NOT \CPU|DP|REGFILE|Reg5|out\(13);
\CPU|DP|REGFILE|regmux|ALT_INV_b\(11) <= NOT \CPU|DP|REGFILE|regmux|b\(11);
\CPU|DP|REGFILE|regmux|ALT_INV_b[11]~38_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[11]~38_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|Reg7|out\(11);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|Reg6|out\(11);
\CPU|DP|REGFILE|regmux|ALT_INV_b[11]~37_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[11]~37_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|Reg3|out\(11);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|Reg1|out\(11);
\CPU|DP|REGFILE|regmux|ALT_INV_b[11]~36_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[11]~36_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|Reg4|out\(11);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|Reg2|out\(11);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|Reg0|out\(11);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(11) <= NOT \CPU|DP|REGFILE|Reg5|out\(11);
\CPU|DP|REGFILE|regmux|ALT_INV_b[10]~35_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[10]~35_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|Reg7|out\(10);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|Reg6|out\(10);
\CPU|DP|REGFILE|regmux|ALT_INV_b[10]~34_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[10]~34_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|Reg3|out\(10);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|Reg1|out\(10);
\CPU|DP|REGFILE|regmux|ALT_INV_b[10]~33_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[10]~33_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|Reg4|out\(10);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|Reg2|out\(10);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|Reg0|out\(10);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(10) <= NOT \CPU|DP|REGFILE|Reg5|out\(10);
\CPU|DP|REGFILE|regmux|ALT_INV_b[12]~32_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[12]~32_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|Reg7|out\(12);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|Reg6|out\(12);
\CPU|DP|REGFILE|regmux|ALT_INV_b[12]~31_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[12]~31_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|Reg3|out\(12);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|Reg1|out\(12);
\CPU|DP|REGFILE|regmux|ALT_INV_b[12]~30_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[12]~30_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|Reg4|out\(12);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|Reg2|out\(12);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|Reg0|out\(12);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(12) <= NOT \CPU|DP|REGFILE|Reg5|out\(12);
\CPU|DP|loadA|ALT_INV_out\(10) <= NOT \CPU|DP|loadA|out\(10);
\CPU|DP|Muxb|ALT_INV_b[10]~17_combout\ <= NOT \CPU|DP|Muxb|b[10]~17_combout\;
\CPU|DP|loadA|ALT_INV_out\(9) <= NOT \CPU|DP|loadA|out\(9);
\CPU|DP|Muxb|ALT_INV_b[9]~16_combout\ <= NOT \CPU|DP|Muxb|b[9]~16_combout\;
\CPU|DP|Mux1lab6|ALT_INV_b\(9) <= NOT \CPU|DP|Mux1lab6|b\(9);
\CPU|DP|Mux1lab6|ALT_INV_b[9]~9_combout\ <= NOT \CPU|DP|Mux1lab6|b[9]~9_combout\;
\CPU|DP|Muxb|ALT_INV_b[15]~15_combout\ <= NOT \CPU|DP|Muxb|b[15]~15_combout\;
\CPU|DP|loadA|ALT_INV_out\(15) <= NOT \CPU|DP|loadA|out\(15);
\CPU|DP|loadA|ALT_INV_out\(14) <= NOT \CPU|DP|loadA|out\(14);
\CPU|DP|Muxb|ALT_INV_b[14]~14_combout\ <= NOT \CPU|DP|Muxb|b[14]~14_combout\;
\CPU|DP|loadB|ALT_INV_out\(15) <= NOT \CPU|DP|loadB|out\(15);
\CPU|DP|loadA|ALT_INV_out\(13) <= NOT \CPU|DP|loadA|out\(13);
\CPU|DP|Muxb|ALT_INV_b[13]~13_combout\ <= NOT \CPU|DP|Muxb|b[13]~13_combout\;
\CPU|DP|loadB|ALT_INV_out\(14) <= NOT \CPU|DP|loadB|out\(14);
\CPU|DP|loadA|ALT_INV_out\(12) <= NOT \CPU|DP|loadA|out\(12);
\CPU|DP|Muxb|ALT_INV_b[12]~12_combout\ <= NOT \CPU|DP|Muxb|b[12]~12_combout\;
\CPU|DP|loadB|ALT_INV_out\(13) <= NOT \CPU|DP|loadB|out\(13);
\CPU|DP|loadA|ALT_INV_out\(11) <= NOT \CPU|DP|loadA|out\(11);
\CPU|DP|Muxb|ALT_INV_b[11]~11_combout\ <= NOT \CPU|DP|Muxb|b[11]~11_combout\;
\CPU|DP|loadB|ALT_INV_out\(11) <= NOT \CPU|DP|loadB|out\(11);
\CPU|DP|loadB|ALT_INV_out\(10) <= NOT \CPU|DP|loadB|out\(10);
\CPU|DP|loadB|ALT_INV_out\(12) <= NOT \CPU|DP|loadB|out\(12);
\CPU|DP|Mux1lab6|ALT_INV_b\(8) <= NOT \CPU|DP|Mux1lab6|b\(8);
\CPU|DP|Mux1lab6|ALT_INV_b[8]~8_combout\ <= NOT \CPU|DP|Mux1lab6|b[8]~8_combout\;
\CPU|DP|Mux1lab6|ALT_INV_b\(7) <= NOT \CPU|DP|Mux1lab6|b\(7);
\CPU|DP|Mux1lab6|ALT_INV_b[7]~7_combout\ <= NOT \CPU|DP|Mux1lab6|b[7]~7_combout\;
\CPU|DP|Mux1lab6|ALT_INV_b\(6) <= NOT \CPU|DP|Mux1lab6|b\(6);
\CPU|DP|Mux1lab6|ALT_INV_b[6]~6_combout\ <= NOT \CPU|DP|Mux1lab6|b[6]~6_combout\;
\CPU|DP|Mux1lab6|ALT_INV_b[5]~5_combout\ <= NOT \CPU|DP|Mux1lab6|b[5]~5_combout\;
\CPU|DP|Mux1lab6|ALT_INV_b\(4) <= NOT \CPU|DP|Mux1lab6|b\(4);
\CPU|DP|Mux1lab6|ALT_INV_b[4]~4_combout\ <= NOT \CPU|DP|Mux1lab6|b[4]~4_combout\;
\CPU|DP|Mux1lab6|ALT_INV_b[3]~3_combout\ <= NOT \CPU|DP|Mux1lab6|b[3]~3_combout\;
\CPU|DP|Mux1lab6|ALT_INV_b\(2) <= NOT \CPU|DP|Mux1lab6|b\(2);
\CPU|DP|Mux1lab6|ALT_INV_b[2]~2_combout\ <= NOT \CPU|DP|Mux1lab6|b[2]~2_combout\;
\CPU|DP|REGFILE|regmux|ALT_INV_b[9]~29_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[9]~29_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|Reg7|out\(9);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|Reg6|out\(9);
\CPU|DP|REGFILE|regmux|ALT_INV_b[9]~28_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[9]~28_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|Reg3|out\(9);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|Reg1|out\(9);
\CPU|DP|REGFILE|regmux|ALT_INV_b[9]~27_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[9]~27_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|Reg4|out\(9);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|Reg2|out\(9);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|Reg0|out\(9);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(9) <= NOT \CPU|DP|REGFILE|Reg5|out\(9);
\CPU|DP|Mux1lab6|ALT_INV_b\(0) <= NOT \CPU|DP|Mux1lab6|b\(0);
\CPU|DP|Mux1lab6|ALT_INV_b[0]~1_combout\ <= NOT \CPU|DP|Mux1lab6|b[0]~1_combout\;
\CPU|FSM|ALT_INV_WideOr2~0_combout\ <= NOT \CPU|FSM|WideOr2~0_combout\;
\CPU|DP|Mux1lab6|ALT_INV_b\(1) <= NOT \CPU|DP|Mux1lab6|b\(1);
\CPU|DP|Mux1lab6|ALT_INV_b[1]~0_combout\ <= NOT \CPU|DP|Mux1lab6|b[1]~0_combout\;
\CPU|FSM|ALT_INV_vsel[1]~0_combout\ <= NOT \CPU|FSM|vsel[1]~0_combout\;
\CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\ <= NOT \CPU|DP|vselonehot|ShiftLeft0~0_combout\;
\SWtristate|ALT_INV_SWdriverout~4_combout\ <= NOT \SWtristate|SWdriverout~4_combout\;
\SWtristate|ALT_INV_SWdriverout~3_combout\ <= NOT \SWtristate|SWdriverout~3_combout\;
\CPU|DP|REGFILE|regmux|ALT_INV_b[8]~26_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[8]~26_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|Reg7|out\(8);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|Reg6|out\(8);
\CPU|DP|REGFILE|regmux|ALT_INV_b[8]~25_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[8]~25_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|Reg3|out\(8);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|Reg1|out\(8);
\CPU|DP|REGFILE|regmux|ALT_INV_b[8]~24_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[8]~24_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|Reg4|out\(8);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|Reg2|out\(8);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|Reg0|out\(8);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(8) <= NOT \CPU|DP|REGFILE|Reg5|out\(8);
\CPU|DP|REGFILE|regmux|ALT_INV_b[7]~23_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[7]~23_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|Reg7|out\(7);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|Reg6|out\(7);
\CPU|DP|REGFILE|regmux|ALT_INV_b[7]~22_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[7]~22_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|Reg3|out\(7);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|Reg1|out\(7);
\CPU|DP|REGFILE|regmux|ALT_INV_b[7]~21_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[7]~21_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|Reg4|out\(7);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|Reg2|out\(7);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|Reg0|out\(7);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(7) <= NOT \CPU|DP|REGFILE|Reg5|out\(7);
\CPU|DP|REGFILE|regmux|ALT_INV_b[6]~20_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[6]~20_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|Reg7|out\(6);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|Reg6|out\(6);
\CPU|DP|REGFILE|regmux|ALT_INV_b[6]~19_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[6]~19_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|Reg3|out\(6);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|Reg1|out\(6);
\CPU|DP|REGFILE|regmux|ALT_INV_b[6]~18_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[6]~18_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|Reg4|out\(6);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|Reg2|out\(6);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|Reg0|out\(6);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(6) <= NOT \CPU|DP|REGFILE|Reg5|out\(6);
\CPU|DP|REGFILE|regmux|ALT_INV_b[5]~17_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[5]~17_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|Reg7|out\(5);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|Reg6|out\(5);
\CPU|DP|REGFILE|regmux|ALT_INV_b[5]~16_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[5]~16_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|Reg3|out\(5);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|Reg1|out\(5);
\CPU|DP|REGFILE|regmux|ALT_INV_b[5]~15_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[5]~15_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|Reg4|out\(5);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|Reg2|out\(5);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|Reg0|out\(5);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(5) <= NOT \CPU|DP|REGFILE|Reg5|out\(5);
\CPU|DP|REGFILE|regmux|ALT_INV_b[4]~14_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[4]~14_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|Reg7|out\(4);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|Reg6|out\(4);
\CPU|DP|REGFILE|regmux|ALT_INV_b[4]~13_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[4]~13_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|Reg3|out\(4);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|Reg1|out\(4);
\CPU|DP|REGFILE|regmux|ALT_INV_b[4]~12_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[4]~12_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|Reg4|out\(4);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|Reg2|out\(4);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|Reg0|out\(4);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(4) <= NOT \CPU|DP|REGFILE|Reg5|out\(4);
\CPU|DP|REGFILE|regmux|ALT_INV_b[3]~11_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[3]~11_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|Reg7|out\(3);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|Reg6|out\(3);
\CPU|DP|REGFILE|regmux|ALT_INV_b[3]~10_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[3]~10_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|Reg3|out\(3);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|Reg1|out\(3);
\CPU|DP|REGFILE|regmux|ALT_INV_b[3]~9_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[3]~9_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|Reg4|out\(3);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|Reg2|out\(3);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|Reg0|out\(3);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(3) <= NOT \CPU|DP|REGFILE|Reg5|out\(3);
\CPU|DP|REGFILE|regmux|ALT_INV_b[2]~8_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[2]~8_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|Reg7|out\(2);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|Reg6|out\(2);
\CPU|DP|REGFILE|regmux|ALT_INV_b[2]~7_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[2]~7_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|Reg3|out\(2);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|Reg1|out\(2);
\CPU|DP|REGFILE|regmux|ALT_INV_b[2]~6_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[2]~6_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|Reg4|out\(2);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|Reg2|out\(2);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|Reg0|out\(2);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(2) <= NOT \CPU|DP|REGFILE|Reg5|out\(2);
\CPU|DP|loadA|ALT_INV_out\(8) <= NOT \CPU|DP|loadA|out\(8);
\CPU|DP|Muxb|ALT_INV_b[8]~10_combout\ <= NOT \CPU|DP|Muxb|b[8]~10_combout\;
\CPU|DP|loadB|ALT_INV_out\(9) <= NOT \CPU|DP|loadB|out\(9);
\CPU|DP|REGFILE|regmux|ALT_INV_b[0]~5_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[0]~5_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|Reg7|out\(0);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|Reg6|out\(0);
\CPU|DP|REGFILE|regmux|ALT_INV_b[0]~4_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[0]~4_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|Reg3|out\(0);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|Reg1|out\(0);
\CPU|DP|REGFILE|regmux|ALT_INV_b[0]~3_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[0]~3_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|Reg4|out\(0);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|Reg2|out\(0);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|Reg0|out\(0);
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(0) <= NOT \CPU|DP|REGFILE|Reg5|out\(0);
\CPU|DP|REGFILE|regmux|ALT_INV_b\(1) <= NOT \CPU|DP|REGFILE|regmux|b\(1);
\CPU|DP|REGFILE|regmux|ALT_INV_b[1]~2_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[1]~2_combout\;
\CPU|DP|REGFILE|Reg7|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|Reg7|out\(1);
\CPU|DP|REGFILE|Reg6|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|Reg6|out\(1);
\CPU|DP|REGFILE|regmux|ALT_INV_b[1]~1_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[1]~1_combout\;
\CPU|DP|REGFILE|Reg3|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|Reg3|out\(1);
\CPU|DP|REGFILE|Reg1|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|Reg1|out\(1);
\CPU|DP|REGFILE|regmux|ALT_INV_b[1]~0_combout\ <= NOT \CPU|DP|REGFILE|regmux|b[1]~0_combout\;
\CPU|DP|REGFILE|Reg4|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|Reg4|out\(1);
\CPU|DP|REGFILE|Reg2|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|Reg2|out\(1);
\CPU|DP|REGFILE|Reg0|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|Reg0|out\(1);
\CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\ <= NOT \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\;
\CPU|insDec|Rmux|ALT_INV_b\(2) <= NOT \CPU|insDec|Rmux|b\(2);
\CPU|insDec|Rmux|ALT_INV_comb~2_combout\ <= NOT \CPU|insDec|Rmux|comb~2_combout\;
\CPU|instruction|ALT_INV_out\(7) <= NOT \CPU|instruction|out\(7);
\CPU|instruction|ALT_INV_out\(10) <= NOT \CPU|instruction|out\(10);
\CPU|insDec|Rmux|ALT_INV_b\(1) <= NOT \CPU|insDec|Rmux|b\(1);
\CPU|insDec|Rmux|ALT_INV_comb~1_combout\ <= NOT \CPU|insDec|Rmux|comb~1_combout\;
\CPU|instruction|ALT_INV_out\(6) <= NOT \CPU|instruction|out\(6);
\CPU|instruction|ALT_INV_out\(9) <= NOT \CPU|instruction|out\(9);
\CPU|insDec|Rmux|ALT_INV_b\(0) <= NOT \CPU|insDec|Rmux|b\(0);
\CPU|insDec|Rmux|ALT_INV_comb~0_combout\ <= NOT \CPU|insDec|Rmux|comb~0_combout\;
\CPU|instruction|ALT_INV_out\(5) <= NOT \CPU|instruction|out\(5);
\CPU|instruction|ALT_INV_out\(8) <= NOT \CPU|instruction|out\(8);
\CPU|FSM|ALT_INV_WideOr0~0_combout\ <= NOT \CPU|FSM|WideOr0~0_combout\;
\CPU|FSM|ALT_INV_WideOr1~0_combout\ <= NOT \CPU|FSM|WideOr1~0_combout\;
\CPU|DP|REGFILE|Reg5|ALT_INV_out\(1) <= NOT \CPU|DP|REGFILE|Reg5|out\(1);
\SWtristate|ALT_INV_SWdriverout~2_combout\ <= NOT \SWtristate|SWdriverout~2_combout\;
\CPU|DP|loadA|ALT_INV_out\(7) <= NOT \CPU|DP|loadA|out\(7);
\CPU|DP|Muxb|ALT_INV_b[7]~9_combout\ <= NOT \CPU|DP|Muxb|b[7]~9_combout\;
\CPU|DP|loadB|ALT_INV_out\(8) <= NOT \CPU|DP|loadB|out\(8);
\CPU|DP|loadA|ALT_INV_out\(6) <= NOT \CPU|DP|loadA|out\(6);
\CPU|DP|Muxb|ALT_INV_b[6]~8_combout\ <= NOT \CPU|DP|Muxb|b[6]~8_combout\;
\CPU|DP|loadB|ALT_INV_out\(7) <= NOT \CPU|DP|loadB|out\(7);
\CPU|DP|loadA|ALT_INV_out\(5) <= NOT \CPU|DP|loadA|out\(5);
\CPU|DP|Muxb|ALT_INV_b[5]~7_combout\ <= NOT \CPU|DP|Muxb|b[5]~7_combout\;
\CPU|DP|loadB|ALT_INV_out\(6) <= NOT \CPU|DP|loadB|out\(6);
\CPU|DP|loadA|ALT_INV_out\(4) <= NOT \CPU|DP|loadA|out\(4);
\CPU|DP|Muxb|ALT_INV_b[4]~6_combout\ <= NOT \CPU|DP|Muxb|b[4]~6_combout\;
\CPU|DP|loadB|ALT_INV_out\(5) <= NOT \CPU|DP|loadB|out\(5);
\CPU|DP|loadA|ALT_INV_out\(3) <= NOT \CPU|DP|loadA|out\(3);
\CPU|DP|Muxb|ALT_INV_b[3]~5_combout\ <= NOT \CPU|DP|Muxb|b[3]~5_combout\;
\CPU|DP|loadB|ALT_INV_out\(4) <= NOT \CPU|DP|loadB|out\(4);
\CPU|DP|loadA|ALT_INV_out\(2) <= NOT \CPU|DP|loadA|out\(2);
\CPU|DP|Muxb|ALT_INV_b[2]~4_combout\ <= NOT \CPU|DP|Muxb|b[2]~4_combout\;
\CPU|DP|loadB|ALT_INV_out\(3) <= NOT \CPU|DP|loadB|out\(3);
\CPU|instruction|ALT_INV_out\(2) <= NOT \CPU|instruction|out\(2);
\CPU|DP|loadA|ALT_INV_out\(1) <= NOT \CPU|DP|loadA|out\(1);
\CPU|DP|Muxb|ALT_INV_b[1]~3_combout\ <= NOT \CPU|DP|Muxb|b[1]~3_combout\;
\CPU|DP|Muxb|ALT_INV_b[14]~2_combout\ <= NOT \CPU|DP|Muxb|b[14]~2_combout\;
\CPU|DP|Muxb|ALT_INV_b[14]~1_combout\ <= NOT \CPU|DP|Muxb|b[14]~1_combout\;
\CPU|DP|loadB|ALT_INV_out\(2) <= NOT \CPU|DP|loadB|out\(2);
\CPU|instruction|ALT_INV_out\(1) <= NOT \CPU|instruction|out\(1);
\CPU|FSM|ALT_INV_Mux4~2_combout\ <= NOT \CPU|FSM|Mux4~2_combout\;
\CPU|FSM|ALT_INV_Mux4~1_combout\ <= NOT \CPU|FSM|Mux4~1_combout\;
\CPU|FSM|ALT_INV_Mux4~0_combout\ <= NOT \CPU|FSM|Mux4~0_combout\;
\CPU|FSM|ALT_INV_load_pc~0_combout\ <= NOT \CPU|FSM|load_pc~0_combout\;
\CPU|FSM|ALT_INV_Mux0~1_combout\ <= NOT \CPU|FSM|Mux0~1_combout\;
\CPU|FSM|ALT_INV_Mux0~0_combout\ <= NOT \CPU|FSM|Mux0~0_combout\;
\CPU|FSM|ALT_INV_Mux1~3_combout\ <= NOT \CPU|FSM|Mux1~3_combout\;
\CPU|FSM|ALT_INV_Mux1~2_combout\ <= NOT \CPU|FSM|Mux1~2_combout\;
\CPU|FSM|ALT_INV_Mux1~1_combout\ <= NOT \CPU|FSM|Mux1~1_combout\;
\CPU|FSM|ALT_INV_Mux1~0_combout\ <= NOT \CPU|FSM|Mux1~0_combout\;
\CPU|FSM|ALT_INV_Mux2~3_combout\ <= NOT \CPU|FSM|Mux2~3_combout\;
\CPU|FSM|ALT_INV_Mux2~2_combout\ <= NOT \CPU|FSM|Mux2~2_combout\;
\CPU|FSM|ALT_INV_Mux2~1_combout\ <= NOT \CPU|FSM|Mux2~1_combout\;
\CPU|FSM|ALT_INV_Mux2~0_combout\ <= NOT \CPU|FSM|Mux2~0_combout\;
\CPU|instruction|ALT_INV_out\(15) <= NOT \CPU|instruction|out\(15);
\CPU|instruction|ALT_INV_out\(14) <= NOT \CPU|instruction|out\(14);
\CPU|instruction|ALT_INV_out\(13) <= NOT \CPU|instruction|out\(13);
\CPU|DP|alu|ALT_INV_Selector6~0_combout\ <= NOT \CPU|DP|alu|Selector6~0_combout\;
\CPU|FSM|ALT_INV_asel~0_combout\ <= NOT \CPU|FSM|asel~0_combout\;
\CPU|DP|alu|ALT_INV_Equal0~0_combout\ <= NOT \CPU|DP|alu|Equal0~0_combout\;
\CPU|instruction|ALT_INV_out\(12) <= NOT \CPU|instruction|out\(12);
\CPU|instruction|ALT_INV_out\(11) <= NOT \CPU|instruction|out\(11);
\CPU|DP|loadA|ALT_INV_out\(0) <= NOT \CPU|DP|loadA|out\(0);
\CPU|DP|Muxb|ALT_INV_b[0]~0_combout\ <= NOT \CPU|DP|Muxb|b[0]~0_combout\;
\CPU|instruction|ALT_INV_out\(3) <= NOT \CPU|instruction|out\(3);
\CPU|DP|loadB|ALT_INV_out\(0) <= NOT \CPU|DP|loadB|out\(0);
\CPU|DP|loadB|ALT_INV_out\(1) <= NOT \CPU|DP|loadB|out\(1);
\CPU|instruction|ALT_INV_out\(4) <= NOT \CPU|instruction|out\(4);
\CPU|FSM|ALT_INV_Decoder0~1_combout\ <= NOT \CPU|FSM|Decoder0~1_combout\;
\CPU|instruction|ALT_INV_out\(0) <= NOT \CPU|instruction|out\(0);
\SWtristate|ALT_INV_SWdriverout~1_combout\ <= NOT \SWtristate|SWdriverout~1_combout\;
\CPU|dataAddr|ALT_INV_out\(7) <= NOT \CPU|dataAddr|out\(7);
\CPU|dataAddr|ALT_INV_out\(5) <= NOT \CPU|dataAddr|out\(5);
\CPU|FSM|ALT_INV_addr_sel~0_combout\ <= NOT \CPU|FSM|addr_sel~0_combout\;
\SWtristate|ALT_INV_SWdriverout~0_combout\ <= NOT \SWtristate|SWdriverout~0_combout\;
\CPU|ADDR_MUX|ALT_INV_b[4]~6_combout\ <= NOT \CPU|ADDR_MUX|b[4]~6_combout\;
\CPU|dataAddr|ALT_INV_out\(4) <= NOT \CPU|dataAddr|out\(4);
\CPU|ADDR_MUX|ALT_INV_b[3]~5_combout\ <= NOT \CPU|ADDR_MUX|b[3]~5_combout\;
\CPU|dataAddr|ALT_INV_out\(3) <= NOT \CPU|dataAddr|out\(3);
\CPU|ADDR_MUX|ALT_INV_b[2]~4_combout\ <= NOT \CPU|ADDR_MUX|b[2]~4_combout\;
\CPU|dataAddr|ALT_INV_out\(2) <= NOT \CPU|dataAddr|out\(2);
\CPU|ADDR_MUX|ALT_INV_b[1]~3_combout\ <= NOT \CPU|ADDR_MUX|b[1]~3_combout\;
\CPU|dataAddr|ALT_INV_out\(1) <= NOT \CPU|dataAddr|out\(1);
\CPU|ADDR_MUX|ALT_INV_b[0]~2_combout\ <= NOT \CPU|ADDR_MUX|b[0]~2_combout\;
\CPU|dataAddr|ALT_INV_out\(0) <= NOT \CPU|dataAddr|out\(0);
\CPU|ADDR_MUX|ALT_INV_b[8]~1_combout\ <= NOT \CPU|ADDR_MUX|b[8]~1_combout\;
\CPU|dataAddr|ALT_INV_out\(8) <= NOT \CPU|dataAddr|out\(8);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDreg|out\(0),
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
	i => \LEDreg|out\(1),
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
	i => \LEDreg|out\(2),
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
	i => \LEDreg|out\(3),
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
	i => \LEDreg|out\(4),
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
	i => \LEDreg|out\(5),
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
	i => \LEDreg|out\(6),
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
	i => \LEDreg|out\(7),
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

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(6));

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

-- Location: LABCELL_X22_Y1_N39
\CPU|ProgramCounter|out[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ProgramCounter|out[0]~_wirecell_combout\ = ( !\CPU|ProgramCounter|out\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|ProgramCounter|ALT_INV_out\(0),
	combout => \CPU|ProgramCounter|out[0]~_wirecell_combout\);

-- Location: LABCELL_X19_Y1_N57
\CPU|FSM|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux2~1_combout\ = ( \CPU|FSM|state|out\(0) & ( !\CPU|FSM|state|out\(2) $ (!\CPU|FSM|state|out\(1)) ) ) # ( !\CPU|FSM|state|out\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FSM|state|ALT_INV_out\(2),
	datad => \CPU|FSM|state|ALT_INV_out\(1),
	dataf => \CPU|FSM|state|ALT_INV_out\(0),
	combout => \CPU|FSM|Mux2~1_combout\);

-- Location: MLABCELL_X21_Y3_N30
\CPU|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~9_sumout\ = SUM(( \CPU|ProgramCounter|out\(1) ) + ( \CPU|ProgramCounter|out\(0) ) + ( !VCC ))
-- \CPU|Add0~10\ = CARRY(( \CPU|ProgramCounter|out\(1) ) + ( \CPU|ProgramCounter|out\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ProgramCounter|ALT_INV_out\(0),
	datad => \CPU|ProgramCounter|ALT_INV_out\(1),
	cin => GND,
	sumout => \CPU|Add0~9_sumout\,
	cout => \CPU|Add0~10\);

-- Location: MLABCELL_X21_Y3_N18
\CPU|FSM|load_pc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|load_pc~0_combout\ = ( !\CPU|FSM|state|out\(0) & ( (!\CPU|FSM|state|out\(2) & (!\CPU|FSM|state|out\(3) & !\CPU|FSM|state|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|FSM|state|ALT_INV_out\(1),
	dataf => \CPU|FSM|state|ALT_INV_out\(0),
	combout => \CPU|FSM|load_pc~0_combout\);

-- Location: FF_X21_Y3_N32
\CPU|ProgramCounter|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~9_sumout\,
	sclr => \CPU|FSM|Decoder0~2_combout\,
	ena => \CPU|FSM|load_pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ProgramCounter|out\(1));

-- Location: LABCELL_X18_Y1_N6
\CPU|FSM|asel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|asel~0_combout\ = ( \CPU|FSM|state|out\(0) & ( (!\CPU|FSM|state|out\(2) & (!\CPU|FSM|state|out\(1) & \CPU|FSM|state|out\(4))) ) ) # ( !\CPU|FSM|state|out\(0) & ( (\CPU|FSM|state|out\(2) & (!\CPU|FSM|state|out\(1) & !\CPU|FSM|state|out\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|FSM|state|ALT_INV_out\(1),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	dataf => \CPU|FSM|state|ALT_INV_out\(0),
	combout => \CPU|FSM|asel~0_combout\);

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

-- Location: LABCELL_X17_Y1_N12
\CPU|FSM|vsel[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|vsel[1]~0_combout\ = ( \CPU|FSM|state|out\(3) & ( (!\CPU|FSM|state|out\(0) & (!\CPU|FSM|state|out\(2) & (!\CPU|FSM|state|out\(4) & \CPU|FSM|state|out\(1)))) ) ) # ( !\CPU|FSM|state|out\(3) & ( (\CPU|FSM|state|out\(0) & (\CPU|FSM|state|out\(2) & 
-- (\CPU|FSM|state|out\(4) & !\CPU|FSM|state|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(0),
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|FSM|state|ALT_INV_out\(4),
	datad => \CPU|FSM|state|ALT_INV_out\(1),
	dataf => \CPU|FSM|state|ALT_INV_out\(3),
	combout => \CPU|FSM|vsel[1]~0_combout\);

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

-- Location: LABCELL_X17_Y1_N45
\CPU|DP|vselonehot|ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|vselonehot|ShiftLeft0~0_combout\ = ( !\CPU|FSM|state|out\(3) & ( (\CPU|FSM|state|out\(0) & (\CPU|FSM|state|out\(2) & (!\CPU|FSM|state|out\(1) & \CPU|FSM|state|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(0),
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|FSM|state|ALT_INV_out\(1),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	dataf => \CPU|FSM|state|ALT_INV_out\(3),
	combout => \CPU|DP|vselonehot|ShiftLeft0~0_combout\);

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

-- Location: MLABCELL_X21_Y1_N3
\CPU|FSM|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Decoder0~3_combout\ = ( \CPU|FSM|state|out\(1) & ( (\CPU|FSM|state|out\(4) & (!\CPU|FSM|state|out\(3) & (!\CPU|FSM|state|out\(2) & \CPU|FSM|state|out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(4),
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|FSM|state|ALT_INV_out\(2),
	datad => \CPU|FSM|state|ALT_INV_out\(0),
	dataf => \CPU|FSM|state|ALT_INV_out\(1),
	combout => \CPU|FSM|Decoder0~3_combout\);

-- Location: FF_X21_Y1_N26
\CPU|dataAddr|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(0),
	sload => VCC,
	ena => \CPU|FSM|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataAddr|out\(0));

-- Location: MLABCELL_X21_Y2_N57
\CPU|ADDR_MUX|b[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ADDR_MUX|b[0]~2_combout\ = ( \CPU|FSM|state|out\(3) & ( \CPU|FSM|state|out\(2) & ( (!\CPU|FSM|state|out\(1) & (((\CPU|dataAddr|out\(0))))) # (\CPU|FSM|state|out\(1) & ((!\CPU|FSM|state|out\(4) & (\CPU|ProgramCounter|out\(0))) # 
-- (\CPU|FSM|state|out\(4) & ((\CPU|dataAddr|out\(0)))))) ) ) ) # ( !\CPU|FSM|state|out\(3) & ( \CPU|FSM|state|out\(2) & ( \CPU|dataAddr|out\(0) ) ) ) # ( \CPU|FSM|state|out\(3) & ( !\CPU|FSM|state|out\(2) & ( \CPU|dataAddr|out\(0) ) ) ) # ( 
-- !\CPU|FSM|state|out\(3) & ( !\CPU|FSM|state|out\(2) & ( \CPU|dataAddr|out\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110001101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(1),
	datab => \CPU|ProgramCounter|ALT_INV_out\(0),
	datac => \CPU|dataAddr|ALT_INV_out\(0),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	datae => \CPU|FSM|state|ALT_INV_out\(3),
	dataf => \CPU|FSM|state|ALT_INV_out\(2),
	combout => \CPU|ADDR_MUX|b[0]~2_combout\);

-- Location: LABCELL_X17_Y3_N0
\CPU|FSM|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr3~0_combout\ = ( !\CPU|FSM|state|out\(2) & ( (!\CPU|FSM|state|out\(1) & (\CPU|FSM|state|out\(3) & (!\CPU|FSM|state|out\(0) & \CPU|FSM|state|out\(4)))) # (\CPU|FSM|state|out\(1) & (((\CPU|FSM|state|out\(0) & !\CPU|FSM|state|out\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100000000000000000000000000101001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(1),
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|FSM|state|ALT_INV_out\(0),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	datae => \CPU|FSM|state|ALT_INV_out\(2),
	combout => \CPU|FSM|WideOr3~0_combout\);

-- Location: FF_X17_Y2_N37
\CPU|DP|loadB|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(4),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(4));

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

-- Location: FF_X21_Y1_N50
\CPU|dataAddr|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(3),
	sload => VCC,
	ena => \CPU|FSM|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataAddr|out\(3));

-- Location: MLABCELL_X21_Y1_N42
\CPU|ADDR_MUX|b[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ADDR_MUX|b[3]~5_combout\ = ( \CPU|ProgramCounter|out\(3) & ( \CPU|dataAddr|out\(3) ) ) # ( !\CPU|ProgramCounter|out\(3) & ( \CPU|dataAddr|out\(3) & ( (!\CPU|FSM|state|out\(2)) # ((!\CPU|FSM|state|out\(3)) # ((!\CPU|FSM|state|out\(1)) # 
-- (\CPU|FSM|state|out\(4)))) ) ) ) # ( \CPU|ProgramCounter|out\(3) & ( !\CPU|dataAddr|out\(3) & ( (\CPU|FSM|state|out\(2) & (\CPU|FSM|state|out\(3) & (\CPU|FSM|state|out\(1) & !\CPU|FSM|state|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000011111110111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(2),
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|FSM|state|ALT_INV_out\(1),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	datae => \CPU|ProgramCounter|ALT_INV_out\(3),
	dataf => \CPU|dataAddr|ALT_INV_out\(3),
	combout => \CPU|ADDR_MUX|b[3]~5_combout\);

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

-- Location: MLABCELL_X21_Y1_N45
\CPU|ADDR_MUX|b[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ADDR_MUX|b[6]~0_combout\ = ( \CPU|ProgramCounter|out\(6) & ( \CPU|dataAddr|out\(6) ) ) # ( !\CPU|ProgramCounter|out\(6) & ( \CPU|dataAddr|out\(6) & ( (!\CPU|FSM|state|out\(2)) # ((!\CPU|FSM|state|out\(3)) # ((!\CPU|FSM|state|out\(1)) # 
-- (\CPU|FSM|state|out\(4)))) ) ) ) # ( \CPU|ProgramCounter|out\(6) & ( !\CPU|dataAddr|out\(6) & ( (\CPU|FSM|state|out\(2) & (\CPU|FSM|state|out\(3) & (!\CPU|FSM|state|out\(4) & \CPU|FSM|state|out\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000011111111111011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(2),
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|FSM|state|ALT_INV_out\(4),
	datad => \CPU|FSM|state|ALT_INV_out\(1),
	datae => \CPU|ProgramCounter|ALT_INV_out\(6),
	dataf => \CPU|dataAddr|ALT_INV_out\(6),
	combout => \CPU|ADDR_MUX|b[6]~0_combout\);

-- Location: LABCELL_X19_Y3_N18
\CPU|FSM|loada~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|loada~0_combout\ = ( !\CPU|FSM|state|out\(2) & ( \CPU|FSM|state|out\(1) & ( (!\CPU|FSM|state|out\(4) & (!\CPU|FSM|state|out\(0) & !\CPU|FSM|state|out\(3))) ) ) ) # ( !\CPU|FSM|state|out\(2) & ( !\CPU|FSM|state|out\(1) & ( (\CPU|FSM|state|out\(4) 
-- & (\CPU|FSM|state|out\(0) & !\CPU|FSM|state|out\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|state|ALT_INV_out\(4),
	datac => \CPU|FSM|state|ALT_INV_out\(0),
	datad => \CPU|FSM|state|ALT_INV_out\(3),
	datae => \CPU|FSM|state|ALT_INV_out\(2),
	dataf => \CPU|FSM|state|ALT_INV_out\(1),
	combout => \CPU|FSM|loada~0_combout\);

-- Location: FF_X17_Y2_N29
\CPU|DP|loadA|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(10),
	sload => VCC,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(10));

-- Location: FF_X17_Y2_N31
\CPU|DP|loadB|out[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(10),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out[10]~DUPLICATE_q\);

-- Location: FF_X17_Y3_N4
\CPU|DP|loadA|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(13),
	sload => VCC,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(13));

-- Location: LABCELL_X17_Y1_N48
\read_data[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[7]~15_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a7\ & ( (!\SWtristate|SWdriverout~2_combout\) # (((!\SWtristate|SWdriverout~0_combout\) # (!\SWtristate|SWdriverout~1_combout\)) # (\SW[7]~input_o\)) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a7\ & ( (\SWtristate|SWdriverout~2_combout\ & (\SW[7]~input_o\ & (\SWtristate|SWdriverout~0_combout\ & \SWtristate|SWdriverout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \read_data[7]~15_combout\);

-- Location: LABCELL_X18_Y1_N0
\CPU|FSM|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Decoder0~4_combout\ = ( \CPU|FSM|state|out\(3) & ( (\CPU|FSM|state|out\(1) & (\CPU|FSM|state|out\(2) & (\CPU|FSM|state|out\(0) & !\CPU|FSM|state|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(1),
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|FSM|state|ALT_INV_out\(0),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	dataf => \CPU|FSM|state|ALT_INV_out\(3),
	combout => \CPU|FSM|Decoder0~4_combout\);

-- Location: FF_X17_Y1_N50
\CPU|instruction|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[7]~15_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(7));

-- Location: LABCELL_X16_Y2_N36
\CPU|DP|Mux1lab6|b[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[15]~15_combout\ = ( \CPU|FSM|vsel[1]~0_combout\ & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & \CPU|instruction|out\(7)) ) ) # ( !\CPU|FSM|vsel[1]~0_combout\ & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & \CPU|DP|loadC|out\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datab => \CPU|instruction|ALT_INV_out\(7),
	datac => \CPU|DP|loadC|ALT_INV_out\(15),
	dataf => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	combout => \CPU|DP|Mux1lab6|b[15]~15_combout\);

-- Location: M10K_X14_Y1_N0
\MEM|mem_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000140000000E00000000081600000006120000000D109000000C06A00000060400000006000000000D008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/lab7_top.ram0_RAM_15119.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:MEM|altsyncram:mem_rtl_0|altsyncram_65r1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb~0_combout\,
	portbre => VCC,
	clk0 => \KEY[0]~inputCLKENA0_outclk\,
	portadatain => \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEM|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X16_Y2_N30
\CPU|DP|Mux1lab6|b[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(15) = ( \CPU|DP|Mux1lab6|b[15]~15_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a15\ ) ) # ( !\CPU|DP|Mux1lab6|b[15]~15_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a15\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & 
-- ((!\SWtristate|SWdriverout~2_combout\) # ((!\SWtristate|SWdriverout~4_combout\) # (\SW[7]~input_o\)))) ) ) ) # ( \CPU|DP|Mux1lab6|b[15]~15_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a15\ ) ) # ( !\CPU|DP|Mux1lab6|b[15]~15_combout\ & ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a15\ & ( (\SWtristate|SWdriverout~2_combout\ & (\SW[7]~input_o\ & (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & \SWtristate|SWdriverout~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111100001111000010111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	datae => \CPU|DP|Mux1lab6|ALT_INV_b[15]~15_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \CPU|DP|Mux1lab6|b\(15));

-- Location: LABCELL_X17_Y1_N6
\CPU|FSM|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr0~0_combout\ = ( \CPU|FSM|state|out\(1) & ( (!\CPU|FSM|state|out\(0) & (!\CPU|FSM|state|out\(2) & (\CPU|FSM|state|out\(3) & \CPU|FSM|state|out\(4)))) ) ) # ( !\CPU|FSM|state|out\(1) & ( (!\CPU|FSM|state|out\(0) & (!\CPU|FSM|state|out\(2) & 
-- (\CPU|FSM|state|out\(3)))) # (\CPU|FSM|state|out\(0) & (\CPU|FSM|state|out\(2) & (!\CPU|FSM|state|out\(3) $ (!\CPU|FSM|state|out\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100011000000010010001100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(0),
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	dataf => \CPU|FSM|state|ALT_INV_out\(1),
	combout => \CPU|FSM|WideOr0~0_combout\);

-- Location: LABCELL_X16_Y1_N39
\read_data[10]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[10]~14_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( ((!\SWtristate|SWdriverout~1_combout\) # ((!\SWtristate|SWdriverout~0_combout\) # (!\SWtristate|SWdriverout~2_combout\))) # (\SW[7]~input_o\) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( (\SW[7]~input_o\ & (\SWtristate|SWdriverout~1_combout\ & (\SWtristate|SWdriverout~0_combout\ & \SWtristate|SWdriverout~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111111011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	datac => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	combout => \read_data[10]~14_combout\);

-- Location: FF_X16_Y1_N40
\CPU|instruction|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[10]~14_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(10));

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

-- Location: LABCELL_X18_Y1_N45
\read_data[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[2]~9_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( (!\SWtristate|SWdriverout~1_combout\) # ((!\SWtristate|SWdriverout~2_combout\) # ((!\SWtristate|SWdriverout~0_combout\) # (\SW[2]~input_o\))) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( (\SWtristate|SWdriverout~1_combout\ & (\SWtristate|SWdriverout~2_combout\ & (\SW[2]~input_o\ & \SWtristate|SWdriverout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	datab => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	combout => \read_data[2]~9_combout\);

-- Location: FF_X18_Y1_N47
\CPU|instruction|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[2]~9_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(2));

-- Location: LABCELL_X18_Y1_N3
\CPU|insDec|Rmux|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|insDec|Rmux|comb~2_combout\ = ( \CPU|FSM|state|out\(0) & ( (\CPU|FSM|state|out\(1) & (!\CPU|FSM|state|out\(2) & (\CPU|instruction|out\(2) & !\CPU|FSM|state|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(1),
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|instruction|ALT_INV_out\(2),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	dataf => \CPU|FSM|state|ALT_INV_out\(0),
	combout => \CPU|insDec|Rmux|comb~2_combout\);

-- Location: LABCELL_X17_Y1_N15
\CPU|FSM|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr1~0_combout\ = (!\CPU|FSM|state|out\(2) & ((!\CPU|FSM|state|out\(0) & (\CPU|FSM|state|out\(1) & !\CPU|FSM|state|out\(4))) # (\CPU|FSM|state|out\(0) & (!\CPU|FSM|state|out\(1) & \CPU|FSM|state|out\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001000000000010000100000000001000010000000000100001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(0),
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|FSM|state|ALT_INV_out\(1),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	combout => \CPU|FSM|WideOr1~0_combout\);

-- Location: LABCELL_X17_Y1_N36
\CPU|insDec|Rmux|b[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|insDec|Rmux|b\(2) = ( \CPU|FSM|WideOr1~0_combout\ & ( (!\CPU|instruction|out\(10) & (!\CPU|insDec|Rmux|comb~2_combout\ & ((!\CPU|instruction|out\(7)) # (!\CPU|FSM|WideOr0~0_combout\)))) ) ) # ( !\CPU|FSM|WideOr1~0_combout\ & ( 
-- (!\CPU|insDec|Rmux|comb~2_combout\ & ((!\CPU|instruction|out\(7)) # (!\CPU|FSM|WideOr0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000000111011100000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(7),
	datab => \CPU|FSM|ALT_INV_WideOr0~0_combout\,
	datac => \CPU|instruction|ALT_INV_out\(10),
	datad => \CPU|insDec|Rmux|ALT_INV_comb~2_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr1~0_combout\,
	combout => \CPU|insDec|Rmux|b\(2));

-- Location: LABCELL_X17_Y1_N9
\CPU|FSM|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr2~0_combout\ = ( \CPU|FSM|state|out\(3) & ( (!\CPU|FSM|state|out\(4) & ((!\CPU|FSM|state|out\(0) & (!\CPU|FSM|state|out\(2))) # (\CPU|FSM|state|out\(0) & (\CPU|FSM|state|out\(2) & !\CPU|FSM|state|out\(1))))) ) ) # ( !\CPU|FSM|state|out\(3) 
-- & ( (\CPU|FSM|state|out\(0) & (\CPU|FSM|state|out\(2) & (!\CPU|FSM|state|out\(1) & \CPU|FSM|state|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000010011000000000001001100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(0),
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|FSM|state|ALT_INV_out\(1),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	dataf => \CPU|FSM|state|ALT_INV_out\(3),
	combout => \CPU|FSM|WideOr2~0_combout\);

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

-- Location: LABCELL_X17_Y1_N27
\read_data[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[1]~8_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a1\ & ( (!\SWtristate|SWdriverout~0_combout\) # ((!\SWtristate|SWdriverout~1_combout\) # ((!\SWtristate|SWdriverout~2_combout\) # (\SW[1]~input_o\))) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a1\ & ( (\SWtristate|SWdriverout~0_combout\ & (\SWtristate|SWdriverout~1_combout\ & (\SW[1]~input_o\ & \SWtristate|SWdriverout~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	datab => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \read_data[1]~8_combout\);

-- Location: FF_X17_Y1_N29
\CPU|instruction|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[1]~8_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(1));

-- Location: LABCELL_X17_Y1_N3
\CPU|insDec|Rmux|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|insDec|Rmux|comb~1_combout\ = ( \CPU|instruction|out\(1) & ( (!\CPU|FSM|state|out\(4) & (\CPU|FSM|state|out\(1) & (!\CPU|FSM|state|out\(2) & \CPU|FSM|state|out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(4),
	datab => \CPU|FSM|state|ALT_INV_out\(1),
	datac => \CPU|FSM|state|ALT_INV_out\(2),
	datad => \CPU|FSM|state|ALT_INV_out\(0),
	dataf => \CPU|instruction|ALT_INV_out\(1),
	combout => \CPU|insDec|Rmux|comb~1_combout\);

-- Location: LABCELL_X16_Y1_N36
\read_data[9]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[9]~12_combout\ = ( \SWtristate|SWdriverout~0_combout\ & ( (!\SWtristate|SWdriverout~1_combout\ & (((\MEM|mem_rtl_0|auto_generated|ram_block1a9\)))) # (\SWtristate|SWdriverout~1_combout\ & ((!\SWtristate|SWdriverout~2_combout\ & 
-- ((\MEM|mem_rtl_0|auto_generated|ram_block1a9\))) # (\SWtristate|SWdriverout~2_combout\ & (\SW[7]~input_o\)))) ) ) # ( !\SWtristate|SWdriverout~0_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a9\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111010000000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	datac => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	dataf => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	combout => \read_data[9]~12_combout\);

-- Location: FF_X16_Y1_N37
\CPU|instruction|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[9]~12_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(9));

-- Location: LABCELL_X17_Y1_N30
\CPU|insDec|Rmux|b[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|insDec|Rmux|b\(1) = ( \CPU|instruction|out\(9) & ( (!\CPU|FSM|WideOr1~0_combout\ & (!\CPU|insDec|Rmux|comb~1_combout\ & ((!\CPU|FSM|WideOr0~0_combout\) # (!\CPU|instruction|out\(6))))) ) ) # ( !\CPU|instruction|out\(9) & ( 
-- (!\CPU|insDec|Rmux|comb~1_combout\ & ((!\CPU|FSM|WideOr0~0_combout\) # (!\CPU|instruction|out\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr0~0_combout\,
	datab => \CPU|FSM|ALT_INV_WideOr1~0_combout\,
	datac => \CPU|instruction|ALT_INV_out\(6),
	datad => \CPU|insDec|Rmux|ALT_INV_comb~1_combout\,
	dataf => \CPU|instruction|ALT_INV_out\(9),
	combout => \CPU|insDec|Rmux|b\(1));

-- Location: LABCELL_X17_Y1_N51
\read_data[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[8]~10_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a8\ & ( (!\SWtristate|SWdriverout~2_combout\) # (((!\SWtristate|SWdriverout~0_combout\) # (!\SWtristate|SWdriverout~1_combout\)) # (\SW[7]~input_o\)) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a8\ & ( (\SWtristate|SWdriverout~2_combout\ & (\SW[7]~input_o\ & (\SWtristate|SWdriverout~0_combout\ & \SWtristate|SWdriverout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \read_data[8]~10_combout\);

-- Location: FF_X17_Y1_N52
\CPU|instruction|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[8]~10_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(8));

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

-- Location: LABCELL_X17_Y1_N24
\read_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[0]~0_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (!\SWtristate|SWdriverout~0_combout\) # ((!\SWtristate|SWdriverout~1_combout\) # ((!\SWtristate|SWdriverout~2_combout\) # (\SW[0]~input_o\))) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (\SWtristate|SWdriverout~0_combout\ & (\SWtristate|SWdriverout~1_combout\ & (\SW[0]~input_o\ & \SWtristate|SWdriverout~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	datab => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \read_data[0]~0_combout\);

-- Location: FF_X17_Y1_N26
\CPU|instruction|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[0]~0_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(0));

-- Location: LABCELL_X17_Y1_N42
\CPU|insDec|Rmux|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|insDec|Rmux|comb~0_combout\ = ( \CPU|instruction|out\(0) & ( (\CPU|FSM|state|out\(0) & (!\CPU|FSM|state|out\(2) & (!\CPU|FSM|state|out\(4) & \CPU|FSM|state|out\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(0),
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|FSM|state|ALT_INV_out\(4),
	datad => \CPU|FSM|state|ALT_INV_out\(1),
	dataf => \CPU|instruction|ALT_INV_out\(0),
	combout => \CPU|insDec|Rmux|comb~0_combout\);

-- Location: LABCELL_X17_Y1_N33
\CPU|insDec|Rmux|b[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|insDec|Rmux|b\(0) = ( !\CPU|insDec|Rmux|comb~0_combout\ & ( (!\CPU|FSM|WideOr0~0_combout\ & ((!\CPU|FSM|WideOr1~0_combout\) # ((!\CPU|instruction|out\(8))))) # (\CPU|FSM|WideOr0~0_combout\ & (!\CPU|instruction|out\(5) & 
-- ((!\CPU|FSM|WideOr1~0_combout\) # (!\CPU|instruction|out\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000111111001010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr0~0_combout\,
	datab => \CPU|FSM|ALT_INV_WideOr1~0_combout\,
	datac => \CPU|instruction|ALT_INV_out\(8),
	datad => \CPU|instruction|ALT_INV_out\(5),
	dataf => \CPU|insDec|Rmux|ALT_INV_comb~0_combout\,
	combout => \CPU|insDec|Rmux|b\(0));

-- Location: LABCELL_X16_Y2_N54
\CPU|DP|REGFILE|comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|comb~6_combout\ = ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(2) & (\CPU|FSM|WideOr2~0_combout\ & !\CPU|insDec|Rmux|b\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datab => \CPU|FSM|ALT_INV_WideOr2~0_combout\,
	datac => \CPU|insDec|Rmux|ALT_INV_b\(1),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|comb~6_combout\);

-- Location: FF_X16_Y2_N2
\CPU|DP|REGFILE|Reg6|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(15),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(15));

-- Location: MLABCELL_X15_Y1_N15
\CPU|DP|REGFILE|comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|comb~7_combout\ = (!\CPU|insDec|Rmux|b\(1) & (!\CPU|insDec|Rmux|b\(0) & (!\CPU|insDec|Rmux|b\(2) & \CPU|FSM|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|FSM|ALT_INV_WideOr2~0_combout\,
	combout => \CPU|DP|REGFILE|comb~7_combout\);

-- Location: FF_X15_Y2_N22
\CPU|DP|REGFILE|Reg7|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(15),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(15));

-- Location: LABCELL_X18_Y3_N33
\CPU|DP|REGFILE|regmux|b[15]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[15]~47_combout\ = ( \CPU|DP|REGFILE|Reg7|out\(15) & ( \CPU|insDec|Rmux|b\(0) & ( (\CPU|DP|REGFILE|Reg6|out\(15) & (!\CPU|insDec|Rmux|b\(1) & !\CPU|insDec|Rmux|b\(2))) ) ) ) # ( !\CPU|DP|REGFILE|Reg7|out\(15) & ( 
-- \CPU|insDec|Rmux|b\(0) & ( (\CPU|DP|REGFILE|Reg6|out\(15) & (!\CPU|insDec|Rmux|b\(1) & !\CPU|insDec|Rmux|b\(2))) ) ) ) # ( \CPU|DP|REGFILE|Reg7|out\(15) & ( !\CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(1) & !\CPU|insDec|Rmux|b\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(15),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(15),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[15]~47_combout\);

-- Location: MLABCELL_X15_Y2_N36
\CPU|DP|REGFILE|Reg2|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg2|out[15]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(15),
	combout => \CPU|DP|REGFILE|Reg2|out[15]~feeder_combout\);

-- Location: MLABCELL_X15_Y1_N42
\CPU|DP|REGFILE|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|comb~2_combout\ = ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|insDec|Rmux|b\(2) & (\CPU|insDec|Rmux|b\(0) & \CPU|FSM|WideOr2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datad => \CPU|FSM|ALT_INV_WideOr2~0_combout\,
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|comb~2_combout\);

-- Location: FF_X15_Y2_N38
\CPU|DP|REGFILE|Reg2|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg2|out[15]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(15));

-- Location: MLABCELL_X15_Y3_N24
\CPU|DP|REGFILE|Reg4|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg4|out[15]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(15),
	combout => \CPU|DP|REGFILE|Reg4|out[15]~feeder_combout\);

-- Location: LABCELL_X16_Y3_N33
\CPU|DP|REGFILE|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|comb~3_combout\ = ( \CPU|insDec|Rmux|b\(1) & ( (\CPU|insDec|Rmux|b\(0) & (!\CPU|insDec|Rmux|b\(2) & \CPU|FSM|WideOr2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|FSM|ALT_INV_WideOr2~0_combout\,
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|comb~3_combout\);

-- Location: FF_X15_Y3_N26
\CPU|DP|REGFILE|Reg4|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg4|out[15]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(15));

-- Location: LABCELL_X16_Y3_N39
\CPU|DP|REGFILE|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|comb~1_combout\ = ( \CPU|insDec|Rmux|b\(1) & ( (\CPU|FSM|WideOr2~0_combout\ & (\CPU|insDec|Rmux|b\(2) & \CPU|insDec|Rmux|b\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_WideOr2~0_combout\,
	datac => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(0),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|comb~1_combout\);

-- Location: FF_X15_Y2_N10
\CPU|DP|REGFILE|Reg0|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(15),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(15));

-- Location: LABCELL_X18_Y3_N12
\CPU|DP|REGFILE|regmux|b[15]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[15]~45_combout\ = ( \CPU|DP|REGFILE|Reg0|out\(15) & ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(2) & (((\CPU|DP|REGFILE|Reg4|out\(15) & \CPU|insDec|Rmux|b\(1))))) # (\CPU|insDec|Rmux|b\(2) & (((\CPU|insDec|Rmux|b\(1))) # 
-- (\CPU|DP|REGFILE|Reg2|out\(15)))) ) ) ) # ( !\CPU|DP|REGFILE|Reg0|out\(15) & ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(2) & (((\CPU|DP|REGFILE|Reg4|out\(15) & \CPU|insDec|Rmux|b\(1))))) # (\CPU|insDec|Rmux|b\(2) & (\CPU|DP|REGFILE|Reg2|out\(15) & 
-- ((!\CPU|insDec|Rmux|b\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000010100001000101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datab => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(15),
	datac => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(15),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(15),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[15]~45_combout\);

-- Location: LABCELL_X16_Y2_N57
\CPU|DP|REGFILE|comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|comb~5_combout\ = ( !\CPU|insDec|Rmux|b\(0) & ( (\CPU|insDec|Rmux|b\(2) & (\CPU|FSM|WideOr2~0_combout\ & !\CPU|insDec|Rmux|b\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datab => \CPU|FSM|ALT_INV_WideOr2~0_combout\,
	datac => \CPU|insDec|Rmux|ALT_INV_b\(1),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|comb~5_combout\);

-- Location: FF_X16_Y2_N41
\CPU|DP|REGFILE|Reg3|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(15),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(15));

-- Location: LABCELL_X16_Y2_N27
\CPU|DP|REGFILE|comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|comb~4_combout\ = ( !\CPU|insDec|Rmux|b\(0) & ( (\CPU|insDec|Rmux|b\(1) & (\CPU|FSM|WideOr2~0_combout\ & \CPU|insDec|Rmux|b\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000000000000000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datac => \CPU|FSM|ALT_INV_WideOr2~0_combout\,
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|comb~4_combout\);

-- Location: FF_X16_Y3_N11
\CPU|DP|REGFILE|Reg1|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(15),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(15));

-- Location: LABCELL_X16_Y3_N9
\CPU|DP|REGFILE|regmux|b[15]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[15]~46_combout\ = ( \CPU|DP|REGFILE|Reg1|out\(15) & ( \CPU|insDec|Rmux|b\(2) & ( (!\CPU|insDec|Rmux|b\(0) & ((\CPU|insDec|Rmux|b\(1)) # (\CPU|DP|REGFILE|Reg3|out\(15)))) ) ) ) # ( !\CPU|DP|REGFILE|Reg1|out\(15) & ( 
-- \CPU|insDec|Rmux|b\(2) & ( (!\CPU|insDec|Rmux|b\(0) & (\CPU|DP|REGFILE|Reg3|out\(15) & !\CPU|insDec|Rmux|b\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000000000010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datab => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(15),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(15),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|regmux|b[15]~46_combout\);

-- Location: LABCELL_X16_Y1_N30
\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ = ( !\CPU|insDec|Rmux|b\(0) & ( (\CPU|insDec|Rmux|b\(1) & !\CPU|insDec|Rmux|b\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\);

-- Location: LABCELL_X16_Y3_N30
\CPU|DP|REGFILE|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|comb~0_combout\ = ( \CPU|insDec|Rmux|b\(1) & ( (!\CPU|insDec|Rmux|b\(0) & (!\CPU|insDec|Rmux|b\(2) & \CPU|FSM|WideOr2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datac => \CPU|FSM|ALT_INV_WideOr2~0_combout\,
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|comb~0_combout\);

-- Location: FF_X17_Y3_N10
\CPU|DP|REGFILE|Reg5|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(15),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(15));

-- Location: LABCELL_X18_Y3_N36
\CPU|DP|REGFILE|regmux|b[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(15) = ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|Reg5|out\(15) ) ) # ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|Reg5|out\(15) & ( 
-- ((\CPU|DP|REGFILE|regmux|b[15]~46_combout\) # (\CPU|DP|REGFILE|regmux|b[15]~45_combout\)) # (\CPU|DP|REGFILE|regmux|b[15]~47_combout\) ) ) ) # ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|Reg5|out\(15) & ( 
-- ((\CPU|DP|REGFILE|regmux|b[15]~46_combout\) # (\CPU|DP|REGFILE|regmux|b[15]~45_combout\)) # (\CPU|DP|REGFILE|regmux|b[15]~47_combout\) ) ) ) # ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|Reg5|out\(15) & ( 
-- ((\CPU|DP|REGFILE|regmux|b[15]~46_combout\) # (\CPU|DP|REGFILE|regmux|b[15]~45_combout\)) # (\CPU|DP|REGFILE|regmux|b[15]~47_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111101110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|regmux|ALT_INV_b[15]~47_combout\,
	datab => \CPU|DP|REGFILE|regmux|ALT_INV_b[15]~45_combout\,
	datad => \CPU|DP|REGFILE|regmux|ALT_INV_b[15]~46_combout\,
	datae => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(15),
	combout => \CPU|DP|REGFILE|regmux|b\(15));

-- Location: FF_X18_Y3_N38
\CPU|DP|loadA|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|regmux|b\(15),
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(15));

-- Location: FF_X18_Y3_N16
\CPU|DP|loadB|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(15),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(15));

-- Location: MLABCELL_X15_Y3_N30
\CPU|DP|loadB|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadB|out[14]~feeder_combout\ = ( \CPU|DP|REGFILE|regmux|b\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|REGFILE|regmux|ALT_INV_b\(14),
	combout => \CPU|DP|loadB|out[14]~feeder_combout\);

-- Location: FF_X15_Y3_N31
\CPU|DP|loadB|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadB|out[14]~feeder_combout\,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(14));

-- Location: LABCELL_X18_Y1_N54
\CPU|FSM|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Decoder0~1_combout\ = ( !\CPU|FSM|state|out\(0) & ( (\CPU|FSM|state|out\(1) & (!\CPU|FSM|state|out\(2) & (!\CPU|FSM|state|out\(3) & \CPU|FSM|state|out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(1),
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	dataf => \CPU|FSM|state|ALT_INV_out\(0),
	combout => \CPU|FSM|Decoder0~1_combout\);

-- Location: LABCELL_X19_Y3_N33
\CPU|DP|Muxb|b[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[15]~15_combout\ = ( \CPU|instruction|out\(4) & ( \CPU|FSM|Decoder0~1_combout\ ) ) # ( \CPU|instruction|out\(4) & ( !\CPU|FSM|Decoder0~1_combout\ & ( (\CPU|instruction|out\(3) & \CPU|DP|loadB|out\(15)) ) ) ) # ( !\CPU|instruction|out\(4) & ( 
-- !\CPU|FSM|Decoder0~1_combout\ & ( (!\CPU|instruction|out\(3) & (\CPU|DP|loadB|out\(15))) # (\CPU|instruction|out\(3) & ((\CPU|DP|loadB|out\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000100010001000100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(3),
	datab => \CPU|DP|loadB|ALT_INV_out\(15),
	datac => \CPU|DP|loadB|ALT_INV_out\(14),
	datae => \CPU|instruction|ALT_INV_out\(4),
	dataf => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	combout => \CPU|DP|Muxb|b[15]~15_combout\);

-- Location: FF_X18_Y3_N17
\CPU|DP|loadB|out[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(15),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out[15]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y3_N6
\CPU|DP|Muxb|b[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[14]~14_combout\ = ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(3) & ( \CPU|instruction|out\(4) ) ) ) # ( !\CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(3) & ( (!\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(13))) # 
-- (\CPU|instruction|out\(4) & ((\CPU|DP|loadB|out[15]~DUPLICATE_q\))) ) ) ) # ( \CPU|FSM|Decoder0~1_combout\ & ( !\CPU|instruction|out\(3) & ( \CPU|instruction|out\(4) ) ) ) # ( !\CPU|FSM|Decoder0~1_combout\ & ( !\CPU|instruction|out\(3) & ( 
-- (!\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(14))) # (\CPU|instruction|out\(4) & ((\CPU|DP|loadB|out[15]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111001100110011001100001100001111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadB|ALT_INV_out\(14),
	datab => \CPU|instruction|ALT_INV_out\(4),
	datac => \CPU|DP|loadB|ALT_INV_out\(13),
	datad => \CPU|DP|loadB|ALT_INV_out[15]~DUPLICATE_q\,
	datae => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	dataf => \CPU|instruction|ALT_INV_out\(3),
	combout => \CPU|DP|Muxb|b[14]~14_combout\);

-- Location: FF_X18_Y3_N26
\CPU|DP|loadA|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(12),
	sload => VCC,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(12));

-- Location: FF_X18_Y3_N59
\CPU|DP|loadB|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(11),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(11));

-- Location: LABCELL_X18_Y3_N0
\CPU|DP|Muxb|b[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[11]~11_combout\ = ( \CPU|DP|loadB|out\(12) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( !\CPU|DP|loadB|out\(12) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( \CPU|DP|loadB|out\(12) & ( 
-- !\CPU|FSM|Decoder0~1_combout\ & ( ((!\CPU|instruction|out\(3) & (\CPU|DP|loadB|out\(11))) # (\CPU|instruction|out\(3) & ((\CPU|DP|loadB|out[10]~DUPLICATE_q\)))) # (\CPU|instruction|out\(4)) ) ) ) # ( !\CPU|DP|loadB|out\(12) & ( 
-- !\CPU|FSM|Decoder0~1_combout\ & ( (!\CPU|instruction|out\(4) & ((!\CPU|instruction|out\(3) & (\CPU|DP|loadB|out\(11))) # (\CPU|instruction|out\(3) & ((\CPU|DP|loadB|out[10]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001011110111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(3),
	datab => \CPU|DP|loadB|ALT_INV_out\(11),
	datac => \CPU|instruction|ALT_INV_out\(4),
	datad => \CPU|DP|loadB|ALT_INV_out[10]~DUPLICATE_q\,
	datae => \CPU|DP|loadB|ALT_INV_out\(12),
	dataf => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	combout => \CPU|DP|Muxb|b[11]~11_combout\);

-- Location: FF_X17_Y2_N19
\CPU|DP|loadA|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(9),
	sload => VCC,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(9));

-- Location: FF_X17_Y2_N43
\CPU|DP|loadB|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(8),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(8));

-- Location: MLABCELL_X15_Y2_N15
\CPU|DP|Muxb|b[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[8]~10_combout\ = ( \CPU|DP|loadB|out\(9) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( !\CPU|DP|loadB|out\(9) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( \CPU|DP|loadB|out\(9) & ( 
-- !\CPU|FSM|Decoder0~1_combout\ & ( ((!\CPU|instruction|out\(3) & ((\CPU|DP|loadB|out\(8)))) # (\CPU|instruction|out\(3) & (\CPU|DP|loadB|out\(7)))) # (\CPU|instruction|out\(4)) ) ) ) # ( !\CPU|DP|loadB|out\(9) & ( !\CPU|FSM|Decoder0~1_combout\ & ( 
-- (!\CPU|instruction|out\(4) & ((!\CPU|instruction|out\(3) & ((\CPU|DP|loadB|out\(8)))) # (\CPU|instruction|out\(3) & (\CPU|DP|loadB|out\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadB|ALT_INV_out\(7),
	datab => \CPU|DP|loadB|ALT_INV_out\(8),
	datac => \CPU|instruction|ALT_INV_out\(3),
	datad => \CPU|instruction|ALT_INV_out\(4),
	datae => \CPU|DP|loadB|ALT_INV_out\(9),
	dataf => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	combout => \CPU|DP|Muxb|b[8]~10_combout\);

-- Location: FF_X17_Y2_N25
\CPU|DP|loadA|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(7),
	sload => VCC,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(7));

-- Location: FF_X15_Y1_N20
\CPU|DP|loadA|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(6),
	sload => VCC,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(6));

-- Location: FF_X19_Y1_N11
\CPU|DP|loadB|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(5),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(5));

-- Location: LABCELL_X19_Y1_N36
\CPU|DP|Muxb|b[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[5]~7_combout\ = ( \CPU|instruction|out\(3) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( !\CPU|instruction|out\(3) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( \CPU|instruction|out\(3) & 
-- ( !\CPU|FSM|Decoder0~1_combout\ & ( (!\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(4))) # (\CPU|instruction|out\(4) & ((\CPU|DP|loadB|out\(6)))) ) ) ) # ( !\CPU|instruction|out\(3) & ( !\CPU|FSM|Decoder0~1_combout\ & ( (!\CPU|instruction|out\(4) & 
-- (\CPU|DP|loadB|out\(5))) # (\CPU|instruction|out\(4) & ((\CPU|DP|loadB|out\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadB|ALT_INV_out\(4),
	datab => \CPU|DP|loadB|ALT_INV_out\(5),
	datac => \CPU|DP|loadB|ALT_INV_out\(6),
	datad => \CPU|instruction|ALT_INV_out\(4),
	datae => \CPU|instruction|ALT_INV_out\(3),
	dataf => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	combout => \CPU|DP|Muxb|b[5]~7_combout\);

-- Location: FF_X18_Y1_N19
\CPU|DP|loadB|out[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(3),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out[3]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y1_N6
\CPU|DP|Muxb|b[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[4]~6_combout\ = ( \CPU|instruction|out\(3) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( !\CPU|instruction|out\(3) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( \CPU|instruction|out\(3) & 
-- ( !\CPU|FSM|Decoder0~1_combout\ & ( (!\CPU|instruction|out\(4) & (\CPU|DP|loadB|out[3]~DUPLICATE_q\)) # (\CPU|instruction|out\(4) & ((\CPU|DP|loadB|out\(5)))) ) ) ) # ( !\CPU|instruction|out\(3) & ( !\CPU|FSM|Decoder0~1_combout\ & ( 
-- (!\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(4))) # (\CPU|instruction|out\(4) & ((\CPU|DP|loadB|out\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000111011100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadB|ALT_INV_out[3]~DUPLICATE_q\,
	datab => \CPU|instruction|ALT_INV_out\(4),
	datac => \CPU|DP|loadB|ALT_INV_out\(4),
	datad => \CPU|DP|loadB|ALT_INV_out\(5),
	datae => \CPU|instruction|ALT_INV_out\(3),
	dataf => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	combout => \CPU|DP|Muxb|b[4]~6_combout\);

-- Location: FF_X12_Y1_N13
\CPU|DP|loadA|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(3),
	sload => VCC,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(3));

-- Location: LABCELL_X11_Y1_N15
\CPU|DP|Mux1lab6|b[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[2]~2_combout\ = ( !\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ( (!\CPU|FSM|vsel[1]~0_combout\ & (\CPU|DP|loadC|out\(2))) # (\CPU|FSM|vsel[1]~0_combout\ & ((\CPU|instruction|out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadC|ALT_INV_out\(2),
	datac => \CPU|instruction|ALT_INV_out\(2),
	datad => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	dataf => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|Mux1lab6|b[2]~2_combout\);

-- Location: LABCELL_X11_Y1_N42
\CPU|DP|Mux1lab6|b[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(2) = ( \SWtristate|SWdriverout~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( ((\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\SWtristate|SWdriverout~2_combout\) # (\SW[2]~input_o\)))) # 
-- (\CPU|DP|Mux1lab6|b[2]~2_combout\) ) ) ) # ( !\SWtristate|SWdriverout~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\) # (\CPU|DP|Mux1lab6|b[2]~2_combout\) ) ) ) # ( 
-- \SWtristate|SWdriverout~4_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( ((\SW[2]~input_o\ & (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & \SWtristate|SWdriverout~2_combout\))) # (\CPU|DP|Mux1lab6|b[2]~2_combout\) ) ) ) # ( 
-- !\SWtristate|SWdriverout~4_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a2\ & ( \CPU|DP|Mux1lab6|b[2]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011011100111111001111110011111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \CPU|DP|Mux1lab6|ALT_INV_b[2]~2_combout\,
	datac => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datae => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	combout => \CPU|DP|Mux1lab6|b\(2));

-- Location: LABCELL_X13_Y1_N12
\CPU|DP|REGFILE|Reg5|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg5|out[2]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|Reg5|out[2]~feeder_combout\);

-- Location: FF_X13_Y1_N13
\CPU|DP|REGFILE|Reg5|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg5|out[2]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(2));

-- Location: FF_X15_Y1_N13
\CPU|DP|REGFILE|Reg1|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(2),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(2));

-- Location: LABCELL_X10_Y1_N9
\CPU|DP|REGFILE|Reg3|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg3|out[2]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|Reg3|out[2]~feeder_combout\);

-- Location: FF_X10_Y1_N11
\CPU|DP|REGFILE|Reg3|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg3|out[2]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(2));

-- Location: MLABCELL_X15_Y1_N9
\CPU|DP|REGFILE|regmux|b[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[2]~7_combout\ = ( \CPU|insDec|Rmux|b\(2) & ( !\CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(1) & ((\CPU|DP|REGFILE|Reg3|out\(2)))) # (\CPU|insDec|Rmux|b\(1) & (\CPU|DP|REGFILE|Reg1|out\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(2),
	datac => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(2),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|insDec|Rmux|ALT_INV_b\(2),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[2]~7_combout\);

-- Location: FF_X11_Y1_N44
\CPU|DP|REGFILE|Reg7|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|Mux1lab6|b\(2),
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(2));

-- Location: LABCELL_X10_Y1_N12
\CPU|DP|REGFILE|Reg6|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg6|out[2]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|Reg6|out[2]~feeder_combout\);

-- Location: FF_X10_Y1_N13
\CPU|DP|REGFILE|Reg6|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg6|out[2]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(2));

-- Location: MLABCELL_X15_Y1_N12
\CPU|DP|REGFILE|regmux|b[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[2]~8_combout\ = ( \CPU|DP|REGFILE|Reg6|out\(2) & ( (!\CPU|insDec|Rmux|b\(1) & (!\CPU|insDec|Rmux|b\(2) & ((\CPU|DP|REGFILE|Reg7|out\(2)) # (\CPU|insDec|Rmux|b\(0))))) ) ) # ( !\CPU|DP|REGFILE|Reg6|out\(2) & ( 
-- (!\CPU|insDec|Rmux|b\(1) & (!\CPU|insDec|Rmux|b\(0) & (\CPU|DP|REGFILE|Reg7|out\(2) & !\CPU|insDec|Rmux|b\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datac => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(2),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	dataf => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(2),
	combout => \CPU|DP|REGFILE|regmux|b[2]~8_combout\);

-- Location: LABCELL_X12_Y3_N33
\CPU|DP|REGFILE|Reg4|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg4|out[2]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|Reg4|out[2]~feeder_combout\);

-- Location: FF_X12_Y3_N34
\CPU|DP|REGFILE|Reg4|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg4|out[2]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(2));

-- Location: FF_X12_Y1_N41
\CPU|DP|REGFILE|Reg0|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(2),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(2));

-- Location: FF_X11_Y1_N16
\CPU|DP|REGFILE|Reg2|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(2),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(2));

-- Location: MLABCELL_X15_Y1_N57
\CPU|DP|REGFILE|regmux|b[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[2]~6_combout\ = ( \CPU|insDec|Rmux|b\(2) & ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(1) & ((\CPU|DP|REGFILE|Reg2|out\(2)))) # (\CPU|insDec|Rmux|b\(1) & (\CPU|DP|REGFILE|Reg0|out\(2))) ) ) ) # ( !\CPU|insDec|Rmux|b\(2) & ( 
-- \CPU|insDec|Rmux|b\(0) & ( (\CPU|DP|REGFILE|Reg4|out\(2) & \CPU|insDec|Rmux|b\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(2),
	datab => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(2),
	datac => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(2),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|insDec|Rmux|ALT_INV_b\(2),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[2]~6_combout\);

-- Location: MLABCELL_X15_Y1_N39
\CPU|DP|REGFILE|regmux|b[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(2) = ( \CPU|DP|REGFILE|regmux|b[2]~6_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[2]~6_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( 
-- ((\CPU|DP|REGFILE|regmux|b[2]~8_combout\) # (\CPU|DP|REGFILE|regmux|b[2]~7_combout\)) # (\CPU|DP|REGFILE|Reg5|out\(2)) ) ) ) # ( \CPU|DP|REGFILE|regmux|b[2]~6_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( 
-- !\CPU|DP|REGFILE|regmux|b[2]~6_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|regmux|b[2]~8_combout\) # (\CPU|DP|REGFILE|regmux|b[2]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111101111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(2),
	datab => \CPU|DP|REGFILE|regmux|ALT_INV_b[2]~7_combout\,
	datac => \CPU|DP|REGFILE|regmux|ALT_INV_b[2]~8_combout\,
	datae => \CPU|DP|REGFILE|regmux|ALT_INV_b[2]~6_combout\,
	dataf => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(2));

-- Location: FF_X15_Y1_N38
\CPU|DP|loadA|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(2),
	sload => VCC,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(2));

-- Location: LABCELL_X11_Y1_N51
\CPU|DP|Mux1lab6|b[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[0]~1_combout\ = ( \CPU|FSM|vsel[1]~0_combout\ & ( \CPU|DP|loadC|out\(0) & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & \CPU|instruction|out\(0)) ) ) ) # ( !\CPU|FSM|vsel[1]~0_combout\ & ( \CPU|DP|loadC|out\(0) & ( 
-- !\CPU|DP|vselonehot|ShiftLeft0~0_combout\ ) ) ) # ( \CPU|FSM|vsel[1]~0_combout\ & ( !\CPU|DP|loadC|out\(0) & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & \CPU|instruction|out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000011110000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datad => \CPU|instruction|ALT_INV_out\(0),
	datae => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	dataf => \CPU|DP|loadC|ALT_INV_out\(0),
	combout => \CPU|DP|Mux1lab6|b[0]~1_combout\);

-- Location: LABCELL_X11_Y1_N57
\CPU|DP|Mux1lab6|b[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(0) = ( \SWtristate|SWdriverout~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( ((\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\SWtristate|SWdriverout~2_combout\) # (\SW[0]~input_o\)))) # 
-- (\CPU|DP|Mux1lab6|b[0]~1_combout\) ) ) ) # ( !\SWtristate|SWdriverout~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (\CPU|DP|Mux1lab6|b[0]~1_combout\) # (\CPU|DP|vselonehot|ShiftLeft0~0_combout\) ) ) ) # ( 
-- \SWtristate|SWdriverout~4_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( ((\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & (\SW[0]~input_o\ & \SWtristate|SWdriverout~2_combout\))) # (\CPU|DP|Mux1lab6|b[0]~1_combout\) ) ) ) # ( 
-- !\SWtristate|SWdriverout~4_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( \CPU|DP|Mux1lab6|b[0]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000011111111101010101111111110101000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datad => \CPU|DP|Mux1lab6|ALT_INV_b[0]~1_combout\,
	datae => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \CPU|DP|Mux1lab6|b\(0));

-- Location: LABCELL_X13_Y1_N45
\CPU|DP|REGFILE|Reg5|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg5|out[0]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|Reg5|out[0]~feeder_combout\);

-- Location: FF_X13_Y1_N46
\CPU|DP|REGFILE|Reg5|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg5|out[0]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(0));

-- Location: LABCELL_X13_Y1_N3
\CPU|DP|REGFILE|Reg3|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg3|out[0]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|Reg3|out[0]~feeder_combout\);

-- Location: FF_X13_Y1_N5
\CPU|DP|REGFILE|Reg3|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg3|out[0]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(0));

-- Location: FF_X12_Y1_N56
\CPU|DP|REGFILE|Reg1|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(0),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(0));

-- Location: LABCELL_X12_Y1_N54
\CPU|DP|REGFILE|regmux|b[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[0]~4_combout\ = ( \CPU|DP|REGFILE|Reg1|out\(0) & ( \CPU|insDec|Rmux|b\(1) & ( (!\CPU|insDec|Rmux|b\(0) & \CPU|insDec|Rmux|b\(2)) ) ) ) # ( \CPU|DP|REGFILE|Reg1|out\(0) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg3|out\(0) 
-- & (!\CPU|insDec|Rmux|b\(0) & \CPU|insDec|Rmux|b\(2))) ) ) ) # ( !\CPU|DP|REGFILE|Reg1|out\(0) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg3|out\(0) & (!\CPU|insDec|Rmux|b\(0) & \CPU|insDec|Rmux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(0),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(0),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[0]~4_combout\);

-- Location: FF_X11_Y1_N52
\CPU|DP|REGFILE|Reg2|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(0),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(0));

-- Location: LABCELL_X12_Y3_N0
\CPU|DP|REGFILE|Reg4|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg4|out[0]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|Reg4|out[0]~feeder_combout\);

-- Location: FF_X12_Y3_N1
\CPU|DP|REGFILE|Reg4|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg4|out[0]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(0));

-- Location: FF_X12_Y1_N38
\CPU|DP|REGFILE|Reg0|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(0),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(0));

-- Location: LABCELL_X12_Y1_N36
\CPU|DP|REGFILE|regmux|b[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[0]~3_combout\ = ( \CPU|DP|REGFILE|Reg0|out\(0) & ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(1) & (\CPU|DP|REGFILE|Reg2|out\(0) & ((\CPU|insDec|Rmux|b\(2))))) # (\CPU|insDec|Rmux|b\(1) & (((\CPU|insDec|Rmux|b\(2)) # 
-- (\CPU|DP|REGFILE|Reg4|out\(0))))) ) ) ) # ( !\CPU|DP|REGFILE|Reg0|out\(0) & ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(1) & (\CPU|DP|REGFILE|Reg2|out\(0) & ((\CPU|insDec|Rmux|b\(2))))) # (\CPU|insDec|Rmux|b\(1) & (((\CPU|DP|REGFILE|Reg4|out\(0) & 
-- !\CPU|insDec|Rmux|b\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011010100000000001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(0),
	datab => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(0),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(0),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[0]~3_combout\);

-- Location: FF_X11_Y1_N55
\CPU|DP|REGFILE|Reg7|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(0),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(0));

-- Location: FF_X10_Y1_N49
\CPU|DP|REGFILE|Reg6|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(0),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(0));

-- Location: LABCELL_X13_Y1_N9
\CPU|DP|REGFILE|regmux|b[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[0]~5_combout\ = ( \CPU|insDec|Rmux|b\(0) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg6|out\(0) & !\CPU|insDec|Rmux|b\(2)) ) ) ) # ( !\CPU|insDec|Rmux|b\(0) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg7|out\(0) & 
-- !\CPU|insDec|Rmux|b\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(0),
	datab => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(0),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|insDec|Rmux|ALT_INV_b\(0),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[0]~5_combout\);

-- Location: LABCELL_X12_Y1_N3
\CPU|DP|REGFILE|regmux|b[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(0) = ( \CPU|DP|REGFILE|regmux|b[0]~3_combout\ & ( \CPU|DP|REGFILE|regmux|b[0]~5_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[0]~3_combout\ & ( \CPU|DP|REGFILE|regmux|b[0]~5_combout\ ) ) # ( \CPU|DP|REGFILE|regmux|b[0]~3_combout\ & 
-- ( !\CPU|DP|REGFILE|regmux|b[0]~5_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[0]~3_combout\ & ( !\CPU|DP|REGFILE|regmux|b[0]~5_combout\ & ( ((\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & \CPU|DP|REGFILE|Reg5|out\(0))) # 
-- (\CPU|DP|REGFILE|regmux|b[0]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datac => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(0),
	datad => \CPU|DP|REGFILE|regmux|ALT_INV_b[0]~4_combout\,
	datae => \CPU|DP|REGFILE|regmux|ALT_INV_b[0]~3_combout\,
	dataf => \CPU|DP|REGFILE|regmux|ALT_INV_b[0]~5_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(0));

-- Location: FF_X18_Y1_N23
\CPU|DP|loadB|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(0),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(0));

-- Location: FF_X18_Y1_N32
\CPU|DP|loadB|out[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(2),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out[2]~DUPLICATE_q\);

-- Location: MLABCELL_X15_Y1_N27
\CPU|DP|Mux1lab6|b[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[1]~0_combout\ = ( \CPU|DP|loadC|out\(1) & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\CPU|FSM|vsel[1]~0_combout\) # (\CPU|instruction|out\(1)))) ) ) # ( !\CPU|DP|loadC|out\(1) & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & 
-- (\CPU|FSM|vsel[1]~0_combout\ & \CPU|instruction|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datab => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	datad => \CPU|instruction|ALT_INV_out\(1),
	dataf => \CPU|DP|loadC|ALT_INV_out\(1),
	combout => \CPU|DP|Mux1lab6|b[1]~0_combout\);

-- Location: MLABCELL_X15_Y1_N48
\CPU|DP|Mux1lab6|b[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(1) = ( \SWtristate|SWdriverout~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a1\ & ( ((\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\SWtristate|SWdriverout~2_combout\) # (\SW[1]~input_o\)))) # 
-- (\CPU|DP|Mux1lab6|b[1]~0_combout\) ) ) ) # ( !\SWtristate|SWdriverout~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a1\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\) # (\CPU|DP|Mux1lab6|b[1]~0_combout\) ) ) ) # ( 
-- \SWtristate|SWdriverout~4_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a1\ & ( ((\SW[1]~input_o\ & (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & \SWtristate|SWdriverout~2_combout\))) # (\CPU|DP|Mux1lab6|b[1]~0_combout\) ) ) ) # ( 
-- !\SWtristate|SWdriverout~4_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a1\ & ( \CPU|DP|Mux1lab6|b[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101011101011111010111110101111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|Mux1lab6|ALT_INV_b[1]~0_combout\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datae => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \CPU|DP|Mux1lab6|b\(1));

-- Location: FF_X13_Y1_N17
\CPU|DP|REGFILE|Reg5|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(1),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(1));

-- Location: FF_X15_Y1_N50
\CPU|DP|REGFILE|Reg0|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|Mux1lab6|b\(1),
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(1));

-- Location: LABCELL_X11_Y1_N36
\CPU|DP|REGFILE|Reg2|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg2|out[1]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|Reg2|out[1]~feeder_combout\);

-- Location: FF_X11_Y1_N37
\CPU|DP|REGFILE|Reg2|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg2|out[1]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(1));

-- Location: FF_X11_Y1_N35
\CPU|DP|REGFILE|Reg4|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(1),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(1));

-- Location: LABCELL_X11_Y1_N33
\CPU|DP|REGFILE|regmux|b[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[1]~0_combout\ = ( \CPU|DP|REGFILE|Reg4|out\(1) & ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(2) & (((\CPU|insDec|Rmux|b\(1))))) # (\CPU|insDec|Rmux|b\(2) & ((!\CPU|insDec|Rmux|b\(1) & ((\CPU|DP|REGFILE|Reg2|out\(1)))) # 
-- (\CPU|insDec|Rmux|b\(1) & (\CPU|DP|REGFILE|Reg0|out\(1))))) ) ) ) # ( !\CPU|DP|REGFILE|Reg4|out\(1) & ( \CPU|insDec|Rmux|b\(0) & ( (\CPU|insDec|Rmux|b\(2) & ((!\CPU|insDec|Rmux|b\(1) & ((\CPU|DP|REGFILE|Reg2|out\(1)))) # (\CPU|insDec|Rmux|b\(1) & 
-- (\CPU|DP|REGFILE|Reg0|out\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000001010000001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(1),
	datab => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(1),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(1),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[1]~0_combout\);

-- Location: FF_X16_Y1_N22
\CPU|DP|REGFILE|Reg7|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(1),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(1));

-- Location: FF_X13_Y1_N29
\CPU|DP|REGFILE|Reg6|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(1),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(1));

-- Location: LABCELL_X13_Y1_N27
\CPU|DP|REGFILE|regmux|b[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[1]~2_combout\ = ( \CPU|DP|REGFILE|Reg6|out\(1) & ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(1)) ) ) ) # ( \CPU|DP|REGFILE|Reg6|out\(1) & ( !\CPU|insDec|Rmux|b\(0) & ( (\CPU|DP|REGFILE|Reg7|out\(1) 
-- & (!\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(1))) ) ) ) # ( !\CPU|DP|REGFILE|Reg6|out\(1) & ( !\CPU|insDec|Rmux|b\(0) & ( (\CPU|DP|REGFILE|Reg7|out\(1) & (!\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(1),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(1),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[1]~2_combout\);

-- Location: FF_X15_Y1_N55
\CPU|DP|REGFILE|Reg1|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(1),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(1));

-- Location: FF_X13_Y1_N20
\CPU|DP|REGFILE|Reg3|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(1),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(1));

-- Location: LABCELL_X13_Y1_N18
\CPU|DP|REGFILE|regmux|b[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[1]~1_combout\ = ( \CPU|DP|REGFILE|Reg3|out\(1) & ( !\CPU|insDec|Rmux|b\(0) & ( (\CPU|insDec|Rmux|b\(2) & ((!\CPU|insDec|Rmux|b\(1)) # (\CPU|DP|REGFILE|Reg1|out\(1)))) ) ) ) # ( !\CPU|DP|REGFILE|Reg3|out\(1) & ( 
-- !\CPU|insDec|Rmux|b\(0) & ( (\CPU|DP|REGFILE|Reg1|out\(1) & (\CPU|insDec|Rmux|b\(2) & \CPU|insDec|Rmux|b\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(1),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(1),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[1]~1_combout\);

-- Location: LABCELL_X12_Y1_N9
\CPU|DP|REGFILE|regmux|b[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(1) = ( \CPU|DP|REGFILE|regmux|b[1]~2_combout\ & ( \CPU|DP|REGFILE|regmux|b[1]~1_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[1]~2_combout\ & ( \CPU|DP|REGFILE|regmux|b[1]~1_combout\ ) ) # ( \CPU|DP|REGFILE|regmux|b[1]~2_combout\ & 
-- ( !\CPU|DP|REGFILE|regmux|b[1]~1_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[1]~2_combout\ & ( !\CPU|DP|REGFILE|regmux|b[1]~1_combout\ & ( ((\CPU|DP|REGFILE|Reg5|out\(1) & \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # 
-- (\CPU|DP|REGFILE|regmux|b[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(1),
	datac => \CPU|DP|REGFILE|regmux|ALT_INV_b[1]~0_combout\,
	datad => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datae => \CPU|DP|REGFILE|regmux|ALT_INV_b[1]~2_combout\,
	dataf => \CPU|DP|REGFILE|regmux|ALT_INV_b[1]~1_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(1));

-- Location: FF_X18_Y1_N50
\CPU|DP|loadB|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(1),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(1));

-- Location: LABCELL_X18_Y1_N39
\CPU|DP|Muxb|b[14]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[14]~2_combout\ = ( \CPU|FSM|state|out\(1) & ( \CPU|FSM|state|out\(3) & ( !\CPU|instruction|out\(4) ) ) ) # ( !\CPU|FSM|state|out\(1) & ( \CPU|FSM|state|out\(3) & ( !\CPU|instruction|out\(4) ) ) ) # ( \CPU|FSM|state|out\(1) & ( 
-- !\CPU|FSM|state|out\(3) & ( (!\CPU|instruction|out\(4) & (((!\CPU|FSM|state|out\(4)) # (\CPU|FSM|state|out\(2))) # (\CPU|FSM|state|out\(0)))) ) ) ) # ( !\CPU|FSM|state|out\(1) & ( !\CPU|FSM|state|out\(3) & ( !\CPU|instruction|out\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010100010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(4),
	datab => \CPU|FSM|state|ALT_INV_out\(0),
	datac => \CPU|FSM|state|ALT_INV_out\(2),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	datae => \CPU|FSM|state|ALT_INV_out\(1),
	dataf => \CPU|FSM|state|ALT_INV_out\(3),
	combout => \CPU|DP|Muxb|b[14]~2_combout\);

-- Location: LABCELL_X18_Y1_N27
\CPU|DP|Muxb|b[14]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[14]~1_combout\ = ( \CPU|instruction|out\(3) & ( !\CPU|FSM|Decoder0~1_combout\ ) ) # ( !\CPU|instruction|out\(3) & ( (\CPU|instruction|out\(4) & !\CPU|FSM|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(4),
	datad => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	dataf => \CPU|instruction|ALT_INV_out\(3),
	combout => \CPU|DP|Muxb|b[14]~1_combout\);

-- Location: LABCELL_X18_Y1_N33
\CPU|DP|Muxb|b[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[1]~3_combout\ = ( \CPU|DP|Muxb|b[14]~2_combout\ & ( \CPU|DP|Muxb|b[14]~1_combout\ & ( \CPU|DP|loadB|out\(0) ) ) ) # ( !\CPU|DP|Muxb|b[14]~2_combout\ & ( \CPU|DP|Muxb|b[14]~1_combout\ & ( \CPU|DP|loadB|out[2]~DUPLICATE_q\ ) ) ) # ( 
-- \CPU|DP|Muxb|b[14]~2_combout\ & ( !\CPU|DP|Muxb|b[14]~1_combout\ & ( \CPU|DP|loadB|out\(1) ) ) ) # ( !\CPU|DP|Muxb|b[14]~2_combout\ & ( !\CPU|DP|Muxb|b[14]~1_combout\ & ( \CPU|instruction|out\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadB|ALT_INV_out\(0),
	datab => \CPU|instruction|ALT_INV_out\(1),
	datac => \CPU|DP|loadB|ALT_INV_out[2]~DUPLICATE_q\,
	datad => \CPU|DP|loadB|ALT_INV_out\(1),
	datae => \CPU|DP|Muxb|ALT_INV_b[14]~2_combout\,
	dataf => \CPU|DP|Muxb|ALT_INV_b[14]~1_combout\,
	combout => \CPU|DP|Muxb|b[1]~3_combout\);

-- Location: LABCELL_X12_Y1_N33
\CPU|DP|loadA|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadA|out[1]~feeder_combout\ = ( \CPU|DP|REGFILE|regmux|b\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|REGFILE|regmux|ALT_INV_b\(1),
	combout => \CPU|DP|loadA|out[1]~feeder_combout\);

-- Location: FF_X12_Y1_N34
\CPU|DP|loadA|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadA|out[1]~feeder_combout\,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(1));

-- Location: LABCELL_X18_Y1_N51
\CPU|DP|Muxb|b[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[0]~0_combout\ = ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(0) ) ) # ( !\CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(0) & ( (!\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(0) & (!\CPU|instruction|out\(3)))) # 
-- (\CPU|instruction|out\(4) & (((\CPU|DP|loadB|out\(1))))) ) ) ) # ( !\CPU|FSM|Decoder0~1_combout\ & ( !\CPU|instruction|out\(0) & ( (!\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(0) & (!\CPU|instruction|out\(3)))) # (\CPU|instruction|out\(4) & 
-- (((\CPU|DP|loadB|out\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001111000000000000000001000000010011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadB|ALT_INV_out\(0),
	datab => \CPU|instruction|ALT_INV_out\(3),
	datac => \CPU|instruction|ALT_INV_out\(4),
	datad => \CPU|DP|loadB|ALT_INV_out\(1),
	datae => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	dataf => \CPU|instruction|ALT_INV_out\(0),
	combout => \CPU|DP|Muxb|b[0]~0_combout\);

-- Location: FF_X12_Y1_N49
\CPU|DP|loadA|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(0),
	sload => VCC,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(0));

-- Location: LABCELL_X19_Y2_N0
\CPU|DP|alu|addersubtractor|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~34_cout\ = CARRY(( \CPU|instruction|out\(11) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|instruction|ALT_INV_out\(11),
	cin => GND,
	cout => \CPU|DP|alu|addersubtractor|Add0~34_cout\);

-- Location: LABCELL_X19_Y2_N3
\CPU|DP|alu|addersubtractor|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~1_sumout\ = SUM(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[0]~0_combout\) ) + ( (\CPU|DP|loadA|out\(0) & ((!\CPU|FSM|state|out\(3)) # (!\CPU|FSM|asel~0_combout\))) ) + ( \CPU|DP|alu|addersubtractor|Add0~34_cout\ ))
-- \CPU|DP|alu|addersubtractor|Add0~2\ = CARRY(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[0]~0_combout\) ) + ( (\CPU|DP|loadA|out\(0) & ((!\CPU|FSM|state|out\(3)) # (!\CPU|FSM|asel~0_combout\))) ) + ( \CPU|DP|alu|addersubtractor|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000010100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(3),
	datab => \CPU|instruction|ALT_INV_out\(11),
	datac => \CPU|FSM|ALT_INV_asel~0_combout\,
	datad => \CPU|DP|Muxb|ALT_INV_b[0]~0_combout\,
	dataf => \CPU|DP|loadA|ALT_INV_out\(0),
	cin => \CPU|DP|alu|addersubtractor|Add0~34_cout\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~1_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~2\);

-- Location: LABCELL_X19_Y2_N6
\CPU|DP|alu|addersubtractor|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~5_sumout\ = SUM(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[1]~3_combout\) ) + ( (\CPU|DP|loadA|out\(1) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( \CPU|DP|alu|addersubtractor|Add0~2\ ))
-- \CPU|DP|alu|addersubtractor|Add0~6\ = CARRY(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[1]~3_combout\) ) + ( (\CPU|DP|loadA|out\(1) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( \CPU|DP|alu|addersubtractor|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110001000100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_asel~0_combout\,
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|instruction|ALT_INV_out\(11),
	datad => \CPU|DP|Muxb|ALT_INV_b[1]~3_combout\,
	dataf => \CPU|DP|loadA|ALT_INV_out\(1),
	cin => \CPU|DP|alu|addersubtractor|Add0~2\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~5_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~6\);

-- Location: LABCELL_X19_Y2_N9
\CPU|DP|alu|addersubtractor|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~9_sumout\ = SUM(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[2]~4_combout\) ) + ( (\CPU|DP|loadA|out\(2) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( \CPU|DP|alu|addersubtractor|Add0~6\ ))
-- \CPU|DP|alu|addersubtractor|Add0~10\ = CARRY(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[2]~4_combout\) ) + ( (\CPU|DP|loadA|out\(2) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( \CPU|DP|alu|addersubtractor|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110001000100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_asel~0_combout\,
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|instruction|ALT_INV_out\(11),
	datad => \CPU|DP|Muxb|ALT_INV_b[2]~4_combout\,
	dataf => \CPU|DP|loadA|ALT_INV_out\(2),
	cin => \CPU|DP|alu|addersubtractor|Add0~6\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~9_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~10\);

-- Location: LABCELL_X19_Y2_N12
\CPU|DP|alu|addersubtractor|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~13_sumout\ = SUM(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[3]~5_combout\) ) + ( (\CPU|DP|loadA|out\(3) & ((!\CPU|FSM|state|out\(3)) # (!\CPU|FSM|asel~0_combout\))) ) + ( \CPU|DP|alu|addersubtractor|Add0~10\ ))
-- \CPU|DP|alu|addersubtractor|Add0~14\ = CARRY(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[3]~5_combout\) ) + ( (\CPU|DP|loadA|out\(3) & ((!\CPU|FSM|state|out\(3)) # (!\CPU|FSM|asel~0_combout\))) ) + ( \CPU|DP|alu|addersubtractor|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110001000100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(3),
	datab => \CPU|FSM|ALT_INV_asel~0_combout\,
	datac => \CPU|instruction|ALT_INV_out\(11),
	datad => \CPU|DP|Muxb|ALT_INV_b[3]~5_combout\,
	dataf => \CPU|DP|loadA|ALT_INV_out\(3),
	cin => \CPU|DP|alu|addersubtractor|Add0~10\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~13_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~14\);

-- Location: LABCELL_X19_Y2_N15
\CPU|DP|alu|addersubtractor|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~17_sumout\ = SUM(( (\CPU|DP|loadA|out\(4) & ((!\CPU|FSM|state|out\(3)) # (!\CPU|FSM|asel~0_combout\))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[4]~6_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~14\ ))
-- \CPU|DP|alu|addersubtractor|Add0~18\ = CARRY(( (\CPU|DP|loadA|out\(4) & ((!\CPU|FSM|state|out\(3)) # (!\CPU|FSM|asel~0_combout\))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[4]~6_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000111100000000000000000000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(3),
	datab => \CPU|FSM|ALT_INV_asel~0_combout\,
	datac => \CPU|instruction|ALT_INV_out\(11),
	datad => \CPU|DP|loadA|ALT_INV_out\(4),
	dataf => \CPU|DP|Muxb|ALT_INV_b[4]~6_combout\,
	cin => \CPU|DP|alu|addersubtractor|Add0~14\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~17_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~18\);

-- Location: LABCELL_X19_Y2_N18
\CPU|DP|alu|addersubtractor|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~21_sumout\ = SUM(( (\CPU|DP|loadA|out\(5) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[5]~7_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~18\ ))
-- \CPU|DP|alu|addersubtractor|Add0~22\ = CARRY(( (\CPU|DP|loadA|out\(5) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[5]~7_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(11),
	datab => \CPU|FSM|ALT_INV_asel~0_combout\,
	datac => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|DP|loadA|ALT_INV_out\(5),
	dataf => \CPU|DP|Muxb|ALT_INV_b[5]~7_combout\,
	cin => \CPU|DP|alu|addersubtractor|Add0~18\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~21_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~22\);

-- Location: LABCELL_X19_Y2_N21
\CPU|DP|alu|addersubtractor|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~25_sumout\ = SUM(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[6]~8_combout\) ) + ( (\CPU|DP|loadA|out\(6) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( \CPU|DP|alu|addersubtractor|Add0~22\ ))
-- \CPU|DP|alu|addersubtractor|Add0~26\ = CARRY(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[6]~8_combout\) ) + ( (\CPU|DP|loadA|out\(6) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( \CPU|DP|alu|addersubtractor|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000001100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(11),
	datab => \CPU|FSM|ALT_INV_asel~0_combout\,
	datac => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|DP|Muxb|ALT_INV_b[6]~8_combout\,
	dataf => \CPU|DP|loadA|ALT_INV_out\(6),
	cin => \CPU|DP|alu|addersubtractor|Add0~22\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~25_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~26\);

-- Location: LABCELL_X19_Y2_N24
\CPU|DP|alu|addersubtractor|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~29_sumout\ = SUM(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[7]~9_combout\) ) + ( (\CPU|DP|loadA|out\(7) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( \CPU|DP|alu|addersubtractor|Add0~26\ ))
-- \CPU|DP|alu|addersubtractor|Add0~30\ = CARRY(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[7]~9_combout\) ) + ( (\CPU|DP|loadA|out\(7) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( \CPU|DP|alu|addersubtractor|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000001100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(11),
	datab => \CPU|FSM|ALT_INV_asel~0_combout\,
	datac => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|DP|Muxb|ALT_INV_b[7]~9_combout\,
	dataf => \CPU|DP|loadA|ALT_INV_out\(7),
	cin => \CPU|DP|alu|addersubtractor|Add0~26\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~29_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~30\);

-- Location: LABCELL_X19_Y2_N27
\CPU|DP|alu|addersubtractor|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~37_sumout\ = SUM(( (\CPU|DP|loadA|out\(8) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[8]~10_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~30\ ))
-- \CPU|DP|alu|addersubtractor|Add0~38\ = CARRY(( (\CPU|DP|loadA|out\(8) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[8]~10_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(11),
	datab => \CPU|FSM|ALT_INV_asel~0_combout\,
	datac => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|DP|loadA|ALT_INV_out\(8),
	dataf => \CPU|DP|Muxb|ALT_INV_b[8]~10_combout\,
	cin => \CPU|DP|alu|addersubtractor|Add0~30\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~37_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~38\);

-- Location: LABCELL_X19_Y2_N30
\CPU|DP|alu|addersubtractor|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~61_sumout\ = SUM(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[9]~16_combout\) ) + ( (\CPU|DP|loadA|out\(9) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( \CPU|DP|alu|addersubtractor|Add0~38\ ))
-- \CPU|DP|alu|addersubtractor|Add0~62\ = CARRY(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[9]~16_combout\) ) + ( (\CPU|DP|loadA|out\(9) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( \CPU|DP|alu|addersubtractor|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000010100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_asel~0_combout\,
	datab => \CPU|instruction|ALT_INV_out\(11),
	datac => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|DP|Muxb|ALT_INV_b[9]~16_combout\,
	dataf => \CPU|DP|loadA|ALT_INV_out\(9),
	cin => \CPU|DP|alu|addersubtractor|Add0~38\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~61_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~62\);

-- Location: LABCELL_X19_Y2_N33
\CPU|DP|alu|addersubtractor|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~65_sumout\ = SUM(( (\CPU|DP|loadA|out\(10) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[10]~17_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~62\ ))
-- \CPU|DP|alu|addersubtractor|Add0~66\ = CARRY(( (\CPU|DP|loadA|out\(10) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[10]~17_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_asel~0_combout\,
	datab => \CPU|instruction|ALT_INV_out\(11),
	datac => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|DP|loadA|ALT_INV_out\(10),
	dataf => \CPU|DP|Muxb|ALT_INV_b[10]~17_combout\,
	cin => \CPU|DP|alu|addersubtractor|Add0~62\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~65_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~66\);

-- Location: LABCELL_X19_Y2_N36
\CPU|DP|alu|addersubtractor|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~41_sumout\ = SUM(( (\CPU|DP|loadA|out\(11) & ((!\CPU|FSM|state|out\(3)) # (!\CPU|FSM|asel~0_combout\))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[11]~11_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~66\ ))
-- \CPU|DP|alu|addersubtractor|Add0~42\ = CARRY(( (\CPU|DP|loadA|out\(11) & ((!\CPU|FSM|state|out\(3)) # (!\CPU|FSM|asel~0_combout\))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[11]~11_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(11),
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|FSM|ALT_INV_asel~0_combout\,
	datad => \CPU|DP|loadA|ALT_INV_out\(11),
	dataf => \CPU|DP|Muxb|ALT_INV_b[11]~11_combout\,
	cin => \CPU|DP|alu|addersubtractor|Add0~66\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~41_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~42\);

-- Location: LABCELL_X19_Y2_N39
\CPU|DP|alu|addersubtractor|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~45_sumout\ = SUM(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[12]~12_combout\) ) + ( (\CPU|DP|loadA|out\(12) & ((!\CPU|FSM|state|out\(3)) # (!\CPU|FSM|asel~0_combout\))) ) + ( \CPU|DP|alu|addersubtractor|Add0~42\ ))
-- \CPU|DP|alu|addersubtractor|Add0~46\ = CARRY(( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[12]~12_combout\) ) + ( (\CPU|DP|loadA|out\(12) & ((!\CPU|FSM|state|out\(3)) # (!\CPU|FSM|asel~0_combout\))) ) + ( \CPU|DP|alu|addersubtractor|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000001100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(11),
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|FSM|ALT_INV_asel~0_combout\,
	datad => \CPU|DP|Muxb|ALT_INV_b[12]~12_combout\,
	dataf => \CPU|DP|loadA|ALT_INV_out\(12),
	cin => \CPU|DP|alu|addersubtractor|Add0~42\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~45_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~46\);

-- Location: LABCELL_X19_Y2_N42
\CPU|DP|alu|addersubtractor|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~49_sumout\ = SUM(( (\CPU|DP|loadA|out\(13) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[13]~13_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~46\ ))
-- \CPU|DP|alu|addersubtractor|Add0~50\ = CARRY(( (\CPU|DP|loadA|out\(13) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[13]~13_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000111100000000000000000000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_asel~0_combout\,
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|instruction|ALT_INV_out\(11),
	datad => \CPU|DP|loadA|ALT_INV_out\(13),
	dataf => \CPU|DP|Muxb|ALT_INV_b[13]~13_combout\,
	cin => \CPU|DP|alu|addersubtractor|Add0~46\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~49_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~50\);

-- Location: LABCELL_X19_Y2_N45
\CPU|DP|alu|addersubtractor|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~53_sumout\ = SUM(( (\CPU|DP|loadA|out\(14) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[14]~14_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~50\ ))
-- \CPU|DP|alu|addersubtractor|Add0~54\ = CARRY(( (\CPU|DP|loadA|out\(14) & ((!\CPU|FSM|asel~0_combout\) # (!\CPU|FSM|state|out\(3)))) ) + ( !\CPU|instruction|out\(11) $ (!\CPU|DP|Muxb|b[14]~14_combout\) ) + ( \CPU|DP|alu|addersubtractor|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000111100000000000000000000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_asel~0_combout\,
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|instruction|ALT_INV_out\(11),
	datad => \CPU|DP|loadA|ALT_INV_out\(14),
	dataf => \CPU|DP|Muxb|ALT_INV_b[14]~14_combout\,
	cin => \CPU|DP|alu|addersubtractor|Add0~50\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~53_sumout\,
	cout => \CPU|DP|alu|addersubtractor|Add0~54\);

-- Location: LABCELL_X19_Y2_N48
\CPU|DP|alu|addersubtractor|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add0~57_sumout\ = SUM(( GND ) + ( GND ) + ( \CPU|DP|alu|addersubtractor|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \CPU|DP|alu|addersubtractor|Add0~54\,
	sumout => \CPU|DP|alu|addersubtractor|Add0~57_sumout\);

-- Location: LABCELL_X19_Y2_N54
\CPU|DP|alu|addersubtractor|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|addersubtractor|Add3~0_combout\ = ( \CPU|instruction|out\(11) & ( \CPU|DP|alu|addersubtractor|Add0~57_sumout\ & ( !\CPU|DP|Muxb|b[15]~15_combout\ $ (((!\CPU|DP|loadA|out\(15)) # ((\CPU|FSM|state|out\(3) & \CPU|FSM|asel~0_combout\)))) ) ) ) # ( 
-- !\CPU|instruction|out\(11) & ( \CPU|DP|alu|addersubtractor|Add0~57_sumout\ & ( !\CPU|DP|Muxb|b[15]~15_combout\ $ (((\CPU|DP|loadA|out\(15) & ((!\CPU|FSM|state|out\(3)) # (!\CPU|FSM|asel~0_combout\))))) ) ) ) # ( \CPU|instruction|out\(11) & ( 
-- !\CPU|DP|alu|addersubtractor|Add0~57_sumout\ & ( !\CPU|DP|Muxb|b[15]~15_combout\ $ (((\CPU|DP|loadA|out\(15) & ((!\CPU|FSM|state|out\(3)) # (!\CPU|FSM|asel~0_combout\))))) ) ) ) # ( !\CPU|instruction|out\(11) & ( 
-- !\CPU|DP|alu|addersubtractor|Add0~57_sumout\ & ( !\CPU|DP|Muxb|b[15]~15_combout\ $ (((!\CPU|DP|loadA|out\(15)) # ((\CPU|FSM|state|out\(3) & \CPU|FSM|asel~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010010101011101010110101010010101011010101000101010010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadA|ALT_INV_out\(15),
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|FSM|ALT_INV_asel~0_combout\,
	datad => \CPU|DP|Muxb|ALT_INV_b[15]~15_combout\,
	datae => \CPU|instruction|ALT_INV_out\(11),
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~57_sumout\,
	combout => \CPU|DP|alu|addersubtractor|Add3~0_combout\);

-- Location: LABCELL_X22_Y2_N24
\read_data[12]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[12]~4_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( (!\SWtristate|SWdriverout~1_combout\) # ((!\SWtristate|SWdriverout~0_combout\) # ((!\SWtristate|SWdriverout~2_combout\) # (\SW[7]~input_o\))) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( (\SWtristate|SWdriverout~1_combout\ & (\SWtristate|SWdriverout~0_combout\ & (\SW[7]~input_o\ & \SWtristate|SWdriverout~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	datab => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	combout => \read_data[12]~4_combout\);

-- Location: FF_X22_Y2_N26
\CPU|instruction|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[12]~4_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(12));

-- Location: LABCELL_X22_Y2_N30
\CPU|DP|alu|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Equal0~0_combout\ = ( \CPU|instruction|out\(11) & ( \CPU|instruction|out\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|instruction|ALT_INV_out\(11),
	dataf => \CPU|instruction|ALT_INV_out\(12),
	combout => \CPU|DP|alu|Equal0~0_combout\);

-- Location: LABCELL_X19_Y3_N3
\CPU|DP|alu|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector0~0_combout\ = ( \CPU|FSM|asel~0_combout\ & ( \CPU|DP|Muxb|b[15]~15_combout\ & ( (\CPU|DP|loadA|out\(15) & (!\CPU|FSM|state|out\(3) & !\CPU|DP|alu|Equal0~0_combout\)) ) ) ) # ( !\CPU|FSM|asel~0_combout\ & ( 
-- \CPU|DP|Muxb|b[15]~15_combout\ & ( (\CPU|DP|loadA|out\(15) & !\CPU|DP|alu|Equal0~0_combout\) ) ) ) # ( \CPU|FSM|asel~0_combout\ & ( !\CPU|DP|Muxb|b[15]~15_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) ) ) # ( !\CPU|FSM|asel~0_combout\ & ( 
-- !\CPU|DP|Muxb|b[15]~15_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadA|ALT_INV_out\(15),
	datac => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	datae => \CPU|FSM|ALT_INV_asel~0_combout\,
	dataf => \CPU|DP|Muxb|ALT_INV_b[15]~15_combout\,
	combout => \CPU|DP|alu|Selector0~0_combout\);

-- Location: LABCELL_X19_Y3_N42
\CPU|FSM|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr4~0_combout\ = ( \CPU|FSM|state|out\(0) & ( (!\CPU|FSM|state|out\(4) & (!\CPU|FSM|state|out\(3) & (\CPU|FSM|state|out\(2)))) # (\CPU|FSM|state|out\(4) & (\CPU|FSM|state|out\(3) & (!\CPU|FSM|state|out\(2) & !\CPU|FSM|state|out\(1)))) ) ) # ( 
-- !\CPU|FSM|state|out\(0) & ( (!\CPU|FSM|state|out\(1) & (!\CPU|FSM|state|out\(4) & ((\CPU|FSM|state|out\(2))))) # (\CPU|FSM|state|out\(1) & (!\CPU|FSM|state|out\(3) & (!\CPU|FSM|state|out\(4) $ (!\CPU|FSM|state|out\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001000000010100100100000011000000010000001100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(4),
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|FSM|state|ALT_INV_out\(2),
	datad => \CPU|FSM|state|ALT_INV_out\(1),
	dataf => \CPU|FSM|state|ALT_INV_out\(0),
	combout => \CPU|FSM|WideOr4~0_combout\);

-- Location: FF_X19_Y2_N55
\CPU|DP|loadC|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|alu|addersubtractor|Add3~0_combout\,
	asdata => \CPU|DP|alu|Selector0~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(15));

-- Location: LABCELL_X17_Y1_N39
\CPU|DP|Mux1lab6|b[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[14]~14_combout\ = ( \CPU|DP|loadC|out\(14) & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\CPU|FSM|vsel[1]~0_combout\) # (\CPU|instruction|out\(7)))) ) ) # ( !\CPU|DP|loadC|out\(14) & ( (\CPU|instruction|out\(7) & 
-- (\CPU|FSM|vsel[1]~0_combout\ & !\CPU|DP|vselonehot|ShiftLeft0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(7),
	datac => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	datad => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|loadC|ALT_INV_out\(14),
	combout => \CPU|DP|Mux1lab6|b[14]~14_combout\);

-- Location: LABCELL_X16_Y1_N27
\CPU|DP|Mux1lab6|b[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(14) = ( \MEM|mem_rtl_0|auto_generated|ram_block1a14\ & ( \CPU|DP|Mux1lab6|b[14]~14_combout\ ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a14\ & ( \CPU|DP|Mux1lab6|b[14]~14_combout\ ) ) # ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a14\ & ( !\CPU|DP|Mux1lab6|b[14]~14_combout\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & (((!\SWtristate|SWdriverout~4_combout\) # (!\SWtristate|SWdriverout~2_combout\)) # (\SW[7]~input_o\))) ) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a14\ & ( !\CPU|DP|Mux1lab6|b[14]~14_combout\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & (\SW[7]~input_o\ & (\SWtristate|SWdriverout~4_combout\ & \SWtristate|SWdriverout~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010101010101000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b[14]~14_combout\,
	combout => \CPU|DP|Mux1lab6|b\(14));

-- Location: FF_X16_Y3_N41
\CPU|DP|REGFILE|Reg0|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(14),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(14));

-- Location: MLABCELL_X15_Y3_N57
\CPU|DP|REGFILE|Reg4|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg4|out[14]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(14),
	combout => \CPU|DP|REGFILE|Reg4|out[14]~feeder_combout\);

-- Location: FF_X15_Y3_N59
\CPU|DP|REGFILE|Reg4|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg4|out[14]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(14));

-- Location: FF_X17_Y1_N2
\CPU|DP|REGFILE|Reg2|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(14),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(14));

-- Location: MLABCELL_X15_Y3_N36
\CPU|DP|REGFILE|regmux|b[14]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[14]~42_combout\ = ( \CPU|insDec|Rmux|b\(0) & ( \CPU|insDec|Rmux|b\(1) & ( (!\CPU|insDec|Rmux|b\(2) & ((\CPU|DP|REGFILE|Reg4|out\(14)))) # (\CPU|insDec|Rmux|b\(2) & (\CPU|DP|REGFILE|Reg0|out\(14))) ) ) ) # ( \CPU|insDec|Rmux|b\(0) 
-- & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|insDec|Rmux|b\(2) & \CPU|DP|REGFILE|Reg2|out\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(14),
	datab => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(14),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(14),
	datae => \CPU|insDec|Rmux|ALT_INV_b\(0),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[14]~42_combout\);

-- Location: FF_X13_Y1_N38
\CPU|DP|REGFILE|Reg3|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(14),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(14));

-- Location: FF_X16_Y3_N44
\CPU|DP|REGFILE|Reg1|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(14),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(14));

-- Location: LABCELL_X16_Y3_N42
\CPU|DP|REGFILE|regmux|b[14]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[14]~43_combout\ = ( \CPU|DP|REGFILE|Reg1|out\(14) & ( (\CPU|insDec|Rmux|b\(2) & (!\CPU|insDec|Rmux|b\(0) & ((\CPU|insDec|Rmux|b\(1)) # (\CPU|DP|REGFILE|Reg3|out\(14))))) ) ) # ( !\CPU|DP|REGFILE|Reg1|out\(14) & ( 
-- (\CPU|DP|REGFILE|Reg3|out\(14) & (\CPU|insDec|Rmux|b\(2) & (!\CPU|insDec|Rmux|b\(0) & !\CPU|insDec|Rmux|b\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000011000000010000000000000001000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(14),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(14),
	combout => \CPU|DP|REGFILE|regmux|b[14]~43_combout\);

-- Location: FF_X17_Y3_N22
\CPU|DP|REGFILE|Reg5|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(14),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(14));

-- Location: FF_X16_Y1_N59
\CPU|DP|REGFILE|Reg6|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(14),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(14));

-- Location: FF_X16_Y1_N29
\CPU|DP|REGFILE|Reg7|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|Mux1lab6|b\(14),
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(14));

-- Location: LABCELL_X16_Y1_N57
\CPU|DP|REGFILE|regmux|b[14]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[14]~44_combout\ = ( \CPU|DP|REGFILE|Reg7|out\(14) & ( (!\CPU|insDec|Rmux|b\(2) & (!\CPU|insDec|Rmux|b\(1) & ((!\CPU|insDec|Rmux|b\(0)) # (\CPU|DP|REGFILE|Reg6|out\(14))))) ) ) # ( !\CPU|DP|REGFILE|Reg7|out\(14) & ( 
-- (\CPU|insDec|Rmux|b\(0) & (!\CPU|insDec|Rmux|b\(2) & (!\CPU|insDec|Rmux|b\(1) & \CPU|DP|REGFILE|Reg6|out\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datad => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(14),
	dataf => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(14),
	combout => \CPU|DP|REGFILE|regmux|b[14]~44_combout\);

-- Location: MLABCELL_X15_Y3_N18
\CPU|DP|REGFILE|regmux|b[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(14) = ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|regmux|b[14]~44_combout\ ) ) # ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|regmux|b[14]~44_combout\ ) ) # ( 
-- \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|regmux|b[14]~44_combout\ & ( ((\CPU|DP|REGFILE|Reg5|out\(14)) # (\CPU|DP|REGFILE|regmux|b[14]~43_combout\)) # (\CPU|DP|REGFILE|regmux|b[14]~42_combout\) ) ) ) # ( 
-- !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|regmux|b[14]~44_combout\ & ( (\CPU|DP|REGFILE|regmux|b[14]~43_combout\) # (\CPU|DP|REGFILE|regmux|b[14]~42_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|regmux|ALT_INV_b[14]~42_combout\,
	datab => \CPU|DP|REGFILE|regmux|ALT_INV_b[14]~43_combout\,
	datac => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(14),
	datae => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|regmux|ALT_INV_b[14]~44_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(14));

-- Location: MLABCELL_X15_Y3_N0
\CPU|DP|loadA|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadA|out[14]~feeder_combout\ = ( \CPU|DP|REGFILE|regmux|b\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|REGFILE|regmux|ALT_INV_b\(14),
	combout => \CPU|DP|loadA|out[14]~feeder_combout\);

-- Location: FF_X15_Y3_N1
\CPU|DP|loadA|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadA|out[14]~feeder_combout\,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(14));

-- Location: LABCELL_X18_Y2_N57
\CPU|DP|loadC|out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[14]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~53_sumout\,
	combout => \CPU|DP|loadC|out[14]~feeder_combout\);

-- Location: LABCELL_X19_Y3_N45
\CPU|DP|alu|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector6~0_combout\ = ( !\CPU|DP|alu|Equal0~0_combout\ & ( (!\CPU|FSM|state|out\(3)) # (!\CPU|FSM|asel~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|FSM|ALT_INV_asel~0_combout\,
	dataf => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	combout => \CPU|DP|alu|Selector6~0_combout\);

-- Location: MLABCELL_X21_Y2_N30
\CPU|DP|alu|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector1~0_combout\ = ( \CPU|DP|Muxb|b[14]~14_combout\ & ( \CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|loadA|out\(14) ) ) ) # ( !\CPU|DP|Muxb|b[14]~14_combout\ & ( \CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) ) ) # ( 
-- !\CPU|DP|Muxb|b[14]~14_combout\ & ( !\CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadA|ALT_INV_out\(14),
	datac => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	datae => \CPU|DP|Muxb|ALT_INV_b[14]~14_combout\,
	dataf => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	combout => \CPU|DP|alu|Selector1~0_combout\);

-- Location: FF_X18_Y2_N58
\CPU|DP|loadC|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[14]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector1~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(14));

-- Location: LABCELL_X16_Y2_N39
\CPU|DP|Mux1lab6|b[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[12]~10_combout\ = ( \CPU|FSM|vsel[1]~0_combout\ & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & \CPU|instruction|out\(7)) ) ) # ( !\CPU|FSM|vsel[1]~0_combout\ & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & \CPU|DP|loadC|out\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datab => \CPU|instruction|ALT_INV_out\(7),
	datac => \CPU|DP|loadC|ALT_INV_out\(12),
	dataf => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	combout => \CPU|DP|Mux1lab6|b[12]~10_combout\);

-- Location: LABCELL_X16_Y2_N21
\CPU|DP|Mux1lab6|b[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(12) = ( \MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( \CPU|DP|Mux1lab6|b[12]~10_combout\ ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( \CPU|DP|Mux1lab6|b[12]~10_combout\ ) ) # ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( !\CPU|DP|Mux1lab6|b[12]~10_combout\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\SWtristate|SWdriverout~2_combout\) # ((!\SWtristate|SWdriverout~4_combout\) # (\SW[7]~input_o\)))) ) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a12\ & ( !\CPU|DP|Mux1lab6|b[12]~10_combout\ & ( (\SWtristate|SWdriverout~2_combout\ & (\SW[7]~input_o\ & (\SWtristate|SWdriverout~4_combout\ & \CPU|DP|vselonehot|ShiftLeft0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000001111101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	datad => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b[12]~10_combout\,
	combout => \CPU|DP|Mux1lab6|b\(12));

-- Location: FF_X16_Y2_N5
\CPU|DP|REGFILE|Reg6|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(12),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(12));

-- Location: FF_X16_Y2_N23
\CPU|DP|REGFILE|Reg7|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|Mux1lab6|b\(12),
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(12));

-- Location: LABCELL_X17_Y2_N51
\CPU|DP|REGFILE|regmux|b[12]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[12]~32_combout\ = ( \CPU|DP|REGFILE|Reg7|out\(12) & ( !\CPU|insDec|Rmux|b\(1) & ( (!\CPU|insDec|Rmux|b\(2) & ((!\CPU|insDec|Rmux|b\(0)) # (\CPU|DP|REGFILE|Reg6|out\(12)))) ) ) ) # ( !\CPU|DP|REGFILE|Reg7|out\(12) & ( 
-- !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg6|out\(12) & (\CPU|insDec|Rmux|b\(0) & !\CPU|insDec|Rmux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000111101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(12),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(12),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[12]~32_combout\);

-- Location: LABCELL_X17_Y3_N18
\CPU|DP|REGFILE|Reg5|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg5|out[12]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(12),
	combout => \CPU|DP|REGFILE|Reg5|out[12]~feeder_combout\);

-- Location: FF_X17_Y3_N19
\CPU|DP|REGFILE|Reg5|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg5|out[12]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(12));

-- Location: FF_X16_Y3_N46
\CPU|DP|REGFILE|Reg1|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(12),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(12));

-- Location: FF_X16_Y2_N29
\CPU|DP|REGFILE|Reg3|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(12),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(12));

-- Location: LABCELL_X17_Y3_N54
\CPU|DP|REGFILE|regmux|b[12]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[12]~31_combout\ = ( \CPU|insDec|Rmux|b\(1) & ( !\CPU|insDec|Rmux|b\(0) & ( (\CPU|DP|REGFILE|Reg1|out\(12) & \CPU|insDec|Rmux|b\(2)) ) ) ) # ( !\CPU|insDec|Rmux|b\(1) & ( !\CPU|insDec|Rmux|b\(0) & ( (\CPU|DP|REGFILE|Reg3|out\(12) & 
-- \CPU|insDec|Rmux|b\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(12),
	datab => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(12),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|insDec|Rmux|ALT_INV_b\(1),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[12]~31_combout\);

-- Location: FF_X17_Y3_N37
\CPU|DP|REGFILE|Reg4|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(12),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(12));

-- Location: MLABCELL_X15_Y2_N30
\CPU|DP|REGFILE|Reg2|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg2|out[12]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(12),
	combout => \CPU|DP|REGFILE|Reg2|out[12]~feeder_combout\);

-- Location: FF_X15_Y2_N32
\CPU|DP|REGFILE|Reg2|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg2|out[12]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(12));

-- Location: MLABCELL_X15_Y2_N42
\CPU|DP|REGFILE|Reg0|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg0|out[12]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(12),
	combout => \CPU|DP|REGFILE|Reg0|out[12]~feeder_combout\);

-- Location: FF_X15_Y2_N43
\CPU|DP|REGFILE|Reg0|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg0|out[12]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(12));

-- Location: LABCELL_X17_Y3_N12
\CPU|DP|REGFILE|regmux|b[12]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[12]~30_combout\ = ( \CPU|insDec|Rmux|b\(1) & ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(2) & (\CPU|DP|REGFILE|Reg4|out\(12))) # (\CPU|insDec|Rmux|b\(2) & ((\CPU|DP|REGFILE|Reg0|out\(12)))) ) ) ) # ( !\CPU|insDec|Rmux|b\(1) 
-- & ( \CPU|insDec|Rmux|b\(0) & ( (\CPU|insDec|Rmux|b\(2) & \CPU|DP|REGFILE|Reg2|out\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(12),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datac => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(12),
	datad => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(12),
	datae => \CPU|insDec|Rmux|ALT_INV_b\(1),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[12]~30_combout\);

-- Location: LABCELL_X18_Y3_N27
\CPU|DP|REGFILE|regmux|b[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(12) = ( \CPU|DP|REGFILE|regmux|b[12]~30_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[12]~30_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( 
-- ((\CPU|DP|REGFILE|regmux|b[12]~31_combout\) # (\CPU|DP|REGFILE|Reg5|out\(12))) # (\CPU|DP|REGFILE|regmux|b[12]~32_combout\) ) ) ) # ( \CPU|DP|REGFILE|regmux|b[12]~30_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( 
-- !\CPU|DP|REGFILE|regmux|b[12]~30_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|regmux|b[12]~31_combout\) # (\CPU|DP|REGFILE|regmux|b[12]~32_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111111111111111111100111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|REGFILE|regmux|ALT_INV_b[12]~32_combout\,
	datac => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(12),
	datad => \CPU|DP|REGFILE|regmux|ALT_INV_b[12]~31_combout\,
	datae => \CPU|DP|REGFILE|regmux|ALT_INV_b[12]~30_combout\,
	dataf => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(12));

-- Location: FF_X18_Y3_N2
\CPU|DP|loadB|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(12),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(12));

-- Location: LABCELL_X18_Y3_N48
\CPU|DP|Muxb|b[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[13]~13_combout\ = ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|DP|loadB|out\(14) & ( \CPU|instruction|out\(4) ) ) ) # ( !\CPU|FSM|Decoder0~1_combout\ & ( \CPU|DP|loadB|out\(14) & ( ((!\CPU|instruction|out\(3) & ((\CPU|DP|loadB|out\(13)))) # 
-- (\CPU|instruction|out\(3) & (\CPU|DP|loadB|out\(12)))) # (\CPU|instruction|out\(4)) ) ) ) # ( \CPU|FSM|Decoder0~1_combout\ & ( !\CPU|DP|loadB|out\(14) & ( \CPU|instruction|out\(4) ) ) ) # ( !\CPU|FSM|Decoder0~1_combout\ & ( !\CPU|DP|loadB|out\(14) & ( 
-- (!\CPU|instruction|out\(4) & ((!\CPU|instruction|out\(3) & ((\CPU|DP|loadB|out\(13)))) # (\CPU|instruction|out\(3) & (\CPU|DP|loadB|out\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001100110011001100111111011101110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadB|ALT_INV_out\(12),
	datab => \CPU|instruction|ALT_INV_out\(4),
	datac => \CPU|DP|loadB|ALT_INV_out\(13),
	datad => \CPU|instruction|ALT_INV_out\(3),
	datae => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	dataf => \CPU|DP|loadB|ALT_INV_out\(14),
	combout => \CPU|DP|Muxb|b[13]~13_combout\);

-- Location: LABCELL_X18_Y2_N12
\CPU|DP|loadC|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[13]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~49_sumout\,
	combout => \CPU|DP|loadC|out[13]~feeder_combout\);

-- Location: LABCELL_X19_Y3_N15
\CPU|DP|alu|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector2~0_combout\ = ( \CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ & ( (!\CPU|DP|Muxb|b[13]~13_combout\) # (\CPU|DP|loadA|out\(13)) ) ) ) # ( !\CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ & ( 
-- !\CPU|DP|Muxb|b[13]~13_combout\ ) ) ) # ( \CPU|DP|alu|Selector6~0_combout\ & ( !\CPU|DP|alu|Equal0~0_combout\ & ( (\CPU|DP|loadA|out\(13) & \CPU|DP|Muxb|b[13]~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001111110000111100001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|loadA|ALT_INV_out\(13),
	datac => \CPU|DP|Muxb|ALT_INV_b[13]~13_combout\,
	datae => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	dataf => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	combout => \CPU|DP|alu|Selector2~0_combout\);

-- Location: FF_X18_Y2_N14
\CPU|DP|loadC|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[13]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector2~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(13));

-- Location: LABCELL_X18_Y2_N15
\CPU|DP|Mux1lab6|b[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[13]~13_combout\ = ( !\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ( (!\CPU|FSM|vsel[1]~0_combout\ & (\CPU|DP|loadC|out\(13))) # (\CPU|FSM|vsel[1]~0_combout\ & ((\CPU|instruction|out\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	datab => \CPU|DP|loadC|ALT_INV_out\(13),
	datad => \CPU|instruction|ALT_INV_out\(7),
	dataf => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|Mux1lab6|b[13]~13_combout\);

-- Location: LABCELL_X16_Y1_N0
\CPU|DP|Mux1lab6|b[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(13) = ( \MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( \CPU|DP|Mux1lab6|b[13]~13_combout\ ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( \CPU|DP|Mux1lab6|b[13]~13_combout\ ) ) # ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( !\CPU|DP|Mux1lab6|b[13]~13_combout\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & (((!\SWtristate|SWdriverout~2_combout\) # (!\SWtristate|SWdriverout~4_combout\)) # (\SW[7]~input_o\))) ) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( !\CPU|DP|Mux1lab6|b[13]~13_combout\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & (\SW[7]~input_o\ & (\SWtristate|SWdriverout~2_combout\ & \SWtristate|SWdriverout~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010101010101000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b[13]~13_combout\,
	combout => \CPU|DP|Mux1lab6|b\(13));

-- Location: LABCELL_X17_Y3_N45
\CPU|DP|REGFILE|Reg4|out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg4|out[13]~feeder_combout\ = \CPU|DP|Mux1lab6|b\(13)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DP|Mux1lab6|ALT_INV_b\(13),
	combout => \CPU|DP|REGFILE|Reg4|out[13]~feeder_combout\);

-- Location: FF_X17_Y3_N47
\CPU|DP|REGFILE|Reg4|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg4|out[13]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(13));

-- Location: FF_X17_Y1_N14
\CPU|DP|REGFILE|Reg2|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(13),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(13));

-- Location: FF_X16_Y3_N56
\CPU|DP|REGFILE|Reg0|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(13),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(13));

-- Location: LABCELL_X16_Y3_N54
\CPU|DP|REGFILE|regmux|b[13]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[13]~39_combout\ = ( \CPU|DP|REGFILE|Reg0|out\(13) & ( \CPU|insDec|Rmux|b\(1) & ( (\CPU|insDec|Rmux|b\(0) & ((\CPU|insDec|Rmux|b\(2)) # (\CPU|DP|REGFILE|Reg4|out\(13)))) ) ) ) # ( !\CPU|DP|REGFILE|Reg0|out\(13) & ( 
-- \CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg4|out\(13) & (\CPU|insDec|Rmux|b\(0) & !\CPU|insDec|Rmux|b\(2))) ) ) ) # ( \CPU|DP|REGFILE|Reg0|out\(13) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg2|out\(13) & (\CPU|insDec|Rmux|b\(0) & 
-- \CPU|insDec|Rmux|b\(2))) ) ) ) # ( !\CPU|DP|REGFILE|Reg0|out\(13) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg2|out\(13) & (\CPU|insDec|Rmux|b\(0) & \CPU|insDec|Rmux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000101000000000000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(13),
	datab => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(13),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(13),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[13]~39_combout\);

-- Location: FF_X17_Y3_N28
\CPU|DP|REGFILE|Reg5|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(13),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(13));

-- Location: FF_X16_Y2_N55
\CPU|DP|REGFILE|Reg3|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(13),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(13));

-- Location: FF_X16_Y3_N29
\CPU|DP|REGFILE|Reg1|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(13),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(13));

-- Location: LABCELL_X16_Y3_N27
\CPU|DP|REGFILE|regmux|b[13]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[13]~40_combout\ = ( \CPU|DP|REGFILE|Reg1|out\(13) & ( (!\CPU|insDec|Rmux|b\(0) & (\CPU|insDec|Rmux|b\(2) & ((\CPU|insDec|Rmux|b\(1)) # (\CPU|DP|REGFILE|Reg3|out\(13))))) ) ) # ( !\CPU|DP|REGFILE|Reg1|out\(13) & ( 
-- (!\CPU|insDec|Rmux|b\(0) & (\CPU|DP|REGFILE|Reg3|out\(13) & (\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000101000000010000000000000001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datab => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(13),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(13),
	combout => \CPU|DP|REGFILE|regmux|b[13]~40_combout\);

-- Location: FF_X16_Y1_N2
\CPU|DP|REGFILE|Reg7|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|Mux1lab6|b\(13),
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(13));

-- Location: FF_X16_Y1_N56
\CPU|DP|REGFILE|Reg6|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(13),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(13));

-- Location: LABCELL_X16_Y1_N54
\CPU|DP|REGFILE|regmux|b[13]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[13]~41_combout\ = ( !\CPU|insDec|Rmux|b\(1) & ( (!\CPU|insDec|Rmux|b\(2) & ((!\CPU|insDec|Rmux|b\(0) & (\CPU|DP|REGFILE|Reg7|out\(13))) # (\CPU|insDec|Rmux|b\(0) & ((\CPU|DP|REGFILE|Reg6|out\(13)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datac => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(13),
	datad => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(13),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[13]~41_combout\);

-- Location: LABCELL_X17_Y3_N24
\CPU|DP|REGFILE|regmux|b[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(13) = ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|regmux|b[13]~41_combout\ ) ) # ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( \CPU|DP|REGFILE|regmux|b[13]~41_combout\ ) ) # ( 
-- \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|regmux|b[13]~41_combout\ & ( ((\CPU|DP|REGFILE|regmux|b[13]~40_combout\) # (\CPU|DP|REGFILE|Reg5|out\(13))) # (\CPU|DP|REGFILE|regmux|b[13]~39_combout\) ) ) ) # ( 
-- !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( !\CPU|DP|REGFILE|regmux|b[13]~41_combout\ & ( (\CPU|DP|REGFILE|regmux|b[13]~40_combout\) # (\CPU|DP|REGFILE|regmux|b[13]~39_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|regmux|ALT_INV_b[13]~39_combout\,
	datab => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(13),
	datac => \CPU|DP|REGFILE|regmux|ALT_INV_b[13]~40_combout\,
	datae => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|regmux|ALT_INV_b[13]~41_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(13));

-- Location: FF_X18_Y3_N53
\CPU|DP|loadB|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(13),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(13));

-- Location: LABCELL_X18_Y3_N45
\CPU|DP|Muxb|b[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[12]~12_combout\ = ( \CPU|DP|loadB|out\(12) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( !\CPU|DP|loadB|out\(12) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( \CPU|DP|loadB|out\(12) & ( 
-- !\CPU|FSM|Decoder0~1_combout\ & ( (!\CPU|instruction|out\(4) & (((!\CPU|instruction|out\(3)) # (\CPU|DP|loadB|out\(11))))) # (\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(13))) ) ) ) # ( !\CPU|DP|loadB|out\(12) & ( !\CPU|FSM|Decoder0~1_combout\ & ( 
-- (!\CPU|instruction|out\(4) & (((\CPU|instruction|out\(3) & \CPU|DP|loadB|out\(11))))) # (\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101110011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadB|ALT_INV_out\(13),
	datab => \CPU|instruction|ALT_INV_out\(3),
	datac => \CPU|DP|loadB|ALT_INV_out\(11),
	datad => \CPU|instruction|ALT_INV_out\(4),
	datae => \CPU|DP|loadB|ALT_INV_out\(12),
	dataf => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	combout => \CPU|DP|Muxb|b[12]~12_combout\);

-- Location: LABCELL_X18_Y2_N6
\CPU|DP|loadC|out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[12]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~45_sumout\,
	combout => \CPU|DP|loadC|out[12]~feeder_combout\);

-- Location: LABCELL_X18_Y3_N18
\CPU|DP|alu|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector3~0_combout\ = ( \CPU|DP|Muxb|b[12]~12_combout\ & ( \CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|loadA|out\(12) ) ) ) # ( !\CPU|DP|Muxb|b[12]~12_combout\ & ( \CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) ) ) # ( 
-- !\CPU|DP|Muxb|b[12]~12_combout\ & ( !\CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadA|ALT_INV_out\(12),
	datac => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	datae => \CPU|DP|Muxb|ALT_INV_b[12]~12_combout\,
	dataf => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	combout => \CPU|DP|alu|Selector3~0_combout\);

-- Location: FF_X18_Y2_N7
\CPU|DP|loadC|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[12]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector3~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(12));

-- Location: LABCELL_X18_Y2_N0
\CPU|DP|Mux1lab6|b[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[11]~12_combout\ = ( !\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ( (!\CPU|FSM|vsel[1]~0_combout\ & (\CPU|DP|loadC|out\(11))) # (\CPU|FSM|vsel[1]~0_combout\ & ((\CPU|instruction|out\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	datac => \CPU|DP|loadC|ALT_INV_out\(11),
	datad => \CPU|instruction|ALT_INV_out\(7),
	dataf => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|Mux1lab6|b[11]~12_combout\);

-- Location: LABCELL_X16_Y2_N45
\CPU|DP|Mux1lab6|b[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(11) = ( \MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( \CPU|DP|Mux1lab6|b[11]~12_combout\ ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( \CPU|DP|Mux1lab6|b[11]~12_combout\ ) ) # ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( !\CPU|DP|Mux1lab6|b[11]~12_combout\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\SWtristate|SWdriverout~2_combout\) # ((!\SWtristate|SWdriverout~4_combout\) # (\SW[7]~input_o\)))) ) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( !\CPU|DP|Mux1lab6|b[11]~12_combout\ & ( (\SWtristate|SWdriverout~2_combout\ & (\SW[7]~input_o\ & (\SWtristate|SWdriverout~4_combout\ & \CPU|DP|vselonehot|ShiftLeft0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000001111101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	datad => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b[11]~12_combout\,
	combout => \CPU|DP|Mux1lab6|b\(11));

-- Location: LABCELL_X17_Y3_N21
\CPU|DP|REGFILE|Reg5|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg5|out[11]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(11),
	combout => \CPU|DP|REGFILE|Reg5|out[11]~feeder_combout\);

-- Location: FF_X17_Y3_N23
\CPU|DP|REGFILE|Reg5|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg5|out[11]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(11));

-- Location: FF_X15_Y2_N50
\CPU|DP|REGFILE|Reg0|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(11),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(11));

-- Location: LABCELL_X17_Y3_N42
\CPU|DP|REGFILE|Reg4|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg4|out[11]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(11),
	combout => \CPU|DP|REGFILE|Reg4|out[11]~feeder_combout\);

-- Location: FF_X17_Y3_N44
\CPU|DP|REGFILE|Reg4|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg4|out[11]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(11));

-- Location: FF_X15_Y2_N35
\CPU|DP|REGFILE|Reg2|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(11),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(11));

-- Location: LABCELL_X17_Y3_N6
\CPU|DP|REGFILE|regmux|b[11]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[11]~36_combout\ = ( \CPU|insDec|Rmux|b\(1) & ( \CPU|DP|REGFILE|Reg2|out\(11) & ( (\CPU|insDec|Rmux|b\(0) & ((!\CPU|insDec|Rmux|b\(2) & ((\CPU|DP|REGFILE|Reg4|out\(11)))) # (\CPU|insDec|Rmux|b\(2) & 
-- (\CPU|DP|REGFILE|Reg0|out\(11))))) ) ) ) # ( !\CPU|insDec|Rmux|b\(1) & ( \CPU|DP|REGFILE|Reg2|out\(11) & ( (\CPU|insDec|Rmux|b\(0) & \CPU|insDec|Rmux|b\(2)) ) ) ) # ( \CPU|insDec|Rmux|b\(1) & ( !\CPU|DP|REGFILE|Reg2|out\(11) & ( (\CPU|insDec|Rmux|b\(0) & 
-- ((!\CPU|insDec|Rmux|b\(2) & ((\CPU|DP|REGFILE|Reg4|out\(11)))) # (\CPU|insDec|Rmux|b\(2) & (\CPU|DP|REGFILE|Reg0|out\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000010100000000000011110000001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(11),
	datab => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(11),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|insDec|Rmux|ALT_INV_b\(1),
	dataf => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(11),
	combout => \CPU|DP|REGFILE|regmux|b[11]~36_combout\);

-- Location: FF_X16_Y2_N25
\CPU|DP|REGFILE|Reg3|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(11),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(11));

-- Location: FF_X16_Y3_N25
\CPU|DP|REGFILE|Reg1|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(11),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(11));

-- Location: LABCELL_X17_Y3_N36
\CPU|DP|REGFILE|regmux|b[11]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[11]~37_combout\ = ( \CPU|insDec|Rmux|b\(1) & ( (\CPU|insDec|Rmux|b\(2) & (!\CPU|insDec|Rmux|b\(0) & \CPU|DP|REGFILE|Reg1|out\(11))) ) ) # ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg3|out\(11) & (\CPU|insDec|Rmux|b\(2) & 
-- !\CPU|insDec|Rmux|b\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(11),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datad => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(11),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[11]~37_combout\);

-- Location: FF_X16_Y2_N47
\CPU|DP|REGFILE|Reg7|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|Mux1lab6|b\(11),
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(11));

-- Location: FF_X16_Y2_N53
\CPU|DP|REGFILE|Reg6|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(11),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(11));

-- Location: LABCELL_X16_Y2_N51
\CPU|DP|REGFILE|regmux|b[11]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[11]~38_combout\ = ( !\CPU|insDec|Rmux|b\(1) & ( (!\CPU|insDec|Rmux|b\(2) & ((!\CPU|insDec|Rmux|b\(0) & (\CPU|DP|REGFILE|Reg7|out\(11))) # (\CPU|insDec|Rmux|b\(0) & ((\CPU|DP|REGFILE|Reg6|out\(11)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datac => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(11),
	datad => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(11),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[11]~38_combout\);

-- Location: LABCELL_X17_Y3_N48
\CPU|DP|REGFILE|regmux|b[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(11) = ( \CPU|DP|REGFILE|regmux|b[11]~38_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[11]~38_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( 
-- ((\CPU|DP|REGFILE|regmux|b[11]~37_combout\) # (\CPU|DP|REGFILE|regmux|b[11]~36_combout\)) # (\CPU|DP|REGFILE|Reg5|out\(11)) ) ) ) # ( \CPU|DP|REGFILE|regmux|b[11]~38_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( 
-- !\CPU|DP|REGFILE|regmux|b[11]~38_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|regmux|b[11]~37_combout\) # (\CPU|DP|REGFILE|regmux|b[11]~36_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111101111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(11),
	datab => \CPU|DP|REGFILE|regmux|ALT_INV_b[11]~36_combout\,
	datac => \CPU|DP|REGFILE|regmux|ALT_INV_b[11]~37_combout\,
	datae => \CPU|DP|REGFILE|regmux|ALT_INV_b[11]~38_combout\,
	dataf => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(11));

-- Location: LABCELL_X17_Y3_N33
\CPU|DP|loadA|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadA|out[11]~feeder_combout\ = ( \CPU|DP|REGFILE|regmux|b\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|REGFILE|regmux|ALT_INV_b\(11),
	combout => \CPU|DP|loadA|out[11]~feeder_combout\);

-- Location: FF_X17_Y3_N34
\CPU|DP|loadA|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadA|out[11]~feeder_combout\,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(11));

-- Location: LABCELL_X18_Y2_N51
\CPU|DP|loadC|out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[11]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~41_sumout\,
	combout => \CPU|DP|loadC|out[11]~feeder_combout\);

-- Location: LABCELL_X18_Y2_N48
\CPU|DP|alu|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector4~0_combout\ = (!\CPU|DP|Muxb|b[11]~11_combout\ & (((\CPU|DP|alu|Equal0~0_combout\)))) # (\CPU|DP|Muxb|b[11]~11_combout\ & (\CPU|DP|alu|Selector6~0_combout\ & ((\CPU|DP|loadA|out\(11)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001100000011010100110000001101010011000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	datab => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	datac => \CPU|DP|Muxb|ALT_INV_b[11]~11_combout\,
	datad => \CPU|DP|loadA|ALT_INV_out\(11),
	combout => \CPU|DP|alu|Selector4~0_combout\);

-- Location: FF_X18_Y2_N53
\CPU|DP|loadC|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[11]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector4~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(11));

-- Location: LABCELL_X18_Y2_N9
\CPU|DP|Mux1lab6|b[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[9]~9_combout\ = ( !\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ( (!\CPU|FSM|vsel[1]~0_combout\ & (\CPU|DP|loadC|out\(9))) # (\CPU|FSM|vsel[1]~0_combout\ & ((\CPU|instruction|out\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	datac => \CPU|DP|loadC|ALT_INV_out\(9),
	datad => \CPU|instruction|ALT_INV_out\(7),
	dataf => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|Mux1lab6|b[9]~9_combout\);

-- Location: LABCELL_X16_Y2_N18
\CPU|DP|Mux1lab6|b[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(9) = ( \MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( \CPU|DP|Mux1lab6|b[9]~9_combout\ ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( \CPU|DP|Mux1lab6|b[9]~9_combout\ ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( 
-- !\CPU|DP|Mux1lab6|b[9]~9_combout\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\SWtristate|SWdriverout~2_combout\) # ((!\SWtristate|SWdriverout~4_combout\) # (\SW[7]~input_o\)))) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a9\ & ( 
-- !\CPU|DP|Mux1lab6|b[9]~9_combout\ & ( (\SWtristate|SWdriverout~2_combout\ & (\SW[7]~input_o\ & (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & \SWtristate|SWdriverout~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000011110000101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b[9]~9_combout\,
	combout => \CPU|DP|Mux1lab6|b\(9));

-- Location: FF_X17_Y2_N53
\CPU|DP|REGFILE|Reg5|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(9),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(9));

-- Location: MLABCELL_X15_Y2_N57
\CPU|DP|REGFILE|Reg2|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg2|out[9]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(9),
	combout => \CPU|DP|REGFILE|Reg2|out[9]~feeder_combout\);

-- Location: FF_X15_Y2_N58
\CPU|DP|REGFILE|Reg2|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg2|out[9]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(9));

-- Location: MLABCELL_X15_Y3_N51
\CPU|DP|REGFILE|Reg4|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg4|out[9]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(9),
	combout => \CPU|DP|REGFILE|Reg4|out[9]~feeder_combout\);

-- Location: FF_X15_Y3_N52
\CPU|DP|REGFILE|Reg4|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg4|out[9]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(9));

-- Location: MLABCELL_X15_Y2_N24
\CPU|DP|REGFILE|Reg0|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg0|out[9]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(9),
	combout => \CPU|DP|REGFILE|Reg0|out[9]~feeder_combout\);

-- Location: FF_X15_Y2_N25
\CPU|DP|REGFILE|Reg0|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg0|out[9]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(9));

-- Location: LABCELL_X17_Y2_N57
\CPU|DP|REGFILE|regmux|b[9]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[9]~27_combout\ = ( \CPU|insDec|Rmux|b\(0) & ( \CPU|insDec|Rmux|b\(1) & ( (!\CPU|insDec|Rmux|b\(2) & (\CPU|DP|REGFILE|Reg4|out\(9))) # (\CPU|insDec|Rmux|b\(2) & ((\CPU|DP|REGFILE|Reg0|out\(9)))) ) ) ) # ( \CPU|insDec|Rmux|b\(0) & ( 
-- !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg2|out\(9) & \CPU|insDec|Rmux|b\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(9),
	datab => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(9),
	datac => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(9),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|insDec|Rmux|ALT_INV_b\(0),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[9]~27_combout\);

-- Location: FF_X16_Y2_N20
\CPU|DP|REGFILE|Reg7|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|Mux1lab6|b\(9),
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(9));

-- Location: FF_X16_Y2_N32
\CPU|DP|REGFILE|Reg6|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(9),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(9));

-- Location: LABCELL_X16_Y2_N12
\CPU|DP|REGFILE|regmux|b[9]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[9]~29_combout\ = ( \CPU|DP|REGFILE|Reg6|out\(9) & ( (!\CPU|insDec|Rmux|b\(2) & (!\CPU|insDec|Rmux|b\(1) & ((\CPU|DP|REGFILE|Reg7|out\(9)) # (\CPU|insDec|Rmux|b\(0))))) ) ) # ( !\CPU|DP|REGFILE|Reg6|out\(9) & ( 
-- (!\CPU|insDec|Rmux|b\(2) & (!\CPU|insDec|Rmux|b\(0) & (\CPU|DP|REGFILE|Reg7|out\(9) & !\CPU|insDec|Rmux|b\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datac => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(9),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	dataf => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(9),
	combout => \CPU|DP|REGFILE|regmux|b[9]~29_combout\);

-- Location: FF_X16_Y2_N10
\CPU|DP|REGFILE|Reg3|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(9),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(9));

-- Location: FF_X18_Y2_N44
\CPU|DP|REGFILE|Reg1|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(9),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(9));

-- Location: LABCELL_X18_Y2_N42
\CPU|DP|REGFILE|regmux|b[9]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[9]~28_combout\ = ( \CPU|DP|REGFILE|Reg1|out\(9) & ( !\CPU|insDec|Rmux|b\(0) & ( (\CPU|insDec|Rmux|b\(2) & ((\CPU|insDec|Rmux|b\(1)) # (\CPU|DP|REGFILE|Reg3|out\(9)))) ) ) ) # ( !\CPU|DP|REGFILE|Reg1|out\(9) & ( 
-- !\CPU|insDec|Rmux|b\(0) & ( (\CPU|insDec|Rmux|b\(2) & (\CPU|DP|REGFILE|Reg3|out\(9) & !\CPU|insDec|Rmux|b\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datab => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(9),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(9),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[9]~28_combout\);

-- Location: LABCELL_X17_Y2_N21
\CPU|DP|REGFILE|regmux|b[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(9) = ( \CPU|DP|REGFILE|regmux|b[9]~28_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[9]~28_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( 
-- ((\CPU|DP|REGFILE|regmux|b[9]~29_combout\) # (\CPU|DP|REGFILE|regmux|b[9]~27_combout\)) # (\CPU|DP|REGFILE|Reg5|out\(9)) ) ) ) # ( \CPU|DP|REGFILE|regmux|b[9]~28_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( 
-- !\CPU|DP|REGFILE|regmux|b[9]~28_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|regmux|b[9]~29_combout\) # (\CPU|DP|REGFILE|regmux|b[9]~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111111111111111111101110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(9),
	datab => \CPU|DP|REGFILE|regmux|ALT_INV_b[9]~27_combout\,
	datad => \CPU|DP|REGFILE|regmux|ALT_INV_b[9]~29_combout\,
	datae => \CPU|DP|REGFILE|regmux|ALT_INV_b[9]~28_combout\,
	dataf => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(9));

-- Location: FF_X17_Y2_N55
\CPU|DP|loadB|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(9),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(9));

-- Location: LABCELL_X18_Y3_N57
\CPU|DP|Muxb|b[10]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[10]~17_combout\ = ( \CPU|DP|loadB|out\(11) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( !\CPU|DP|loadB|out\(11) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( \CPU|DP|loadB|out\(11) & ( 
-- !\CPU|FSM|Decoder0~1_combout\ & ( ((!\CPU|instruction|out\(3) & (\CPU|DP|loadB|out[10]~DUPLICATE_q\)) # (\CPU|instruction|out\(3) & ((\CPU|DP|loadB|out\(9))))) # (\CPU|instruction|out\(4)) ) ) ) # ( !\CPU|DP|loadB|out\(11) & ( 
-- !\CPU|FSM|Decoder0~1_combout\ & ( (!\CPU|instruction|out\(4) & ((!\CPU|instruction|out\(3) & (\CPU|DP|loadB|out[10]~DUPLICATE_q\)) # (\CPU|instruction|out\(3) & ((\CPU|DP|loadB|out\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001110110111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(3),
	datab => \CPU|instruction|ALT_INV_out\(4),
	datac => \CPU|DP|loadB|ALT_INV_out[10]~DUPLICATE_q\,
	datad => \CPU|DP|loadB|ALT_INV_out\(9),
	datae => \CPU|DP|loadB|ALT_INV_out\(11),
	dataf => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	combout => \CPU|DP|Muxb|b[10]~17_combout\);

-- Location: LABCELL_X18_Y2_N18
\CPU|DP|loadC|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[10]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~65_sumout\,
	combout => \CPU|DP|loadC|out[10]~feeder_combout\);

-- Location: LABCELL_X18_Y2_N21
\CPU|DP|alu|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector5~0_combout\ = ( \CPU|DP|alu|Selector6~0_combout\ & ( (!\CPU|DP|Muxb|b[10]~17_combout\ & (\CPU|DP|alu|Equal0~0_combout\)) # (\CPU|DP|Muxb|b[10]~17_combout\ & ((\CPU|DP|loadA|out\(10)))) ) ) # ( !\CPU|DP|alu|Selector6~0_combout\ & ( 
-- (\CPU|DP|alu|Equal0~0_combout\ & !\CPU|DP|Muxb|b[10]~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	datac => \CPU|DP|loadA|ALT_INV_out\(10),
	datad => \CPU|DP|Muxb|ALT_INV_b[10]~17_combout\,
	dataf => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	combout => \CPU|DP|alu|Selector5~0_combout\);

-- Location: FF_X18_Y2_N19
\CPU|DP|loadC|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[10]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector5~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(10));

-- Location: FF_X18_Y2_N20
\CPU|DP|loadC|out[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[10]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector5~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out[10]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y2_N54
\CPU|DP|Mux1lab6|b[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[10]~11_combout\ = ( !\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ( (!\CPU|FSM|vsel[1]~0_combout\ & (\CPU|DP|loadC|out[10]~DUPLICATE_q\)) # (\CPU|FSM|vsel[1]~0_combout\ & ((\CPU|instruction|out\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	datac => \CPU|DP|loadC|ALT_INV_out[10]~DUPLICATE_q\,
	datad => \CPU|instruction|ALT_INV_out\(7),
	dataf => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|Mux1lab6|b[10]~11_combout\);

-- Location: LABCELL_X16_Y2_N42
\CPU|DP|Mux1lab6|b[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(10) = ( \MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( \CPU|DP|Mux1lab6|b[10]~11_combout\ ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( \CPU|DP|Mux1lab6|b[10]~11_combout\ ) ) # ( 
-- \MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( !\CPU|DP|Mux1lab6|b[10]~11_combout\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\SWtristate|SWdriverout~2_combout\) # ((!\SWtristate|SWdriverout~4_combout\) # (\SW[7]~input_o\)))) ) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a10\ & ( !\CPU|DP|Mux1lab6|b[10]~11_combout\ & ( (\SWtristate|SWdriverout~2_combout\ & (\SW[7]~input_o\ & (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & \SWtristate|SWdriverout~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000011110000101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b[10]~11_combout\,
	combout => \CPU|DP|Mux1lab6|b\(10));

-- Location: FF_X17_Y2_N50
\CPU|DP|REGFILE|Reg5|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(10),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(10));

-- Location: FF_X16_Y2_N50
\CPU|DP|REGFILE|Reg6|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(10),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(10));

-- Location: FF_X16_Y2_N44
\CPU|DP|REGFILE|Reg7|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|Mux1lab6|b\(10),
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(10));

-- Location: LABCELL_X16_Y2_N48
\CPU|DP|REGFILE|regmux|b[10]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[10]~35_combout\ = ( \CPU|DP|REGFILE|Reg7|out\(10) & ( (!\CPU|insDec|Rmux|b\(2) & (!\CPU|insDec|Rmux|b\(1) & ((!\CPU|insDec|Rmux|b\(0)) # (\CPU|DP|REGFILE|Reg6|out\(10))))) ) ) # ( !\CPU|DP|REGFILE|Reg7|out\(10) & ( 
-- (!\CPU|insDec|Rmux|b\(2) & (\CPU|insDec|Rmux|b\(0) & (!\CPU|insDec|Rmux|b\(1) & \CPU|DP|REGFILE|Reg6|out\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000010000000101000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datad => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(10),
	dataf => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(10),
	combout => \CPU|DP|REGFILE|regmux|b[10]~35_combout\);

-- Location: FF_X16_Y2_N17
\CPU|DP|REGFILE|Reg3|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(10),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(10));

-- Location: FF_X16_Y3_N14
\CPU|DP|REGFILE|Reg1|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(10),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(10));

-- Location: LABCELL_X16_Y2_N15
\CPU|DP|REGFILE|regmux|b[10]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[10]~34_combout\ = ( \CPU|DP|REGFILE|Reg1|out\(10) & ( (\CPU|insDec|Rmux|b\(2) & (!\CPU|insDec|Rmux|b\(0) & ((\CPU|DP|REGFILE|Reg3|out\(10)) # (\CPU|insDec|Rmux|b\(1))))) ) ) # ( !\CPU|DP|REGFILE|Reg1|out\(10) & ( 
-- (\CPU|insDec|Rmux|b\(2) & (!\CPU|insDec|Rmux|b\(0) & (!\CPU|insDec|Rmux|b\(1) & \CPU|DP|REGFILE|Reg3|out\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000100010001000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datad => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(10),
	dataf => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(10),
	combout => \CPU|DP|REGFILE|regmux|b[10]~34_combout\);

-- Location: FF_X17_Y3_N40
\CPU|DP|REGFILE|Reg4|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(10),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(10));

-- Location: MLABCELL_X15_Y2_N3
\CPU|DP|REGFILE|Reg2|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg2|out[10]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(10),
	combout => \CPU|DP|REGFILE|Reg2|out[10]~feeder_combout\);

-- Location: FF_X15_Y2_N4
\CPU|DP|REGFILE|Reg2|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg2|out[10]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(10));

-- Location: MLABCELL_X15_Y2_N27
\CPU|DP|REGFILE|Reg0|out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg0|out[10]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(10),
	combout => \CPU|DP|REGFILE|Reg0|out[10]~feeder_combout\);

-- Location: FF_X15_Y2_N29
\CPU|DP|REGFILE|Reg0|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg0|out[10]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(10));

-- Location: LABCELL_X16_Y2_N6
\CPU|DP|REGFILE|regmux|b[10]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[10]~33_combout\ = ( \CPU|insDec|Rmux|b\(1) & ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(2) & (\CPU|DP|REGFILE|Reg4|out\(10))) # (\CPU|insDec|Rmux|b\(2) & ((\CPU|DP|REGFILE|Reg0|out\(10)))) ) ) ) # ( !\CPU|insDec|Rmux|b\(1) 
-- & ( \CPU|insDec|Rmux|b\(0) & ( (\CPU|DP|REGFILE|Reg2|out\(10) & \CPU|insDec|Rmux|b\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(10),
	datab => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(10),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(10),
	datae => \CPU|insDec|Rmux|ALT_INV_b\(1),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[10]~33_combout\);

-- Location: LABCELL_X17_Y2_N45
\CPU|DP|REGFILE|regmux|b[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(10) = ( \CPU|DP|REGFILE|regmux|b[10]~33_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[10]~33_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( 
-- ((\CPU|DP|REGFILE|regmux|b[10]~34_combout\) # (\CPU|DP|REGFILE|regmux|b[10]~35_combout\)) # (\CPU|DP|REGFILE|Reg5|out\(10)) ) ) ) # ( \CPU|DP|REGFILE|regmux|b[10]~33_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( 
-- !\CPU|DP|REGFILE|regmux|b[10]~33_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|regmux|b[10]~34_combout\) # (\CPU|DP|REGFILE|regmux|b[10]~35_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111101111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(10),
	datab => \CPU|DP|REGFILE|regmux|ALT_INV_b[10]~35_combout\,
	datac => \CPU|DP|REGFILE|regmux|ALT_INV_b[10]~34_combout\,
	datae => \CPU|DP|REGFILE|regmux|ALT_INV_b[10]~33_combout\,
	dataf => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(10));

-- Location: FF_X17_Y2_N32
\CPU|DP|loadB|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(10),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(10));

-- Location: MLABCELL_X15_Y2_N6
\CPU|DP|Muxb|b[9]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[9]~16_combout\ = ( \CPU|DP|loadB|out\(9) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( !\CPU|DP|loadB|out\(9) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( \CPU|DP|loadB|out\(9) & ( 
-- !\CPU|FSM|Decoder0~1_combout\ & ( (!\CPU|instruction|out\(4) & (((!\CPU|instruction|out\(3)) # (\CPU|DP|loadB|out\(8))))) # (\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(10))) ) ) ) # ( !\CPU|DP|loadB|out\(9) & ( !\CPU|FSM|Decoder0~1_combout\ & ( 
-- (!\CPU|instruction|out\(4) & (((\CPU|instruction|out\(3) & \CPU|DP|loadB|out\(8))))) # (\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101110001011111010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadB|ALT_INV_out\(10),
	datab => \CPU|instruction|ALT_INV_out\(3),
	datac => \CPU|instruction|ALT_INV_out\(4),
	datad => \CPU|DP|loadB|ALT_INV_out\(8),
	datae => \CPU|DP|loadB|ALT_INV_out\(9),
	dataf => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	combout => \CPU|DP|Muxb|b[9]~16_combout\);

-- Location: LABCELL_X18_Y2_N39
\CPU|DP|loadC|out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[9]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~61_sumout\,
	combout => \CPU|DP|loadC|out[9]~feeder_combout\);

-- Location: LABCELL_X18_Y2_N36
\CPU|DP|alu|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector6~1_combout\ = ( \CPU|DP|Muxb|b[9]~16_combout\ & ( (\CPU|DP|loadA|out\(9) & \CPU|DP|alu|Selector6~0_combout\) ) ) # ( !\CPU|DP|Muxb|b[9]~16_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadA|ALT_INV_out\(9),
	datab => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	datac => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	dataf => \CPU|DP|Muxb|ALT_INV_b[9]~16_combout\,
	combout => \CPU|DP|alu|Selector6~1_combout\);

-- Location: FF_X18_Y2_N41
\CPU|DP|loadC|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[9]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector6~1_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(9));

-- Location: MLABCELL_X15_Y1_N24
\CPU|DP|Mux1lab6|b[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[7]~7_combout\ = ( \CPU|DP|loadC|out\(7) & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\CPU|FSM|vsel[1]~0_combout\) # (\CPU|instruction|out\(7)))) ) ) # ( !\CPU|DP|loadC|out\(7) & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & 
-- (\CPU|FSM|vsel[1]~0_combout\ & \CPU|instruction|out\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datab => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	datac => \CPU|instruction|ALT_INV_out\(7),
	dataf => \CPU|DP|loadC|ALT_INV_out\(7),
	combout => \CPU|DP|Mux1lab6|b[7]~7_combout\);

-- Location: LABCELL_X16_Y1_N3
\CPU|DP|Mux1lab6|b[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(7) = ( \MEM|mem_rtl_0|auto_generated|ram_block1a7\ & ( \CPU|DP|Mux1lab6|b[7]~7_combout\ ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a7\ & ( \CPU|DP|Mux1lab6|b[7]~7_combout\ ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a7\ & ( 
-- !\CPU|DP|Mux1lab6|b[7]~7_combout\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & (((!\SWtristate|SWdriverout~4_combout\) # (!\SWtristate|SWdriverout~2_combout\)) # (\SW[7]~input_o\))) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a7\ & ( 
-- !\CPU|DP|Mux1lab6|b[7]~7_combout\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & (\SW[7]~input_o\ & (\SWtristate|SWdriverout~4_combout\ & \SWtristate|SWdriverout~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010101010101000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b[7]~7_combout\,
	combout => \CPU|DP|Mux1lab6|b\(7));

-- Location: FF_X17_Y3_N25
\CPU|DP|REGFILE|Reg5|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(7),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(7));

-- Location: FF_X16_Y1_N5
\CPU|DP|REGFILE|Reg7|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|Mux1lab6|b\(7),
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(7));

-- Location: FF_X16_Y1_N11
\CPU|DP|REGFILE|Reg6|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(7),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(7));

-- Location: LABCELL_X16_Y1_N9
\CPU|DP|REGFILE|regmux|b[7]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[7]~23_combout\ = ( !\CPU|insDec|Rmux|b\(1) & ( (!\CPU|insDec|Rmux|b\(2) & ((!\CPU|insDec|Rmux|b\(0) & (\CPU|DP|REGFILE|Reg7|out\(7))) # (\CPU|insDec|Rmux|b\(0) & ((\CPU|DP|REGFILE|Reg6|out\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datac => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(7),
	datad => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(7),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[7]~23_combout\);

-- Location: FF_X15_Y1_N7
\CPU|DP|REGFILE|Reg0|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(7),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(7));

-- Location: FF_X17_Y3_N56
\CPU|DP|REGFILE|Reg4|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(7),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(7));

-- Location: MLABCELL_X15_Y2_N0
\CPU|DP|REGFILE|Reg2|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg2|out[7]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(7),
	combout => \CPU|DP|REGFILE|Reg2|out[7]~feeder_combout\);

-- Location: FF_X15_Y2_N2
\CPU|DP|REGFILE|Reg2|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg2|out[7]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(7));

-- Location: LABCELL_X16_Y2_N3
\CPU|DP|REGFILE|regmux|b[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[7]~21_combout\ = ( \CPU|DP|REGFILE|Reg2|out\(7) & ( \CPU|insDec|Rmux|b\(2) & ( (\CPU|insDec|Rmux|b\(0) & ((!\CPU|insDec|Rmux|b\(1)) # (\CPU|DP|REGFILE|Reg0|out\(7)))) ) ) ) # ( !\CPU|DP|REGFILE|Reg2|out\(7) & ( 
-- \CPU|insDec|Rmux|b\(2) & ( (\CPU|DP|REGFILE|Reg0|out\(7) & (\CPU|insDec|Rmux|b\(0) & \CPU|insDec|Rmux|b\(1))) ) ) ) # ( \CPU|DP|REGFILE|Reg2|out\(7) & ( !\CPU|insDec|Rmux|b\(2) & ( (\CPU|insDec|Rmux|b\(0) & (\CPU|DP|REGFILE|Reg4|out\(7) & 
-- \CPU|insDec|Rmux|b\(1))) ) ) ) # ( !\CPU|DP|REGFILE|Reg2|out\(7) & ( !\CPU|insDec|Rmux|b\(2) & ( (\CPU|insDec|Rmux|b\(0) & (\CPU|DP|REGFILE|Reg4|out\(7) & \CPU|insDec|Rmux|b\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000100010011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(7),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datac => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(7),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(7),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(2),
	combout => \CPU|DP|REGFILE|regmux|b[7]~21_combout\);

-- Location: FF_X16_Y2_N37
\CPU|DP|REGFILE|Reg3|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(7),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(7));

-- Location: FF_X16_Y3_N2
\CPU|DP|REGFILE|Reg1|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(7),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(7));

-- Location: LABCELL_X16_Y3_N0
\CPU|DP|REGFILE|regmux|b[7]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[7]~22_combout\ = ( \CPU|DP|REGFILE|Reg1|out\(7) & ( \CPU|insDec|Rmux|b\(1) & ( (!\CPU|insDec|Rmux|b\(0) & \CPU|insDec|Rmux|b\(2)) ) ) ) # ( \CPU|DP|REGFILE|Reg1|out\(7) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg3|out\(7) 
-- & (!\CPU|insDec|Rmux|b\(0) & \CPU|insDec|Rmux|b\(2))) ) ) ) # ( !\CPU|DP|REGFILE|Reg1|out\(7) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg3|out\(7) & (!\CPU|insDec|Rmux|b\(0) & \CPU|insDec|Rmux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(7),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(7),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[7]~22_combout\);

-- Location: LABCELL_X17_Y2_N27
\CPU|DP|REGFILE|regmux|b[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(7) = ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( (((\CPU|DP|REGFILE|regmux|b[7]~22_combout\) # (\CPU|DP|REGFILE|regmux|b[7]~21_combout\)) # (\CPU|DP|REGFILE|regmux|b[7]~23_combout\)) # (\CPU|DP|REGFILE|Reg5|out\(7)) ) 
-- ) # ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( ((\CPU|DP|REGFILE|regmux|b[7]~22_combout\) # (\CPU|DP|REGFILE|regmux|b[7]~21_combout\)) # (\CPU|DP|REGFILE|regmux|b[7]~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(7),
	datab => \CPU|DP|REGFILE|regmux|ALT_INV_b[7]~23_combout\,
	datac => \CPU|DP|REGFILE|regmux|ALT_INV_b[7]~21_combout\,
	datad => \CPU|DP|REGFILE|regmux|ALT_INV_b[7]~22_combout\,
	dataf => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(7));

-- Location: FF_X17_Y2_N13
\CPU|DP|loadB|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(7),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(7));

-- Location: MLABCELL_X15_Y2_N51
\CPU|DP|Muxb|b[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[7]~9_combout\ = ( \CPU|instruction|out\(3) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( !\CPU|instruction|out\(3) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( \CPU|instruction|out\(3) & 
-- ( !\CPU|FSM|Decoder0~1_combout\ & ( (!\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(6))) # (\CPU|instruction|out\(4) & ((\CPU|DP|loadB|out\(8)))) ) ) ) # ( !\CPU|instruction|out\(3) & ( !\CPU|FSM|Decoder0~1_combout\ & ( (!\CPU|instruction|out\(4) & 
-- (\CPU|DP|loadB|out\(7))) # (\CPU|instruction|out\(4) & ((\CPU|DP|loadB|out\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadB|ALT_INV_out\(7),
	datab => \CPU|DP|loadB|ALT_INV_out\(6),
	datac => \CPU|DP|loadB|ALT_INV_out\(8),
	datad => \CPU|instruction|ALT_INV_out\(4),
	datae => \CPU|instruction|ALT_INV_out\(3),
	dataf => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	combout => \CPU|DP|Muxb|b[7]~9_combout\);

-- Location: MLABCELL_X21_Y2_N0
\CPU|DP|loadC|out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[7]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~29_sumout\,
	combout => \CPU|DP|loadC|out[7]~feeder_combout\);

-- Location: MLABCELL_X21_Y2_N3
\CPU|DP|alu|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector8~0_combout\ = ( \CPU|DP|Muxb|b[7]~9_combout\ & ( (\CPU|DP|loadA|out\(7) & \CPU|DP|alu|Selector6~0_combout\) ) ) # ( !\CPU|DP|Muxb|b[7]~9_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	datac => \CPU|DP|loadA|ALT_INV_out\(7),
	datad => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	dataf => \CPU|DP|Muxb|ALT_INV_b[7]~9_combout\,
	combout => \CPU|DP|alu|Selector8~0_combout\);

-- Location: FF_X21_Y2_N1
\CPU|DP|loadC|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[7]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector8~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(7));

-- Location: FF_X21_Y1_N40
\CPU|dataAddr|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(7),
	sload => VCC,
	ena => \CPU|FSM|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataAddr|out\(7));

-- Location: LABCELL_X22_Y1_N24
\CPU|ADDR_MUX|b[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ADDR_MUX|b[7]~8_combout\ = ( \CPU|ProgramCounter|out\(7) & ( \CPU|FSM|state|out\(3) & ( ((!\CPU|FSM|state|out\(4) & (\CPU|FSM|state|out\(2) & \CPU|FSM|state|out\(1)))) # (\CPU|dataAddr|out\(7)) ) ) ) # ( !\CPU|ProgramCounter|out\(7) & ( 
-- \CPU|FSM|state|out\(3) & ( (\CPU|dataAddr|out\(7) & (((!\CPU|FSM|state|out\(2)) # (!\CPU|FSM|state|out\(1))) # (\CPU|FSM|state|out\(4)))) ) ) ) # ( \CPU|ProgramCounter|out\(7) & ( !\CPU|FSM|state|out\(3) & ( \CPU|dataAddr|out\(7) ) ) ) # ( 
-- !\CPU|ProgramCounter|out\(7) & ( !\CPU|FSM|state|out\(3) & ( \CPU|dataAddr|out\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010100010101010101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataAddr|ALT_INV_out\(7),
	datab => \CPU|FSM|state|ALT_INV_out\(4),
	datac => \CPU|FSM|state|ALT_INV_out\(2),
	datad => \CPU|FSM|state|ALT_INV_out\(1),
	datae => \CPU|ProgramCounter|ALT_INV_out\(7),
	dataf => \CPU|FSM|state|ALT_INV_out\(3),
	combout => \CPU|ADDR_MUX|b[7]~8_combout\);

-- Location: LABCELL_X16_Y1_N15
\read_data[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[5]~11_combout\ = ( \SWtristate|SWdriverout~1_combout\ & ( (!\SWtristate|SWdriverout~2_combout\ & (((\MEM|mem_rtl_0|auto_generated|ram_block1a5\)))) # (\SWtristate|SWdriverout~2_combout\ & ((!\SWtristate|SWdriverout~0_combout\ & 
-- ((\MEM|mem_rtl_0|auto_generated|ram_block1a5\))) # (\SWtristate|SWdriverout~0_combout\ & (\SW[5]~input_o\)))) ) ) # ( !\SWtristate|SWdriverout~1_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a5\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datab => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	dataf => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	combout => \read_data[5]~11_combout\);

-- Location: FF_X16_Y1_N17
\CPU|instruction|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[5]~11_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(5));

-- Location: LABCELL_X16_Y1_N45
\CPU|DP|Mux1lab6|b[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[5]~5_combout\ = (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\CPU|FSM|vsel[1]~0_combout\ & ((\CPU|DP|loadC|out\(5)))) # (\CPU|FSM|vsel[1]~0_combout\ & (\CPU|instruction|out\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datab => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	datac => \CPU|instruction|ALT_INV_out\(5),
	datad => \CPU|DP|loadC|ALT_INV_out\(5),
	combout => \CPU|DP|Mux1lab6|b[5]~5_combout\);

-- Location: LABCELL_X16_Y1_N48
\CPU|DP|Mux1lab6|b[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(5) = ( \MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( \CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ( (!\SWtristate|SWdriverout~4_combout\) # (((!\SWtristate|SWdriverout~2_combout\) # (\SW[5]~input_o\)) # 
-- (\CPU|DP|Mux1lab6|b[5]~5_combout\)) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( \CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ( ((\SWtristate|SWdriverout~4_combout\ & (\SWtristate|SWdriverout~2_combout\ & \SW[5]~input_o\))) # 
-- (\CPU|DP|Mux1lab6|b[5]~5_combout\) ) ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( !\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ( \CPU|DP|Mux1lab6|b[5]~5_combout\ ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a5\ & ( 
-- !\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ( \CPU|DP|Mux1lab6|b[5]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101111111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	datab => \CPU|DP|Mux1lab6|ALT_INV_b[5]~5_combout\,
	datac => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	dataf => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|Mux1lab6|b\(5));

-- Location: FF_X17_Y3_N52
\CPU|DP|REGFILE|Reg5|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(5),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(5));

-- Location: FF_X16_Y2_N59
\CPU|DP|REGFILE|Reg3|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(5),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(5));

-- Location: FF_X16_Y3_N7
\CPU|DP|REGFILE|Reg1|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(5),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(5));

-- Location: LABCELL_X19_Y1_N42
\CPU|DP|REGFILE|regmux|b[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[5]~16_combout\ = ( \CPU|DP|REGFILE|Reg1|out\(5) & ( !\CPU|insDec|Rmux|b\(0) & ( (\CPU|insDec|Rmux|b\(2) & ((\CPU|DP|REGFILE|Reg3|out\(5)) # (\CPU|insDec|Rmux|b\(1)))) ) ) ) # ( !\CPU|DP|REGFILE|Reg1|out\(5) & ( 
-- !\CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(1) & (\CPU|DP|REGFILE|Reg3|out\(5) & \CPU|insDec|Rmux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datac => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(5),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(5),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[5]~16_combout\);

-- Location: FF_X16_Y1_N8
\CPU|DP|REGFILE|Reg6|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(5),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(5));

-- Location: FF_X16_Y1_N50
\CPU|DP|REGFILE|Reg7|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|Mux1lab6|b\(5),
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(5));

-- Location: LABCELL_X16_Y1_N6
\CPU|DP|REGFILE|regmux|b[5]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[5]~17_combout\ = ( \CPU|DP|REGFILE|Reg7|out\(5) & ( (!\CPU|insDec|Rmux|b\(2) & (!\CPU|insDec|Rmux|b\(1) & ((!\CPU|insDec|Rmux|b\(0)) # (\CPU|DP|REGFILE|Reg6|out\(5))))) ) ) # ( !\CPU|DP|REGFILE|Reg7|out\(5) & ( 
-- (\CPU|insDec|Rmux|b\(0) & (!\CPU|insDec|Rmux|b\(2) & (!\CPU|insDec|Rmux|b\(1) & \CPU|DP|REGFILE|Reg6|out\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datad => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(5),
	dataf => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(5),
	combout => \CPU|DP|REGFILE|regmux|b[5]~17_combout\);

-- Location: FF_X17_Y3_N46
\CPU|DP|REGFILE|Reg4|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(5),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(5));

-- Location: FF_X15_Y2_N53
\CPU|DP|REGFILE|Reg0|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(5),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(5));

-- Location: FF_X15_Y2_N13
\CPU|DP|REGFILE|Reg2|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(5),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(5));

-- Location: LABCELL_X13_Y1_N39
\CPU|DP|REGFILE|regmux|b[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[5]~15_combout\ = ( \CPU|insDec|Rmux|b\(0) & ( \CPU|insDec|Rmux|b\(1) & ( (!\CPU|insDec|Rmux|b\(2) & (\CPU|DP|REGFILE|Reg4|out\(5))) # (\CPU|insDec|Rmux|b\(2) & ((\CPU|DP|REGFILE|Reg0|out\(5)))) ) ) ) # ( \CPU|insDec|Rmux|b\(0) & ( 
-- !\CPU|insDec|Rmux|b\(1) & ( (\CPU|insDec|Rmux|b\(2) & \CPU|DP|REGFILE|Reg2|out\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(5),
	datab => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(5),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(5),
	datae => \CPU|insDec|Rmux|ALT_INV_b\(0),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[5]~15_combout\);

-- Location: LABCELL_X19_Y1_N54
\CPU|DP|REGFILE|regmux|b[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(5) = ( \CPU|DP|REGFILE|regmux|b[5]~15_combout\ ) # ( !\CPU|DP|REGFILE|regmux|b[5]~15_combout\ & ( (((\CPU|DP|REGFILE|Reg5|out\(5) & \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|regmux|b[5]~17_combout\)) 
-- # (\CPU|DP|REGFILE|regmux|b[5]~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101111111001111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(5),
	datab => \CPU|DP|REGFILE|regmux|ALT_INV_b[5]~16_combout\,
	datac => \CPU|DP|REGFILE|regmux|ALT_INV_b[5]~17_combout\,
	datad => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \CPU|DP|REGFILE|regmux|ALT_INV_b[5]~15_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(5));

-- Location: FF_X19_Y1_N4
\CPU|DP|loadA|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(5),
	sload => VCC,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(5));

-- Location: LABCELL_X18_Y2_N24
\CPU|DP|loadC|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[5]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~21_sumout\,
	combout => \CPU|DP|loadC|out[5]~feeder_combout\);

-- Location: LABCELL_X18_Y2_N27
\CPU|DP|alu|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector10~0_combout\ = ( \CPU|DP|alu|Selector6~0_combout\ & ( (!\CPU|DP|Muxb|b[5]~7_combout\ & ((\CPU|DP|alu|Equal0~0_combout\))) # (\CPU|DP|Muxb|b[5]~7_combout\ & (\CPU|DP|loadA|out\(5))) ) ) # ( !\CPU|DP|alu|Selector6~0_combout\ & ( 
-- (!\CPU|DP|Muxb|b[5]~7_combout\ & \CPU|DP|alu|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|Muxb|ALT_INV_b[5]~7_combout\,
	datac => \CPU|DP|loadA|ALT_INV_out\(5),
	datad => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	dataf => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	combout => \CPU|DP|alu|Selector10~0_combout\);

-- Location: FF_X18_Y2_N25
\CPU|DP|loadC|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[5]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector10~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(5));

-- Location: FF_X21_Y1_N59
\CPU|dataAddr|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(5),
	sload => VCC,
	ena => \CPU|FSM|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataAddr|out\(5));

-- Location: MLABCELL_X21_Y1_N57
\CPU|ADDR_MUX|b[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ADDR_MUX|b[5]~7_combout\ = ( \CPU|dataAddr|out\(5) & ( \CPU|ProgramCounter|out\(5) ) ) # ( !\CPU|dataAddr|out\(5) & ( \CPU|ProgramCounter|out\(5) & ( (\CPU|FSM|state|out\(2) & (\CPU|FSM|state|out\(3) & (!\CPU|FSM|state|out\(4) & 
-- \CPU|FSM|state|out\(1)))) ) ) ) # ( \CPU|dataAddr|out\(5) & ( !\CPU|ProgramCounter|out\(5) & ( (!\CPU|FSM|state|out\(2)) # ((!\CPU|FSM|state|out\(3)) # ((!\CPU|FSM|state|out\(1)) # (\CPU|FSM|state|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(2),
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|FSM|state|ALT_INV_out\(4),
	datad => \CPU|FSM|state|ALT_INV_out\(1),
	datae => \CPU|dataAddr|ALT_INV_out\(5),
	dataf => \CPU|ProgramCounter|ALT_INV_out\(5),
	combout => \CPU|ADDR_MUX|b[5]~7_combout\);

-- Location: LABCELL_X18_Y1_N42
\read_data[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[3]~2_combout\ = ( \SWtristate|SWdriverout~0_combout\ & ( (!\SWtristate|SWdriverout~1_combout\ & (((\MEM|mem_rtl_0|auto_generated|ram_block1a3\)))) # (\SWtristate|SWdriverout~1_combout\ & ((!\SWtristate|SWdriverout~2_combout\ & 
-- ((\MEM|mem_rtl_0|auto_generated|ram_block1a3\))) # (\SWtristate|SWdriverout~2_combout\ & (\SW[3]~input_o\)))) ) ) # ( !\SWtristate|SWdriverout~0_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a3\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	datab => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	combout => \read_data[3]~2_combout\);

-- Location: FF_X18_Y1_N44
\CPU|instruction|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[3]~2_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(3));

-- Location: FF_X18_Y1_N31
\CPU|DP|loadB|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(2),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(2));

-- Location: MLABCELL_X15_Y2_N18
\CPU|DP|Muxb|b[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[3]~5_combout\ = ( \CPU|DP|loadB|out\(3) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(3) ) ) ) # ( !\CPU|DP|loadB|out\(3) & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(3) ) ) ) # ( \CPU|DP|loadB|out\(3) & ( 
-- !\CPU|FSM|Decoder0~1_combout\ & ( (!\CPU|instruction|out\(4) & (((!\CPU|instruction|out\(3)) # (\CPU|DP|loadB|out\(2))))) # (\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(4))) ) ) ) # ( !\CPU|DP|loadB|out\(3) & ( !\CPU|FSM|Decoder0~1_combout\ & ( 
-- (!\CPU|instruction|out\(4) & (((\CPU|instruction|out\(3) & \CPU|DP|loadB|out\(2))))) # (\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101110001011111010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadB|ALT_INV_out\(4),
	datab => \CPU|instruction|ALT_INV_out\(3),
	datac => \CPU|instruction|ALT_INV_out\(4),
	datad => \CPU|DP|loadB|ALT_INV_out\(2),
	datae => \CPU|DP|loadB|ALT_INV_out\(3),
	dataf => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	combout => \CPU|DP|Muxb|b[3]~5_combout\);

-- Location: MLABCELL_X21_Y2_N48
\CPU|DP|loadC|out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[3]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~13_sumout\,
	combout => \CPU|DP|loadC|out[3]~feeder_combout\);

-- Location: MLABCELL_X21_Y2_N21
\CPU|DP|alu|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector12~0_combout\ = ( \CPU|DP|Muxb|b[3]~5_combout\ & ( \CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|loadA|out\(3) ) ) ) # ( !\CPU|DP|Muxb|b[3]~5_combout\ & ( \CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) ) ) # ( 
-- !\CPU|DP|Muxb|b[3]~5_combout\ & ( !\CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	datad => \CPU|DP|loadA|ALT_INV_out\(3),
	datae => \CPU|DP|Muxb|ALT_INV_b[3]~5_combout\,
	dataf => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	combout => \CPU|DP|alu|Selector12~0_combout\);

-- Location: FF_X21_Y2_N49
\CPU|DP|loadC|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[3]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector12~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(3));

-- Location: LABCELL_X11_Y1_N27
\CPU|DP|Mux1lab6|b[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[3]~3_combout\ = ( !\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ( (!\CPU|FSM|vsel[1]~0_combout\ & (\CPU|DP|loadC|out\(3))) # (\CPU|FSM|vsel[1]~0_combout\ & ((\CPU|instruction|out\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadC|ALT_INV_out\(3),
	datac => \CPU|instruction|ALT_INV_out\(3),
	datad => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	dataf => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|Mux1lab6|b[3]~3_combout\);

-- Location: LABCELL_X11_Y1_N21
\CPU|DP|Mux1lab6|b[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(3) = ( \SWtristate|SWdriverout~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a3\ & ( ((\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\SWtristate|SWdriverout~2_combout\) # (\SW[3]~input_o\)))) # 
-- (\CPU|DP|Mux1lab6|b[3]~3_combout\) ) ) ) # ( !\SWtristate|SWdriverout~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a3\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\) # (\CPU|DP|Mux1lab6|b[3]~3_combout\) ) ) ) # ( 
-- \SWtristate|SWdriverout~4_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a3\ & ( ((\SWtristate|SWdriverout~2_combout\ & (\SW[3]~input_o\ & \CPU|DP|vselonehot|ShiftLeft0~0_combout\))) # (\CPU|DP|Mux1lab6|b[3]~3_combout\) ) ) ) # ( 
-- !\SWtristate|SWdriverout~4_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a3\ & ( \CPU|DP|Mux1lab6|b[3]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101011101010101111111110101010111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|Mux1lab6|ALT_INV_b[3]~3_combout\,
	datab => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datae => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \CPU|DP|Mux1lab6|b\(3));

-- Location: FF_X13_Y1_N8
\CPU|DP|REGFILE|Reg5|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(3),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(3));

-- Location: FF_X12_Y3_N17
\CPU|DP|REGFILE|Reg4|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(3),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(3));

-- Location: FF_X11_Y1_N28
\CPU|DP|REGFILE|Reg2|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(3),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(3));

-- Location: FF_X12_Y1_N44
\CPU|DP|REGFILE|Reg0|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(3),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(3));

-- Location: LABCELL_X12_Y1_N42
\CPU|DP|REGFILE|regmux|b[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[3]~9_combout\ = ( \CPU|DP|REGFILE|Reg0|out\(3) & ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(1) & (((\CPU|DP|REGFILE|Reg2|out\(3) & \CPU|insDec|Rmux|b\(2))))) # (\CPU|insDec|Rmux|b\(1) & (((\CPU|insDec|Rmux|b\(2))) # 
-- (\CPU|DP|REGFILE|Reg4|out\(3)))) ) ) ) # ( !\CPU|DP|REGFILE|Reg0|out\(3) & ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(1) & (((\CPU|DP|REGFILE|Reg2|out\(3) & \CPU|insDec|Rmux|b\(2))))) # (\CPU|insDec|Rmux|b\(1) & (\CPU|DP|REGFILE|Reg4|out\(3) & 
-- ((!\CPU|insDec|Rmux|b\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101001100000000010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(3),
	datab => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(3),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(3),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[3]~9_combout\);

-- Location: FF_X13_Y1_N50
\CPU|DP|REGFILE|Reg3|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(3),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(3));

-- Location: FF_X12_Y1_N29
\CPU|DP|REGFILE|Reg1|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(3),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(3));

-- Location: LABCELL_X12_Y1_N27
\CPU|DP|REGFILE|regmux|b[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[3]~10_combout\ = ( \CPU|DP|REGFILE|Reg1|out\(3) & ( \CPU|insDec|Rmux|b\(1) & ( (\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(0)) ) ) ) # ( \CPU|DP|REGFILE|Reg1|out\(3) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg3|out\(3) 
-- & (\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|Reg1|out\(3) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg3|out\(3) & (\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(3),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(3),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[3]~10_combout\);

-- Location: FF_X11_Y1_N19
\CPU|DP|REGFILE|Reg7|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(3),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(3));

-- Location: FF_X13_Y1_N32
\CPU|DP|REGFILE|Reg6|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(3),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(3));

-- Location: LABCELL_X13_Y1_N30
\CPU|DP|REGFILE|regmux|b[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[3]~11_combout\ = ( \CPU|DP|REGFILE|Reg6|out\(3) & ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(1) & !\CPU|insDec|Rmux|b\(2)) ) ) ) # ( \CPU|DP|REGFILE|Reg6|out\(3) & ( !\CPU|insDec|Rmux|b\(0) & ( 
-- (\CPU|DP|REGFILE|Reg7|out\(3) & (!\CPU|insDec|Rmux|b\(1) & !\CPU|insDec|Rmux|b\(2))) ) ) ) # ( !\CPU|DP|REGFILE|Reg6|out\(3) & ( !\CPU|insDec|Rmux|b\(0) & ( (\CPU|DP|REGFILE|Reg7|out\(3) & (!\CPU|insDec|Rmux|b\(1) & !\CPU|insDec|Rmux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(3),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(3),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[3]~11_combout\);

-- Location: LABCELL_X12_Y1_N21
\CPU|DP|REGFILE|regmux|b[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(3) = ( \CPU|DP|REGFILE|regmux|b[3]~10_combout\ & ( \CPU|DP|REGFILE|regmux|b[3]~11_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[3]~10_combout\ & ( \CPU|DP|REGFILE|regmux|b[3]~11_combout\ ) ) # ( 
-- \CPU|DP|REGFILE|regmux|b[3]~10_combout\ & ( !\CPU|DP|REGFILE|regmux|b[3]~11_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[3]~10_combout\ & ( !\CPU|DP|REGFILE|regmux|b[3]~11_combout\ & ( ((\CPU|DP|REGFILE|Reg5|out\(3) & 
-- \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|regmux|b[3]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(3),
	datac => \CPU|DP|REGFILE|regmux|ALT_INV_b[3]~9_combout\,
	datad => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datae => \CPU|DP|REGFILE|regmux|ALT_INV_b[3]~10_combout\,
	dataf => \CPU|DP|REGFILE|regmux|ALT_INV_b[3]~11_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(3));

-- Location: FF_X18_Y1_N20
\CPU|DP|loadB|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(3),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(3));

-- Location: LABCELL_X18_Y1_N21
\CPU|DP|Muxb|b[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[2]~4_combout\ = ( \CPU|DP|Muxb|b[14]~2_combout\ & ( \CPU|DP|Muxb|b[14]~1_combout\ & ( \CPU|DP|loadB|out\(1) ) ) ) # ( !\CPU|DP|Muxb|b[14]~2_combout\ & ( \CPU|DP|Muxb|b[14]~1_combout\ & ( \CPU|DP|loadB|out\(3) ) ) ) # ( 
-- \CPU|DP|Muxb|b[14]~2_combout\ & ( !\CPU|DP|Muxb|b[14]~1_combout\ & ( \CPU|DP|loadB|out[2]~DUPLICATE_q\ ) ) ) # ( !\CPU|DP|Muxb|b[14]~2_combout\ & ( !\CPU|DP|Muxb|b[14]~1_combout\ & ( \CPU|instruction|out\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadB|ALT_INV_out\(3),
	datab => \CPU|DP|loadB|ALT_INV_out[2]~DUPLICATE_q\,
	datac => \CPU|instruction|ALT_INV_out\(2),
	datad => \CPU|DP|loadB|ALT_INV_out\(1),
	datae => \CPU|DP|Muxb|ALT_INV_b[14]~2_combout\,
	dataf => \CPU|DP|Muxb|ALT_INV_b[14]~1_combout\,
	combout => \CPU|DP|Muxb|b[2]~4_combout\);

-- Location: MLABCELL_X21_Y2_N6
\CPU|DP|loadC|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[2]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~9_sumout\,
	combout => \CPU|DP|loadC|out[2]~feeder_combout\);

-- Location: MLABCELL_X21_Y2_N39
\CPU|DP|alu|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector13~0_combout\ = ( \CPU|DP|Muxb|b[2]~4_combout\ & ( (\CPU|DP|loadA|out\(2) & \CPU|DP|alu|Selector6~0_combout\) ) ) # ( !\CPU|DP|Muxb|b[2]~4_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	datac => \CPU|DP|loadA|ALT_INV_out\(2),
	datad => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	dataf => \CPU|DP|Muxb|ALT_INV_b[2]~4_combout\,
	combout => \CPU|DP|alu|Selector13~0_combout\);

-- Location: FF_X21_Y2_N8
\CPU|DP|loadC|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[2]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector13~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(2));

-- Location: FF_X21_Y1_N32
\CPU|dataAddr|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(2),
	sload => VCC,
	ena => \CPU|FSM|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataAddr|out\(2));

-- Location: MLABCELL_X21_Y1_N51
\CPU|ADDR_MUX|b[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ADDR_MUX|b[2]~4_combout\ = ( \CPU|ProgramCounter|out\(2) & ( \CPU|FSM|state|out\(1) & ( ((\CPU|FSM|state|out\(3) & (!\CPU|FSM|state|out\(4) & \CPU|FSM|state|out\(2)))) # (\CPU|dataAddr|out\(2)) ) ) ) # ( !\CPU|ProgramCounter|out\(2) & ( 
-- \CPU|FSM|state|out\(1) & ( (\CPU|dataAddr|out\(2) & ((!\CPU|FSM|state|out\(3)) # ((!\CPU|FSM|state|out\(2)) # (\CPU|FSM|state|out\(4))))) ) ) ) # ( \CPU|ProgramCounter|out\(2) & ( !\CPU|FSM|state|out\(1) & ( \CPU|dataAddr|out\(2) ) ) ) # ( 
-- !\CPU|ProgramCounter|out\(2) & ( !\CPU|FSM|state|out\(1) & ( \CPU|dataAddr|out\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000010110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(3),
	datab => \CPU|FSM|state|ALT_INV_out\(4),
	datac => \CPU|dataAddr|ALT_INV_out\(2),
	datad => \CPU|FSM|state|ALT_INV_out\(2),
	datae => \CPU|ProgramCounter|ALT_INV_out\(2),
	dataf => \CPU|FSM|state|ALT_INV_out\(1),
	combout => \CPU|ADDR_MUX|b[2]~4_combout\);

-- Location: LABCELL_X19_Y1_N30
\read_data[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[4]~1_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a4\ & ( (!\SWtristate|SWdriverout~2_combout\) # (((!\SWtristate|SWdriverout~1_combout\) # (!\SWtristate|SWdriverout~0_combout\)) # (\SW[4]~input_o\)) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a4\ & ( (\SWtristate|SWdriverout~2_combout\ & (\SW[4]~input_o\ & (\SWtristate|SWdriverout~1_combout\ & \SWtristate|SWdriverout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \read_data[4]~1_combout\);

-- Location: FF_X19_Y1_N32
\CPU|instruction|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[4]~1_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(4));

-- Location: LABCELL_X16_Y1_N42
\CPU|DP|Mux1lab6|b[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[4]~4_combout\ = ( \CPU|instruction|out\(4) & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((\CPU|DP|loadC|out\(4)) # (\CPU|FSM|vsel[1]~0_combout\))) ) ) # ( !\CPU|instruction|out\(4) & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & 
-- (!\CPU|FSM|vsel[1]~0_combout\ & \CPU|DP|loadC|out\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datab => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	datac => \CPU|DP|loadC|ALT_INV_out\(4),
	dataf => \CPU|instruction|ALT_INV_out\(4),
	combout => \CPU|DP|Mux1lab6|b[4]~4_combout\);

-- Location: LABCELL_X16_Y1_N18
\CPU|DP|Mux1lab6|b[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(4) = ( \SWtristate|SWdriverout~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a4\ & ( ((\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\SWtristate|SWdriverout~2_combout\) # (\SW[4]~input_o\)))) # 
-- (\CPU|DP|Mux1lab6|b[4]~4_combout\) ) ) ) # ( !\SWtristate|SWdriverout~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a4\ & ( (\CPU|DP|Mux1lab6|b[4]~4_combout\) # (\CPU|DP|vselonehot|ShiftLeft0~0_combout\) ) ) ) # ( 
-- \SWtristate|SWdriverout~4_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a4\ & ( ((\SWtristate|SWdriverout~2_combout\ & (\SW[4]~input_o\ & \CPU|DP|vselonehot|ShiftLeft0~0_combout\))) # (\CPU|DP|Mux1lab6|b[4]~4_combout\) ) ) ) # ( 
-- !\SWtristate|SWdriverout~4_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a4\ & ( \CPU|DP|Mux1lab6|b[4]~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000011111111100001111111111110000101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datad => \CPU|DP|Mux1lab6|ALT_INV_b[4]~4_combout\,
	datae => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \CPU|DP|Mux1lab6|b\(4));

-- Location: FF_X17_Y3_N16
\CPU|DP|REGFILE|Reg5|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(4),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(4));

-- Location: FF_X15_Y1_N5
\CPU|DP|REGFILE|Reg0|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(4),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(4));

-- Location: FF_X17_Y3_N58
\CPU|DP|REGFILE|Reg4|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(4),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(4));

-- Location: MLABCELL_X15_Y2_N39
\CPU|DP|REGFILE|Reg2|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg2|out[4]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(4),
	combout => \CPU|DP|REGFILE|Reg2|out[4]~feeder_combout\);

-- Location: FF_X15_Y2_N41
\CPU|DP|REGFILE|Reg2|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg2|out[4]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(4));

-- Location: LABCELL_X17_Y2_N39
\CPU|DP|REGFILE|regmux|b[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[4]~12_combout\ = ( \CPU|DP|REGFILE|Reg2|out\(4) & ( \CPU|insDec|Rmux|b\(1) & ( (\CPU|insDec|Rmux|b\(0) & ((!\CPU|insDec|Rmux|b\(2) & ((\CPU|DP|REGFILE|Reg4|out\(4)))) # (\CPU|insDec|Rmux|b\(2) & (\CPU|DP|REGFILE|Reg0|out\(4))))) ) 
-- ) ) # ( !\CPU|DP|REGFILE|Reg2|out\(4) & ( \CPU|insDec|Rmux|b\(1) & ( (\CPU|insDec|Rmux|b\(0) & ((!\CPU|insDec|Rmux|b\(2) & ((\CPU|DP|REGFILE|Reg4|out\(4)))) # (\CPU|insDec|Rmux|b\(2) & (\CPU|DP|REGFILE|Reg0|out\(4))))) ) ) ) # ( 
-- \CPU|DP|REGFILE|Reg2|out\(4) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|insDec|Rmux|b\(2) & \CPU|insDec|Rmux|b\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000001000011010000000100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(4),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datad => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(4),
	datae => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(4),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[4]~12_combout\);

-- Location: LABCELL_X13_Y1_N51
\CPU|DP|REGFILE|Reg3|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg3|out[4]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(4),
	combout => \CPU|DP|REGFILE|Reg3|out[4]~feeder_combout\);

-- Location: FF_X13_Y1_N52
\CPU|DP|REGFILE|Reg3|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg3|out[4]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(4));

-- Location: FF_X16_Y3_N53
\CPU|DP|REGFILE|Reg1|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(4),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(4));

-- Location: LABCELL_X16_Y3_N51
\CPU|DP|REGFILE|regmux|b[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[4]~13_combout\ = ( \CPU|DP|REGFILE|Reg1|out\(4) & ( \CPU|insDec|Rmux|b\(1) & ( (\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(0)) ) ) ) # ( \CPU|DP|REGFILE|Reg1|out\(4) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg3|out\(4) 
-- & (\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(0))) ) ) ) # ( !\CPU|DP|REGFILE|Reg1|out\(4) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg3|out\(4) & (\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(4),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datae => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(4),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[4]~13_combout\);

-- Location: FF_X16_Y1_N44
\CPU|DP|REGFILE|Reg6|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(4),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(4));

-- Location: FF_X16_Y1_N20
\CPU|DP|REGFILE|Reg7|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|Mux1lab6|b\(4),
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(4));

-- Location: LABCELL_X16_Y1_N33
\CPU|DP|REGFILE|regmux|b[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[4]~14_combout\ = ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(1) & (!\CPU|insDec|Rmux|b\(2) & \CPU|DP|REGFILE|Reg6|out\(4))) ) ) # ( !\CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(1) & (!\CPU|insDec|Rmux|b\(2) & 
-- \CPU|DP|REGFILE|Reg7|out\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datac => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(4),
	datad => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(4),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[4]~14_combout\);

-- Location: LABCELL_X17_Y2_N9
\CPU|DP|REGFILE|regmux|b[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(4) = ( \CPU|DP|REGFILE|regmux|b[4]~13_combout\ & ( \CPU|DP|REGFILE|regmux|b[4]~14_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[4]~13_combout\ & ( \CPU|DP|REGFILE|regmux|b[4]~14_combout\ ) ) # ( 
-- \CPU|DP|REGFILE|regmux|b[4]~13_combout\ & ( !\CPU|DP|REGFILE|regmux|b[4]~14_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[4]~13_combout\ & ( !\CPU|DP|REGFILE|regmux|b[4]~14_combout\ & ( ((\CPU|DP|REGFILE|Reg5|out\(4) & 
-- \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\)) # (\CPU|DP|REGFILE|regmux|b[4]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(4),
	datab => \CPU|DP|REGFILE|regmux|ALT_INV_b[4]~12_combout\,
	datad => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	datae => \CPU|DP|REGFILE|regmux|ALT_INV_b[4]~13_combout\,
	dataf => \CPU|DP|REGFILE|regmux|ALT_INV_b[4]~14_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(4));

-- Location: FF_X17_Y2_N7
\CPU|DP|loadA|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(4),
	sload => VCC,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(4));

-- Location: MLABCELL_X21_Y2_N42
\CPU|DP|loadC|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[4]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~17_sumout\,
	combout => \CPU|DP|loadC|out[4]~feeder_combout\);

-- Location: MLABCELL_X21_Y2_N45
\CPU|DP|alu|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector11~0_combout\ = ( \CPU|DP|Muxb|b[4]~6_combout\ & ( (\CPU|DP|alu|Selector6~0_combout\ & \CPU|DP|loadA|out\(4)) ) ) # ( !\CPU|DP|Muxb|b[4]~6_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	datac => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	datad => \CPU|DP|loadA|ALT_INV_out\(4),
	dataf => \CPU|DP|Muxb|ALT_INV_b[4]~6_combout\,
	combout => \CPU|DP|alu|Selector11~0_combout\);

-- Location: FF_X21_Y2_N44
\CPU|DP|loadC|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[4]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector11~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(4));

-- Location: FF_X21_Y1_N52
\CPU|dataAddr|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(4),
	sload => VCC,
	ena => \CPU|FSM|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataAddr|out\(4));

-- Location: MLABCELL_X21_Y1_N54
\CPU|ADDR_MUX|b[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ADDR_MUX|b[4]~6_combout\ = ( \CPU|dataAddr|out\(4) & ( \CPU|ProgramCounter|out\(4) ) ) # ( !\CPU|dataAddr|out\(4) & ( \CPU|ProgramCounter|out\(4) & ( (\CPU|FSM|state|out\(2) & (\CPU|FSM|state|out\(3) & (\CPU|FSM|state|out\(1) & 
-- !\CPU|FSM|state|out\(4)))) ) ) ) # ( \CPU|dataAddr|out\(4) & ( !\CPU|ProgramCounter|out\(4) & ( (!\CPU|FSM|state|out\(2)) # ((!\CPU|FSM|state|out\(3)) # ((!\CPU|FSM|state|out\(1)) # (\CPU|FSM|state|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(2),
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|FSM|state|ALT_INV_out\(1),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	datae => \CPU|dataAddr|ALT_INV_out\(4),
	dataf => \CPU|ProgramCounter|ALT_INV_out\(4),
	combout => \CPU|ADDR_MUX|b[4]~6_combout\);

-- Location: MLABCELL_X21_Y3_N48
\CPU|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~29_sumout\ = SUM(( \CPU|ProgramCounter|out\(7) ) + ( GND ) + ( \CPU|Add0~2\ ))
-- \CPU|Add0~30\ = CARRY(( \CPU|ProgramCounter|out\(7) ) + ( GND ) + ( \CPU|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ProgramCounter|ALT_INV_out\(7),
	cin => \CPU|Add0~2\,
	sumout => \CPU|Add0~29_sumout\,
	cout => \CPU|Add0~30\);

-- Location: MLABCELL_X21_Y3_N51
\CPU|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~5_sumout\ = SUM(( \CPU|ProgramCounter|out\(8) ) + ( GND ) + ( \CPU|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ProgramCounter|ALT_INV_out\(8),
	cin => \CPU|Add0~30\,
	sumout => \CPU|Add0~5_sumout\);

-- Location: FF_X21_Y3_N52
\CPU|ProgramCounter|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~5_sumout\,
	sclr => \CPU|FSM|Decoder0~2_combout\,
	ena => \CPU|FSM|load_pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ProgramCounter|out\(8));

-- Location: LABCELL_X18_Y1_N9
\CPU|FSM|addr_sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|addr_sel~0_combout\ = ( \CPU|FSM|state|out\(3) & ( (\CPU|FSM|state|out\(2) & (!\CPU|FSM|state|out\(4) & \CPU|FSM|state|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|FSM|state|ALT_INV_out\(4),
	datad => \CPU|FSM|state|ALT_INV_out\(1),
	dataf => \CPU|FSM|state|ALT_INV_out\(3),
	combout => \CPU|FSM|addr_sel~0_combout\);

-- Location: MLABCELL_X21_Y1_N6
\SWtristate|SWdriverout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SWtristate|SWdriverout~3_combout\ = ( \CPU|FSM|addr_sel~0_combout\ & ( (\CPU|ProgramCounter|out\(8) & !\CPU|ProgramCounter|out\(0)) ) ) # ( !\CPU|FSM|addr_sel~0_combout\ & ( (\CPU|dataAddr|out\(8) & !\CPU|dataAddr|out\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataAddr|ALT_INV_out\(8),
	datab => \CPU|ProgramCounter|ALT_INV_out\(8),
	datac => \CPU|ProgramCounter|ALT_INV_out\(0),
	datad => \CPU|dataAddr|ALT_INV_out\(0),
	dataf => \CPU|FSM|ALT_INV_addr_sel~0_combout\,
	combout => \SWtristate|SWdriverout~3_combout\);

-- Location: MLABCELL_X21_Y1_N12
\SWtristate|SWdriverout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SWtristate|SWdriverout~4_combout\ = ( \SWtristate|SWdriverout~1_combout\ & ( \SWtristate|SWdriverout~3_combout\ & ( (!\CPU|ADDR_MUX|b[1]~3_combout\ & (!\CPU|ADDR_MUX|b[4]~6_combout\ & (!\CPU|ADDR_MUX|b[2]~4_combout\ & !\CPU|ADDR_MUX|b[3]~5_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ADDR_MUX|ALT_INV_b[1]~3_combout\,
	datab => \CPU|ADDR_MUX|ALT_INV_b[4]~6_combout\,
	datac => \CPU|ADDR_MUX|ALT_INV_b[2]~4_combout\,
	datad => \CPU|ADDR_MUX|ALT_INV_b[3]~5_combout\,
	datae => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	dataf => \SWtristate|ALT_INV_SWdriverout~3_combout\,
	combout => \SWtristate|SWdriverout~4_combout\);

-- Location: MLABCELL_X15_Y1_N45
\CPU|DP|Mux1lab6|b[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[8]~8_combout\ = ( \CPU|DP|loadC|out\(8) & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\CPU|FSM|vsel[1]~0_combout\) # (\CPU|instruction|out\(7)))) ) ) # ( !\CPU|DP|loadC|out\(8) & ( (!\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & 
-- (\CPU|FSM|vsel[1]~0_combout\ & \CPU|instruction|out\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datac => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	datad => \CPU|instruction|ALT_INV_out\(7),
	dataf => \CPU|DP|loadC|ALT_INV_out\(8),
	combout => \CPU|DP|Mux1lab6|b[8]~8_combout\);

-- Location: LABCELL_X16_Y1_N24
\CPU|DP|Mux1lab6|b[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(8) = ( \MEM|mem_rtl_0|auto_generated|ram_block1a8\ & ( \CPU|DP|Mux1lab6|b[8]~8_combout\ ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a8\ & ( \CPU|DP|Mux1lab6|b[8]~8_combout\ ) ) # ( \MEM|mem_rtl_0|auto_generated|ram_block1a8\ & ( 
-- !\CPU|DP|Mux1lab6|b[8]~8_combout\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & (((!\SWtristate|SWdriverout~2_combout\) # (!\SWtristate|SWdriverout~4_combout\)) # (\SW[7]~input_o\))) ) ) ) # ( !\MEM|mem_rtl_0|auto_generated|ram_block1a8\ & ( 
-- !\CPU|DP|Mux1lab6|b[8]~8_combout\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & (\SW[7]~input_o\ & (\SWtristate|SWdriverout~2_combout\ & \SWtristate|SWdriverout~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010101010101000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	datae => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b[8]~8_combout\,
	combout => \CPU|DP|Mux1lab6|b\(8));

-- Location: FF_X16_Y2_N35
\CPU|DP|REGFILE|Reg6|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(8),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(8));

-- Location: FF_X16_Y1_N25
\CPU|DP|REGFILE|Reg7|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|Mux1lab6|b\(8),
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(8));

-- Location: LABCELL_X17_Y2_N33
\CPU|DP|REGFILE|regmux|b[8]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[8]~26_combout\ = ( \CPU|insDec|Rmux|b\(0) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg6|out\(8) & !\CPU|insDec|Rmux|b\(2)) ) ) ) # ( !\CPU|insDec|Rmux|b\(0) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg7|out\(8) & 
-- !\CPU|insDec|Rmux|b\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(8),
	datac => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(8),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|insDec|Rmux|ALT_INV_b\(0),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[8]~26_combout\);

-- Location: FF_X17_Y3_N14
\CPU|DP|REGFILE|Reg5|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(8),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(8));

-- Location: FF_X16_Y2_N7
\CPU|DP|REGFILE|Reg3|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(8),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(8));

-- Location: FF_X16_Y3_N17
\CPU|DP|REGFILE|Reg1|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(8),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(8));

-- Location: LABCELL_X16_Y3_N15
\CPU|DP|REGFILE|regmux|b[8]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[8]~25_combout\ = ( \CPU|DP|REGFILE|Reg1|out\(8) & ( (!\CPU|insDec|Rmux|b\(0) & (\CPU|insDec|Rmux|b\(2) & ((\CPU|insDec|Rmux|b\(1)) # (\CPU|DP|REGFILE|Reg3|out\(8))))) ) ) # ( !\CPU|DP|REGFILE|Reg1|out\(8) & ( 
-- (!\CPU|insDec|Rmux|b\(0) & (\CPU|insDec|Rmux|b\(2) & (\CPU|DP|REGFILE|Reg3|out\(8) & !\CPU|insDec|Rmux|b\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100010001000000010000000000000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datac => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(8),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(8),
	combout => \CPU|DP|REGFILE|regmux|b[8]~25_combout\);

-- Location: MLABCELL_X15_Y2_N54
\CPU|DP|REGFILE|Reg2|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg2|out[8]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(8),
	combout => \CPU|DP|REGFILE|Reg2|out[8]~feeder_combout\);

-- Location: FF_X15_Y2_N55
\CPU|DP|REGFILE|Reg2|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg2|out[8]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(8));

-- Location: FF_X17_Y3_N43
\CPU|DP|REGFILE|Reg4|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(8),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(8));

-- Location: FF_X16_Y3_N20
\CPU|DP|REGFILE|Reg0|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(8),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(8));

-- Location: LABCELL_X16_Y3_N18
\CPU|DP|REGFILE|regmux|b[8]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[8]~24_combout\ = ( \CPU|DP|REGFILE|Reg0|out\(8) & ( \CPU|insDec|Rmux|b\(1) & ( (\CPU|insDec|Rmux|b\(0) & ((\CPU|insDec|Rmux|b\(2)) # (\CPU|DP|REGFILE|Reg4|out\(8)))) ) ) ) # ( !\CPU|DP|REGFILE|Reg0|out\(8) & ( 
-- \CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg4|out\(8) & (\CPU|insDec|Rmux|b\(0) & !\CPU|insDec|Rmux|b\(2))) ) ) ) # ( \CPU|DP|REGFILE|Reg0|out\(8) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg2|out\(8) & (\CPU|insDec|Rmux|b\(0) & 
-- \CPU|insDec|Rmux|b\(2))) ) ) ) # ( !\CPU|DP|REGFILE|Reg0|out\(8) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg2|out\(8) & (\CPU|insDec|Rmux|b\(0) & \CPU|insDec|Rmux|b\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000011000000000000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(8),
	datab => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(8),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datae => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(8),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[8]~24_combout\);

-- Location: LABCELL_X17_Y2_N3
\CPU|DP|REGFILE|regmux|b[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(8) = ( \CPU|DP|REGFILE|regmux|b[8]~24_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[8]~24_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( 
-- ((\CPU|DP|REGFILE|regmux|b[8]~25_combout\) # (\CPU|DP|REGFILE|Reg5|out\(8))) # (\CPU|DP|REGFILE|regmux|b[8]~26_combout\) ) ) ) # ( \CPU|DP|REGFILE|regmux|b[8]~24_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( 
-- !\CPU|DP|REGFILE|regmux|b[8]~24_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|regmux|b[8]~25_combout\) # (\CPU|DP|REGFILE|regmux|b[8]~26_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111111111111111111101011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|regmux|ALT_INV_b[8]~26_combout\,
	datac => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(8),
	datad => \CPU|DP|REGFILE|regmux|ALT_INV_b[8]~25_combout\,
	datae => \CPU|DP|REGFILE|regmux|ALT_INV_b[8]~24_combout\,
	dataf => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(8));

-- Location: FF_X17_Y2_N1
\CPU|DP|loadA|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(8),
	sload => VCC,
	ena => \CPU|FSM|loada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadA|out\(8));

-- Location: LABCELL_X18_Y2_N33
\CPU|DP|loadC|out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[8]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~37_sumout\,
	combout => \CPU|DP|loadC|out[8]~feeder_combout\);

-- Location: MLABCELL_X21_Y2_N15
\CPU|DP|alu|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector7~0_combout\ = ( \CPU|DP|Muxb|b[8]~10_combout\ & ( \CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|loadA|out\(8) ) ) ) # ( !\CPU|DP|Muxb|b[8]~10_combout\ & ( \CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) ) ) # ( 
-- !\CPU|DP|Muxb|b[8]~10_combout\ & ( !\CPU|DP|alu|Selector6~0_combout\ & ( \CPU|DP|alu|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	datac => \CPU|DP|loadA|ALT_INV_out\(8),
	datae => \CPU|DP|Muxb|ALT_INV_b[8]~10_combout\,
	dataf => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	combout => \CPU|DP|alu|Selector7~0_combout\);

-- Location: FF_X18_Y2_N34
\CPU|DP|loadC|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[8]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector7~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(8));

-- Location: FF_X21_Y1_N20
\CPU|dataAddr|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(8),
	sload => VCC,
	ena => \CPU|FSM|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataAddr|out\(8));

-- Location: MLABCELL_X21_Y1_N0
\CPU|FSM|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Decoder0~0_combout\ = ( !\CPU|FSM|state|out\(2) & ( (\CPU|FSM|state|out\(4) & (\CPU|FSM|state|out\(3) & (\CPU|FSM|state|out\(1) & !\CPU|FSM|state|out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(4),
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|FSM|state|ALT_INV_out\(1),
	datad => \CPU|FSM|state|ALT_INV_out\(0),
	dataf => \CPU|FSM|state|ALT_INV_out\(2),
	combout => \CPU|FSM|Decoder0~0_combout\);

-- Location: LABCELL_X18_Y1_N24
\CPU|FSM|WideOr7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|WideOr7~0_combout\ = ( \CPU|FSM|state|out\(3) & ( (\CPU|FSM|state|out\(2) & (\CPU|FSM|state|out\(1) & !\CPU|FSM|state|out\(4))) ) ) # ( !\CPU|FSM|state|out\(3) & ( (\CPU|FSM|state|out\(2) & (!\CPU|FSM|state|out\(1) & \CPU|FSM|state|out\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|FSM|state|ALT_INV_out\(1),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	dataf => \CPU|FSM|state|ALT_INV_out\(3),
	combout => \CPU|FSM|WideOr7~0_combout\);

-- Location: MLABCELL_X21_Y1_N9
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\CPU|FSM|WideOr7~0_combout\ & ( (\CPU|FSM|Decoder0~0_combout\ & ((!\CPU|FSM|addr_sel~0_combout\ & (!\CPU|dataAddr|out\(8))) # (\CPU|FSM|addr_sel~0_combout\ & ((!\CPU|ProgramCounter|out\(8)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101100000000001010110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|dataAddr|ALT_INV_out\(8),
	datab => \CPU|ProgramCounter|ALT_INV_out\(8),
	datac => \CPU|FSM|ALT_INV_addr_sel~0_combout\,
	datad => \CPU|FSM|ALT_INV_Decoder0~0_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr7~0_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X16_Y1_N12
\read_data[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[6]~13_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( (!\SWtristate|SWdriverout~2_combout\) # ((!\SWtristate|SWdriverout~0_combout\) # ((!\SWtristate|SWdriverout~1_combout\) # (\SW[6]~input_o\))) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( (\SWtristate|SWdriverout~2_combout\ & (\SWtristate|SWdriverout~0_combout\ & (\SWtristate|SWdriverout~1_combout\ & \SW[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datab => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	datac => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \read_data[6]~13_combout\);

-- Location: FF_X16_Y1_N14
\CPU|instruction|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[6]~13_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(6));

-- Location: LABCELL_X11_Y1_N3
\CPU|DP|Mux1lab6|b[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b[6]~6_combout\ = ( \CPU|DP|loadC|out\(6) & ( !\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ( (!\CPU|FSM|vsel[1]~0_combout\) # (\CPU|instruction|out\(6)) ) ) ) # ( !\CPU|DP|loadC|out\(6) & ( !\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ( 
-- (\CPU|FSM|vsel[1]~0_combout\ & \CPU|instruction|out\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|ALT_INV_vsel[1]~0_combout\,
	datad => \CPU|instruction|ALT_INV_out\(6),
	datae => \CPU|DP|loadC|ALT_INV_out\(6),
	dataf => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|Mux1lab6|b[6]~6_combout\);

-- Location: LABCELL_X11_Y1_N6
\CPU|DP|Mux1lab6|b[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Mux1lab6|b\(6) = ( \SWtristate|SWdriverout~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( ((\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & ((!\SWtristate|SWdriverout~2_combout\) # (\SW[6]~input_o\)))) # 
-- (\CPU|DP|Mux1lab6|b[6]~6_combout\) ) ) ) # ( !\SWtristate|SWdriverout~4_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( (\CPU|DP|vselonehot|ShiftLeft0~0_combout\) # (\CPU|DP|Mux1lab6|b[6]~6_combout\) ) ) ) # ( 
-- \SWtristate|SWdriverout~4_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( ((\SW[6]~input_o\ & (\CPU|DP|vselonehot|ShiftLeft0~0_combout\ & \SWtristate|SWdriverout~2_combout\))) # (\CPU|DP|Mux1lab6|b[6]~6_combout\) ) ) ) # ( 
-- !\SWtristate|SWdriverout~4_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a6\ & ( \CPU|DP|Mux1lab6|b[6]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101011101011111010111110101111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|Mux1lab6|ALT_INV_b[6]~6_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \CPU|DP|vselonehot|ALT_INV_ShiftLeft0~0_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datae => \SWtristate|ALT_INV_SWdriverout~4_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \CPU|DP|Mux1lab6|b\(6));

-- Location: FF_X12_Y3_N58
\CPU|DP|REGFILE|Reg4|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(6),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg4|out\(6));

-- Location: FF_X12_Y1_N7
\CPU|DP|REGFILE|Reg0|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(6),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg0|out\(6));

-- Location: FF_X11_Y1_N5
\CPU|DP|REGFILE|Reg2|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(6),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg2|out\(6));

-- Location: MLABCELL_X15_Y1_N0
\CPU|DP|REGFILE|regmux|b[6]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[6]~18_combout\ = ( \CPU|insDec|Rmux|b\(2) & ( \CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg0|out\(6) & \CPU|insDec|Rmux|b\(0)) ) ) ) # ( !\CPU|insDec|Rmux|b\(2) & ( \CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg4|out\(6) & 
-- \CPU|insDec|Rmux|b\(0)) ) ) ) # ( \CPU|insDec|Rmux|b\(2) & ( !\CPU|insDec|Rmux|b\(1) & ( (\CPU|DP|REGFILE|Reg2|out\(6) & \CPU|insDec|Rmux|b\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000010101010000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg4|ALT_INV_out\(6),
	datab => \CPU|DP|REGFILE|Reg0|ALT_INV_out\(6),
	datac => \CPU|DP|REGFILE|Reg2|ALT_INV_out\(6),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(0),
	datae => \CPU|insDec|Rmux|ALT_INV_b\(2),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(1),
	combout => \CPU|DP|REGFILE|regmux|b[6]~18_combout\);

-- Location: LABCELL_X13_Y1_N42
\CPU|DP|REGFILE|Reg5|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg5|out[6]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(6),
	combout => \CPU|DP|REGFILE|Reg5|out[6]~feeder_combout\);

-- Location: FF_X13_Y1_N44
\CPU|DP|REGFILE|Reg5|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg5|out[6]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg5|out\(6));

-- Location: LABCELL_X13_Y1_N0
\CPU|DP|REGFILE|Reg3|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|Reg3|out[6]~feeder_combout\ = ( \CPU|DP|Mux1lab6|b\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|Mux1lab6|ALT_INV_b\(6),
	combout => \CPU|DP|REGFILE|Reg3|out[6]~feeder_combout\);

-- Location: FF_X13_Y1_N2
\CPU|DP|REGFILE|Reg3|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|REGFILE|Reg3|out[6]~feeder_combout\,
	ena => \CPU|DP|REGFILE|comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg3|out\(6));

-- Location: FF_X15_Y1_N35
\CPU|DP|REGFILE|Reg1|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(6),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg1|out\(6));

-- Location: MLABCELL_X15_Y1_N33
\CPU|DP|REGFILE|regmux|b[6]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[6]~19_combout\ = ( \CPU|DP|REGFILE|Reg1|out\(6) & ( !\CPU|insDec|Rmux|b\(0) & ( (\CPU|insDec|Rmux|b\(2) & ((\CPU|insDec|Rmux|b\(1)) # (\CPU|DP|REGFILE|Reg3|out\(6)))) ) ) ) # ( !\CPU|DP|REGFILE|Reg1|out\(6) & ( 
-- !\CPU|insDec|Rmux|b\(0) & ( (\CPU|DP|REGFILE|Reg3|out\(6) & (\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|REGFILE|Reg3|ALT_INV_out\(6),
	datac => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|Reg1|ALT_INV_out\(6),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[6]~19_combout\);

-- Location: FF_X11_Y1_N8
\CPU|DP|REGFILE|Reg7|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|Mux1lab6|b\(6),
	ena => \CPU|DP|REGFILE|comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg7|out\(6));

-- Location: FF_X13_Y1_N56
\CPU|DP|REGFILE|Reg6|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|Mux1lab6|b\(6),
	sload => VCC,
	ena => \CPU|DP|REGFILE|comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|REGFILE|Reg6|out\(6));

-- Location: LABCELL_X13_Y1_N54
\CPU|DP|REGFILE|regmux|b[6]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b[6]~20_combout\ = ( \CPU|DP|REGFILE|Reg6|out\(6) & ( \CPU|insDec|Rmux|b\(0) & ( (!\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(1)) ) ) ) # ( \CPU|DP|REGFILE|Reg6|out\(6) & ( !\CPU|insDec|Rmux|b\(0) & ( 
-- (\CPU|DP|REGFILE|Reg7|out\(6) & (!\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(1))) ) ) ) # ( !\CPU|DP|REGFILE|Reg6|out\(6) & ( !\CPU|insDec|Rmux|b\(0) & ( (\CPU|DP|REGFILE|Reg7|out\(6) & (!\CPU|insDec|Rmux|b\(2) & !\CPU|insDec|Rmux|b\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|Reg7|ALT_INV_out\(6),
	datab => \CPU|insDec|Rmux|ALT_INV_b\(2),
	datad => \CPU|insDec|Rmux|ALT_INV_b\(1),
	datae => \CPU|DP|REGFILE|Reg6|ALT_INV_out\(6),
	dataf => \CPU|insDec|Rmux|ALT_INV_b\(0),
	combout => \CPU|DP|REGFILE|regmux|b[6]~20_combout\);

-- Location: MLABCELL_X15_Y1_N21
\CPU|DP|REGFILE|regmux|b[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|REGFILE|regmux|b\(6) = ( \CPU|DP|REGFILE|regmux|b[6]~20_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( !\CPU|DP|REGFILE|regmux|b[6]~20_combout\ & ( \CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( 
-- ((\CPU|DP|REGFILE|regmux|b[6]~19_combout\) # (\CPU|DP|REGFILE|Reg5|out\(6))) # (\CPU|DP|REGFILE|regmux|b[6]~18_combout\) ) ) ) # ( \CPU|DP|REGFILE|regmux|b[6]~20_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ ) ) # ( 
-- !\CPU|DP|REGFILE|regmux|b[6]~20_combout\ & ( !\CPU|DP|REGFILE|readnum_dec|ShiftLeft0~0_combout\ & ( (\CPU|DP|REGFILE|regmux|b[6]~19_combout\) # (\CPU|DP|REGFILE|regmux|b[6]~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111111111111111111101011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|REGFILE|regmux|ALT_INV_b[6]~18_combout\,
	datac => \CPU|DP|REGFILE|Reg5|ALT_INV_out\(6),
	datad => \CPU|DP|REGFILE|regmux|ALT_INV_b[6]~19_combout\,
	datae => \CPU|DP|REGFILE|regmux|ALT_INV_b[6]~20_combout\,
	dataf => \CPU|DP|REGFILE|readnum_dec|ALT_INV_ShiftLeft0~0_combout\,
	combout => \CPU|DP|REGFILE|regmux|b\(6));

-- Location: FF_X19_Y1_N29
\CPU|DP|loadB|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(6),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out\(6));

-- Location: FF_X17_Y2_N14
\CPU|DP|loadB|out[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(7),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out[7]~DUPLICATE_q\);

-- Location: FF_X19_Y1_N10
\CPU|DP|loadB|out[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|REGFILE|regmux|b\(5),
	sload => VCC,
	ena => \CPU|FSM|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadB|out[5]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y2_N15
\CPU|DP|Muxb|b[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|Muxb|b[6]~8_combout\ = ( \CPU|DP|loadB|out[5]~DUPLICATE_q\ & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( !\CPU|DP|loadB|out[5]~DUPLICATE_q\ & ( \CPU|FSM|Decoder0~1_combout\ & ( \CPU|instruction|out\(4) ) ) ) # ( 
-- \CPU|DP|loadB|out[5]~DUPLICATE_q\ & ( !\CPU|FSM|Decoder0~1_combout\ & ( (!\CPU|instruction|out\(4) & (((\CPU|instruction|out\(3))) # (\CPU|DP|loadB|out\(6)))) # (\CPU|instruction|out\(4) & (((\CPU|DP|loadB|out[7]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\CPU|DP|loadB|out[5]~DUPLICATE_q\ & ( !\CPU|FSM|Decoder0~1_combout\ & ( (!\CPU|instruction|out\(4) & (\CPU|DP|loadB|out\(6) & ((!\CPU|instruction|out\(3))))) # (\CPU|instruction|out\(4) & (((\CPU|DP|loadB|out[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000011010001111100111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadB|ALT_INV_out\(6),
	datab => \CPU|instruction|ALT_INV_out\(4),
	datac => \CPU|DP|loadB|ALT_INV_out[7]~DUPLICATE_q\,
	datad => \CPU|instruction|ALT_INV_out\(3),
	datae => \CPU|DP|loadB|ALT_INV_out[5]~DUPLICATE_q\,
	dataf => \CPU|FSM|ALT_INV_Decoder0~1_combout\,
	combout => \CPU|DP|Muxb|b[6]~8_combout\);

-- Location: LABCELL_X18_Y2_N30
\CPU|DP|loadC|out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[6]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~25_sumout\,
	combout => \CPU|DP|loadC|out[6]~feeder_combout\);

-- Location: LABCELL_X18_Y2_N3
\CPU|DP|alu|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector9~0_combout\ = ( \CPU|DP|alu|Selector6~0_combout\ & ( (!\CPU|DP|Muxb|b[6]~8_combout\ & ((\CPU|DP|alu|Equal0~0_combout\))) # (\CPU|DP|Muxb|b[6]~8_combout\ & (\CPU|DP|loadA|out\(6))) ) ) # ( !\CPU|DP|alu|Selector6~0_combout\ & ( 
-- (!\CPU|DP|Muxb|b[6]~8_combout\ & \CPU|DP|alu|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DP|loadA|ALT_INV_out\(6),
	datac => \CPU|DP|Muxb|ALT_INV_b[6]~8_combout\,
	datad => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	dataf => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	combout => \CPU|DP|alu|Selector9~0_combout\);

-- Location: FF_X18_Y2_N32
\CPU|DP|loadC|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[6]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector9~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(6));

-- Location: FF_X21_Y1_N17
\CPU|dataAddr|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(6),
	sload => VCC,
	ena => \CPU|FSM|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataAddr|out\(6));

-- Location: MLABCELL_X21_Y1_N21
\SWtristate|SWdriverout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SWtristate|SWdriverout~2_combout\ = ( !\CPU|FSM|Decoder0~0_combout\ & ( \CPU|FSM|WideOr7~0_combout\ & ( (!\CPU|FSM|addr_sel~0_combout\ & (\CPU|dataAddr|out\(6))) # (\CPU|FSM|addr_sel~0_combout\ & ((\CPU|ProgramCounter|out\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|dataAddr|ALT_INV_out\(6),
	datac => \CPU|FSM|ALT_INV_addr_sel~0_combout\,
	datad => \CPU|ProgramCounter|ALT_INV_out\(6),
	datae => \CPU|FSM|ALT_INV_Decoder0~0_combout\,
	dataf => \CPU|FSM|ALT_INV_WideOr7~0_combout\,
	combout => \SWtristate|SWdriverout~2_combout\);

-- Location: LABCELL_X22_Y2_N57
\read_data[11]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[11]~3_combout\ = ( \SWtristate|SWdriverout~2_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( (!\SWtristate|SWdriverout~0_combout\) # ((!\SWtristate|SWdriverout~1_combout\) # (\SW[7]~input_o\)) ) ) ) # ( 
-- !\SWtristate|SWdriverout~2_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a11\ ) ) # ( \SWtristate|SWdriverout~2_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a11\ & ( (\SWtristate|SWdriverout~0_combout\ & (\SW[7]~input_o\ & 
-- \SWtristate|SWdriverout~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001111111111111111111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	datae => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \read_data[11]~3_combout\);

-- Location: FF_X22_Y2_N59
\CPU|instruction|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[11]~3_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(11));

-- Location: MLABCELL_X21_Y2_N24
\CPU|DP|loadC|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[1]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~5_sumout\,
	combout => \CPU|DP|loadC|out[1]~feeder_combout\);

-- Location: MLABCELL_X21_Y2_N27
\CPU|DP|alu|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector14~0_combout\ = (!\CPU|DP|Muxb|b[1]~3_combout\ & (\CPU|DP|alu|Equal0~0_combout\)) # (\CPU|DP|Muxb|b[1]~3_combout\ & (((\CPU|DP|loadA|out\(1) & \CPU|DP|alu|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000111010001000100011101000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DP|Muxb|ALT_INV_b[1]~3_combout\,
	datac => \CPU|DP|loadA|ALT_INV_out\(1),
	datad => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	combout => \CPU|DP|alu|Selector14~0_combout\);

-- Location: FF_X21_Y2_N26
\CPU|DP|loadC|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[1]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector14~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(1));

-- Location: FF_X21_Y1_N35
\CPU|dataAddr|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(1),
	sload => VCC,
	ena => \CPU|FSM|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataAddr|out\(1));

-- Location: MLABCELL_X21_Y1_N33
\CPU|ADDR_MUX|b[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ADDR_MUX|b[1]~3_combout\ = ( \CPU|dataAddr|out\(1) & ( \CPU|FSM|state|out\(2) & ( (!\CPU|FSM|state|out\(3)) # (((!\CPU|FSM|state|out\(1)) # (\CPU|FSM|state|out\(4))) # (\CPU|ProgramCounter|out\(1))) ) ) ) # ( !\CPU|dataAddr|out\(1) & ( 
-- \CPU|FSM|state|out\(2) & ( (\CPU|FSM|state|out\(3) & (\CPU|ProgramCounter|out\(1) & (!\CPU|FSM|state|out\(4) & \CPU|FSM|state|out\(1)))) ) ) ) # ( \CPU|dataAddr|out\(1) & ( !\CPU|FSM|state|out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(3),
	datab => \CPU|ProgramCounter|ALT_INV_out\(1),
	datac => \CPU|FSM|state|ALT_INV_out\(4),
	datad => \CPU|FSM|state|ALT_INV_out\(1),
	datae => \CPU|dataAddr|ALT_INV_out\(1),
	dataf => \CPU|FSM|state|ALT_INV_out\(2),
	combout => \CPU|ADDR_MUX|b[1]~3_combout\);

-- Location: FF_X21_Y1_N19
\CPU|dataAddr|out[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(8),
	sload => VCC,
	ena => \CPU|FSM|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataAddr|out[8]~DUPLICATE_q\);

-- Location: LABCELL_X22_Y1_N3
\CPU|ADDR_MUX|b[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ADDR_MUX|b[8]~1_combout\ = ( \CPU|ProgramCounter|out\(8) & ( \CPU|dataAddr|out[8]~DUPLICATE_q\ ) ) # ( !\CPU|ProgramCounter|out\(8) & ( \CPU|dataAddr|out[8]~DUPLICATE_q\ & ( (!\CPU|FSM|state|out\(2)) # (((!\CPU|FSM|state|out\(1)) # 
-- (!\CPU|FSM|state|out\(3))) # (\CPU|FSM|state|out\(4))) ) ) ) # ( \CPU|ProgramCounter|out\(8) & ( !\CPU|dataAddr|out[8]~DUPLICATE_q\ & ( (\CPU|FSM|state|out\(2) & (!\CPU|FSM|state|out\(4) & (\CPU|FSM|state|out\(1) & \CPU|FSM|state|out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010011111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(2),
	datab => \CPU|FSM|state|ALT_INV_out\(4),
	datac => \CPU|FSM|state|ALT_INV_out\(1),
	datad => \CPU|FSM|state|ALT_INV_out\(3),
	datae => \CPU|ProgramCounter|ALT_INV_out\(8),
	dataf => \CPU|dataAddr|ALT_INV_out[8]~DUPLICATE_q\,
	combout => \CPU|ADDR_MUX|b[8]~1_combout\);

-- Location: MLABCELL_X21_Y1_N27
\SWtristate|SWdriverout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SWtristate|SWdriverout~0_combout\ = ( \CPU|ADDR_MUX|b[8]~1_combout\ & ( !\CPU|ADDR_MUX|b[0]~2_combout\ & ( (!\CPU|ADDR_MUX|b[1]~3_combout\ & (!\CPU|ADDR_MUX|b[4]~6_combout\ & (!\CPU|ADDR_MUX|b[3]~5_combout\ & !\CPU|ADDR_MUX|b[2]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ADDR_MUX|ALT_INV_b[1]~3_combout\,
	datab => \CPU|ADDR_MUX|ALT_INV_b[4]~6_combout\,
	datac => \CPU|ADDR_MUX|ALT_INV_b[3]~5_combout\,
	datad => \CPU|ADDR_MUX|ALT_INV_b[2]~4_combout\,
	datae => \CPU|ADDR_MUX|ALT_INV_b[8]~1_combout\,
	dataf => \CPU|ADDR_MUX|ALT_INV_b[0]~2_combout\,
	combout => \SWtristate|SWdriverout~0_combout\);

-- Location: LABCELL_X19_Y1_N21
\read_data[15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[15]~7_combout\ = ( \SWtristate|SWdriverout~2_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a15\ & ( (!\SWtristate|SWdriverout~1_combout\) # ((!\SWtristate|SWdriverout~0_combout\) # (\SW[7]~input_o\)) ) ) ) # ( 
-- !\SWtristate|SWdriverout~2_combout\ & ( \MEM|mem_rtl_0|auto_generated|ram_block1a15\ ) ) # ( \SWtristate|SWdriverout~2_combout\ & ( !\MEM|mem_rtl_0|auto_generated|ram_block1a15\ & ( (\SWtristate|SWdriverout~1_combout\ & (\SWtristate|SWdriverout~0_combout\ 
-- & \SW[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000111111111111111111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	datab => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	datae => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \read_data[15]~7_combout\);

-- Location: FF_X19_Y1_N23
\CPU|instruction|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[15]~7_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(15));

-- Location: LABCELL_X19_Y1_N15
\read_data[13]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[13]~5_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( (!\SWtristate|SWdriverout~1_combout\) # (((!\SWtristate|SWdriverout~0_combout\) # (!\SWtristate|SWdriverout~2_combout\)) # (\SW[7]~input_o\)) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a13\ & ( (\SWtristate|SWdriverout~1_combout\ & (\SW[7]~input_o\ & (\SWtristate|SWdriverout~0_combout\ & \SWtristate|SWdriverout~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \read_data[13]~5_combout\);

-- Location: FF_X19_Y1_N17
\CPU|instruction|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[13]~5_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(13));

-- Location: LABCELL_X19_Y1_N0
\CPU|FSM|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux2~2_combout\ = ( \CPU|instruction|out\(15) & ( \CPU|instruction|out\(13) & ( (\CPU|FSM|state|out\(2) & ((!\CPU|FSM|state|out\(1)) # (\CPU|FSM|state|out\(0)))) ) ) ) # ( !\CPU|instruction|out\(15) & ( \CPU|instruction|out\(13) & ( 
-- (!\CPU|FSM|state|out\(1) & (\CPU|FSM|state|out\(2))) # (\CPU|FSM|state|out\(1) & (\CPU|FSM|state|out\(0) & ((\CPU|instruction|out\(14)) # (\CPU|FSM|state|out\(2))))) ) ) ) # ( \CPU|instruction|out\(15) & ( !\CPU|instruction|out\(13) & ( 
-- (\CPU|FSM|state|out\(2) & ((!\CPU|FSM|state|out\(1)) # (\CPU|FSM|state|out\(0)))) ) ) ) # ( !\CPU|instruction|out\(15) & ( !\CPU|instruction|out\(13) & ( (\CPU|FSM|state|out\(2) & ((!\CPU|FSM|state|out\(1)) # (\CPU|FSM|state|out\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100000101010101010000010101110101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(2),
	datab => \CPU|instruction|ALT_INV_out\(14),
	datac => \CPU|FSM|state|ALT_INV_out\(1),
	datad => \CPU|FSM|state|ALT_INV_out\(0),
	datae => \CPU|instruction|ALT_INV_out\(15),
	dataf => \CPU|instruction|ALT_INV_out\(13),
	combout => \CPU|FSM|Mux2~2_combout\);

-- Location: LABCELL_X22_Y1_N42
\CPU|FSM|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux2~3_combout\ = ( !\CPU|FSM|state|out\(2) & ( !\CPU|FSM|state|out\(0) & ( \CPU|FSM|state|out\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|state|ALT_INV_out\(1),
	datae => \CPU|FSM|state|ALT_INV_out\(2),
	dataf => \CPU|FSM|state|ALT_INV_out\(0),
	combout => \CPU|FSM|Mux2~3_combout\);

-- Location: LABCELL_X19_Y1_N27
\CPU|FSM|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux2~0_combout\ = ( \CPU|FSM|state|out\(0) & ( \CPU|instruction|out\(14) & ( (!\CPU|FSM|state|out\(2) & ((!\CPU|instruction|out\(13) $ (\CPU|instruction|out\(15))) # (\CPU|FSM|state|out\(1)))) ) ) ) # ( !\CPU|FSM|state|out\(0) & ( 
-- \CPU|instruction|out\(14) & ( (!\CPU|FSM|state|out\(1) & !\CPU|FSM|state|out\(2)) ) ) ) # ( \CPU|FSM|state|out\(0) & ( !\CPU|instruction|out\(14) & ( (!\CPU|FSM|state|out\(2) & ((!\CPU|instruction|out\(15)) # (\CPU|FSM|state|out\(1)))) ) ) ) # ( 
-- !\CPU|FSM|state|out\(0) & ( !\CPU|instruction|out\(14) & ( (!\CPU|FSM|state|out\(1) & !\CPU|FSM|state|out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000111100000101000010100000101000001101000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(1),
	datab => \CPU|instruction|ALT_INV_out\(13),
	datac => \CPU|FSM|state|ALT_INV_out\(2),
	datad => \CPU|instruction|ALT_INV_out\(15),
	datae => \CPU|FSM|state|ALT_INV_out\(0),
	dataf => \CPU|instruction|ALT_INV_out\(14),
	combout => \CPU|FSM|Mux2~0_combout\);

-- Location: LABCELL_X18_Y1_N12
\CPU|FSM|next_state_reset[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_state_reset[2]~13_combout\ = ( !\CPU|FSM|state|out\(4) & ( (\KEY[1]~input_o\ & ((!\CPU|FSM|state|out\(3) & (((\CPU|FSM|Mux2~0_combout\)))) # (\CPU|FSM|state|out\(3) & (\CPU|FSM|Mux2~1_combout\)))) ) ) # ( \CPU|FSM|state|out\(4) & ( 
-- (\KEY[1]~input_o\ & (((!\CPU|FSM|state|out\(3) & (\CPU|FSM|Mux2~2_combout\)) # (\CPU|FSM|state|out\(3) & ((\CPU|FSM|Mux2~3_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100010001000001010000000000000101000100010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \CPU|FSM|ALT_INV_Mux2~1_combout\,
	datac => \CPU|FSM|ALT_INV_Mux2~2_combout\,
	datad => \CPU|FSM|state|ALT_INV_out\(3),
	datae => \CPU|FSM|state|ALT_INV_out\(4),
	dataf => \CPU|FSM|ALT_INV_Mux2~3_combout\,
	datag => \CPU|FSM|ALT_INV_Mux2~0_combout\,
	combout => \CPU|FSM|next_state_reset[2]~13_combout\);

-- Location: FF_X18_Y1_N14
\CPU|FSM|state|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|FSM|next_state_reset[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FSM|state|out\(2));

-- Location: LABCELL_X19_Y1_N48
\CPU|FSM|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux3~0_combout\ = ( !\CPU|FSM|state|out\(1) & ( (!\CPU|FSM|state|out\(0)) # (((!\CPU|instruction|out\(15) & ((!\CPU|instruction|out\(14)) # (!\CPU|instruction|out\(13)))) # (\CPU|instruction|out\(15) & ((\CPU|instruction|out\(13))))) # 
-- (\CPU|FSM|state|out\(3))) ) ) # ( \CPU|FSM|state|out\(1) & ( (!\CPU|FSM|state|out\(0)) # (((\CPU|instruction|out\(12) & ((!\CPU|FSM|state|out\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111101011101111101011111010111111111111111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(0),
	datab => \CPU|instruction|ALT_INV_out\(14),
	datac => \CPU|instruction|ALT_INV_out\(12),
	datad => \CPU|instruction|ALT_INV_out\(13),
	datae => \CPU|FSM|state|ALT_INV_out\(1),
	dataf => \CPU|FSM|state|ALT_INV_out\(3),
	datag => \CPU|instruction|ALT_INV_out\(15),
	combout => \CPU|FSM|Mux3~0_combout\);

-- Location: LABCELL_X22_Y1_N30
\CPU|FSM|next_state_reset[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_state_reset[1]~9_combout\ = ( !\CPU|FSM|state|out\(2) & ( (\KEY[1]~input_o\ & ((!\CPU|FSM|state|out\(4) & (((\CPU|FSM|Mux3~0_combout\)))) # (\CPU|FSM|state|out\(4) & (!\CPU|FSM|state|out\(0) $ ((!\CPU|FSM|state|out\(1))))))) ) ) # ( 
-- \CPU|FSM|state|out\(2) & ( (\KEY[1]~input_o\ & ((!\CPU|FSM|state|out\(3) & (\CPU|FSM|state|out\(0) & ((\CPU|FSM|state|out\(4))))) # (\CPU|FSM|state|out\(3) & (!\CPU|FSM|state|out\(4) & (!\CPU|FSM|state|out\(0) $ (!\CPU|FSM|state|out\(1))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001111011001100000011001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(0),
	datab => \CPU|FSM|state|ALT_INV_out\(1),
	datac => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|FSM|state|ALT_INV_out\(4),
	datae => \CPU|FSM|state|ALT_INV_out\(2),
	dataf => \ALT_INV_KEY[1]~input_o\,
	datag => \CPU|FSM|ALT_INV_Mux3~0_combout\,
	combout => \CPU|FSM|next_state_reset[1]~9_combout\);

-- Location: FF_X18_Y1_N38
\CPU|FSM|state|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|FSM|next_state_reset[1]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FSM|state|out\(1));

-- Location: MLABCELL_X21_Y2_N51
\CPU|FSM|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux4~2_combout\ = ( \CPU|FSM|state|out\(4) ) # ( !\CPU|FSM|state|out\(4) & ( (((\CPU|instruction|out\(12) & !\CPU|instruction|out\(11))) # (\CPU|FSM|state|out\(2))) # (\CPU|FSM|state|out\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111011111110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(1),
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|instruction|ALT_INV_out\(12),
	datad => \CPU|instruction|ALT_INV_out\(11),
	dataf => \CPU|FSM|state|ALT_INV_out\(4),
	combout => \CPU|FSM|Mux4~2_combout\);

-- Location: LABCELL_X19_Y3_N39
\CPU|FSM|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux4~3_combout\ = ( !\CPU|FSM|state|out\(1) & ( (!\CPU|FSM|state|out\(2) & (!\CPU|FSM|state|out\(4) & ((!\CPU|instruction|out\(15)) # ((!\CPU|instruction|out\(13)) # (\CPU|instruction|out\(14)))))) ) ) # ( \CPU|FSM|state|out\(1) & ( 
-- (!\CPU|FSM|state|out\(2) & (((\CPU|instruction|out\(11) & ((!\CPU|FSM|state|out\(4))))))) # (\CPU|FSM|state|out\(2) & ((((\CPU|FSM|state|out\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1010100010101010000010100000101000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(2),
	datab => \CPU|instruction|ALT_INV_out\(15),
	datac => \CPU|instruction|ALT_INV_out\(11),
	datad => \CPU|instruction|ALT_INV_out\(14),
	datae => \CPU|FSM|state|ALT_INV_out\(1),
	dataf => \CPU|FSM|state|ALT_INV_out\(4),
	datag => \CPU|instruction|ALT_INV_out\(13),
	combout => \CPU|FSM|Mux4~3_combout\);

-- Location: MLABCELL_X21_Y2_N36
\CPU|FSM|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux4~1_combout\ = ( \CPU|FSM|state|out\(4) & ( (!\CPU|FSM|state|out\(2) & !\CPU|FSM|state|out\(1)) ) ) # ( !\CPU|FSM|state|out\(4) & ( \CPU|FSM|state|out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|state|ALT_INV_out\(2),
	datac => \CPU|FSM|state|ALT_INV_out\(1),
	dataf => \CPU|FSM|state|ALT_INV_out\(4),
	combout => \CPU|FSM|Mux4~1_combout\);

-- Location: LABCELL_X17_Y1_N0
\CPU|FSM|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux4~0_combout\ = ( \CPU|FSM|state|out\(2) & ( (\CPU|FSM|state|out\(4) & !\CPU|FSM|state|out\(1)) ) ) # ( !\CPU|FSM|state|out\(2) & ( (\CPU|FSM|state|out\(1)) # (\CPU|FSM|state|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(4),
	datac => \CPU|FSM|state|ALT_INV_out\(1),
	dataf => \CPU|FSM|state|ALT_INV_out\(2),
	combout => \CPU|FSM|Mux4~0_combout\);

-- Location: LABCELL_X17_Y1_N54
\CPU|FSM|next_state_reset[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_state_reset[0]~1_combout\ = ( !\CPU|FSM|state|out\(0) & ( (\KEY[1]~input_o\ & (((!\CPU|FSM|state|out\(3) & (\CPU|FSM|Mux4~0_combout\)) # (\CPU|FSM|state|out\(3) & ((\CPU|FSM|Mux4~1_combout\)))))) ) ) # ( \CPU|FSM|state|out\(0) & ( 
-- (\KEY[1]~input_o\ & (((!\CPU|FSM|state|out\(3) & ((\CPU|FSM|Mux4~3_combout\))) # (\CPU|FSM|state|out\(3) & (!\CPU|FSM|Mux4~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010100000000010101010100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \CPU|FSM|ALT_INV_Mux4~2_combout\,
	datac => \CPU|FSM|ALT_INV_Mux4~3_combout\,
	datad => \CPU|FSM|ALT_INV_Mux4~1_combout\,
	datae => \CPU|FSM|state|ALT_INV_out\(0),
	dataf => \CPU|FSM|state|ALT_INV_out\(3),
	datag => \CPU|FSM|ALT_INV_Mux4~0_combout\,
	combout => \CPU|FSM|next_state_reset[0]~1_combout\);

-- Location: FF_X17_Y1_N56
\CPU|FSM|state|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|FSM|next_state_reset[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FSM|state|out\(0));

-- Location: LABCELL_X19_Y3_N57
\CPU|FSM|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux0~0_combout\ = ( \CPU|instruction|out\(15) & ( !\CPU|FSM|state|out\(2) & ( (!\CPU|FSM|state|out\(1) & (\CPU|FSM|state|out\(0) & (!\CPU|instruction|out\(13) $ (\CPU|instruction|out\(14))))) ) ) ) # ( !\CPU|instruction|out\(15) & ( 
-- !\CPU|FSM|state|out\(2) & ( (!\CPU|FSM|state|out\(1) & \CPU|FSM|state|out\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(1),
	datab => \CPU|FSM|state|ALT_INV_out\(0),
	datac => \CPU|instruction|ALT_INV_out\(13),
	datad => \CPU|instruction|ALT_INV_out\(14),
	datae => \CPU|instruction|ALT_INV_out\(15),
	dataf => \CPU|FSM|state|ALT_INV_out\(2),
	combout => \CPU|FSM|Mux0~0_combout\);

-- Location: MLABCELL_X21_Y3_N3
\CPU|FSM|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux0~1_combout\ = ( \CPU|FSM|Mux0~0_combout\ & ( \CPU|FSM|state|out\(4) & ( (!\CPU|FSM|state|out\(1) & (!\CPU|FSM|state|out\(2) $ (((!\CPU|FSM|state|out\(0) & !\CPU|FSM|state|out\(3)))))) # (\CPU|FSM|state|out\(1) & (!\CPU|FSM|state|out\(3) & 
-- ((!\CPU|FSM|state|out\(2)) # (\CPU|FSM|state|out\(0))))) ) ) ) # ( !\CPU|FSM|Mux0~0_combout\ & ( \CPU|FSM|state|out\(4) & ( (!\CPU|FSM|state|out\(1) & (!\CPU|FSM|state|out\(2) $ (((!\CPU|FSM|state|out\(0) & !\CPU|FSM|state|out\(3)))))) # 
-- (\CPU|FSM|state|out\(1) & (!\CPU|FSM|state|out\(3) & ((!\CPU|FSM|state|out\(2)) # (\CPU|FSM|state|out\(0))))) ) ) ) # ( \CPU|FSM|Mux0~0_combout\ & ( !\CPU|FSM|state|out\(4) & ( (!\CPU|FSM|state|out\(3)) # ((\CPU|FSM|state|out\(0) & (\CPU|FSM|state|out\(1) 
-- & \CPU|FSM|state|out\(2)))) ) ) ) # ( !\CPU|FSM|Mux0~0_combout\ & ( !\CPU|FSM|state|out\(4) & ( (\CPU|FSM|state|out\(0) & (\CPU|FSM|state|out\(1) & (\CPU|FSM|state|out\(2) & \CPU|FSM|state|out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111110000000101111001110000000111100111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FSM|state|ALT_INV_out\(0),
	datab => \CPU|FSM|state|ALT_INV_out\(1),
	datac => \CPU|FSM|state|ALT_INV_out\(2),
	datad => \CPU|FSM|state|ALT_INV_out\(3),
	datae => \CPU|FSM|ALT_INV_Mux0~0_combout\,
	dataf => \CPU|FSM|state|ALT_INV_out\(4),
	combout => \CPU|FSM|Mux0~1_combout\);

-- Location: LABCELL_X18_Y1_N57
\CPU|FSM|next_state_reset[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_state_reset[4]~0_combout\ = ( \CPU|FSM|Mux0~1_combout\ & ( \KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_KEY[1]~input_o\,
	dataf => \CPU|FSM|ALT_INV_Mux0~1_combout\,
	combout => \CPU|FSM|next_state_reset[4]~0_combout\);

-- Location: FF_X18_Y1_N59
\CPU|FSM|state|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|FSM|next_state_reset[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FSM|state|out\(4));

-- Location: MLABCELL_X21_Y3_N21
\CPU|FSM|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Decoder0~2_combout\ = ( \CPU|FSM|load_pc~0_combout\ & ( !\CPU|FSM|state|out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FSM|state|ALT_INV_out\(4),
	dataf => \CPU|FSM|ALT_INV_load_pc~0_combout\,
	combout => \CPU|FSM|Decoder0~2_combout\);

-- Location: FF_X22_Y1_N41
\CPU|ProgramCounter|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ProgramCounter|out[0]~_wirecell_combout\,
	sclr => \CPU|FSM|Decoder0~2_combout\,
	ena => \CPU|FSM|load_pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ProgramCounter|out\(0));

-- Location: MLABCELL_X21_Y3_N33
\CPU|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~13_sumout\ = SUM(( \CPU|ProgramCounter|out\(2) ) + ( GND ) + ( \CPU|Add0~10\ ))
-- \CPU|Add0~14\ = CARRY(( \CPU|ProgramCounter|out\(2) ) + ( GND ) + ( \CPU|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ProgramCounter|ALT_INV_out\(2),
	cin => \CPU|Add0~10\,
	sumout => \CPU|Add0~13_sumout\,
	cout => \CPU|Add0~14\);

-- Location: FF_X21_Y3_N34
\CPU|ProgramCounter|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~13_sumout\,
	sclr => \CPU|FSM|Decoder0~2_combout\,
	ena => \CPU|FSM|load_pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ProgramCounter|out\(2));

-- Location: MLABCELL_X21_Y3_N36
\CPU|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~17_sumout\ = SUM(( \CPU|ProgramCounter|out\(3) ) + ( GND ) + ( \CPU|Add0~14\ ))
-- \CPU|Add0~18\ = CARRY(( \CPU|ProgramCounter|out\(3) ) + ( GND ) + ( \CPU|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ProgramCounter|ALT_INV_out\(3),
	cin => \CPU|Add0~14\,
	sumout => \CPU|Add0~17_sumout\,
	cout => \CPU|Add0~18\);

-- Location: FF_X21_Y3_N37
\CPU|ProgramCounter|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~17_sumout\,
	sclr => \CPU|FSM|Decoder0~2_combout\,
	ena => \CPU|FSM|load_pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ProgramCounter|out\(3));

-- Location: MLABCELL_X21_Y3_N39
\CPU|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~21_sumout\ = SUM(( \CPU|ProgramCounter|out\(4) ) + ( GND ) + ( \CPU|Add0~18\ ))
-- \CPU|Add0~22\ = CARRY(( \CPU|ProgramCounter|out\(4) ) + ( GND ) + ( \CPU|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ProgramCounter|ALT_INV_out\(4),
	cin => \CPU|Add0~18\,
	sumout => \CPU|Add0~21_sumout\,
	cout => \CPU|Add0~22\);

-- Location: FF_X21_Y3_N41
\CPU|ProgramCounter|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~21_sumout\,
	sclr => \CPU|FSM|Decoder0~2_combout\,
	ena => \CPU|FSM|load_pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ProgramCounter|out\(4));

-- Location: MLABCELL_X21_Y3_N42
\CPU|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~25_sumout\ = SUM(( \CPU|ProgramCounter|out\(5) ) + ( GND ) + ( \CPU|Add0~22\ ))
-- \CPU|Add0~26\ = CARRY(( \CPU|ProgramCounter|out\(5) ) + ( GND ) + ( \CPU|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ProgramCounter|ALT_INV_out\(5),
	cin => \CPU|Add0~22\,
	sumout => \CPU|Add0~25_sumout\,
	cout => \CPU|Add0~26\);

-- Location: FF_X21_Y3_N43
\CPU|ProgramCounter|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~25_sumout\,
	sclr => \CPU|FSM|Decoder0~2_combout\,
	ena => \CPU|FSM|load_pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ProgramCounter|out\(5));

-- Location: MLABCELL_X21_Y3_N45
\CPU|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Add0~1_sumout\ = SUM(( \CPU|ProgramCounter|out\(6) ) + ( GND ) + ( \CPU|Add0~26\ ))
-- \CPU|Add0~2\ = CARRY(( \CPU|ProgramCounter|out\(6) ) + ( GND ) + ( \CPU|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ProgramCounter|ALT_INV_out\(6),
	cin => \CPU|Add0~26\,
	sumout => \CPU|Add0~1_sumout\,
	cout => \CPU|Add0~2\);

-- Location: FF_X21_Y3_N46
\CPU|ProgramCounter|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~1_sumout\,
	sclr => \CPU|FSM|Decoder0~2_combout\,
	ena => \CPU|FSM|load_pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ProgramCounter|out\(6));

-- Location: FF_X21_Y3_N50
\CPU|ProgramCounter|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|Add0~29_sumout\,
	sclr => \CPU|FSM|Decoder0~2_combout\,
	ena => \CPU|FSM|load_pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ProgramCounter|out\(7));

-- Location: FF_X21_Y1_N41
\CPU|dataAddr|out[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(7),
	sload => VCC,
	ena => \CPU|FSM|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|dataAddr|out[7]~DUPLICATE_q\);

-- Location: MLABCELL_X21_Y1_N36
\SWtristate|SWdriverout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SWtristate|SWdriverout~1_combout\ = ( \CPU|FSM|addr_sel~0_combout\ & ( (!\CPU|ProgramCounter|out\(7) & !\CPU|ProgramCounter|out\(5)) ) ) # ( !\CPU|FSM|addr_sel~0_combout\ & ( (!\CPU|dataAddr|out\(5) & !\CPU|dataAddr|out[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ProgramCounter|ALT_INV_out\(7),
	datab => \CPU|dataAddr|ALT_INV_out\(5),
	datac => \CPU|ProgramCounter|ALT_INV_out\(5),
	datad => \CPU|dataAddr|ALT_INV_out[7]~DUPLICATE_q\,
	dataf => \CPU|FSM|ALT_INV_addr_sel~0_combout\,
	combout => \SWtristate|SWdriverout~1_combout\);

-- Location: LABCELL_X19_Y1_N12
\read_data[14]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \read_data[14]~6_combout\ = ( \MEM|mem_rtl_0|auto_generated|ram_block1a14\ & ( (!\SWtristate|SWdriverout~1_combout\) # (((!\SWtristate|SWdriverout~2_combout\) # (!\SWtristate|SWdriverout~0_combout\)) # (\SW[7]~input_o\)) ) ) # ( 
-- !\MEM|mem_rtl_0|auto_generated|ram_block1a14\ & ( (\SWtristate|SWdriverout~1_combout\ & (\SW[7]~input_o\ & (\SWtristate|SWdriverout~2_combout\ & \SWtristate|SWdriverout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \SWtristate|ALT_INV_SWdriverout~2_combout\,
	datad => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	dataf => \MEM|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	combout => \read_data[14]~6_combout\);

-- Location: FF_X19_Y1_N14
\CPU|instruction|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \read_data[14]~6_combout\,
	ena => \CPU|FSM|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|instruction|out\(14));

-- Location: LABCELL_X19_Y3_N24
\CPU|FSM|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux1~3_combout\ = ( \CPU|FSM|state|out\(0) & ( \CPU|instruction|out\(13) & ( (((\CPU|instruction|out\(14) & !\CPU|instruction|out\(15))) # (\CPU|FSM|state|out\(2))) # (\CPU|FSM|state|out\(3)) ) ) ) # ( !\CPU|FSM|state|out\(0) & ( 
-- \CPU|instruction|out\(13) & ( (!\CPU|FSM|state|out\(3)) # (\CPU|FSM|state|out\(2)) ) ) ) # ( \CPU|FSM|state|out\(0) & ( !\CPU|instruction|out\(13) & ( (\CPU|FSM|state|out\(2)) # (\CPU|FSM|state|out\(3)) ) ) ) # ( !\CPU|FSM|state|out\(0) & ( 
-- !\CPU|instruction|out\(13) & ( (!\CPU|FSM|state|out\(3)) # (\CPU|FSM|state|out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111001111110011111111001111110011110111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(14),
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datac => \CPU|FSM|state|ALT_INV_out\(2),
	datad => \CPU|instruction|ALT_INV_out\(15),
	datae => \CPU|FSM|state|ALT_INV_out\(0),
	dataf => \CPU|instruction|ALT_INV_out\(13),
	combout => \CPU|FSM|Mux1~3_combout\);

-- Location: LABCELL_X19_Y1_N33
\CPU|FSM|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux1~2_combout\ = ( \CPU|FSM|state|out\(0) & ( !\CPU|FSM|state|out\(3) $ (!\CPU|FSM|state|out\(2)) ) ) # ( !\CPU|FSM|state|out\(0) & ( (\CPU|FSM|state|out\(3) & !\CPU|FSM|state|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|FSM|state|ALT_INV_out\(2),
	dataf => \CPU|FSM|state|ALT_INV_out\(0),
	combout => \CPU|FSM|Mux1~2_combout\);

-- Location: LABCELL_X19_Y3_N6
\CPU|FSM|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux1~1_combout\ = ( \CPU|FSM|state|out\(2) & ( \CPU|FSM|state|out\(0) & ( !\CPU|FSM|state|out\(3) ) ) ) # ( !\CPU|FSM|state|out\(2) & ( \CPU|FSM|state|out\(0) & ( \CPU|FSM|state|out\(3) ) ) ) # ( \CPU|FSM|state|out\(2) & ( !\CPU|FSM|state|out\(0) 
-- ) ) # ( !\CPU|FSM|state|out\(2) & ( !\CPU|FSM|state|out\(0) & ( \CPU|FSM|state|out\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FSM|state|ALT_INV_out\(3),
	datae => \CPU|FSM|state|ALT_INV_out\(2),
	dataf => \CPU|FSM|state|ALT_INV_out\(0),
	combout => \CPU|FSM|Mux1~1_combout\);

-- Location: LABCELL_X19_Y3_N51
\CPU|FSM|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|Mux1~0_combout\ = ( \CPU|FSM|state|out\(0) & ( \CPU|FSM|state|out\(2) ) ) # ( !\CPU|FSM|state|out\(0) & ( \CPU|FSM|state|out\(2) ) ) # ( \CPU|FSM|state|out\(0) & ( !\CPU|FSM|state|out\(2) & ( ((\CPU|instruction|out\(14) & 
-- (!\CPU|instruction|out\(13) & \CPU|instruction|out\(15)))) # (\CPU|FSM|state|out\(3)) ) ) ) # ( !\CPU|FSM|state|out\(0) & ( !\CPU|FSM|state|out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|instruction|ALT_INV_out\(14),
	datab => \CPU|instruction|ALT_INV_out\(13),
	datac => \CPU|FSM|state|ALT_INV_out\(3),
	datad => \CPU|instruction|ALT_INV_out\(15),
	datae => \CPU|FSM|state|ALT_INV_out\(0),
	dataf => \CPU|FSM|state|ALT_INV_out\(2),
	combout => \CPU|FSM|Mux1~0_combout\);

-- Location: LABCELL_X17_Y1_N18
\CPU|FSM|next_state_reset[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FSM|next_state_reset[3]~5_combout\ = ( !\CPU|FSM|state|out\(4) & ( (\KEY[1]~input_o\ & (((!\CPU|FSM|state|out\(1) & (\CPU|FSM|Mux1~0_combout\)) # (\CPU|FSM|state|out\(1) & ((\CPU|FSM|Mux1~1_combout\)))))) ) ) # ( \CPU|FSM|state|out\(4) & ( 
-- (\KEY[1]~input_o\ & (((!\CPU|FSM|state|out\(1) & ((\CPU|FSM|Mux1~2_combout\))) # (\CPU|FSM|state|out\(1) & (!\CPU|FSM|Mux1~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010100000000010101010100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \CPU|FSM|ALT_INV_Mux1~3_combout\,
	datac => \CPU|FSM|ALT_INV_Mux1~2_combout\,
	datad => \CPU|FSM|ALT_INV_Mux1~1_combout\,
	datae => \CPU|FSM|state|ALT_INV_out\(4),
	dataf => \CPU|FSM|state|ALT_INV_out\(1),
	datag => \CPU|FSM|ALT_INV_Mux1~0_combout\,
	combout => \CPU|FSM|next_state_reset[3]~5_combout\);

-- Location: FF_X17_Y1_N20
\CPU|FSM|state|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|FSM|next_state_reset[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FSM|state|out\(3));

-- Location: LABCELL_X22_Y2_N51
\CPU|DP|loadC|out[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|loadC|out[0]~feeder_combout\ = ( \CPU|DP|alu|addersubtractor|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|alu|addersubtractor|ALT_INV_Add0~1_sumout\,
	combout => \CPU|DP|loadC|out[0]~feeder_combout\);

-- Location: LABCELL_X22_Y2_N36
\CPU|DP|alu|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DP|alu|Selector15~0_combout\ = ( \CPU|DP|alu|Selector6~0_combout\ & ( (!\CPU|DP|Muxb|b[0]~0_combout\ & ((\CPU|DP|alu|Equal0~0_combout\))) # (\CPU|DP|Muxb|b[0]~0_combout\ & (\CPU|DP|loadA|out\(0))) ) ) # ( !\CPU|DP|alu|Selector6~0_combout\ & ( 
-- (\CPU|DP|alu|Equal0~0_combout\ & !\CPU|DP|Muxb|b[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DP|loadA|ALT_INV_out\(0),
	datab => \CPU|DP|alu|ALT_INV_Equal0~0_combout\,
	datac => \CPU|DP|Muxb|ALT_INV_b[0]~0_combout\,
	dataf => \CPU|DP|alu|ALT_INV_Selector6~0_combout\,
	combout => \CPU|DP|alu|Selector15~0_combout\);

-- Location: FF_X22_Y2_N52
\CPU|DP|loadC|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|DP|loadC|out[0]~feeder_combout\,
	asdata => \CPU|DP|alu|Selector15~0_combout\,
	sload => \CPU|instruction|out\(12),
	ena => \CPU|FSM|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|DP|loadC|out\(0));

-- Location: LABCELL_X22_Y1_N54
\LEDtristate|LEDdriverout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDtristate|LEDdriverout~0_combout\ = ( \SWtristate|SWdriverout~1_combout\ & ( (!\CPU|ADDR_MUX|b[6]~0_combout\ & (!\CPU|FSM|WideOr7~0_combout\ & (\SWtristate|SWdriverout~0_combout\ & \CPU|FSM|Decoder0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ADDR_MUX|ALT_INV_b[6]~0_combout\,
	datab => \CPU|FSM|ALT_INV_WideOr7~0_combout\,
	datac => \SWtristate|ALT_INV_SWdriverout~0_combout\,
	datad => \CPU|FSM|ALT_INV_Decoder0~0_combout\,
	dataf => \SWtristate|ALT_INV_SWdriverout~1_combout\,
	combout => \LEDtristate|LEDdriverout~0_combout\);

-- Location: FF_X22_Y1_N52
\LEDreg|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(0),
	sload => VCC,
	ena => \LEDtristate|LEDdriverout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDreg|out\(0));

-- Location: LABCELL_X22_Y1_N18
\LEDreg|out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDreg|out[1]~feeder_combout\ = ( \CPU|DP|loadC|out\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|loadC|ALT_INV_out\(1),
	combout => \LEDreg|out[1]~feeder_combout\);

-- Location: FF_X22_Y1_N19
\LEDreg|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \LEDreg|out[1]~feeder_combout\,
	ena => \LEDtristate|LEDdriverout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDreg|out\(1));

-- Location: LABCELL_X22_Y1_N12
\LEDreg|out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDreg|out[2]~feeder_combout\ = ( \CPU|DP|loadC|out\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|loadC|ALT_INV_out\(2),
	combout => \LEDreg|out[2]~feeder_combout\);

-- Location: FF_X22_Y1_N13
\LEDreg|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \LEDreg|out[2]~feeder_combout\,
	ena => \LEDtristate|LEDdriverout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDreg|out\(2));

-- Location: FF_X22_Y1_N58
\LEDreg|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(3),
	sload => VCC,
	ena => \LEDtristate|LEDdriverout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDreg|out\(3));

-- Location: LABCELL_X22_Y1_N15
\LEDreg|out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDreg|out[4]~feeder_combout\ = ( \CPU|DP|loadC|out\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|loadC|ALT_INV_out\(4),
	combout => \LEDreg|out[4]~feeder_combout\);

-- Location: FF_X22_Y1_N16
\LEDreg|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \LEDreg|out[4]~feeder_combout\,
	ena => \LEDtristate|LEDdriverout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDreg|out\(4));

-- Location: LABCELL_X22_Y1_N21
\LEDreg|out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDreg|out[5]~feeder_combout\ = ( \CPU|DP|loadC|out\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|DP|loadC|ALT_INV_out\(5),
	combout => \LEDreg|out[5]~feeder_combout\);

-- Location: FF_X22_Y1_N22
\LEDreg|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \LEDreg|out[5]~feeder_combout\,
	ena => \LEDtristate|LEDdriverout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDreg|out\(5));

-- Location: FF_X22_Y1_N49
\LEDreg|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(6),
	sload => VCC,
	ena => \LEDtristate|LEDdriverout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDreg|out\(6));

-- Location: FF_X22_Y1_N55
\LEDreg|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|DP|loadC|out\(7),
	sload => VCC,
	ena => \LEDtristate|LEDdriverout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDreg|out\(7));

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

-- Location: MLABCELL_X87_Y9_N0
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



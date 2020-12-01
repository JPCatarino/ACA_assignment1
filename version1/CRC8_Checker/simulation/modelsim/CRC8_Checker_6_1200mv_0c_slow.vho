-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "11/27/2020 18:37:48"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CRC8_Checker IS
    PORT (
	dIn : IN std_logic_vector(23 DOWNTO 0);
	dOut : OUT std_logic
	);
END CRC8_Checker;

-- Design Ports Information
-- dOut	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[15]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[16]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[11]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[13]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[17]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[18]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[23]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[8]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[20]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[19]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[10]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[12]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[22]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[14]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[7]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[21]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CRC8_Checker IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dIn : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_dOut : std_logic;
SIGNAL \dOut~output_o\ : std_logic;
SIGNAL \dIn[7]~input_o\ : std_logic;
SIGNAL \dIn[5]~input_o\ : std_logic;
SIGNAL \dIn[20]~input_o\ : std_logic;
SIGNAL \dIn[12]~input_o\ : std_logic;
SIGNAL \dIn[8]~input_o\ : std_logic;
SIGNAL \dIn[13]~input_o\ : std_logic;
SIGNAL \remainder[5]~9_combout\ : std_logic;
SIGNAL \remainder[5]~10_combout\ : std_logic;
SIGNAL \dIn[22]~input_o\ : std_logic;
SIGNAL \dIn[18]~input_o\ : std_logic;
SIGNAL \dIn[19]~input_o\ : std_logic;
SIGNAL \remainder[7]~5_combout\ : std_logic;
SIGNAL \dIn[14]~input_o\ : std_logic;
SIGNAL \dIn[10]~input_o\ : std_logic;
SIGNAL \dIn[16]~input_o\ : std_logic;
SIGNAL \dIn[15]~input_o\ : std_logic;
SIGNAL \remainder[0]~0_combout\ : std_logic;
SIGNAL \dIn[17]~input_o\ : std_logic;
SIGNAL \remainder[7]~8_combout\ : std_logic;
SIGNAL \dOut~0_combout\ : std_logic;
SIGNAL \dIn[11]~input_o\ : std_logic;
SIGNAL \dIn[23]~input_o\ : std_logic;
SIGNAL \dIn[2]~input_o\ : std_logic;
SIGNAL \remainder[2]~6_combout\ : std_logic;
SIGNAL \dIn[9]~input_o\ : std_logic;
SIGNAL \remainder[2]~4_combout\ : std_logic;
SIGNAL \remainder[2]~7_combout\ : std_logic;
SIGNAL \dIn[3]~input_o\ : std_logic;
SIGNAL \dIn[21]~input_o\ : std_logic;
SIGNAL \remainder[3]~16_combout\ : std_logic;
SIGNAL \dIn[1]~input_o\ : std_logic;
SIGNAL \remainder[1]~12_combout\ : std_logic;
SIGNAL \remainder[1]~11_combout\ : std_logic;
SIGNAL \remainder[1]~13_combout\ : std_logic;
SIGNAL \remainder[0]~1_combout\ : std_logic;
SIGNAL \dIn[6]~input_o\ : std_logic;
SIGNAL \remainder[6]~14_combout\ : std_logic;
SIGNAL \dIn[4]~input_o\ : std_logic;
SIGNAL \remainder[4]~15_combout\ : std_logic;
SIGNAL \dOut~1_combout\ : std_logic;
SIGNAL \dOut~2_combout\ : std_logic;
SIGNAL \dIn[0]~input_o\ : std_logic;
SIGNAL \remainder[0]~2_combout\ : std_logic;
SIGNAL \remainder[0]~3_combout\ : std_logic;
SIGNAL \dOut~3_combout\ : std_logic;
SIGNAL \ALT_INV_dOut~3_combout\ : std_logic;

BEGIN

ww_dIn <= dIn;
dOut <= ww_dOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_dOut~3_combout\ <= NOT \dOut~3_combout\;

-- Location: IOOBUF_X33_Y10_N9
\dOut~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_dOut~3_combout\,
	devoe => ww_devoe,
	o => \dOut~output_o\);

-- Location: IOIBUF_X33_Y10_N1
\dIn[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(7),
	o => \dIn[7]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\dIn[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(5),
	o => \dIn[5]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\dIn[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(20),
	o => \dIn[20]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\dIn[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(12),
	o => \dIn[12]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\dIn[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(8),
	o => \dIn[8]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\dIn[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(13),
	o => \dIn[13]~input_o\);

-- Location: LCCOMB_X30_Y18_N24
\remainder[5]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[5]~9_combout\ = \dIn[20]~input_o\ $ (\dIn[12]~input_o\ $ (\dIn[8]~input_o\ $ (\dIn[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[20]~input_o\,
	datab => \dIn[12]~input_o\,
	datac => \dIn[8]~input_o\,
	datad => \dIn[13]~input_o\,
	combout => \remainder[5]~9_combout\);

-- Location: LCCOMB_X29_Y14_N24
\remainder[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[5]~10_combout\ = \dIn[5]~input_o\ $ (\remainder[5]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn[5]~input_o\,
	datad => \remainder[5]~9_combout\,
	combout => \remainder[5]~10_combout\);

-- Location: IOIBUF_X33_Y22_N1
\dIn[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(22),
	o => \dIn[22]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\dIn[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(18),
	o => \dIn[18]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\dIn[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(19),
	o => \dIn[19]~input_o\);

-- Location: LCCOMB_X30_Y18_N18
\remainder[7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[7]~5_combout\ = \dIn[22]~input_o\ $ (\dIn[12]~input_o\ $ (\dIn[18]~input_o\ $ (\dIn[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[22]~input_o\,
	datab => \dIn[12]~input_o\,
	datac => \dIn[18]~input_o\,
	datad => \dIn[19]~input_o\,
	combout => \remainder[7]~5_combout\);

-- Location: IOIBUF_X26_Y0_N8
\dIn[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(14),
	o => \dIn[14]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\dIn[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(10),
	o => \dIn[10]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\dIn[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(16),
	o => \dIn[16]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\dIn[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(15),
	o => \dIn[15]~input_o\);

-- Location: LCCOMB_X30_Y18_N8
\remainder[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[0]~0_combout\ = \dIn[16]~input_o\ $ (\dIn[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn[16]~input_o\,
	datac => \dIn[15]~input_o\,
	combout => \remainder[0]~0_combout\);

-- Location: IOIBUF_X33_Y22_N8
\dIn[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(17),
	o => \dIn[17]~input_o\);

-- Location: LCCOMB_X30_Y18_N22
\remainder[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[7]~8_combout\ = \dIn[14]~input_o\ $ (\dIn[10]~input_o\ $ (\remainder[0]~0_combout\ $ (\dIn[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[14]~input_o\,
	datab => \dIn[10]~input_o\,
	datac => \remainder[0]~0_combout\,
	datad => \dIn[17]~input_o\,
	combout => \remainder[7]~8_combout\);

-- Location: LCCOMB_X29_Y14_N10
\dOut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dOut~0_combout\ = (\remainder[5]~10_combout\ & ((\dIn[7]~input_o\ $ (!\remainder[7]~5_combout\)) # (!\remainder[7]~8_combout\))) # (!\remainder[5]~10_combout\ & ((\remainder[7]~8_combout\) # (\dIn[7]~input_o\ $ (\remainder[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[7]~input_o\,
	datab => \remainder[5]~10_combout\,
	datac => \remainder[7]~5_combout\,
	datad => \remainder[7]~8_combout\,
	combout => \dOut~0_combout\);

-- Location: IOIBUF_X33_Y12_N1
\dIn[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(11),
	o => \dIn[11]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\dIn[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(23),
	o => \dIn[23]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\dIn[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(2),
	o => \dIn[2]~input_o\);

-- Location: LCCOMB_X27_Y15_N16
\remainder[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[2]~6_combout\ = \dIn[14]~input_o\ $ (\dIn[11]~input_o\ $ (\dIn[23]~input_o\ $ (\dIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[14]~input_o\,
	datab => \dIn[11]~input_o\,
	datac => \dIn[23]~input_o\,
	datad => \dIn[2]~input_o\,
	combout => \remainder[2]~6_combout\);

-- Location: IOIBUF_X29_Y31_N8
\dIn[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(9),
	o => \dIn[9]~input_o\);

-- Location: LCCOMB_X30_Y18_N0
\remainder[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[2]~4_combout\ = \dIn[9]~input_o\ $ (\dIn[10]~input_o\ $ (\dIn[8]~input_o\ $ (\dIn[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[9]~input_o\,
	datab => \dIn[10]~input_o\,
	datac => \dIn[8]~input_o\,
	datad => \dIn[17]~input_o\,
	combout => \remainder[2]~4_combout\);

-- Location: LCCOMB_X30_Y18_N20
\remainder[2]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[2]~7_combout\ = \dIn[20]~input_o\ $ (\remainder[7]~5_combout\ $ (\remainder[2]~6_combout\ $ (\remainder[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[20]~input_o\,
	datab => \remainder[7]~5_combout\,
	datac => \remainder[2]~6_combout\,
	datad => \remainder[2]~4_combout\,
	combout => \remainder[2]~7_combout\);

-- Location: IOIBUF_X33_Y16_N22
\dIn[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(3),
	o => \dIn[3]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\dIn[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(21),
	o => \dIn[21]~input_o\);

-- Location: LCCOMB_X30_Y18_N12
\remainder[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[3]~16_combout\ = \dIn[3]~input_o\ $ (\dIn[12]~input_o\ $ (\dIn[21]~input_o\ $ (\dIn[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[3]~input_o\,
	datab => \dIn[12]~input_o\,
	datac => \dIn[21]~input_o\,
	datad => \dIn[16]~input_o\,
	combout => \remainder[3]~16_combout\);

-- Location: IOIBUF_X33_Y11_N1
\dIn[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(1),
	o => \dIn[1]~input_o\);

-- Location: LCCOMB_X27_Y15_N26
\remainder[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[1]~12_combout\ = \dIn[14]~input_o\ $ (\dIn[1]~input_o\ $ (\dIn[23]~input_o\ $ (\dIn[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[14]~input_o\,
	datab => \dIn[1]~input_o\,
	datac => \dIn[23]~input_o\,
	datad => \dIn[11]~input_o\,
	combout => \remainder[1]~12_combout\);

-- Location: LCCOMB_X30_Y18_N2
\remainder[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[1]~11_combout\ = \dIn[9]~input_o\ $ (\dIn[12]~input_o\ $ (\dIn[8]~input_o\ $ (\dIn[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[9]~input_o\,
	datab => \dIn[12]~input_o\,
	datac => \dIn[8]~input_o\,
	datad => \dIn[13]~input_o\,
	combout => \remainder[1]~11_combout\);

-- Location: LCCOMB_X30_Y18_N28
\remainder[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[1]~13_combout\ = \remainder[1]~12_combout\ $ (\dIn[15]~input_o\ $ (\dIn[21]~input_o\ $ (\remainder[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder[1]~12_combout\,
	datab => \dIn[15]~input_o\,
	datac => \dIn[21]~input_o\,
	datad => \remainder[1]~11_combout\,
	combout => \remainder[1]~13_combout\);

-- Location: LCCOMB_X30_Y18_N26
\remainder[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[0]~1_combout\ = \dIn[11]~input_o\ $ (\dIn[13]~input_o\ $ (\dIn[18]~input_o\ $ (\dIn[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[11]~input_o\,
	datab => \dIn[13]~input_o\,
	datac => \dIn[18]~input_o\,
	datad => \dIn[17]~input_o\,
	combout => \remainder[0]~1_combout\);

-- Location: IOIBUF_X33_Y24_N1
\dIn[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(6),
	o => \dIn[6]~input_o\);

-- Location: LCCOMB_X30_Y18_N30
\remainder[6]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[6]~14_combout\ = \dIn[14]~input_o\ $ (\dIn[6]~input_o\ $ (\dIn[21]~input_o\ $ (\dIn[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[14]~input_o\,
	datab => \dIn[6]~input_o\,
	datac => \dIn[21]~input_o\,
	datad => \dIn[9]~input_o\,
	combout => \remainder[6]~14_combout\);

-- Location: IOIBUF_X29_Y31_N1
\dIn[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(4),
	o => \dIn[4]~input_o\);

-- Location: LCCOMB_X30_Y18_N16
\remainder[4]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[4]~15_combout\ = \dIn[4]~input_o\ $ (\dIn[10]~input_o\ $ (\dIn[22]~input_o\ $ (\dIn[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[4]~input_o\,
	datab => \dIn[10]~input_o\,
	datac => \dIn[22]~input_o\,
	datad => \dIn[9]~input_o\,
	combout => \remainder[4]~15_combout\);

-- Location: LCCOMB_X30_Y18_N10
\dOut~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dOut~1_combout\ = (\remainder[0]~1_combout\ & ((\remainder[0]~0_combout\ $ (!\remainder[6]~14_combout\)) # (!\remainder[4]~15_combout\))) # (!\remainder[0]~1_combout\ & ((\remainder[4]~15_combout\) # (\remainder[0]~0_combout\ $ 
-- (\remainder[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder[0]~1_combout\,
	datab => \remainder[0]~0_combout\,
	datac => \remainder[6]~14_combout\,
	datad => \remainder[4]~15_combout\,
	combout => \dOut~1_combout\);

-- Location: LCCOMB_X30_Y18_N14
\dOut~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dOut~2_combout\ = (\remainder[1]~13_combout\) # ((\dOut~1_combout\) # (\remainder[3]~16_combout\ $ (\remainder[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder[3]~16_combout\,
	datab => \remainder[2]~4_combout\,
	datac => \remainder[1]~13_combout\,
	datad => \dOut~1_combout\,
	combout => \dOut~2_combout\);

-- Location: IOIBUF_X33_Y25_N8
\dIn[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(0),
	o => \dIn[0]~input_o\);

-- Location: LCCOMB_X30_Y18_N4
\remainder[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[0]~2_combout\ = \dIn[20]~input_o\ $ (\dIn[0]~input_o\ $ (\dIn[8]~input_o\ $ (\dIn[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[20]~input_o\,
	datab => \dIn[0]~input_o\,
	datac => \dIn[8]~input_o\,
	datad => \dIn[19]~input_o\,
	combout => \remainder[0]~2_combout\);

-- Location: LCCOMB_X30_Y18_N6
\remainder[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder[0]~3_combout\ = \remainder[0]~1_combout\ $ (\remainder[0]~2_combout\ $ (\remainder[0]~0_combout\ $ (\dIn[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder[0]~1_combout\,
	datab => \remainder[0]~2_combout\,
	datac => \remainder[0]~0_combout\,
	datad => \dIn[23]~input_o\,
	combout => \remainder[0]~3_combout\);

-- Location: LCCOMB_X29_Y14_N4
\dOut~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dOut~3_combout\ = (\dOut~0_combout\) # ((\remainder[2]~7_combout\) # ((\dOut~2_combout\) # (\remainder[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dOut~0_combout\,
	datab => \remainder[2]~7_combout\,
	datac => \dOut~2_combout\,
	datad => \remainder[0]~3_combout\,
	combout => \dOut~3_combout\);

ww_dOut <= \dOut~output_o\;
END structure;



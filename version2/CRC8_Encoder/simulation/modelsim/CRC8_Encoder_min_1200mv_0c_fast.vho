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

-- DATE "12/08/2020 16:27:11"

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

ENTITY 	CRC8_Encoder IS
    PORT (
	dIn : IN std_logic_vector(15 DOWNTO 0);
	dOut : OUT std_logic_vector(23 DOWNTO 0)
	);
END CRC8_Encoder;

-- Design Ports Information
-- dOut[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[3]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[8]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[11]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[12]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[13]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[14]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[15]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[16]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[17]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[18]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[19]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[20]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[21]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[22]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[23]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[15]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[11]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[12]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[10]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[9]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[13]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[4]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[14]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CRC8_Encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dIn : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dOut : std_logic_vector(23 DOWNTO 0);
SIGNAL \dOut[0]~output_o\ : std_logic;
SIGNAL \dOut[1]~output_o\ : std_logic;
SIGNAL \dOut[2]~output_o\ : std_logic;
SIGNAL \dOut[3]~output_o\ : std_logic;
SIGNAL \dOut[4]~output_o\ : std_logic;
SIGNAL \dOut[5]~output_o\ : std_logic;
SIGNAL \dOut[6]~output_o\ : std_logic;
SIGNAL \dOut[7]~output_o\ : std_logic;
SIGNAL \dOut[8]~output_o\ : std_logic;
SIGNAL \dOut[9]~output_o\ : std_logic;
SIGNAL \dOut[10]~output_o\ : std_logic;
SIGNAL \dOut[11]~output_o\ : std_logic;
SIGNAL \dOut[12]~output_o\ : std_logic;
SIGNAL \dOut[13]~output_o\ : std_logic;
SIGNAL \dOut[14]~output_o\ : std_logic;
SIGNAL \dOut[15]~output_o\ : std_logic;
SIGNAL \dOut[16]~output_o\ : std_logic;
SIGNAL \dOut[17]~output_o\ : std_logic;
SIGNAL \dOut[18]~output_o\ : std_logic;
SIGNAL \dOut[19]~output_o\ : std_logic;
SIGNAL \dOut[20]~output_o\ : std_logic;
SIGNAL \dOut[21]~output_o\ : std_logic;
SIGNAL \dOut[22]~output_o\ : std_logic;
SIGNAL \dOut[23]~output_o\ : std_logic;
SIGNAL \dIn[10]~input_o\ : std_logic;
SIGNAL \dIn[9]~input_o\ : std_logic;
SIGNAL \dIn[8]~input_o\ : std_logic;
SIGNAL \xorPorta1a10|y~combout\ : std_logic;
SIGNAL \dIn[3]~input_o\ : std_logic;
SIGNAL \dIn[5]~input_o\ : std_logic;
SIGNAL \xorPorta4|y~combout\ : std_logic;
SIGNAL \dIn[7]~input_o\ : std_logic;
SIGNAL \dIn[12]~input_o\ : std_logic;
SIGNAL \dIn[11]~input_o\ : std_logic;
SIGNAL \dIn[15]~input_o\ : std_logic;
SIGNAL \dIn[0]~input_o\ : std_logic;
SIGNAL \xorPorta57|y~0_combout\ : std_logic;
SIGNAL \xorRemainder0|y~0_combout\ : std_logic;
SIGNAL \dIn[1]~input_o\ : std_logic;
SIGNAL \dIn[13]~input_o\ : std_logic;
SIGNAL \xorPorta8|y~combout\ : std_logic;
SIGNAL \dIn[6]~input_o\ : std_logic;
SIGNAL \xorPorta248|y~combout\ : std_logic;
SIGNAL \dIn[4]~input_o\ : std_logic;
SIGNAL \xorRemainder1|y~combout\ : std_logic;
SIGNAL \dIn[2]~input_o\ : std_logic;
SIGNAL \xorRemainder2|y~0_combout\ : std_logic;
SIGNAL \dIn[14]~input_o\ : std_logic;
SIGNAL \xorPorta69|y~0_combout\ : std_logic;
SIGNAL \xorRemainder2|y~1_combout\ : std_logic;
SIGNAL \xorPorta13|y~combout\ : std_logic;
SIGNAL \xorRemainder3|y~combout\ : std_logic;
SIGNAL \xorRemainder4|y~combout\ : std_logic;
SIGNAL \xorPorta132|y~combout\ : std_logic;
SIGNAL \xorRemainder5|y~combout\ : std_logic;
SIGNAL \xorRemainder6|y~combout\ : std_logic;
SIGNAL \xorRemainder7|y~combout\ : std_logic;

BEGIN

ww_dIn <= dIn;
dOut <= ww_dOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X33_Y24_N9
\dOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder0|y~0_combout\,
	devoe => ww_devoe,
	o => \dOut[0]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\dOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder1|y~combout\,
	devoe => ww_devoe,
	o => \dOut[1]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\dOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder2|y~1_combout\,
	devoe => ww_devoe,
	o => \dOut[2]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\dOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder3|y~combout\,
	devoe => ww_devoe,
	o => \dOut[3]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\dOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder4|y~combout\,
	devoe => ww_devoe,
	o => \dOut[4]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\dOut[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder5|y~combout\,
	devoe => ww_devoe,
	o => \dOut[5]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\dOut[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder6|y~combout\,
	devoe => ww_devoe,
	o => \dOut[6]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\dOut[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xorRemainder7|y~combout\,
	devoe => ww_devoe,
	o => \dOut[7]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\dOut[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[0]~input_o\,
	devoe => ww_devoe,
	o => \dOut[8]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\dOut[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[1]~input_o\,
	devoe => ww_devoe,
	o => \dOut[9]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\dOut[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[2]~input_o\,
	devoe => ww_devoe,
	o => \dOut[10]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\dOut[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[3]~input_o\,
	devoe => ww_devoe,
	o => \dOut[11]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\dOut[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[4]~input_o\,
	devoe => ww_devoe,
	o => \dOut[12]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\dOut[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[5]~input_o\,
	devoe => ww_devoe,
	o => \dOut[13]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\dOut[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[6]~input_o\,
	devoe => ww_devoe,
	o => \dOut[14]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\dOut[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[7]~input_o\,
	devoe => ww_devoe,
	o => \dOut[15]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\dOut[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[8]~input_o\,
	devoe => ww_devoe,
	o => \dOut[16]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\dOut[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[9]~input_o\,
	devoe => ww_devoe,
	o => \dOut[17]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\dOut[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[10]~input_o\,
	devoe => ww_devoe,
	o => \dOut[18]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\dOut[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[11]~input_o\,
	devoe => ww_devoe,
	o => \dOut[19]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\dOut[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[12]~input_o\,
	devoe => ww_devoe,
	o => \dOut[20]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\dOut[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[13]~input_o\,
	devoe => ww_devoe,
	o => \dOut[21]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\dOut[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[14]~input_o\,
	devoe => ww_devoe,
	o => \dOut[22]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\dOut[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[15]~input_o\,
	devoe => ww_devoe,
	o => \dOut[23]~output_o\);

-- Location: IOIBUF_X26_Y0_N1
\dIn[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(10),
	o => \dIn[10]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\dIn[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(9),
	o => \dIn[9]~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\dIn[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(8),
	o => \dIn[8]~input_o\);

-- Location: LCCOMB_X32_Y16_N12
\xorPorta1a10|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorPorta1a10|y~combout\ = \dIn[10]~input_o\ $ (\dIn[9]~input_o\ $ (\dIn[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[10]~input_o\,
	datab => \dIn[9]~input_o\,
	datac => \dIn[8]~input_o\,
	combout => \xorPorta1a10|y~combout\);

-- Location: IOIBUF_X31_Y31_N1
\dIn[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(3),
	o => \dIn[3]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\dIn[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(5),
	o => \dIn[5]~input_o\);

-- Location: LCCOMB_X32_Y16_N18
\xorPorta4|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorPorta4|y~combout\ = \dIn[3]~input_o\ $ (\dIn[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[3]~input_o\,
	datad => \dIn[5]~input_o\,
	combout => \xorPorta4|y~combout\);

-- Location: IOIBUF_X26_Y31_N8
\dIn[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(7),
	o => \dIn[7]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\dIn[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(12),
	o => \dIn[12]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\dIn[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(11),
	o => \dIn[11]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\dIn[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(15),
	o => \dIn[15]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\dIn[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(0),
	o => \dIn[0]~input_o\);

-- Location: LCCOMB_X32_Y16_N8
\xorPorta57|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorPorta57|y~0_combout\ = \dIn[12]~input_o\ $ (\dIn[11]~input_o\ $ (\dIn[15]~input_o\ $ (\dIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[12]~input_o\,
	datab => \dIn[11]~input_o\,
	datac => \dIn[15]~input_o\,
	datad => \dIn[0]~input_o\,
	combout => \xorPorta57|y~0_combout\);

-- Location: LCCOMB_X32_Y16_N14
\xorRemainder0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorRemainder0|y~0_combout\ = \xorPorta1a10|y~combout\ $ (\xorPorta4|y~combout\ $ (\dIn[7]~input_o\ $ (\xorPorta57|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xorPorta1a10|y~combout\,
	datab => \xorPorta4|y~combout\,
	datac => \dIn[7]~input_o\,
	datad => \xorPorta57|y~0_combout\,
	combout => \xorRemainder0|y~0_combout\);

-- Location: IOIBUF_X29_Y31_N1
\dIn[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(1),
	o => \dIn[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\dIn[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(13),
	o => \dIn[13]~input_o\);

-- Location: LCCOMB_X32_Y16_N0
\xorPorta8|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorPorta8|y~combout\ = \dIn[1]~input_o\ $ (\dIn[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dIn[1]~input_o\,
	datad => \dIn[13]~input_o\,
	combout => \xorPorta8|y~combout\);

-- Location: IOIBUF_X33_Y27_N8
\dIn[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(6),
	o => \dIn[6]~input_o\);

-- Location: LCCOMB_X32_Y16_N10
\xorPorta248|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorPorta248|y~combout\ = \xorPorta4|y~combout\ $ (\xorPorta8|y~combout\ $ (\dIn[7]~input_o\ $ (\dIn[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xorPorta4|y~combout\,
	datab => \xorPorta8|y~combout\,
	datac => \dIn[7]~input_o\,
	datad => \dIn[6]~input_o\,
	combout => \xorPorta248|y~combout\);

-- Location: IOIBUF_X31_Y0_N8
\dIn[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(4),
	o => \dIn[4]~input_o\);

-- Location: LCCOMB_X32_Y16_N28
\xorRemainder1|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorRemainder1|y~combout\ = \xorPorta248|y~combout\ $ (\dIn[4]~input_o\ $ (\dIn[15]~input_o\ $ (\dIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xorPorta248|y~combout\,
	datab => \dIn[4]~input_o\,
	datac => \dIn[15]~input_o\,
	datad => \dIn[0]~input_o\,
	combout => \xorRemainder1|y~combout\);

-- Location: IOIBUF_X22_Y31_N1
\dIn[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(2),
	o => \dIn[2]~input_o\);

-- Location: LCCOMB_X32_Y16_N24
\xorRemainder2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorRemainder2|y~0_combout\ = \dIn[3]~input_o\ $ (\dIn[4]~input_o\ $ (\dIn[2]~input_o\ $ (\dIn[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[3]~input_o\,
	datab => \dIn[4]~input_o\,
	datac => \dIn[2]~input_o\,
	datad => \dIn[6]~input_o\,
	combout => \xorRemainder2|y~0_combout\);

-- Location: IOIBUF_X33_Y10_N1
\dIn[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(14),
	o => \dIn[14]~input_o\);

-- Location: LCCOMB_X32_Y16_N6
\xorPorta69|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorPorta69|y~0_combout\ = \dIn[10]~input_o\ $ (\dIn[1]~input_o\ $ (\dIn[9]~input_o\ $ (\dIn[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[10]~input_o\,
	datab => \dIn[1]~input_o\,
	datac => \dIn[9]~input_o\,
	datad => \dIn[14]~input_o\,
	combout => \xorPorta69|y~0_combout\);

-- Location: LCCOMB_X31_Y16_N24
\xorRemainder2|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorRemainder2|y~1_combout\ = \xorRemainder2|y~0_combout\ $ (\xorPorta57|y~0_combout\ $ (\xorPorta69|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xorRemainder2|y~0_combout\,
	datac => \xorPorta57|y~0_combout\,
	datad => \xorPorta69|y~0_combout\,
	combout => \xorRemainder2|y~1_combout\);

-- Location: LCCOMB_X32_Y16_N26
\xorPorta13|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorPorta13|y~combout\ = \dIn[8]~input_o\ $ (\dIn[9]~input_o\ $ (\dIn[2]~input_o\ $ (\dIn[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[8]~input_o\,
	datab => \dIn[9]~input_o\,
	datac => \dIn[2]~input_o\,
	datad => \dIn[4]~input_o\,
	combout => \xorPorta13|y~combout\);

-- Location: LCCOMB_X32_Y16_N2
\xorRemainder3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorRemainder3|y~combout\ = \xorPorta13|y~combout\ $ (\dIn[13]~input_o\ $ (\dIn[1]~input_o\ $ (\dIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xorPorta13|y~combout\,
	datab => \dIn[13]~input_o\,
	datac => \dIn[1]~input_o\,
	datad => \dIn[0]~input_o\,
	combout => \xorRemainder3|y~combout\);

-- Location: LCCOMB_X32_Y16_N4
\xorRemainder4|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorRemainder4|y~combout\ = \dIn[3]~input_o\ $ (\xorPorta69|y~0_combout\ $ (\dIn[2]~input_o\ $ (\dIn[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[3]~input_o\,
	datab => \xorPorta69|y~0_combout\,
	datac => \dIn[2]~input_o\,
	datad => \dIn[5]~input_o\,
	combout => \xorRemainder4|y~combout\);

-- Location: LCCOMB_X32_Y16_N20
\xorPorta132|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorPorta132|y~combout\ = \xorPorta13|y~combout\ $ (\dIn[7]~input_o\ $ (\dIn[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xorPorta13|y~combout\,
	datac => \dIn[7]~input_o\,
	datad => \dIn[6]~input_o\,
	combout => \xorPorta132|y~combout\);

-- Location: LCCOMB_X32_Y16_N30
\xorRemainder5|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorRemainder5|y~combout\ = \dIn[5]~input_o\ $ (\xorPorta132|y~combout\ $ (\dIn[12]~input_o\ $ (\dIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[5]~input_o\,
	datab => \xorPorta132|y~combout\,
	datac => \dIn[12]~input_o\,
	datad => \dIn[0]~input_o\,
	combout => \xorRemainder5|y~combout\);

-- Location: LCCOMB_X32_Y16_N22
\xorRemainder6|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorRemainder6|y~combout\ = \dIn[10]~input_o\ $ (\dIn[9]~input_o\ $ (\dIn[8]~input_o\ $ (\xorPorta248|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[10]~input_o\,
	datab => \dIn[9]~input_o\,
	datac => \dIn[8]~input_o\,
	datad => \xorPorta248|y~combout\,
	combout => \xorRemainder6|y~combout\);

-- Location: LCCOMB_X32_Y16_N16
\xorRemainder7|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorRemainder7|y~combout\ = \dIn[14]~input_o\ $ (\dIn[11]~input_o\ $ (\dIn[10]~input_o\ $ (\xorPorta132|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[14]~input_o\,
	datab => \dIn[11]~input_o\,
	datac => \dIn[10]~input_o\,
	datad => \xorPorta132|y~combout\,
	combout => \xorRemainder7|y~combout\);

ww_dOut(0) <= \dOut[0]~output_o\;

ww_dOut(1) <= \dOut[1]~output_o\;

ww_dOut(2) <= \dOut[2]~output_o\;

ww_dOut(3) <= \dOut[3]~output_o\;

ww_dOut(4) <= \dOut[4]~output_o\;

ww_dOut(5) <= \dOut[5]~output_o\;

ww_dOut(6) <= \dOut[6]~output_o\;

ww_dOut(7) <= \dOut[7]~output_o\;

ww_dOut(8) <= \dOut[8]~output_o\;

ww_dOut(9) <= \dOut[9]~output_o\;

ww_dOut(10) <= \dOut[10]~output_o\;

ww_dOut(11) <= \dOut[11]~output_o\;

ww_dOut(12) <= \dOut[12]~output_o\;

ww_dOut(13) <= \dOut[13]~output_o\;

ww_dOut(14) <= \dOut[14]~output_o\;

ww_dOut(15) <= \dOut[15]~output_o\;

ww_dOut(16) <= \dOut[16]~output_o\;

ww_dOut(17) <= \dOut[17]~output_o\;

ww_dOut(18) <= \dOut[18]~output_o\;

ww_dOut(19) <= \dOut[19]~output_o\;

ww_dOut(20) <= \dOut[20]~output_o\;

ww_dOut(21) <= \dOut[21]~output_o\;

ww_dOut(22) <= \dOut[22]~output_o\;

ww_dOut(23) <= \dOut[23]~output_o\;
END structure;



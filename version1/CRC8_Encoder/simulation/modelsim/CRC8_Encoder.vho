-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/27/2020 17:19:38"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


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
-- dOut[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[5]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[7]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[8]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[9]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[10]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[12]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[13]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[14]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[15]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[16]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[17]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[18]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[19]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[20]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[21]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[22]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[23]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[8]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[9]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[12]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[15]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[11]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[13]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[6]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[14]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \dIn[15]~input_o\ : std_logic;
SIGNAL \dIn[3]~input_o\ : std_logic;
SIGNAL \remainder~6_combout\ : std_logic;
SIGNAL \dIn[11]~input_o\ : std_logic;
SIGNAL \dIn[10]~input_o\ : std_logic;
SIGNAL \dIn[0]~input_o\ : std_logic;
SIGNAL \dIn[12]~input_o\ : std_logic;
SIGNAL \dIn[7]~input_o\ : std_logic;
SIGNAL \dIn[5]~input_o\ : std_logic;
SIGNAL \dIn[9]~input_o\ : std_logic;
SIGNAL \dIn[8]~input_o\ : std_logic;
SIGNAL \remainder~4_combout\ : std_logic;
SIGNAL \remainder~5_combout\ : std_logic;
SIGNAL \remainder~7_combout\ : std_logic;
SIGNAL \dIn[13]~input_o\ : std_logic;
SIGNAL \dIn[6]~input_o\ : std_logic;
SIGNAL \dIn[4]~input_o\ : std_logic;
SIGNAL \remainder~8_combout\ : std_logic;
SIGNAL \remainder~9_combout\ : std_logic;
SIGNAL \dIn[1]~input_o\ : std_logic;
SIGNAL \remainder~10_combout\ : std_logic;
SIGNAL \dIn[14]~input_o\ : std_logic;
SIGNAL \remainder~11_combout\ : std_logic;
SIGNAL \remainder~12_combout\ : std_logic;
SIGNAL \dIn[2]~input_o\ : std_logic;
SIGNAL \remainder~13_combout\ : std_logic;
SIGNAL \remainder~20_combout\ : std_logic;
SIGNAL \remainder~14_combout\ : std_logic;
SIGNAL \remainder~15_combout\ : std_logic;
SIGNAL \remainder~16_combout\ : std_logic;
SIGNAL \remainder~17_combout\ : std_logic;
SIGNAL \remainder~21_combout\ : std_logic;
SIGNAL \remainder~18_combout\ : std_logic;
SIGNAL \remainder~19_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_dIn <= dIn;
dOut <= ww_dOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y22_N2
\dOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder~7_combout\,
	devoe => ww_devoe,
	o => \dOut[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\dOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder~10_combout\,
	devoe => ww_devoe,
	o => \dOut[1]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\dOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder~20_combout\,
	devoe => ww_devoe,
	o => \dOut[2]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\dOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder~15_combout\,
	devoe => ww_devoe,
	o => \dOut[3]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\dOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder~17_combout\,
	devoe => ww_devoe,
	o => \dOut[4]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\dOut[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder~21_combout\,
	devoe => ww_devoe,
	o => \dOut[5]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\dOut[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder~18_combout\,
	devoe => ww_devoe,
	o => \dOut[6]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\dOut[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \remainder~19_combout\,
	devoe => ww_devoe,
	o => \dOut[7]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X33_Y11_N2
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

-- Location: IOOBUF_X33_Y27_N9
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

-- Location: IOOBUF_X29_Y31_N2
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

-- Location: IOOBUF_X24_Y31_N2
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X33_Y14_N9
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

-- Location: IOOBUF_X33_Y28_N9
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

-- Location: IOOBUF_X31_Y31_N2
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

-- Location: IOOBUF_X26_Y31_N2
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

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X33_Y10_N9
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOIBUF_X31_Y0_N8
\dIn[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(15),
	o => \dIn[15]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\dIn[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(3),
	o => \dIn[3]~input_o\);

-- Location: LCCOMB_X31_Y19_N8
\remainder~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~6_combout\ = \dIn[15]~input_o\ $ (\dIn[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn[15]~input_o\,
	datac => \dIn[3]~input_o\,
	combout => \remainder~6_combout\);

-- Location: IOIBUF_X22_Y0_N8
\dIn[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(11),
	o => \dIn[11]~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\dIn[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(10),
	o => \dIn[10]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\dIn[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(0),
	o => \dIn[0]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\dIn[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(12),
	o => \dIn[12]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\dIn[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(7),
	o => \dIn[7]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
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
\dIn[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(9),
	o => \dIn[9]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\dIn[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(8),
	o => \dIn[8]~input_o\);

-- Location: LCCOMB_X32_Y19_N16
\remainder~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~4_combout\ = \dIn[7]~input_o\ $ (\dIn[5]~input_o\ $ (\dIn[9]~input_o\ $ (\dIn[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[7]~input_o\,
	datab => \dIn[5]~input_o\,
	datac => \dIn[9]~input_o\,
	datad => \dIn[8]~input_o\,
	combout => \remainder~4_combout\);

-- Location: LCCOMB_X32_Y19_N10
\remainder~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~5_combout\ = \dIn[0]~input_o\ $ (\dIn[12]~input_o\ $ (\remainder~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn[0]~input_o\,
	datac => \dIn[12]~input_o\,
	datad => \remainder~4_combout\,
	combout => \remainder~5_combout\);

-- Location: LCCOMB_X32_Y19_N12
\remainder~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~7_combout\ = \remainder~6_combout\ $ (\dIn[11]~input_o\ $ (\dIn[10]~input_o\ $ (\remainder~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder~6_combout\,
	datab => \dIn[11]~input_o\,
	datac => \dIn[10]~input_o\,
	datad => \remainder~5_combout\,
	combout => \remainder~7_combout\);

-- Location: IOIBUF_X26_Y0_N8
\dIn[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(13),
	o => \dIn[13]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\dIn[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(6),
	o => \dIn[6]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\dIn[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(4),
	o => \dIn[4]~input_o\);

-- Location: LCCOMB_X32_Y19_N14
\remainder~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~8_combout\ = \dIn[6]~input_o\ $ (\dIn[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn[6]~input_o\,
	datac => \dIn[4]~input_o\,
	combout => \remainder~8_combout\);

-- Location: LCCOMB_X32_Y19_N0
\remainder~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~9_combout\ = \dIn[7]~input_o\ $ (\dIn[13]~input_o\ $ (\remainder~8_combout\ $ (\dIn[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[7]~input_o\,
	datab => \dIn[13]~input_o\,
	datac => \remainder~8_combout\,
	datad => \dIn[5]~input_o\,
	combout => \remainder~9_combout\);

-- Location: IOIBUF_X33_Y11_N8
\dIn[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(1),
	o => \dIn[1]~input_o\);

-- Location: LCCOMB_X32_Y19_N2
\remainder~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~10_combout\ = \remainder~6_combout\ $ (\remainder~9_combout\ $ (\dIn[0]~input_o\ $ (\dIn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder~6_combout\,
	datab => \remainder~9_combout\,
	datac => \dIn[0]~input_o\,
	datad => \dIn[1]~input_o\,
	combout => \remainder~10_combout\);

-- Location: IOIBUF_X29_Y0_N8
\dIn[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(14),
	o => \dIn[14]~input_o\);

-- Location: LCCOMB_X32_Y19_N28
\remainder~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~11_combout\ = \dIn[9]~input_o\ $ (\dIn[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn[9]~input_o\,
	datac => \dIn[14]~input_o\,
	combout => \remainder~11_combout\);

-- Location: LCCOMB_X32_Y19_N6
\remainder~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~12_combout\ = \dIn[10]~input_o\ $ (\dIn[11]~input_o\ $ (\remainder~8_combout\ $ (\remainder~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[10]~input_o\,
	datab => \dIn[11]~input_o\,
	datac => \remainder~8_combout\,
	datad => \remainder~11_combout\,
	combout => \remainder~12_combout\);

-- Location: IOIBUF_X33_Y27_N1
\dIn[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(2),
	o => \dIn[2]~input_o\);

-- Location: LCCOMB_X32_Y19_N24
\remainder~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~13_combout\ = \dIn[1]~input_o\ $ (\dIn[0]~input_o\ $ (\dIn[12]~input_o\ $ (\dIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[1]~input_o\,
	datab => \dIn[0]~input_o\,
	datac => \dIn[12]~input_o\,
	datad => \dIn[2]~input_o\,
	combout => \remainder~13_combout\);

-- Location: LCCOMB_X31_Y19_N26
\remainder~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~20_combout\ = \remainder~12_combout\ $ (\dIn[15]~input_o\ $ (\dIn[3]~input_o\ $ (\remainder~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder~12_combout\,
	datab => \dIn[15]~input_o\,
	datac => \dIn[3]~input_o\,
	datad => \remainder~13_combout\,
	combout => \remainder~20_combout\);

-- Location: LCCOMB_X32_Y19_N26
\remainder~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~14_combout\ = \dIn[1]~input_o\ $ (\dIn[0]~input_o\ $ (\dIn[4]~input_o\ $ (\dIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[1]~input_o\,
	datab => \dIn[0]~input_o\,
	datac => \dIn[4]~input_o\,
	datad => \dIn[2]~input_o\,
	combout => \remainder~14_combout\);

-- Location: LCCOMB_X32_Y19_N20
\remainder~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~15_combout\ = \remainder~14_combout\ $ (\dIn[13]~input_o\ $ (\dIn[9]~input_o\ $ (\dIn[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder~14_combout\,
	datab => \dIn[13]~input_o\,
	datac => \dIn[9]~input_o\,
	datad => \dIn[8]~input_o\,
	combout => \remainder~15_combout\);

-- Location: LCCOMB_X32_Y19_N30
\remainder~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~16_combout\ = \dIn[3]~input_o\ $ (\dIn[10]~input_o\ $ (\dIn[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[3]~input_o\,
	datac => \dIn[10]~input_o\,
	datad => \dIn[1]~input_o\,
	combout => \remainder~16_combout\);

-- Location: LCCOMB_X32_Y19_N8
\remainder~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~17_combout\ = \remainder~11_combout\ $ (\dIn[5]~input_o\ $ (\remainder~16_combout\ $ (\dIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder~11_combout\,
	datab => \dIn[5]~input_o\,
	datac => \remainder~16_combout\,
	datad => \dIn[2]~input_o\,
	combout => \remainder~17_combout\);

-- Location: LCCOMB_X32_Y19_N22
\remainder~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~21_combout\ = \remainder~5_combout\ $ (\dIn[6]~input_o\ $ (\dIn[4]~input_o\ $ (\dIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder~5_combout\,
	datab => \dIn[6]~input_o\,
	datac => \dIn[4]~input_o\,
	datad => \dIn[2]~input_o\,
	combout => \remainder~21_combout\);

-- Location: LCCOMB_X32_Y19_N18
\remainder~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~18_combout\ = \remainder~16_combout\ $ (\dIn[13]~input_o\ $ (\dIn[6]~input_o\ $ (\remainder~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \remainder~16_combout\,
	datab => \dIn[13]~input_o\,
	datac => \dIn[6]~input_o\,
	datad => \remainder~4_combout\,
	combout => \remainder~18_combout\);

-- Location: LCCOMB_X32_Y19_N4
\remainder~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \remainder~19_combout\ = \dIn[7]~input_o\ $ (\dIn[2]~input_o\ $ (\remainder~12_combout\ $ (\dIn[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[7]~input_o\,
	datab => \dIn[2]~input_o\,
	datac => \remainder~12_combout\,
	datad => \dIn[8]~input_o\,
	combout => \remainder~19_combout\);

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



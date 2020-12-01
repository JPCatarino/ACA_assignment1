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

-- DATE "12/01/2020 18:00:11"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CRC8_Checker IS
    PORT (
	nGRst : IN std_logic;
	clk : IN std_logic;
	dIn : IN std_logic;
	dOut : OUT std_logic_vector(7 DOWNTO 0);
	error : OUT std_logic
	);
END CRC8_Checker;

-- Design Ports Information
-- dOut[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[6]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_nGRst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_dIn : std_logic;
SIGNAL ww_dOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_error : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dOut[0]~output_o\ : std_logic;
SIGNAL \dOut[1]~output_o\ : std_logic;
SIGNAL \dOut[2]~output_o\ : std_logic;
SIGNAL \dOut[3]~output_o\ : std_logic;
SIGNAL \dOut[4]~output_o\ : std_logic;
SIGNAL \dOut[5]~output_o\ : std_logic;
SIGNAL \dOut[6]~output_o\ : std_logic;
SIGNAL \dOut[7]~output_o\ : std_logic;
SIGNAL \error~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dIn~input_o\ : std_logic;
SIGNAL \LFSR|comb~0_combout\ : std_logic;
SIGNAL \bc|s_cOut[0]~12_combout\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \bc|s_cOut[1]~4_combout\ : std_logic;
SIGNAL \bc|s_cOut[1]~5\ : std_logic;
SIGNAL \bc|s_cOut[2]~6_combout\ : std_logic;
SIGNAL \bc|s_cOut[2]~7\ : std_logic;
SIGNAL \bc|s_cOut[3]~8_combout\ : std_logic;
SIGNAL \bc|s_cOut[3]~9\ : std_logic;
SIGNAL \bc|s_cOut[4]~10_combout\ : std_logic;
SIGNAL \cUnit|nad2|y~0_combout\ : std_logic;
SIGNAL \cUnit|nad2|y~1_combout\ : std_logic;
SIGNAL \LFSR|dff6|q~q\ : std_logic;
SIGNAL \LFSR|comb~1_combout\ : std_logic;
SIGNAL \LFSR|dff5|q~q\ : std_logic;
SIGNAL \LFSR|comb~2_combout\ : std_logic;
SIGNAL \LFSR|dff4|q~q\ : std_logic;
SIGNAL \LFSR|dff3|q~feeder_combout\ : std_logic;
SIGNAL \LFSR|dff3|q~q\ : std_logic;
SIGNAL \LFSR|comb~3_combout\ : std_logic;
SIGNAL \LFSR|dff2|q~q\ : std_logic;
SIGNAL \LFSR|dff1|q~feeder_combout\ : std_logic;
SIGNAL \LFSR|dff1|q~q\ : std_logic;
SIGNAL \LFSR|dff0|q~feeder_combout\ : std_logic;
SIGNAL \LFSR|dff0|q~q\ : std_logic;
SIGNAL \LFSR|chainXor~combout\ : std_logic;
SIGNAL \LFSR|dff7|q~q\ : std_logic;
SIGNAL \cUnit|nord|y~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \cUnit|nad4|y~0_combout\ : std_logic;
SIGNAL \cUnit|nad4|y~1_combout\ : std_logic;
SIGNAL \FF0|Q~q\ : std_logic;
SIGNAL \bc|s_cOut\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \cUnit|nad4|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \cUnit|nad2|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \FF0|ALT_INV_Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_nGRst <= nGRst;
ww_clk <= clk;
ww_dIn <= dIn;
dOut <= ww_dOut;
error <= ww_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\cUnit|nad4|ALT_INV_y~1_combout\ <= NOT \cUnit|nad4|y~1_combout\;
\cUnit|nad2|ALT_INV_y~1_combout\ <= NOT \cUnit|nad2|y~1_combout\;
\FF0|ALT_INV_Q~q\ <= NOT \FF0|Q~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X14_Y0_N9
\dOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR|dff7|q~q\,
	devoe => ww_devoe,
	o => \dOut[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\dOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR|dff6|q~q\,
	devoe => ww_devoe,
	o => \dOut[1]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\dOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR|dff5|q~q\,
	devoe => ww_devoe,
	o => \dOut[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\dOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR|dff4|q~q\,
	devoe => ww_devoe,
	o => \dOut[3]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\dOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR|dff3|q~q\,
	devoe => ww_devoe,
	o => \dOut[4]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\dOut[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR|dff2|q~q\,
	devoe => ww_devoe,
	o => \dOut[5]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\dOut[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR|dff1|q~q\,
	devoe => ww_devoe,
	o => \dOut[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\dOut[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR|dff0|q~q\,
	devoe => ww_devoe,
	o => \dOut[7]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\error~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \error~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X22_Y0_N1
\dIn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn,
	o => \dIn~input_o\);

-- Location: LCCOMB_X14_Y1_N14
\LFSR|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|comb~0_combout\ = \LFSR|dff7|q~q\ $ (\LFSR|dff0|q~q\ $ (\dIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LFSR|dff7|q~q\,
	datac => \LFSR|dff0|q~q\,
	datad => \dIn~input_o\,
	combout => \LFSR|comb~0_combout\);

-- Location: LCCOMB_X15_Y1_N20
\bc|s_cOut[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|s_cOut[0]~12_combout\ = !\bc|s_cOut\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc|s_cOut\(0),
	combout => \bc|s_cOut[0]~12_combout\);

-- Location: FF_X15_Y1_N21
\bc|s_cOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|s_cOut[0]~12_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|s_cOut\(0));

-- Location: IOIBUF_X20_Y0_N8
\nGRst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: LCCOMB_X15_Y1_N6
\bc|s_cOut[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|s_cOut[1]~4_combout\ = (\bc|s_cOut\(1) & (\bc|s_cOut\(0) $ (VCC))) # (!\bc|s_cOut\(1) & (\bc|s_cOut\(0) & VCC))
-- \bc|s_cOut[1]~5\ = CARRY((\bc|s_cOut\(1) & \bc|s_cOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|s_cOut\(1),
	datab => \bc|s_cOut\(0),
	datad => VCC,
	combout => \bc|s_cOut[1]~4_combout\,
	cout => \bc|s_cOut[1]~5\);

-- Location: FF_X15_Y1_N7
\bc|s_cOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|s_cOut[1]~4_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|s_cOut\(1));

-- Location: LCCOMB_X15_Y1_N8
\bc|s_cOut[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|s_cOut[2]~6_combout\ = (\bc|s_cOut\(2) & (!\bc|s_cOut[1]~5\)) # (!\bc|s_cOut\(2) & ((\bc|s_cOut[1]~5\) # (GND)))
-- \bc|s_cOut[2]~7\ = CARRY((!\bc|s_cOut[1]~5\) # (!\bc|s_cOut\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bc|s_cOut\(2),
	datad => VCC,
	cin => \bc|s_cOut[1]~5\,
	combout => \bc|s_cOut[2]~6_combout\,
	cout => \bc|s_cOut[2]~7\);

-- Location: FF_X15_Y1_N9
\bc|s_cOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|s_cOut[2]~6_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|s_cOut\(2));

-- Location: LCCOMB_X15_Y1_N10
\bc|s_cOut[3]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|s_cOut[3]~8_combout\ = (\bc|s_cOut\(3) & (\bc|s_cOut[2]~7\ $ (GND))) # (!\bc|s_cOut\(3) & (!\bc|s_cOut[2]~7\ & VCC))
-- \bc|s_cOut[3]~9\ = CARRY((\bc|s_cOut\(3) & !\bc|s_cOut[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bc|s_cOut\(3),
	datad => VCC,
	cin => \bc|s_cOut[2]~7\,
	combout => \bc|s_cOut[3]~8_combout\,
	cout => \bc|s_cOut[3]~9\);

-- Location: FF_X15_Y1_N11
\bc|s_cOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|s_cOut[3]~8_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|s_cOut\(3));

-- Location: LCCOMB_X15_Y1_N12
\bc|s_cOut[4]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|s_cOut[4]~10_combout\ = \bc|s_cOut[3]~9\ $ (\bc|s_cOut\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bc|s_cOut\(4),
	cin => \bc|s_cOut[3]~9\,
	combout => \bc|s_cOut[4]~10_combout\);

-- Location: FF_X15_Y1_N13
\bc|s_cOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|s_cOut[4]~10_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|s_cOut\(4));

-- Location: LCCOMB_X15_Y1_N28
\cUnit|nad2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad2|y~0_combout\ = (\bc|s_cOut\(3) & (!\bc|s_cOut\(2) & (\bc|s_cOut\(4) & !\bc|s_cOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|s_cOut\(3),
	datab => \bc|s_cOut\(2),
	datac => \bc|s_cOut\(4),
	datad => \bc|s_cOut\(1),
	combout => \cUnit|nad2|y~0_combout\);

-- Location: LCCOMB_X15_Y1_N30
\cUnit|nad2|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad2|y~1_combout\ = (\clk~input_o\ & (((\bc|s_cOut\(0) & \cUnit|nad2|y~0_combout\)) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|s_cOut\(0),
	datab => \nGRst~input_o\,
	datac => \clk~input_o\,
	datad => \cUnit|nad2|y~0_combout\,
	combout => \cUnit|nad2|y~1_combout\);

-- Location: FF_X14_Y1_N15
\LFSR|dff6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|comb~0_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff6|q~q\);

-- Location: LCCOMB_X14_Y1_N12
\LFSR|comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|comb~1_combout\ = \LFSR|dff0|q~q\ $ (\LFSR|dff6|q~q\ $ (\dIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff0|q~q\,
	datac => \LFSR|dff6|q~q\,
	datad => \dIn~input_o\,
	combout => \LFSR|comb~1_combout\);

-- Location: FF_X14_Y1_N13
\LFSR|dff5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|comb~1_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff5|q~q\);

-- Location: LCCOMB_X14_Y1_N30
\LFSR|comb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|comb~2_combout\ = \LFSR|dff5|q~q\ $ (\LFSR|dff0|q~q\ $ (\dIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff5|q~q\,
	datac => \LFSR|dff0|q~q\,
	datad => \dIn~input_o\,
	combout => \LFSR|comb~2_combout\);

-- Location: FF_X14_Y1_N31
\LFSR|dff4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|comb~2_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff4|q~q\);

-- Location: LCCOMB_X14_Y1_N4
\LFSR|dff3|q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|dff3|q~feeder_combout\ = \LFSR|dff4|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR|dff4|q~q\,
	combout => \LFSR|dff3|q~feeder_combout\);

-- Location: FF_X14_Y1_N5
\LFSR|dff3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|dff3|q~feeder_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff3|q~q\);

-- Location: LCCOMB_X14_Y1_N22
\LFSR|comb~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|comb~3_combout\ = \LFSR|dff3|q~q\ $ (\LFSR|dff0|q~q\ $ (\dIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LFSR|dff3|q~q\,
	datac => \LFSR|dff0|q~q\,
	datad => \dIn~input_o\,
	combout => \LFSR|comb~3_combout\);

-- Location: FF_X14_Y1_N23
\LFSR|dff2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|comb~3_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff2|q~q\);

-- Location: LCCOMB_X14_Y1_N28
\LFSR|dff1|q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|dff1|q~feeder_combout\ = \LFSR|dff2|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR|dff2|q~q\,
	combout => \LFSR|dff1|q~feeder_combout\);

-- Location: FF_X14_Y1_N29
\LFSR|dff1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|dff1|q~feeder_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff1|q~q\);

-- Location: LCCOMB_X14_Y1_N18
\LFSR|dff0|q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|dff0|q~feeder_combout\ = \LFSR|dff1|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR|dff1|q~q\,
	combout => \LFSR|dff0|q~feeder_combout\);

-- Location: FF_X14_Y1_N19
\LFSR|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|dff0|q~feeder_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff0|q~q\);

-- Location: LCCOMB_X14_Y1_N8
\LFSR|chainXor\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|chainXor~combout\ = \LFSR|dff0|q~q\ $ (\dIn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LFSR|dff0|q~q\,
	datad => \dIn~input_o\,
	combout => \LFSR|chainXor~combout\);

-- Location: FF_X14_Y1_N9
\LFSR|dff7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|chainXor~combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff7|q~q\);

-- Location: LCCOMB_X15_Y1_N26
\cUnit|nord|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nord|y~0_combout\ = LCELL((!\clk~input_o\ & (!\bc|s_cOut\(0) & \cUnit|nad2|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~input_o\,
	datac => \bc|s_cOut\(0),
	datad => \cUnit|nad2|y~0_combout\,
	combout => \cUnit|nord|y~0_combout\);

-- Location: LCCOMB_X14_Y1_N6
\comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\LFSR|dff2|q~q\) # ((\LFSR|dff0|q~q\) # ((\LFSR|dff3|q~q\) # (\LFSR|dff1|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff2|q~q\,
	datab => \LFSR|dff0|q~q\,
	datac => \LFSR|dff3|q~q\,
	datad => \LFSR|dff1|q~q\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X14_Y1_N24
\comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\LFSR|dff4|q~q\) # ((\LFSR|dff6|q~q\) # ((\LFSR|dff7|q~q\) # (\LFSR|dff5|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff4|q~q\,
	datab => \LFSR|dff6|q~q\,
	datac => \LFSR|dff7|q~q\,
	datad => \LFSR|dff5|q~q\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X15_Y1_N22
\comb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\comb~1_combout\ & !\comb~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~1_combout\,
	datad => \comb~0_combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X15_Y1_N24
\cUnit|nad4|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad4|y~0_combout\ = (!\bc|s_cOut\(1) & (!\bc|s_cOut\(3) & (!\bc|s_cOut\(2) & !\bc|s_cOut\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|s_cOut\(1),
	datab => \bc|s_cOut\(3),
	datac => \bc|s_cOut\(2),
	datad => \bc|s_cOut\(4),
	combout => \cUnit|nad4|y~0_combout\);

-- Location: LCCOMB_X15_Y1_N18
\cUnit|nad4|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad4|y~1_combout\ = (\clk~input_o\ & ((\cUnit|nad4|y~0_combout\) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nGRst~input_o\,
	datac => \clk~input_o\,
	datad => \cUnit|nad4|y~0_combout\,
	combout => \cUnit|nad4|y~1_combout\);

-- Location: FF_X15_Y1_N23
\FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cUnit|nord|y~0_combout\,
	d => \comb~2_combout\,
	clrn => \cUnit|nad4|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF0|Q~q\);

ww_dOut(0) <= \dOut[0]~output_o\;

ww_dOut(1) <= \dOut[1]~output_o\;

ww_dOut(2) <= \dOut[2]~output_o\;

ww_dOut(3) <= \dOut[3]~output_o\;

ww_dOut(4) <= \dOut[4]~output_o\;

ww_dOut(5) <= \dOut[5]~output_o\;

ww_dOut(6) <= \dOut[6]~output_o\;

ww_dOut(7) <= \dOut[7]~output_o\;

ww_error <= \error~output_o\;
END structure;



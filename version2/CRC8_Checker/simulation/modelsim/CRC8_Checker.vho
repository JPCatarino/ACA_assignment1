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

-- DATE "12/08/2020 16:25:30"

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
	error : BUFFER std_logic
	);
END CRC8_Checker;

-- Design Ports Information
-- error	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_error : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \error~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \bc|s_cOut[0]~12_combout\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \cUnit|nad2|y~3_combout\ : std_logic;
SIGNAL \bc|s_cOut[1]~4_combout\ : std_logic;
SIGNAL \bc|s_cOut[1]~5\ : std_logic;
SIGNAL \bc|s_cOut[2]~6_combout\ : std_logic;
SIGNAL \bc|s_cOut[2]~7\ : std_logic;
SIGNAL \bc|s_cOut[3]~8_combout\ : std_logic;
SIGNAL \bc|s_cOut[3]~9\ : std_logic;
SIGNAL \bc|s_cOut[4]~10_combout\ : std_logic;
SIGNAL \cUnit|nad2|y~2_combout\ : std_logic;
SIGNAL \cUnit|nord|y~0_combout\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dIn~input_o\ : std_logic;
SIGNAL \LFSR|comb~0_combout\ : std_logic;
SIGNAL \LFSR|dff2|q~q\ : std_logic;
SIGNAL \LFSR|dff1|q~q\ : std_logic;
SIGNAL \LFSR|dff0|q~feeder_combout\ : std_logic;
SIGNAL \LFSR|dff0|q~q\ : std_logic;
SIGNAL \LFSR|chainXor~combout\ : std_logic;
SIGNAL \LFSR|dff7|q~q\ : std_logic;
SIGNAL \LFSR|comb~1_combout\ : std_logic;
SIGNAL \LFSR|dff6|q~q\ : std_logic;
SIGNAL \LFSR|comb~2_combout\ : std_logic;
SIGNAL \LFSR|dff5|q~q\ : std_logic;
SIGNAL \LFSR|comb~3_combout\ : std_logic;
SIGNAL \LFSR|dff4|q~q\ : std_logic;
SIGNAL \LFSR|dff3|q~feeder_combout\ : std_logic;
SIGNAL \LFSR|dff3|q~q\ : std_logic;
SIGNAL \OR80|y~1_combout\ : std_logic;
SIGNAL \OR80|y~0_combout\ : std_logic;
SIGNAL \OR80|y~combout\ : std_logic;
SIGNAL \cUnit|nad4|y~3_combout\ : std_logic;
SIGNAL \cUnit|nad4|y~15_combout\ : std_logic;
SIGNAL \FF0|Q~q\ : std_logic;
SIGNAL \bc|s_cOut\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \cUnit|nad4|ALT_INV_y~15_combout\ : std_logic;
SIGNAL \cUnit|nad2|ALT_INV_y~3_combout\ : std_logic;
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
error <= ww_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\cUnit|nad4|ALT_INV_y~15_combout\ <= NOT \cUnit|nad4|y~15_combout\;
\cUnit|nad2|ALT_INV_y~3_combout\ <= NOT \cUnit|nad2|y~3_combout\;
\FF0|ALT_INV_Q~q\ <= NOT \FF0|Q~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: LCCOMB_X15_Y2_N4
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

-- Location: IOIBUF_X12_Y0_N1
\nGRst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: LCCOMB_X15_Y2_N14
\cUnit|nad2|y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad2|y~3_combout\ = (\clk~input_o\ & (((\bc|s_cOut\(0) & \cUnit|nad2|y~2_combout\)) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nGRst~input_o\,
	datab => \bc|s_cOut\(0),
	datac => \cUnit|nad2|y~2_combout\,
	datad => \clk~input_o\,
	combout => \cUnit|nad2|y~3_combout\);

-- Location: FF_X15_Y2_N5
\bc|s_cOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|s_cOut[0]~12_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|s_cOut\(0));

-- Location: LCCOMB_X15_Y2_N6
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

-- Location: FF_X15_Y2_N7
\bc|s_cOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|s_cOut[1]~4_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|s_cOut\(1));

-- Location: LCCOMB_X15_Y2_N8
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

-- Location: FF_X15_Y2_N9
\bc|s_cOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|s_cOut[2]~6_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|s_cOut\(2));

-- Location: LCCOMB_X15_Y2_N10
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

-- Location: FF_X15_Y2_N11
\bc|s_cOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|s_cOut[3]~8_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|s_cOut\(3));

-- Location: LCCOMB_X15_Y2_N12
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

-- Location: FF_X15_Y2_N13
\bc|s_cOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|s_cOut[4]~10_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|s_cOut\(4));

-- Location: LCCOMB_X15_Y2_N26
\cUnit|nad2|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad2|y~2_combout\ = (\bc|s_cOut\(4) & (!\bc|s_cOut\(2) & (\bc|s_cOut\(3) & !\bc|s_cOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|s_cOut\(4),
	datab => \bc|s_cOut\(2),
	datac => \bc|s_cOut\(3),
	datad => \bc|s_cOut\(1),
	combout => \cUnit|nad2|y~2_combout\);

-- Location: LCCOMB_X15_Y2_N30
\cUnit|nord|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nord|y~0_combout\ = LCELL((!\clk~input_o\ & (\cUnit|nad2|y~2_combout\ & !\bc|s_cOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datac => \cUnit|nad2|y~2_combout\,
	datad => \bc|s_cOut\(0),
	combout => \cUnit|nord|y~0_combout\);

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

-- Location: IOIBUF_X14_Y0_N8
\dIn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn,
	o => \dIn~input_o\);

-- Location: LCCOMB_X14_Y2_N22
\LFSR|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|comb~0_combout\ = \dIn~input_o\ $ (\LFSR|dff0|q~q\ $ (\LFSR|dff3|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn~input_o\,
	datac => \LFSR|dff0|q~q\,
	datad => \LFSR|dff3|q~q\,
	combout => \LFSR|comb~0_combout\);

-- Location: FF_X14_Y2_N23
\LFSR|dff2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|comb~0_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff2|q~q\);

-- Location: FF_X14_Y2_N31
\LFSR|dff1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LFSR|dff2|q~q\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff1|q~q\);

-- Location: LCCOMB_X14_Y2_N8
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

-- Location: FF_X14_Y2_N9
\LFSR|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|dff0|q~feeder_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff0|q~q\);

-- Location: LCCOMB_X14_Y2_N20
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

-- Location: FF_X14_Y2_N21
\LFSR|dff7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|chainXor~combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff7|q~q\);

-- Location: LCCOMB_X14_Y2_N18
\LFSR|comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|comb~1_combout\ = \dIn~input_o\ $ (\LFSR|dff0|q~q\ $ (\LFSR|dff7|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn~input_o\,
	datac => \LFSR|dff0|q~q\,
	datad => \LFSR|dff7|q~q\,
	combout => \LFSR|comb~1_combout\);

-- Location: FF_X14_Y2_N19
\LFSR|dff6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|comb~1_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff6|q~q\);

-- Location: LCCOMB_X14_Y2_N12
\LFSR|comb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|comb~2_combout\ = \dIn~input_o\ $ (\LFSR|dff0|q~q\ $ (\LFSR|dff6|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn~input_o\,
	datac => \LFSR|dff0|q~q\,
	datad => \LFSR|dff6|q~q\,
	combout => \LFSR|comb~2_combout\);

-- Location: FF_X14_Y2_N13
\LFSR|dff5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|comb~2_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff5|q~q\);

-- Location: LCCOMB_X14_Y2_N14
\LFSR|comb~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|comb~3_combout\ = \LFSR|dff5|q~q\ $ (\LFSR|dff0|q~q\ $ (\dIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff5|q~q\,
	datac => \LFSR|dff0|q~q\,
	datad => \dIn~input_o\,
	combout => \LFSR|comb~3_combout\);

-- Location: FF_X14_Y2_N15
\LFSR|dff4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|comb~3_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff4|q~q\);

-- Location: LCCOMB_X14_Y2_N24
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

-- Location: FF_X14_Y2_N25
\LFSR|dff3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|dff3|q~feeder_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff3|q~q\);

-- Location: LCCOMB_X14_Y2_N26
\OR80|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OR80|y~1_combout\ = \LFSR|dff1|q~q\ $ (!\LFSR|dff7|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LFSR|dff1|q~q\,
	datad => \LFSR|dff7|q~q\,
	combout => \OR80|y~1_combout\);

-- Location: LCCOMB_X14_Y2_N28
\OR80|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OR80|y~0_combout\ = \LFSR|dff6|q~q\ $ (\LFSR|dff4|q~q\ $ (\LFSR|dff0|q~q\ $ (\LFSR|dff5|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff6|q~q\,
	datab => \LFSR|dff4|q~q\,
	datac => \LFSR|dff0|q~q\,
	datad => \LFSR|dff5|q~q\,
	combout => \OR80|y~0_combout\);

-- Location: LCCOMB_X15_Y2_N24
\OR80|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OR80|y~combout\ = \LFSR|dff3|q~q\ $ (\LFSR|dff2|q~q\ $ (\OR80|y~1_combout\ $ (\OR80|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff3|q~q\,
	datab => \LFSR|dff2|q~q\,
	datac => \OR80|y~1_combout\,
	datad => \OR80|y~0_combout\,
	combout => \OR80|y~combout\);

-- Location: LCCOMB_X15_Y2_N18
\cUnit|nad4|y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad4|y~3_combout\ = (!\bc|s_cOut\(1) & (!\bc|s_cOut\(4) & (!\bc|s_cOut\(2) & !\bc|s_cOut\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|s_cOut\(1),
	datab => \bc|s_cOut\(4),
	datac => \bc|s_cOut\(2),
	datad => \bc|s_cOut\(3),
	combout => \cUnit|nad4|y~3_combout\);

-- Location: LCCOMB_X15_Y2_N16
\cUnit|nad4|y~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad4|y~15_combout\ = (\clk~input_o\ & (((\bc|s_cOut\(0) & \cUnit|nad4|y~3_combout\)) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \bc|s_cOut\(0),
	datac => \nGRst~input_o\,
	datad => \cUnit|nad4|y~3_combout\,
	combout => \cUnit|nad4|y~15_combout\);

-- Location: FF_X15_Y2_N25
\FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cUnit|nord|y~0_combout\,
	d => \OR80|y~combout\,
	clrn => \cUnit|nad4|ALT_INV_y~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF0|Q~q\);

ww_error <= \error~output_o\;
END structure;



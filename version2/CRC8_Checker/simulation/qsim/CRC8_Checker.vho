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

-- DATE "12/07/2020 18:42:40"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

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
	error : OUT std_logic
	);
END CRC8_Checker;

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
SIGNAL \error~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \bc|s_cOut[0]~12_combout\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \bc|s_cOut[1]~4_combout\ : std_logic;
SIGNAL \bc|s_cOut[1]~5\ : std_logic;
SIGNAL \bc|s_cOut[2]~6_combout\ : std_logic;
SIGNAL \bc|s_cOut[2]~7\ : std_logic;
SIGNAL \bc|s_cOut[3]~8_combout\ : std_logic;
SIGNAL \bc|s_cOut[3]~9\ : std_logic;
SIGNAL \bc|s_cOut[4]~10_combout\ : std_logic;
SIGNAL \cUnit|nad2|y~2_combout\ : std_logic;
SIGNAL \cUnit|nad2|y~3_combout\ : std_logic;
SIGNAL \cUnit|nord|y~0_combout\ : std_logic;
SIGNAL \dIn~input_o\ : std_logic;
SIGNAL \LFSR|comb~0_combout\ : std_logic;
SIGNAL \LFSR|dff2|q~q\ : std_logic;
SIGNAL \LFSR|dff1|q~q\ : std_logic;
SIGNAL \LFSR|dff0|q~q\ : std_logic;
SIGNAL \LFSR|chainXor~combout\ : std_logic;
SIGNAL \LFSR|dff7|q~q\ : std_logic;
SIGNAL \LFSR|comb~1_combout\ : std_logic;
SIGNAL \LFSR|dff6|q~q\ : std_logic;
SIGNAL \LFSR|comb~2_combout\ : std_logic;
SIGNAL \LFSR|dff5|q~q\ : std_logic;
SIGNAL \LFSR|comb~3_combout\ : std_logic;
SIGNAL \LFSR|dff4|q~q\ : std_logic;
SIGNAL \LFSR|dff3|q~q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \cUnit|nad4|y~3_combout\ : std_logic;
SIGNAL \cUnit|nad4|y~15_combout\ : std_logic;
SIGNAL \FF0|Q~q\ : std_logic;
SIGNAL \bc|s_cOut\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \cUnit|nad4|ALT_INV_y~15_combout\ : std_logic;
SIGNAL \cUnit|nad2|ALT_INV_y~3_combout\ : std_logic;
SIGNAL \FF0|ALT_INV_Q~q\ : std_logic;

BEGIN

ww_nGRst <= nGRst;
ww_clk <= clk;
ww_dIn <= dIn;
error <= ww_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\cUnit|nad4|ALT_INV_y~15_combout\ <= NOT \cUnit|nad4|y~15_combout\;
\cUnit|nad2|ALT_INV_y~3_combout\ <= NOT \cUnit|nad2|y~3_combout\;
\FF0|ALT_INV_Q~q\ <= NOT \FF0|Q~q\;

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

\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\bc|s_cOut[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|s_cOut[0]~12_combout\ = !\bc|s_cOut\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|s_cOut\(0),
	combout => \bc|s_cOut[0]~12_combout\);

\nGRst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

\bc|s_cOut[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|s_cOut[1]~4_combout\ = (\bc|s_cOut\(0) & (\bc|s_cOut\(1) $ (VCC))) # (!\bc|s_cOut\(0) & (\bc|s_cOut\(1) & VCC))
-- \bc|s_cOut[1]~5\ = CARRY((\bc|s_cOut\(0) & \bc|s_cOut\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|s_cOut\(0),
	datab => \bc|s_cOut\(1),
	datad => VCC,
	combout => \bc|s_cOut[1]~4_combout\,
	cout => \bc|s_cOut[1]~5\);

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

\bc|s_cOut[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|s_cOut[2]~6_combout\ = (\bc|s_cOut\(2) & (!\bc|s_cOut[1]~5\)) # (!\bc|s_cOut\(2) & ((\bc|s_cOut[1]~5\) # (GND)))
-- \bc|s_cOut[2]~7\ = CARRY((!\bc|s_cOut[1]~5\) # (!\bc|s_cOut\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bc|s_cOut\(2),
	datad => VCC,
	cin => \bc|s_cOut[1]~5\,
	combout => \bc|s_cOut[2]~6_combout\,
	cout => \bc|s_cOut[2]~7\);

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

\bc|s_cOut[4]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|s_cOut[4]~10_combout\ = \bc|s_cOut\(4) $ (\bc|s_cOut[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bc|s_cOut\(4),
	cin => \bc|s_cOut[3]~9\,
	combout => \bc|s_cOut[4]~10_combout\);

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

\cUnit|nad2|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad2|y~2_combout\ = (\bc|s_cOut\(3) & (\bc|s_cOut\(4) & (!\bc|s_cOut\(1) & !\bc|s_cOut\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|s_cOut\(3),
	datab => \bc|s_cOut\(4),
	datac => \bc|s_cOut\(1),
	datad => \bc|s_cOut\(2),
	combout => \cUnit|nad2|y~2_combout\);

\cUnit|nad2|y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad2|y~3_combout\ = (\clk~input_o\ & (((\bc|s_cOut\(0) & \cUnit|nad2|y~2_combout\)) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \nGRst~input_o\,
	datac => \bc|s_cOut\(0),
	datad => \cUnit|nad2|y~2_combout\,
	combout => \cUnit|nad2|y~3_combout\);

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

\cUnit|nord|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nord|y~0_combout\ = LCELL((!\clk~input_o\ & (!\bc|s_cOut\(0) & \cUnit|nad2|y~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \bc|s_cOut\(0),
	datad => \cUnit|nad2|y~2_combout\,
	combout => \cUnit|nord|y~0_combout\);

\dIn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn,
	o => \dIn~input_o\);

\LFSR|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|comb~0_combout\ = \LFSR|dff3|q~q\ $ (\LFSR|dff0|q~q\ $ (\dIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff3|q~q\,
	datab => \LFSR|dff0|q~q\,
	datac => \dIn~input_o\,
	combout => \LFSR|comb~0_combout\);

\LFSR|dff2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \LFSR|comb~0_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff2|q~q\);

\LFSR|dff1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \LFSR|dff2|q~q\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff1|q~q\);

\LFSR|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \LFSR|dff1|q~q\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff0|q~q\);

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

\LFSR|dff7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \LFSR|chainXor~combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff7|q~q\);

\LFSR|comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|comb~1_combout\ = \LFSR|dff7|q~q\ $ (\LFSR|dff0|q~q\ $ (\dIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff7|q~q\,
	datab => \LFSR|dff0|q~q\,
	datac => \dIn~input_o\,
	combout => \LFSR|comb~1_combout\);

\LFSR|dff6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \LFSR|comb~1_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff6|q~q\);

\LFSR|comb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|comb~2_combout\ = \LFSR|dff6|q~q\ $ (\LFSR|dff0|q~q\ $ (\dIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff6|q~q\,
	datab => \LFSR|dff0|q~q\,
	datac => \dIn~input_o\,
	combout => \LFSR|comb~2_combout\);

\LFSR|dff5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \LFSR|comb~2_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff5|q~q\);

\LFSR|comb~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|comb~3_combout\ = \LFSR|dff5|q~q\ $ (\LFSR|dff0|q~q\ $ (\dIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff5|q~q\,
	datab => \LFSR|dff0|q~q\,
	datac => \dIn~input_o\,
	combout => \LFSR|comb~3_combout\);

\LFSR|dff4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \LFSR|comb~3_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff4|q~q\);

\LFSR|dff3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \LFSR|dff4|q~q\,
	clrn => \cUnit|nad2|ALT_INV_y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff3|q~q\);

\comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\LFSR|dff0|q~q\) # ((\LFSR|dff6|q~q\) # ((\LFSR|dff5|q~q\) # (\LFSR|dff4|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff0|q~q\,
	datab => \LFSR|dff6|q~q\,
	datac => \LFSR|dff5|q~q\,
	datad => \LFSR|dff4|q~q\,
	combout => \comb~0_combout\);

\comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\LFSR|dff1|q~q\) # (\LFSR|dff7|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff1|q~q\,
	datab => \LFSR|dff7|q~q\,
	combout => \comb~1_combout\);

\comb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\LFSR|dff3|q~q\ & (!\LFSR|dff2|q~q\ & (!\comb~0_combout\ & !\comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff3|q~q\,
	datab => \LFSR|dff2|q~q\,
	datac => \comb~0_combout\,
	datad => \comb~1_combout\,
	combout => \comb~2_combout\);

\cUnit|nad4|y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad4|y~3_combout\ = (!\bc|s_cOut\(4) & (!\bc|s_cOut\(3) & (!\bc|s_cOut\(2) & !\bc|s_cOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|s_cOut\(4),
	datab => \bc|s_cOut\(3),
	datac => \bc|s_cOut\(2),
	datad => \bc|s_cOut\(1),
	combout => \cUnit|nad4|y~3_combout\);

\cUnit|nad4|y~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad4|y~15_combout\ = (\clk~input_o\ & (((\cUnit|nad4|y~3_combout\ & \bc|s_cOut\(0))) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUnit|nad4|y~3_combout\,
	datab => \bc|s_cOut\(0),
	datac => \nGRst~input_o\,
	datad => \clk~input_o\,
	combout => \cUnit|nad4|y~15_combout\);

\FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cUnit|nord|y~0_combout\,
	d => \comb~2_combout\,
	clrn => \cUnit|nad4|ALT_INV_y~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF0|Q~q\);

ww_error <= \error~output_o\;
END structure;



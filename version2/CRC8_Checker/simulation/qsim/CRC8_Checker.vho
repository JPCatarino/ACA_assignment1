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

-- DATE "12/09/2020 02:16:42"

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
-- error	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \bc|ff0|Q~0_combout\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \bc|ff1|Q~0_combout\ : std_logic;
SIGNAL \bc|ff1|Q~q\ : std_logic;
SIGNAL \bc|ff2|Q~0_combout\ : std_logic;
SIGNAL \bc|ff2|Q~q\ : std_logic;
SIGNAL \bc|ff3|Q~0_combout\ : std_logic;
SIGNAL \bc|ff3|Q~q\ : std_logic;
SIGNAL \bc|ad3|y~combout\ : std_logic;
SIGNAL \bc|ff4|Q~0_combout\ : std_logic;
SIGNAL \bc|ff4|Q~q\ : std_logic;
SIGNAL \cUnit|nad2|y~0_combout\ : std_logic;
SIGNAL \cUnit|nad2|y~1_combout\ : std_logic;
SIGNAL \bc|ff0|Q~q\ : std_logic;
SIGNAL \cUnit|nord|y~0_combout\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dIn~input_o\ : std_logic;
SIGNAL \LFSR|xor4|y~combout\ : std_logic;
SIGNAL \LFSR|dff2|q~q\ : std_logic;
SIGNAL \LFSR|dff1|q~feeder_combout\ : std_logic;
SIGNAL \LFSR|dff1|q~q\ : std_logic;
SIGNAL \LFSR|dff0|q~feeder_combout\ : std_logic;
SIGNAL \LFSR|dff0|q~q\ : std_logic;
SIGNAL \LFSR|xor0|y~combout\ : std_logic;
SIGNAL \LFSR|dff7|q~q\ : std_logic;
SIGNAL \LFSR|xor1|y~combout\ : std_logic;
SIGNAL \LFSR|dff6|q~q\ : std_logic;
SIGNAL \LFSR|xor2|y~combout\ : std_logic;
SIGNAL \LFSR|dff5|q~q\ : std_logic;
SIGNAL \LFSR|xor3|y~combout\ : std_logic;
SIGNAL \LFSR|dff4|q~q\ : std_logic;
SIGNAL \LFSR|dff3|q~feeder_combout\ : std_logic;
SIGNAL \LFSR|dff3|q~q\ : std_logic;
SIGNAL \OR80|y~1_combout\ : std_logic;
SIGNAL \OR80|y~0_combout\ : std_logic;
SIGNAL \OR80|y~combout\ : std_logic;
SIGNAL \cUnit|nad4|y~0_combout\ : std_logic;
SIGNAL \cUnit|nad4|y~1_combout\ : std_logic;
SIGNAL \FF0|Q~q\ : std_logic;
SIGNAL \cUnit|nad2|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \cUnit|nad4|ALT_INV_y~1_combout\ : std_logic;
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
\cUnit|nad2|ALT_INV_y~1_combout\ <= NOT \cUnit|nad2|y~1_combout\;
\cUnit|nad4|ALT_INV_y~1_combout\ <= NOT \cUnit|nad4|y~1_combout\;
\FF0|ALT_INV_Q~q\ <= NOT \FF0|Q~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X12_Y0_N9
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

-- Location: LCCOMB_X14_Y1_N26
\bc|ff0|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|ff0|Q~0_combout\ = !\bc|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc|ff0|Q~q\,
	combout => \bc|ff0|Q~0_combout\);

-- Location: IOIBUF_X14_Y0_N1
\nGRst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: LCCOMB_X14_Y1_N22
\bc|ff1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|ff1|Q~0_combout\ = \bc|ff1|Q~q\ $ (\bc|ff0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc|ff1|Q~q\,
	datad => \bc|ff0|Q~q\,
	combout => \bc|ff1|Q~0_combout\);

-- Location: FF_X14_Y1_N23
\bc|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|ff1|Q~0_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff1|Q~q\);

-- Location: LCCOMB_X14_Y1_N12
\bc|ff2|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|ff2|Q~0_combout\ = \bc|ff2|Q~q\ $ (((\bc|ff1|Q~q\ & \bc|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff1|Q~q\,
	datac => \bc|ff2|Q~q\,
	datad => \bc|ff0|Q~q\,
	combout => \bc|ff2|Q~0_combout\);

-- Location: FF_X14_Y1_N13
\bc|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|ff2|Q~0_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff2|Q~q\);

-- Location: LCCOMB_X14_Y1_N14
\bc|ff3|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|ff3|Q~0_combout\ = \bc|ff3|Q~q\ $ (((\bc|ff1|Q~q\ & (\bc|ff0|Q~q\ & \bc|ff2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff1|Q~q\,
	datab => \bc|ff0|Q~q\,
	datac => \bc|ff3|Q~q\,
	datad => \bc|ff2|Q~q\,
	combout => \bc|ff3|Q~0_combout\);

-- Location: FF_X14_Y1_N15
\bc|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|ff3|Q~0_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff3|Q~q\);

-- Location: LCCOMB_X14_Y1_N10
\bc|ad3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|ad3|y~combout\ = (\bc|ff0|Q~q\ & (\bc|ff3|Q~q\ & (\bc|ff1|Q~q\ & \bc|ff2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff0|Q~q\,
	datab => \bc|ff3|Q~q\,
	datac => \bc|ff1|Q~q\,
	datad => \bc|ff2|Q~q\,
	combout => \bc|ad3|y~combout\);

-- Location: LCCOMB_X14_Y1_N18
\bc|ff4|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bc|ff4|Q~0_combout\ = \bc|ff4|Q~q\ $ (\bc|ad3|y~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc|ff4|Q~q\,
	datad => \bc|ad3|y~combout\,
	combout => \bc|ff4|Q~0_combout\);

-- Location: FF_X14_Y1_N19
\bc|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|ff4|Q~0_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff4|Q~q\);

-- Location: LCCOMB_X14_Y1_N20
\cUnit|nad2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad2|y~0_combout\ = (!\bc|ff2|Q~q\ & (\bc|ff3|Q~q\ & (!\bc|ff1|Q~q\ & \bc|ff4|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff2|Q~q\,
	datab => \bc|ff3|Q~q\,
	datac => \bc|ff1|Q~q\,
	datad => \bc|ff4|Q~q\,
	combout => \cUnit|nad2|y~0_combout\);

-- Location: LCCOMB_X14_Y1_N24
\cUnit|nad2|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad2|y~1_combout\ = (\clk~input_o\ & (((\bc|ff0|Q~q\ & \cUnit|nad2|y~0_combout\)) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \bc|ff0|Q~q\,
	datac => \nGRst~input_o\,
	datad => \cUnit|nad2|y~0_combout\,
	combout => \cUnit|nad2|y~1_combout\);

-- Location: FF_X14_Y1_N27
\bc|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bc|ff0|Q~0_combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff0|Q~q\);

-- Location: LCCOMB_X14_Y1_N28
\cUnit|nord|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nord|y~0_combout\ = LCELL((!\clk~input_o\ & (!\bc|ff0|Q~q\ & \cUnit|nad2|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datac => \bc|ff0|Q~q\,
	datad => \cUnit|nad2|y~0_combout\,
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

-- Location: LCCOMB_X14_Y5_N24
\LFSR|xor4|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|xor4|y~combout\ = \dIn~input_o\ $ (\LFSR|dff3|q~q\ $ (\LFSR|dff0|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn~input_o\,
	datac => \LFSR|dff3|q~q\,
	datad => \LFSR|dff0|q~q\,
	combout => \LFSR|xor4|y~combout\);

-- Location: FF_X14_Y5_N25
\LFSR|dff2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|xor4|y~combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff2|q~q\);

-- Location: LCCOMB_X14_Y5_N28
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

-- Location: FF_X14_Y5_N29
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

-- Location: LCCOMB_X14_Y5_N26
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

-- Location: FF_X14_Y5_N27
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

-- Location: LCCOMB_X14_Y5_N30
\LFSR|xor0|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|xor0|y~combout\ = \dIn~input_o\ $ (\LFSR|dff0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn~input_o\,
	datac => \LFSR|dff0|q~q\,
	combout => \LFSR|xor0|y~combout\);

-- Location: FF_X14_Y5_N31
\LFSR|dff7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|xor0|y~combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff7|q~q\);

-- Location: LCCOMB_X14_Y5_N12
\LFSR|xor1|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|xor1|y~combout\ = \dIn~input_o\ $ (\LFSR|dff0|q~q\ $ (\LFSR|dff7|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn~input_o\,
	datac => \LFSR|dff0|q~q\,
	datad => \LFSR|dff7|q~q\,
	combout => \LFSR|xor1|y~combout\);

-- Location: FF_X14_Y5_N13
\LFSR|dff6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|xor1|y~combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff6|q~q\);

-- Location: LCCOMB_X14_Y5_N2
\LFSR|xor2|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|xor2|y~combout\ = \dIn~input_o\ $ (\LFSR|dff0|q~q\ $ (\LFSR|dff6|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn~input_o\,
	datac => \LFSR|dff0|q~q\,
	datad => \LFSR|dff6|q~q\,
	combout => \LFSR|xor2|y~combout\);

-- Location: FF_X14_Y5_N3
\LFSR|dff5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|xor2|y~combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff5|q~q\);

-- Location: LCCOMB_X14_Y5_N4
\LFSR|xor3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LFSR|xor3|y~combout\ = \dIn~input_o\ $ (\LFSR|dff0|q~q\ $ (\LFSR|dff5|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn~input_o\,
	datac => \LFSR|dff0|q~q\,
	datad => \LFSR|dff5|q~q\,
	combout => \LFSR|xor3|y~combout\);

-- Location: FF_X14_Y5_N5
\LFSR|dff4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LFSR|xor3|y~combout\,
	clrn => \cUnit|nad2|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR|dff4|q~q\);

-- Location: LCCOMB_X14_Y5_N22
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

-- Location: FF_X14_Y5_N23
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

-- Location: LCCOMB_X14_Y5_N8
\OR80|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OR80|y~1_combout\ = \LFSR|dff7|q~q\ $ (!\LFSR|dff1|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LFSR|dff7|q~q\,
	datad => \LFSR|dff1|q~q\,
	combout => \OR80|y~1_combout\);

-- Location: LCCOMB_X14_Y5_N6
\OR80|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OR80|y~0_combout\ = \LFSR|dff0|q~q\ $ (\LFSR|dff5|q~q\ $ (\LFSR|dff4|q~q\ $ (\LFSR|dff6|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR|dff0|q~q\,
	datab => \LFSR|dff5|q~q\,
	datac => \LFSR|dff4|q~q\,
	datad => \LFSR|dff6|q~q\,
	combout => \OR80|y~0_combout\);

-- Location: LCCOMB_X14_Y5_N16
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

-- Location: LCCOMB_X14_Y1_N16
\cUnit|nad4|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad4|y~0_combout\ = (!\bc|ff1|Q~q\ & (!\bc|ff4|Q~q\ & (\bc|ff0|Q~q\ & !\bc|ff2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff1|Q~q\,
	datab => \bc|ff4|Q~q\,
	datac => \bc|ff0|Q~q\,
	datad => \bc|ff2|Q~q\,
	combout => \cUnit|nad4|y~0_combout\);

-- Location: LCCOMB_X14_Y5_N18
\cUnit|nad4|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cUnit|nad4|y~1_combout\ = (\clk~input_o\ & (((!\bc|ff3|Q~q\ & \cUnit|nad4|y~0_combout\)) # (!\nGRst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nGRst~input_o\,
	datab => \clk~input_o\,
	datac => \bc|ff3|Q~q\,
	datad => \cUnit|nad4|y~0_combout\,
	combout => \cUnit|nad4|y~1_combout\);

-- Location: FF_X14_Y5_N17
\FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cUnit|nord|y~0_combout\,
	d => \OR80|y~combout\,
	clrn => \cUnit|nad4|ALT_INV_y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF0|Q~q\);

ww_error <= \error~output_o\;
END structure;



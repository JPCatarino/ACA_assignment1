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

-- DATE "12/01/2020 03:10:20"

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

ENTITY 	CRC8_Encoder IS
    PORT (
	clk : IN std_logic;
	dIn : IN std_logic;
	dOut : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CRC8_Encoder;

-- Design Ports Information
-- dOut[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[7]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_dIn : std_logic;
SIGNAL ww_dOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dOut[0]~output_o\ : std_logic;
SIGNAL \dOut[1]~output_o\ : std_logic;
SIGNAL \dOut[2]~output_o\ : std_logic;
SIGNAL \dOut[3]~output_o\ : std_logic;
SIGNAL \dOut[4]~output_o\ : std_logic;
SIGNAL \dOut[5]~output_o\ : std_logic;
SIGNAL \dOut[6]~output_o\ : std_logic;
SIGNAL \dOut[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dIn~input_o\ : std_logic;
SIGNAL \lfsr0|comb~0_combout\ : std_logic;
SIGNAL \lfsr0|dff6|q~q\ : std_logic;
SIGNAL \lfsr0|comb~1_combout\ : std_logic;
SIGNAL \lfsr0|dff5|q~q\ : std_logic;
SIGNAL \lfsr0|comb~2_combout\ : std_logic;
SIGNAL \lfsr0|dff4|q~q\ : std_logic;
SIGNAL \lfsr0|dff3|q~feeder_combout\ : std_logic;
SIGNAL \lfsr0|dff3|q~q\ : std_logic;
SIGNAL \lfsr0|comb~3_combout\ : std_logic;
SIGNAL \lfsr0|dff2|q~q\ : std_logic;
SIGNAL \lfsr0|dff1|q~feeder_combout\ : std_logic;
SIGNAL \lfsr0|dff1|q~q\ : std_logic;
SIGNAL \lfsr0|dff0|q~feeder_combout\ : std_logic;
SIGNAL \lfsr0|dff0|q~q\ : std_logic;
SIGNAL \lfsr0|chainXor~combout\ : std_logic;
SIGNAL \lfsr0|dff7|q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_dIn <= dIn;
dOut <= ww_dOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X8_Y0_N9
\dOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr0|dff7|q~q\,
	devoe => ww_devoe,
	o => \dOut[0]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\dOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr0|dff6|q~q\,
	devoe => ww_devoe,
	o => \dOut[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\dOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr0|dff5|q~q\,
	devoe => ww_devoe,
	o => \dOut[2]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\dOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr0|dff4|q~q\,
	devoe => ww_devoe,
	o => \dOut[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\dOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr0|dff3|q~q\,
	devoe => ww_devoe,
	o => \dOut[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\dOut[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr0|dff2|q~q\,
	devoe => ww_devoe,
	o => \dOut[5]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\dOut[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr0|dff1|q~q\,
	devoe => ww_devoe,
	o => \dOut[6]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\dOut[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr0|dff0|q~q\,
	devoe => ww_devoe,
	o => \dOut[7]~output_o\);

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

-- Location: LCCOMB_X14_Y1_N18
\lfsr0|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr0|comb~0_combout\ = \dIn~input_o\ $ (\lfsr0|dff0|q~q\ $ (\lfsr0|dff7|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn~input_o\,
	datac => \lfsr0|dff0|q~q\,
	datad => \lfsr0|dff7|q~q\,
	combout => \lfsr0|comb~0_combout\);

-- Location: FF_X14_Y1_N19
\lfsr0|dff6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lfsr0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr0|dff6|q~q\);

-- Location: LCCOMB_X14_Y1_N20
\lfsr0|comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr0|comb~1_combout\ = \dIn~input_o\ $ (\lfsr0|dff0|q~q\ $ (\lfsr0|dff6|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn~input_o\,
	datac => \lfsr0|dff0|q~q\,
	datad => \lfsr0|dff6|q~q\,
	combout => \lfsr0|comb~1_combout\);

-- Location: FF_X14_Y1_N21
\lfsr0|dff5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lfsr0|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr0|dff5|q~q\);

-- Location: LCCOMB_X14_Y1_N10
\lfsr0|comb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr0|comb~2_combout\ = \dIn~input_o\ $ (\lfsr0|dff0|q~q\ $ (\lfsr0|dff5|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn~input_o\,
	datac => \lfsr0|dff0|q~q\,
	datad => \lfsr0|dff5|q~q\,
	combout => \lfsr0|comb~2_combout\);

-- Location: FF_X14_Y1_N11
\lfsr0|dff4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lfsr0|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr0|dff4|q~q\);

-- Location: LCCOMB_X14_Y1_N24
\lfsr0|dff3|q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr0|dff3|q~feeder_combout\ = \lfsr0|dff4|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr0|dff4|q~q\,
	combout => \lfsr0|dff3|q~feeder_combout\);

-- Location: FF_X14_Y1_N25
\lfsr0|dff3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lfsr0|dff3|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr0|dff3|q~q\);

-- Location: LCCOMB_X14_Y1_N2
\lfsr0|comb~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr0|comb~3_combout\ = \dIn~input_o\ $ (\lfsr0|dff0|q~q\ $ (\lfsr0|dff3|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn~input_o\,
	datac => \lfsr0|dff0|q~q\,
	datad => \lfsr0|dff3|q~q\,
	combout => \lfsr0|comb~3_combout\);

-- Location: FF_X14_Y1_N3
\lfsr0|dff2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lfsr0|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr0|dff2|q~q\);

-- Location: LCCOMB_X14_Y1_N12
\lfsr0|dff1|q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr0|dff1|q~feeder_combout\ = \lfsr0|dff2|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr0|dff2|q~q\,
	combout => \lfsr0|dff1|q~feeder_combout\);

-- Location: FF_X14_Y1_N13
\lfsr0|dff1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lfsr0|dff1|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr0|dff1|q~q\);

-- Location: LCCOMB_X14_Y1_N14
\lfsr0|dff0|q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr0|dff0|q~feeder_combout\ = \lfsr0|dff1|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lfsr0|dff1|q~q\,
	combout => \lfsr0|dff0|q~feeder_combout\);

-- Location: FF_X14_Y1_N15
\lfsr0|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lfsr0|dff0|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr0|dff0|q~q\);

-- Location: LCCOMB_X14_Y1_N28
\lfsr0|chainXor\ : cycloneiv_lcell_comb
-- Equation(s):
-- \lfsr0|chainXor~combout\ = \dIn~input_o\ $ (\lfsr0|dff0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dIn~input_o\,
	datac => \lfsr0|dff0|q~q\,
	combout => \lfsr0|chainXor~combout\);

-- Location: FF_X14_Y1_N29
\lfsr0|dff7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lfsr0|chainXor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr0|dff7|q~q\);

ww_dOut(0) <= \dOut[0]~output_o\;

ww_dOut(1) <= \dOut[1]~output_o\;

ww_dOut(2) <= \dOut[2]~output_o\;

ww_dOut(3) <= \dOut[3]~output_o\;

ww_dOut(4) <= \dOut[4]~output_o\;

ww_dOut(5) <= \dOut[5]~output_o\;

ww_dOut(6) <= \dOut[6]~output_o\;

ww_dOut(7) <= \dOut[7]~output_o\;
END structure;



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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/01/2020 03:12:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CRC8_Encoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CRC8_Encoder_vhd_vec_tst IS
END CRC8_Encoder_vhd_vec_tst;
ARCHITECTURE CRC8_Encoder_arch OF CRC8_Encoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dIn : STD_LOGIC;
SIGNAL dOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT CRC8_Encoder
	PORT (
	clk : IN STD_LOGIC;
	dIn : IN STD_LOGIC;
	dOut : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CRC8_Encoder
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dIn => dIn,
	dOut => dOut
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		clk <= '0';
		WAIT FOR 30938 ps;
		clk <= '1';
		WAIT FOR 30937 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- dIn
t_prcs_dIn: PROCESS
BEGIN
	dIn <= '0';
	WAIT FOR 20000 ps;
	dIn <= '1';
	WAIT FOR 20000 ps;
	dIn <= '0';
	WAIT FOR 100000 ps;
	dIn <= '1';
	WAIT FOR 30000 ps;
	dIn <= '0';
	WAIT FOR 100000 ps;
	dIn <= '1';
	WAIT FOR 20000 ps;
	dIn <= '0';
	WAIT FOR 100000 ps;
	dIn <= '1';
	WAIT FOR 20000 ps;
	dIn <= '0';
	WAIT FOR 110000 ps;
	dIn <= '1';
	WAIT FOR 20000 ps;
	dIn <= '0';
	WAIT FOR 100000 ps;
	dIn <= '1';
	WAIT FOR 20000 ps;
	dIn <= '0';
	WAIT FOR 100000 ps;
	dIn <= '1';
	WAIT FOR 30000 ps;
	dIn <= '0';
	WAIT FOR 100000 ps;
	dIn <= '1';
	WAIT FOR 20000 ps;
	dIn <= '0';
WAIT;
END PROCESS t_prcs_dIn;
END CRC8_Encoder_arch;

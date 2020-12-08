LIBRARY ieee;
USE ieee.std_logic_1164.all;

library CRC8_LFSR;
use CRC8_LFSR.all;

library flipFlopDPET;
use flipFlopDPET.all;

library BinCounter5;
use BinCounter5.all;

library Control_Unit;
use Control_Unit.all;

entity CRC8_Checker is
	port(
		nGRst : in std_logic;
		clk	: in std_logic;
		dIn	: in std_logic;
		error	: out std_logic
	);
end CRC8_Checker;

architecture Structural of CRC8_Checker is
	signal iNRst, iNset, iNclk, s_in	: STD_LOGIC;
	signal stat		: STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal s_dOut 	: STD_LOGIC_VECTOR(7 downto 0);
	signal s_error : STD_LOGIC;
	
	
	component gateOr8
	port(
		x0, x1, x2, x3, x4, x5, x6, x7: in std_logic;
		y : out std_logic
	);
	end component;

	component BinCounter5
	port(
		clk, rst : in std_logic;
		cOut		: out std_logic_vector(4 downto 0)
	);
	end component;
	
	component Control_Unit
	PORT(nGRst: IN STD_LOGIC;
        clk:   IN STD_LOGIC;
        add:   IN STD_LOGIC_VECTOR (4 DOWNTO 0);
        nRst:  OUT STD_LOGIC;
        nSetO: OUT STD_LOGIC;
        clkO:  OUT STD_LOGIC);
	end component;
	
	component flipFlopDPET
	PORT (clk, D: IN STD_LOGIC;
        nSet, nRst: IN STD_LOGIC;
        Q, nQ: OUT STD_LOGIC);
	end component;
	
	component CRC8_LFSR
	port(
		clk 	 : in std_logic;
		rst	 : in std_logic;
		dIn	 : in std_logic;
		dOut	 : out std_logic_vector(7 downto 0)
	);
	end component;
begin
	bc: 	 BinCounter5 PORT MAP (clk, iNRst, stat);
	cUnit: Control_Unit PORT MAP (nGRst, clk, stat, iNRst, iNset, iNclk);	
	LFSR:  CRC8_LFSR PORT MAP (clk, iNRst, dIn, s_dOut); 
	OR80:	 gateOr8 PORT MAP(s_dOut(0), s_dOut(1), s_dOut(2), s_dOut(3), s_dOut(4), s_dOut(5), s_dOut(6), s_dOut(7), s_error);
	FF0:	 flipFlopDPET PORT MAP (iNclk, s_error, iNset, '1', error); 	
end Structural;


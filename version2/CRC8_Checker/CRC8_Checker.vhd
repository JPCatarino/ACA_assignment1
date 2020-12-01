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
		dOut 	: out std_logic_vector(7 downto 0);
		error	: out std_logic
	);
end CRC8_Checker;

architecture Structural of CRC8_Checker is
	signal iNRst, iNset, iNclk	: STD_LOGIC;
	signal stat		: STD_LOGIC_VECTOR (4 DOWNTO 0);
	signal s_dOut 	: STD_LOGIC_VECTOR(7 downto 0);


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
	FF0:	 flipFlopDPET PORT MAP (iNclk, s_dOut(0) or s_dOut(1) or s_dOut(2) or s_dOut(3) or s_dOut(4) or s_dOut(5) or s_dOut(6) or s_dOut(7), iNset, '1', error); 	
	dOut <= s_dOut;
end Structural;


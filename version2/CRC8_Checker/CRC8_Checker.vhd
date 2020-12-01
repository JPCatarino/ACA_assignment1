LIBRARY ieee;
USE ieee.std_logic_1164.all;

library CRC8_LFSR;
use CRC8_LFSR.all

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
		error	: out std_logic;
	);
end CRC8_Checker;

architecture Structural of CRC8_Checker is
	component BinCounter5
	port(
		clk, rst : std_logic;
		cOut		: std_logic_vector(4 downto 0);
	);
	end component;
	
	component Control_Unit
	port();
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
		nSet	 : in std_logic;
		dIn	 : in std_logic;
		dOut	 : out std_logic_vector(7 downto 0)
	);
	end component;
begin
end Structural;


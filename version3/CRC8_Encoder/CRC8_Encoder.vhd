LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY CRC8_LFSR;
USE CRC8_LFSR.all;

entity CRC8_Encoder is
	port(
		clk 	 : in std_logic;
		dIn	 : in std_logic;
		dOut	 : out std_logic_vector(7 downto 0)
	);
end CRC8_Encoder;

architecture Structural of CRC8_Encoder is
	signal crc_out	: std_logic_vector(7 downto 0);
	component CRC8_LFSR
	port(
		clk 	 : in std_logic;
		dIn	 : in std_logic;
		dOut	 : out std_logic_vector(7 downto 0)
	);
	end component;
begin
	lfsr0: CRC8_LFSR PORT MAP (clk, dIn, crc_out);
	dOut <= crc_out;
end Structural;
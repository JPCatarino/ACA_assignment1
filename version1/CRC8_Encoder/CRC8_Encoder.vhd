library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CRC8_Encoder is
port (dIn	: in STD_LOGIC_VECTOR(15 downto 0);
		dOut	: out STD_LOGIC_VECTOR(23 downto 0));
end CRC8_Encoder;

architecture Behavioural of CRC8_Encoder is
	signal remainder	:  STD_LOGIC_VECTOR(7 downto 0);
begin
	
	remainder(0) <= dIn(0) xor dIn(3) xor dIn(5) xor dIn(7) xor dIn(8) xor dIn(9) xor dIn(10) xor dIn(11) xor dIn (12) xor dIn(15); 
	remainder(1) <= dIn(0) xor dIn(1) xor dIn(3) xor dIn(4) xor dIn(5) xor dIn(6) xor dIn(7) xor dIn(13) xor dIn(15);
	remainder(2) <= dIn(0) xor dIn(1) xor dIn(2) xor dIn(3) xor dIn(4) xor dIn(6) xor dIn(9) xor dIn(10) xor dIn(11) xor dIn(12) xor dIn(14) xor dIn(15);
	remainder(3) <= dIn(0) xor dIn(1) xor dIn(2) xor dIn(4) xor dIn(8) xor dIn(9) xor dIn(13);
	remainder(4) <= dIn(1) xor dIn(2) xor dIn(3) xor dIn(5) xor dIn(9) xor dIn(10) xor dIn(14);
	remainder(5) <= dIn(0) xor dIn(2) xor dIn(4) xor dIn(5) xor dIn(6) xor dIn(7) xor dIn(8) xor dIn(9) xor dIn(12);
	remainder(6) <= dIn(1) xor dIn(3) xor dIn(5) xor dIn(6) xor dIn(7) xor dIn(8) xor dIn(9) xor dIn(10) xor dIn(13);
	remainder(7) <= dIn(2) xor dIn(4) xor dIn(6) xor dIn(7) xor dIn(8) xor dIn(9) xor dIn(10) xor dIn(11) xor dIn(14);
	
	dOut(7 downto 0) <= remainder;
	dOut(23 downto 8) <= dIn;
end Behavioural;
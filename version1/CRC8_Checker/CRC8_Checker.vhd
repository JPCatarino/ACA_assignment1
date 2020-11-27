library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity CRC8_Checker is
port (dIn	: in STD_LOGIC_VECTOR(23 downto 0);
		dOut	: out STD_LOGIC);
end CRC8_Checker;

architecture Behavioural of CRC8_Checker is
	signal remainder	:  STD_LOGIC_VECTOR(7 downto 0);
begin
	
	remainder(0) <= dIn(0+8) xor dIn(3+8) xor dIn(5+8) xor dIn(7+8) xor dIn(8+8) xor dIn(9+8) xor dIn(10+8) xor dIn(11+8) xor dIn (12+8) xor dIn(15+8) xor dIn(0); 
	remainder(1) <= dIn(0+8) xor dIn(1+8) xor dIn(3+8) xor dIn(4+8) xor dIn(5+8) xor dIn(6+8) xor dIn(7+8) xor dIn(13+8) xor dIn(15+8)xor dIn(1);
	remainder(2) <= dIn(0+8) xor dIn(1+8) xor dIn(2+8) xor dIn(3+8) xor dIn(4+8) xor dIn(6+8) xor dIn(9+8) xor dIn(10+8) xor dIn(11+8) xor dIn(12+8) xor dIn(14+8) xor dIn(15+8) xor dIn(2);
	remainder(3) <= dIn(0+8) xor dIn(1+8) xor dIn(2+8) xor dIn(4+8) xor dIn(8+8) xor dIn(9+8) xor dIn(13+8) xor dIn(3);
	remainder(4) <= dIn(1+8) xor dIn(2+8) xor dIn(3+8) xor dIn(5+8) xor dIn(9+8) xor dIn(10+8) xor dIn(14+8) xor dIn(4);
	remainder(5) <= dIn(0+8) xor dIn(2+8) xor dIn(4+8) xor dIn(5+8) xor dIn(6+8) xor dIn(7+8) xor dIn(8+8) xor dIn(9+8) xor dIn(12+8) xor dIn(5);
	remainder(6) <= dIn(1+8) xor dIn(3+8) xor dIn(5+8) xor dIn(6+8) xor dIn(7+8) xor dIn(8+8) xor dIn(9+8) xor dIn(10+8) xor dIn(13+8) xor dIn(6);
	remainder(7) <= dIn(2+8) xor dIn(4+8) xor dIn(6+8) xor dIn(7+8) xor dIn(8+8) xor dIn(9+8) xor dIn(10+8) xor dIn(11+8) xor dIn(14+8) xor dIn(7);
	
	dOut <= not(remainder(0) or remainder(1) or remainder(2) or remainder(3) or remainder(4) or remainder(5) or remainder(6) or remainder(7));
	
end Behavioural;
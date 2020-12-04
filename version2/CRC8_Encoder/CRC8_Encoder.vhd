library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CRC8_Encoder is
port (dIn	: in STD_LOGIC_VECTOR(15 downto 0);
		dOut	: out STD_LOGIC_VECTOR(23 downto 0));
end CRC8_Encoder;

architecture Behavioural of CRC8_Encoder is
	signal remainder	:  STD_LOGIC_VECTOR(7 downto 0);
	signal porta1, porta2, porta3, porta4, porta5, porta6, porta7, porta8, porta9, porta57,
	porta1a10, porta24, porta248, porta69, porta13, porta132, porta4a7, porta5a4, porta3a3a6,
	porta8a0, porta4a2, portaa0a5a12, porta6a11: std_logic;
begin
	
	porta1 <= dIn(8) xor dIn(9);
	porta2 <= dIn(6) xor dIn(7);
	porta3 <= dIn(2) xor dIn(4);
	porta4 <= dIn(3) xor dIn(5);
	porta5 <= dIn(0) xor dIn(15);
	porta6 <= dIn(10) xor dIn(14);
	porta7 <= dIn(11) xor dIn(12);
	porta8 <= dIn(1)  xor dIn(13);
	porta9 <= dIn(1)  xor dIn(9);
	
	porta57 <= porta5 xor porta7;
	porta1a10 <= porta1 xor dIn(10);
	porta24 <= porta2 xor porta4;
	porta248 <= porta24 xor porta8;
	porta69 <= porta6 xor porta9;
	porta13 <= porta1 xor porta3;
	porta132 <= porta13 xor porta2;
	porta4a7 <= porta4 xor dIn(7);
	porta5a4 <= porta5 xor dIn(4);
	porta3a3a6 <= porta3 xor dIn(3) xor dIn(6);
	porta8a0 <= porta8 xor dIn(0);
	porta4a2 <= porta4 xor dIn(2);
	portaa0a5a12 <= dIn(0) xor dIn(5) xor dIn(12);
	porta6a11 <= porta6 xor dIn(11);
	
	
	remainder(0) <= porta57  xor porta4a7 xor porta1a10; 
	remainder(1) <= porta5a4 xor porta248;  
	remainder(2) <= porta57  xor porta69 xor porta3a3a6;  
	remainder(3) <= porta8a0 xor porta13; 
	remainder(4) <= porta4a2 xor porta69;  
	remainder(5) <= porta132 xor portaa0a5a12;
	remainder(6) <= porta248 xor porta1a10;
	remainder(7) <= porta132 xor porta6a11;
	
	dOut(7 downto 0) <= remainder;
	dOut(23 downto 8) <= dIn;
end Behavioural;
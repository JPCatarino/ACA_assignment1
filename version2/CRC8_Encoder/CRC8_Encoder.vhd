library IEEE;
use IEEE.STD_LOGIC_1164.all;

library gateXOr2;
use gateXOr2.all;

entity CRC8_Encoder is
port (dIn	: in STD_LOGIC_VECTOR(15 downto 0);
		dOut	: out STD_LOGIC_VECTOR(23 downto 0));
end CRC8_Encoder;

architecture Behavioural of CRC8_Encoder is
	COMPONENT gateXOr2
		PORT (x0, x1: IN STD_LOGIC;
				y: OUT STD_LOGIC);
   END COMPONENT;
	signal remainder	:  STD_LOGIC_VECTOR(7 downto 0);
	signal porta1, porta2, porta3, porta4, porta5, porta6, porta7, porta8, porta9, porta57,
	porta1a10, porta24, porta248, porta69, porta13, porta132, porta4a7, porta5a4, porta3a3a6,
	porta8a0, porta4a2, portaa0a5a12, porta6a11, portaa3a6, portaa0a5, porta4a7a1a10, porta693a3a6 : std_logic;
begin
	xorPorta1: gateXOr2 PORT MAP (dIn(8), dIn(9), porta1);
	xorPorta2: gateXOr2 PORT MAP (dIn(6), dIn(7), porta2);
	xorPorta3: gateXOr2 PORT MAP (dIn(2), dIn(4), porta3);
	xorPorta4: gateXOr2 PORT MAP (dIn(3), dIn(5), porta4);
	xorPorta5: gateXOr2 PORT MAP (dIn(0), dIn(15), porta5);
	xorPorta6: gateXOr2 PORT MAP (dIn(10), dIn(14), porta6);
	xorPorta7: gateXOr2 PORT MAP (dIn(11), dIn(12), porta7);
	xorPorta8: gateXOr2 PORT MAP (dIn(1), dIn(13), porta8);
	xorPorta9: gateXOr2 PORT MAP (dIn(1), dIn(9), porta9);
	xorPortaa3a6: gateXOr2 PORT MAP (dIn(3), dIn(6), portaa3a6);
	xorPortaa0a5: gateXOr2 PORT MAP (dIn(0), dIn(5), portaa0a5);
	
	
	xorPorta57: gateXOr2 PORT MAP (porta5, porta7, porta57);
	xorPorta1a10: gateXOr2 PORT MAP (porta1, dIn(10), porta1a10);
	xorPorta24: gateXOr2 PORT MAP (porta2, porta4, porta24);
	xorPorta69: gateXOr2 PORT MAP (porta6, porta9, porta69);
	xorPorta13: gateXOr2 PORT MAP (porta1, porta3, porta13);	
	xorPorta4a7: gateXOr2 PORT MAP (porta4, dIn(7), porta4a7);
	xorPorta5a4: gateXOr2 PORT MAP (porta5, dIn(4), porta5a4);
	xorPorta3a3a6: gateXOr2 PORT MAP (porta3, portaa3a6, porta3a3a6);
	xorPorta8a0: gateXOr2 PORT MAP (porta8, dIn(0), porta8a0);
	xorPorta4a2: gateXOr2 PORT MAP (porta4, dIn(2), porta4a2);
	xorPortaa0a5a12: gateXOr2 PORT MAP (portaa0a5, dIn(12), portaa0a5a12);
	xorPorta6a11: gateXOr2 PORT MAP (porta6, dIn(11), porta6a11);
	
	xorPorta248: gateXOr2 PORT MAP (porta24, porta8, porta248);
	xorPorta132: gateXOr2 PORT MAP (porta13, porta2, porta132);
	xorPorta4a7a1a10: gateXOr2 PORT MAP (porta4a7, porta1a10, porta4a7a1a10);
	xorPorta693a3a6: gateXOr2 PORT MAP (porta69, porta3a3a6, porta693a3a6);
	
	xorRemainder0: gateXOr2 PORT MAP (porta57, porta4a7a1a10, remainder(0));
	xorRemainder1: gateXOr2 PORT MAP (porta5a4, porta248, remainder(1));
	xorRemainder2: gateXOr2 PORT MAP (porta57, porta693a3a6, remainder(2));
	xorRemainder3: gateXOr2 PORT MAP (porta8a0, porta13, remainder(3));
	xorRemainder4: gateXOr2 PORT MAP (porta4a2, porta69, remainder(4));
	xorRemainder5: gateXOr2 PORT MAP (porta132,portaa0a5a12, remainder(5));
	xorRemainder6: gateXOr2 PORT MAP (porta248, porta1a10, remainder(6));
	xorRemainder7: gateXOr2 PORT MAP (porta132, porta6a11, remainder(7));
		
	
	
	dOut(7 downto 0) <= remainder;
	dOut(23 downto 8) <= dIn;
end Behavioural;
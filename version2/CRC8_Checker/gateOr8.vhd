LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateOr8 is 
	port(
		x0, x1, x2, x3, x4, x5, x6, x7: in std_logic;
		y : out std_logic
	);
end gateOr8;

ARCHITECTURE logicGate of gateOr8 is
begin
	y <= x0 xor x1 xor x2 xor x3 xor x4 xor x5 xor x6 xor x7;
end logicGate;


	
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
	y <= x0 or x1 or x2 or x3 or x4 or x5 or x6 or x7;
end logicGate;


	
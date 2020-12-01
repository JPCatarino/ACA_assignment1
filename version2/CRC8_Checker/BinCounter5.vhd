LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity BinCounter5 is
	port(
		clk, rst : std_logic;
		cOut		: std_logic_vector(4 downto 0);
	);
end BinCounter5;

architecture Behavioural of BinCounter5 is 
	signal s_cOut : std_logic_vector(4 downto 0);
begin
	process(clk, rst)
	begin 
		if (rst='1') then
			s_cOut <= "00000";
		elsif(clk = '1' and clk'EVENT) then
			s_cOut <= s_cOut + 1;
		end if;
	end process;
	cOut <= s_cOut;
end Behavioural;

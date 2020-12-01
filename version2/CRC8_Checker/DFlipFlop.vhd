LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity DFlipFlop is 
   port(
      clk : in std_logic;   
		rst : in std_logic;
      d :in  std_logic;
      q : out std_logic    		
   );
end DFlipFlop;
architecture Behavioral of DFlipFlop is  
begin  
 process(clk, rst)
 begin 
	 if (rst = '0') then
		q <= '0';
    elsif(rising_edge(clk)) then
		q <= d; 
    end if;       
 end process;  
end Behavioral; 
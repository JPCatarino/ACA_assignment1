LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY DFlipFlop;
USE DFlipFlop.all;

entity CRC8_LFSR is
	port(
		clk 	 : in std_logic;
		dIn	 : in std_logic;
		dOut	 : out std_logic_vector(7 downto 0)
	);
end CRC8_LFSR;

architecture Structural of CRC8_LFSR is
	signal chainXor : std_logic := '0';
	signal dff0_out, dff1_out, dff2_out, dff3_out, dff4_out, dff5_out, dff6_out, dff7_out : std_logic := '0';
	component DFlipFlop 
   port(
      clk :in std_logic;   
      d :in  std_logic;
      q : out std_logic    		
   );
	end component;
begin
	dff7: DFlipFlop PORT MAP (clk, chainXor, dff7_out);
	dff6: DFlipFlop PORT MAP (clk, chainXor xor dff7_out, dff6_out);
	dff5: DFlipFlop PORT MAP (clk, chainXor xor dff6_out, dff5_out);
	dff4: DFlipFlop PORT MAP (clk, chainXor xor dff5_out, dff4_out);
	dff3: DFlipFlop PORT MAP (clk, dff4_out, dff3_out);
	dff2: DFlipFlop PORT MAP (clk, chainXor xor dff3_out, dff2_out);
	dff1: DFlipFlop PORT MAP (clk, dff2_out, dff1_out);
	dff0: DFlipFlop PORT MAP (clk, dff1_out, dff0_out);
	
	chainXor <= dff0_out xor dIn;
	dOut <= dff0_out & dff1_out & dff2_out & dff3_out & dff4_out & dff5_out & dff6_out & dff7_out;
end Structural;
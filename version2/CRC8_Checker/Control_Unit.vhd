LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY contMem IS
  PORT (add:  IN STD_LOGIC_VECTOR (4 DOWNTO 0);
        dOut: OUT STD_LOGIC_VECTOR (2 DOWNTO 0));
END contMem;

ARCHITECTURE behavior OF contMem IS
BEGIN
  PROCESS (add)
    TYPE CMem IS ARRAY(0 TO 31) OF STD_LOGIC_VECTOR (2 DOWNTO 0);
    VARIABLE prog: CMem := (CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   00
                            CONV_STD_LOGIC_VECTOR (16#5#, 3),  -- nRst = 1   nSetO = 0   nEnClk = 1   01
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   02
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   03
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   04
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   05
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   06
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   07
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   08
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   09
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   0a
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   0b
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   0c
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   0d
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   0e
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   0f
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   10
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   11
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   12
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   13
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   14
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   15
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   16
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   17
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   18
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   19
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   1a
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   1b
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   1c
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   1d
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   1e
                            CONV_STD_LOGIC_VECTOR (16#7#, 3),  -- nRst = 1   nSetO = 1   nEnClk = 1   1f
                            CONV_STD_LOGIC_VECTOR (16#6#, 3)); -- nRst = 1   nSetO = 1   nEnClk = 0   20
    VARIABLE pos: INTEGER;
  BEGIN
    pos := CONV_INTEGER (add);
    dOut <= prog(pos);
  END PROCESS;
END behavior;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Control_Unit is 
	PORT (nGRst: IN STD_LOGIC;
        clk:   IN STD_LOGIC;
        add:   IN STD_LOGIC_VECTOR (5 DOWNTO 0);
        nRst:  OUT STD_LOGIC;
        nSetO: OUT STD_LOGIC;
        clkO:  OUT STD_LOGIC);
end Control_Unit;
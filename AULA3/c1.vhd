library IEEE;
use IEEE.Std_Logic_1164.all;

entity C1 is
port (A: in std_logic;
		B: in std_logic;
		COUT: out std_logic;
		S: out std_logic
		);
end C1;

architecture c1_estr of C1 is
begin
COUT <= A and B;
S <= A xor B;
end c1_estr;
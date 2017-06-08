library IEEE;
use IEEE.Std_Logic_1164.all;

entity C4 is
port (A: in std_logic;
		B: in std_logic;
		C: in std_logic;
		F: out std_logic
		);
end C4;

architecture c4_estr of C4 is
begin
		F <= (A and B) or C;
end c4_estr;
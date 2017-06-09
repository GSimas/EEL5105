library IEEE;
use IEEE.Std_Logic_1164.all;

entity C1 is
port (
A: in std_logic;
B: in std_logic;
C: in std_logic;
F: out std_logic
);
end C1;

architecture c1_estr of C1 is
begin
F <= A or B or C;
end c1_estr;
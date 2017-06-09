library IEEE;
use IEEE.Std_Logic_1164.all;

entity C4 is
port (
w: in std_logic;
x: in std_logic;
y: in std_logic;
z: in std_logic;
s: in std_logic_vector(1 downto 0);
F: out std_logic
);
end C4;

architecture c4_estr of C4 is
begin
F <= 
w when s = "00" else
x when s = "01" else
y when s = "10" else
z;
end c4_estr;
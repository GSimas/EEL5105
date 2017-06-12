library IEEE;
use IEEE.Std_Logic_1164.all;

entity C4 is
port (A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(3 downto 0)
		);
end C4;

architecture circuito of C4 is
begin
		F <= not(A);
end circuito;
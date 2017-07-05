library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity comparador is
	port 
	(
		A	 : in std_logic_vector(3 downto 0);
		B	 : in std_logic_vector(3 downto 0);
		AmB : out std_logic
	);
end entity;

architecture rtlcomp of comparador is
begin
	AmB <= '1' when (A < B) else '0';
end rtlcomp;
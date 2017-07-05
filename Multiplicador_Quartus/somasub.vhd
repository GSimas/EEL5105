library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity somasub is
	port 
	(
	   sub : in std_logic;
		A	 : in std_logic_vector(7 downto 0);
		B	 : in std_logic_vector(7 downto 0);
		R   : out std_logic_vector(7 downto 0)
	);

end entity;

architecture rtl of somasub is
begin
	R <= (A - B) when (sub = '1') else
	     (A + B);
end rtl;

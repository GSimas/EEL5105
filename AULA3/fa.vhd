library IEEE;
use IEEE.Std_Logic_1164.all;

entity FA is
port (A : in std_logic;
		B : in std_logic;
		C : in std_logic;
		COUT : out std_logic;
		S : out std_logic
		);
end FA;

architecture fa_estr of FA is
begin
		COUT <= (A and B) or (A and C) or (C and B);
		S <= ((not C) and (A xor B)) or (C and (A xnor B));
end fa_estr;
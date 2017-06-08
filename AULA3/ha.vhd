library IEEE;
use IEEE.Std_Logic_1164.all;

entity HA is
port (A: in std_logic;
		B: in std_logic;
		COUT: out std_logic;
		S: out std_logic
		);
end HA;

architecture ha_estr of HA is
begin
	COUT <= A and B;
	S <= A xor B;
end ha_estr;
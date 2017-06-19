library ieee;
use ieee.std_logic_1164.all;

entity map3 is
	port
	(
		F0, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, F13, F14, F15: out std_logic_vector(31 downto 0)
	);
end map3;	
	
architecture map3_struct of map3 is
begin
	F0 <=  "00000000000000000000110000000000";
	F1 <=  "00000001000000011000110000011000";
	F2 <=  "00000000100000000100000000011000";
	F3 <=  "00000000010000000000001100000100";
	F4 <=  "00000000000000001000000000000000";
	F5 <=  "00000000000000011000001000000010";
	F6 <=  "00000000000000111000000010001110";
	F7 <=  "00000000000000000000000000000000";
	F8 <=  "00000010000000000000010000000010";
	F9 <=  "00000000000000011000110001000110";
	F10 <= "00000100000000001000000000110000";
	F11 <= "00000000011000001000000000100000";
	F12 <= "00000000011000000100000000000000";
	F13 <= "00000010000000000000110000100000";
	F14 <= "00000000010000000000000011011000";
	F15 <= "00010000000010000100000000011000";
end map3_struct;
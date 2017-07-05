library ieee;
use ieee.std_logic_1164.all;

entity reg8 is
	port 
	(
		clk   : in std_logic;
		clr   : in std_logic;
		load   : in std_logic;
		D	: in std_logic_vector(7 downto 0);
		Q	: out std_logic_vector(7 downto 0)
	);
end entity;

architecture rtlreg8 of reg8 is
begin
	process(clk,clr)
	begin	
		if (clr = '1') then
			Q <= "00000000";
		elsif rising_edge(clk) then
			if (load = '1') then
				Q <= D;
			end if;	   
		end if;		
	end process;
end rtlreg8;
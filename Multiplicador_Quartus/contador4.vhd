library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity contador4 is
	port 
	(
		clk   : in std_logic;
		clr   : in std_logic;
		en    : in std_logic;
		N	: out std_logic_vector(3 downto 0)
	);
end entity;

architecture rtlcontador4 of contador4 is

signal NN : std_logic_vector(3 downto 0);

begin
	
	process(clk,clr)
	begin	
		if (clr = '1') then
			NN <= "0000";
		elsif rising_edge(clk) then
			if (en = '1') then
				NN <= NN + '1';
			end if;	   
		end if;		
	end process;
	
	N <= NN;
	
end rtlcontador4;
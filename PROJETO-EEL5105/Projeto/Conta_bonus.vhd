library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Contador descendente bonus
entity Conta_bonus is port(
	EN_TIME, REG_ROM, CLK, RST: in std_logic;
	CNT_OUT: out std_logic_vector(4 downto 0)
	);
end Conta_bonus;

-- Definicao de arquitetura
architecture bhv of Conta_bonus is

signal contador: std_logic_vector(4 downto 0);

begin
	
	process(CLK, RST, REG_ROM, EN_TIME)
	begin
	
		if RST = '0' then
			contador <= "00011";
		
		elsif rising_edge(CLK) and EN_TIME = '1' and REG_ROM = '1' then
			contador <= contador - '1';
		end if;
	end process;
	CNT_OUT <= contador;
end bhv;
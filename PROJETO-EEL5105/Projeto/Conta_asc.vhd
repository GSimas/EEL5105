library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Contador ascendente de posicao
entity Conta_asc is port(
	EN_TIME, CLK, RST: in std_logic;
	SPEED: in std_logic_vector(2 downto 0);
	CNT_OUT: out std_logic_vector(9 downto 0)
	);
end Conta_asc;

architecture bhv of Conta_asc is

signal contador1: std_logic_vector(4 downto 0);
signal contador2: std_logic_vector(4 downto 0);
signal speed_sig: std_logic := SPEED(0) or SPEED(1) or SPEED(2);

begin

	process(CLK, RST, EN_TIME, SPEED)
	begin
	
		if RST = '0' then
			contador1 <= (others => '0');
			contador2 <= (others => '0');
		
		elsif rising_edge(CLK) and EN_TIME = '1' and speed_sig = '1' then
			contador2 <= contador2 + '1';
			
			if contador2 = "01111" then
				contador1 <= contador1 + '1';
				contador2 <= (others => '0');
			end if;
		
		end if;
	end process;
	CNT_OUT <= contador1 & contador2;
end bhv;
			
			
			
			
library ieee;
use ieee.std_logic_1164.all;

--Rotacao de deslocamento 32 bits
entity rot_32 is port(
	SET_ROLL, EN_TIME, CLOCK_M, RST: in std_logic;
	SPEED: in std_logic_vector(2 downto 0);
	REG_IN: in std_logic_vector(31 downto 0);
	REG_OUT: out std_logic_vector(31 downto 0)
	);
end rot_32;

--Definicao de arquitetura
architecture bhv of rot_32 is

signal shl: std_logic_vector (31 downto 0); -- Registrador de 32 bits
signal shl2: std_logic_vector (31 downto 0); -- Registrador de 32 bits
signal speed_sig: std_logic := SPEED(0) or SPEED(1) or SPEED(2);

begin

	process (CLOCK_M, RST, EN_TIME, SET_ROLL)
	begin
	
		if (RST = '0') then	-- Reset assíncrono do registrador
			shl <= (others => '0');
		
		elsif SET_ROLL = '0' then
			shl <= REG_IN;
			
		elsif (rising_edge(CLOCK_M)) then -- Sinal de clock do registrador (subida)
		
			if EN_TIME = '1' and speed_sig = '1' and SET_ROLL = '1' then -- Sinal de enable do registrador
				shl2 <= shl;
				shl(31 downto 1) <= shl2(30 downto 0);-- Deslocamento para esquerda
				shl(0) <= shl2(31); -- rotacao de deslocamento para a esquerda
			end if;
		end if;
	end process;
	REG_OUT <= shl;
end bhv;
				
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Contador descendente 99 -> 0
entity Conta_des is port(
	EN_TIME, CLK, RST: in std_logic;
	CNT_OUT: out std_logic_vector(9 downto 0)
	);
end Conta_des;

--Definicao de arquitetura
architecture bhv of Conta_des is
		
	signal contador1, contador2: std_logic_vector(4 downto 0);
	
begin

		process(CLK, RST, EN_TIME)
		begin
		
			if RST = '0' then
				contador1 <= "01001";
				contador2 <= "01001";
			
			elsif rising_edge(CLK) and EN_TIME = '1' then
			
				if contador2 <= "00000" then
					contador2 <= "01001";
					contador1 <= contador1 - '1';
				
				else
					contador2 <= contador2 - '1';
				end if;
			
			end if;
		end process;
	CNT_OUT <= contador1 & contador2;
end bhv;
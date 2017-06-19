library IEEE;
use IEEE.Std_Logic_1164.all;

--Comparador de 10 bits
entity compare_10 is
port (IN1: in std_logic_vector(9 downto 0);
		IN2: in std_logic_vector(9 downto 0);
		OUT1: out std_logic
		);
end compare_10;

--Definicao de arquitetura
architecture bhv of compare_10 is
begin

	process(IN1, IN2)
	begin
		
			if IN1 = IN2 then
				OUT1 <= '1';
			
			else
				OUT1 <= '0';
			end if;
	end process;
end bhv;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--FSM para controlar velocidade do carro
entity FSM_speed is port(
	CLK, RST, BRK, ACC, EN_TIME: in std_logic;
	speed: out std_logic_vector(2 downto 0)
	);
end FSM_speed;

--Definir arquitetura
architecture bhv of FSM_speed is
	type states is (S0,S1,S2,S3,S4,S5);
	signal EA, PE: states;

begin
	--Processo 1 para Clock e Reset
	P1: process(CLK, RST, EN_TIME)
		begin
		
			if RST = '0' then
				EA <= S0;
			
			elsif CLK'event and CLK = '1' and EN_TIME = '1' then
				EA <= PE;
			end if;
			
	end process;
	
	--Processo 2 para acelerar e frear
	P2: process(EA, BRK, ACC)
		begin
		
			case EA is
			
				when S0 =>	speed <= "000";
					if BRK = '1' and ACC = '0'	then
						PE <= S1;
					else
						PE <= S0;
					end if;
						
				when S1 =>	speed <= "001";
					if BRK = '1' and ACC = '0'	then
						PE <= S2;
					elsif BRK = '0' and ACC = '1' then
						PE <= S0;
					else
						PE <= S1;
					end if;
						
				when S2 =>	speed <= "010";
					if BRK = '1' and ACC = '0'	then
						PE <= S3;
					elsif BRK = '0' and ACC = '1' then
						PE <= S1;
					else
						PE <= S2;
					end if;

				when S3 =>	speed <= "011";
					if BRK = '1' and ACC = '0' then
						PE <= S4;
					elsif BRK = '0' and ACC = '1' then
						PE <= S2;
					else
						PE <= S3;
					end if;
						
				when S4 => 	speed <= "100";
					if BRK = '1' and ACC = '0' then
						PE <= S5;
					elsif BRK = '0' and ACC = '1' then
						PE <= S3;
					else
						PE <= S4;
					end if;
					
				when S5 =>	speed <= "101";
					if BRK = '0' and ACC = '1' then
						PE <= S4;
					else
						PE <= S5;
					end if;
		end case;
	end process;
end bhv;


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--FSM de controle de Posicao
entity FSM_position is port(
	CLK, RST, EN_TIME, SW1, SW0: in std_logic;
	SPEED: in std_logic_vector(2 downto 0);
	UP_DOWN: out std_logic_vector(3 downto 0)
	);
end FSM_position;

--Definir arquitetura
architecture bhv of FSM_position is
	type states is (S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,SA,SB,SC,SD,SE,SF);
	signal EA, PE: states;	
	
begin

	--Processo 1 para Clock e Reset
	P1: process(CLK, RST, EN_TIME, SPEED)
		begin
			
			if RST = '0' then
				EA <= S7;
			
			elsif CLK'event and CLK = '1' and EN_TIME = '1' and SPEED /= "000" then
				EA <= PE;
			end if;
			
	end process;
	
	--Processo 2 para estados
	P2: process(EA, SW0, SW1)
		begin
		
		case EA is
			
			--Posicao 0
			when S0 =>	UP_DOWN <= "0000";
				if SW0 = '1' and SW1 = '0' then
					PE <= S1;
				else
					PE <= S0;
				end if;
		
			--Posicao 1
			when S1 =>	UP_DOWN <= "0001";
				if SW0 = '1' and SW1 = '0' then
					PE <= S2;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= S0;
				else
					PE <= S1;
				end if;
				
			--Posicao 2
			when S2 =>	UP_DOWN <= "0010";
				if SW0 = '1' and SW1 = '0' then
					PE <= S3;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= S1;
				else
					PE <= S2;
				end if;
		
			--Posicao 3
			when S3 =>	UP_DOWN <= "0011";
				if SW0 = '1' and SW1 = '0' then
					PE <= S4;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= S2;
				else
					PE <= S3;
				end if;	
		
			--Posicao 4
			when S4 =>	UP_DOWN <= "0100";
				if SW0 = '1' and SW1 = '0' then
					PE <= S5;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= S3;
				else
					PE <= S4;
				end if;		
				
			--Posicao 5
			when S5 =>	UP_DOWN <= "0101";
				if SW0 = '1' and SW1 = '0' then
					PE <= S6;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= S4;
				else
					PE <= S5;
				end if;
				
			--Posicao 6
			when S6 =>	UP_DOWN <= "0110";
				if SW0 = '1' and SW1 = '0' then
					PE <= S7;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= S5;
				else
					PE <= S6;
				end if;
		
			--Posicao 7
			when S7 =>	UP_DOWN <= "0111";
				if SW0 = '1' and SW1 = '0' then
					PE <= S8;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= S6;
				else
					PE <= S7;
				end if;
				
			--Posicao 8
			when S8 =>	UP_DOWN <= "1000";
				if SW0 = '1' and SW1 = '0' then
					PE <= S9;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= S7;
				else
					PE <= S8;
				end if;
				
			--Posicao 9
			when S9 =>	UP_DOWN <= "1001";
				if SW0 = '1' and SW1 = '0' then
					PE <= SA;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= S8;
				else
					PE <= S9;
				end if;
		
			--Posicao A (10)
			when SA =>	UP_DOWN <= "1010";
				if SW0 = '1' and SW1 = '0' then
					PE <= SB;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= S9;
				else
					PE <= SA;
				end if;
				
			--Posicao B (11)
			when SB =>	UP_DOWN <= "1011";
				if SW0 = '1' and SW1 = '0' then
					PE <= SC;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= SA;
				else
					PE <= SB;
				end if;
				
			--Posicao C (12)
			when SC =>	UP_DOWN <= "1100";
				if SW0 = '1' and SW1 = '0' then
					PE <= SD;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= SB;
				else
					PE <= SC;
				end if;
				
			--Posicao D (13)
			when SD =>	UP_DOWN <= "1101";
				if SW0 = '1' and SW1 = '0' then
					PE <= SE;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= SC;
				else
					PE <= SD;
				end if;
				
			--Posicao E (14)
			when SE =>	UP_DOWN <= "1110";
				if SW0 = '1' and SW1 = '0' then
					PE <= SF;
				elsif SW0 = '0' and SW1 = '1' then
					PE <= SD;
				else
					PE <= SE;
				end if;
				
			--Posicao F (15)
			when SF =>	UP_DOWN <= "1111";
				if SW0 = '0' and SW1 = '1' then
					PE <= SE;
				else
					PE <= SF;
				end if;
		end case;
	end process;
end bhv;
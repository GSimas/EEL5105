library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--FSM de controle de estados do jogo
entity FSM_control is port(
	CLK, RESET, END_BONUS, END_TIME, ENTER, TARGET: in std_logic;
	SEL_DISP: out std_logic_vector(1 downto 0);
	STATESS: out std_logic_vector(4 downto 0);
	SEL_LED, SET_ROLL, EN_TIME, RST: out std_logic
	);
end FSM_control;

--Definir arquitetura
architecture bhv of FSM_control is
	type states is (E0, E1, E2, E3);
	signal EA, PE: states;
	
begin
	
	--Processo 1 para Clock e Reset
	P1: process(CLK, RESET)
		begin
			
			if RESET = '0' then
				EA <= E0;
			
			elsif CLK'event and CLK = '1' then
				EA <= PE;
			end if;
			
	end process;
	
	--Processo 2 para estados
	P2: process(EA, TARGET, ENTER, END_TIME, END_BONUS)
		begin
			
		case EA is
			
			--ESTADO INIT
			when E0 =>	STATESS <= "00000";
							SEL_LED <= '0';
							SEL_DISP <= "10";
							SET_ROLL <= '0';
							EN_TIME <= '0';
							RST <= '0';
				if ENTER = '0' then
					PE <= E1;
				elsif ENTER = '1' then
					PE <= E0;
				end if;
			
			--ESTADO SETUP
			when E1 =>	STATESS <= "00001";
							SEL_LED <= '0';
							SEL_DISP <= "01";
							SET_ROLL <= '0';
							EN_TIME <= '0';
							RST <= '1';
				if ENTER = '0' then
					PE <= E2;
				elsif ENTER = '1' then
					PE <= E1;
				end if;
			
			--ESTADO GAME
			when E2 =>	STATESS <= "00010";
							SEL_LED <= '1';
							SEL_DISP <= "00";
							SET_ROLL <= '1';
							EN_TIME <= '1';
							RST <= '1';
				if TARGET = '1' or END_TIME = '1' or END_BONUS = '1' then
					PE <= E3;
				else
					PE <= E2;
				end if;
			
			--ESTADO END
			when E3 =>	STATESS <= "00011";
							SEL_LED <= '0';
							SEL_DISP <= "11";
							SET_ROLL <= '0';
							EN_TIME <= '0';
							RST <= '1';
				if ENTER = '0' then
					PE <= E0;
				elsif ENTER = '1' then
					PE <= E3;
				end if;
		end case;
	end process;
end bhv;
	
	
	
	
	
library ieee;
use ieee.std_logic_1164.all;

entity FSM_Conta is port(
	CLK, RST: in std_logic;
	contagem: out std_logic_vector(3 downto 0)
	);
end FSM_Conta;

architecture bhv of FSM_Conta is
	type states is (S0,S1,S2,S3,S4);
	signal EA, PE: states;

begin
	P1: process(CLK, RST)
		begin
				if RST = '0' then
					EA <= S0;
				elsif CLK'event and CLK = '0' then
					EA <= PE;
				end if;
	end process;
	
	P2: process(EA)
		begin
				case EA is
					when S0 =>	contagem <= "0001";
									PE <= S1;
					when S1 =>	contagem <= "0010";
									PE <= S2;
					when S2 =>	contagem <= "0011";
									PE <= S3;			
					when S3 =>	contagem <= "0100";
									PE <= S4;
					when S4 => 	contagem <= "0101";
									PE <= S0;
				end case;
	end process;
end bhv;

	
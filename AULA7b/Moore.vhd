library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FSM_Conta is port(
	CLK, RST: in std_logic;
	NUM_clk: in std_logic_vector(2 downto 0);
	contagem: out std_logic_vector(3 downto 0)
	);
end FSM_Conta;

architecture bhv of FSM_Conta is
	type states is (S0,S1,S2,S3,S4);
	signal C50: std_logic;
	signal contador: std_logic_vector(27 downto 0);
	signal EA, PE: states;

begin
	P1: process(CLK, RST, NUM_clk)
		begin				
				if RST = '0' then
					contador <= x"0000000";
					EA <= S0;
					
				elsif CLK'event and CLK = '1' then
					contador <= contador + 1;
					
					if C50 = '1' then
						EA <= PE;
					end if;
					
					if NUM_clk = "001" and contador = x"2FAF080" then
						contador <= x"0000000";
						C50 <= '1';
					end if;
					
					if NUM_clk = "010" and contador = x"17D7840" then
						contador <= x"0000000";
						C50 <= '1';
					end if;
					
					if NUM_clk = "011" and contador = x"FE502B" then
						contador <= x"0000000";
						C50 <= '1';
					end if;
					
					if NUM_clk = "100" and contador = x"BEBC20" then
						contador <= x"0000000";
						C50 <= '1';
					end if;
					
					if NUM_clk = "100" and contador = x"989680" then
						contador <= x"0000000";
						C50 <= '1';
					end if;
					
					else
						C50 <= '0';
									
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

	
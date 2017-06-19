library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--FSM para geracao de clocks
entity FSM_clock is port(
	CLK: in std_logic;
	CLK1, CLK2, CLK3, CLK4, CLK5: out std_logic;
	CLK_led: out std_logic
	);
end FSM_clock;

--Definicao de Arquitetura
architecture bhv of FSM_clock is

	signal conta1, conta2, conta3, conta4, conta5: integer := 0;
	signal sig_led: std_logic := '0';
	
begin

	P1: process(CLK, conta1, conta2, conta3, conta4, conta5)
		begin
				
			if CLK'event and CLK = '1' then -- Incrementar contador na subida de clock
				conta1 <= conta1 + 1;
				conta2 <= conta2 + 1;
				conta3 <= conta3 + 1;
				conta4 <= conta4 + 1;
				conta5 <= conta5 + 1;
			end if;
			
			CLK1 <= '0';
			CLK2 <= '0';
			CLK3 <= '0';
			CLK4 <= '0';
			CLK5 <= '0';	
			
			if conta1 = 50000000 then -- se atingir 50.000.000 - CLK 1Hz
				conta1 <= 0;
				CLK1 <= '1';
			end if;
					
			if conta2 = 25000000 then -- se atingir 25.000.000 CLK 2Hz
				conta2 <= 0;
				CLK2 <= '0';
			end if;
					
			if conta3 = 16666667 then -- se atingir 16.666.667 CLK 3Hz
				conta3 <= 0;
				CLK3 <= '1';
			end if;
					
			if conta4 = 12500000 then -- se atingir 12.500.000 CLK 4Hz
				conta4 <= 0;
				CLK4 <= '1';
			end if;
					
			if conta5 = 10000000 then -- se atingir 10.000.000 CLK 5Hz
				conta5 <= 0;
				CLK5 <= '1';
				sig_led <= not(sig_led);		
			end if;
	end process;
CLK_led <= sig_led;
end bhv;

	
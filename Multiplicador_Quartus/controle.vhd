library ieee;
use ieee.std_logic_1164.all;

entity controle is
	port 
	(
	   clk   : in std_logic;
		reset   : in std_logic;
		-- Entradas e saídas de controle		
		s     : in std_logic;
		b     : out std_logic;
		-- comando e status
		ZR,LR,Sub,ZS,LS,ZN,EN : out std_logic;
		Nm : in std_logic
	);
end entity;

architecture ctrl1 of controle is
  type ESTADOS is (Inicio, EsperaStart, RealizaSomas, MostraRes);
  signal EA,PE : ESTADOS;
begin 

	process(reset,clk)
	begin
		if reset = '1' then
		   EA <= Inicio;
		elsif rising_edge(clk) then
			EA <= PE;
		end if;
	end process;
	
	
	process (EA,s,Nm) 
	begin
		case EA is
			
			when Inicio =>  PE <= EsperaStart;
			                ZR <= '0';
								 b <= '0';
								 LR <= '0';
								 Sub <= '0';
								 ZS <= '0';
								 LS <= '0';
								 ZN <= '0';
								 EN <= '0';
			
			when EsperaStart =>   if (s = '0') then 
											PE <= EsperaStart; 
										 else 
										   PE <= RealizaSomas; 
										 end if;
										 ZN <= '1';
										 ZS <= '1';										 
										 b <= '0';
										 ZR <= '0';
										 LR <= '0';
										 Sub <= '0';										 
										 LS <= '0';										 
										 EN <= '0';	
										 
			when RealizaSomas =>  if (Nm = '1') then 
											PE <= RealizaSomas; 
										 else 
										   PE <= MostraRes; 
										 end if;
										 Sub <= '0';
										 LS <= '1';
										 EN <= '1';										 										 
										 b <= '1';
										 ZR <= '0';
										 LR <= '0';
										 ZN <= '0';
										 ZS <= '0';
										 
			when MostraRes =>     PE <= EsperaStart; 
										 Sub <= '1';
										 LR <= '1';										 										 										 
										 b <= '0';
										 ZR <= '0';
										 LS <= '0';
										 EN <= '0';
										 ZN <= '0';
										 ZS <= '0';
		
		end case;
	
	end process;

end ctrl1;
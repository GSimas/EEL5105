library IEEE;
use IEEE.Std_Logic_1164.all;

--Multiplexador 4x1
entity mux4x1 is
port (MAP1, MAP2, MAP3, MAP4: in std_logic_vector(31 downto 0)
		REG: out std_logic_vector(31 downto 0);
		SW: in std_logic_vector(1 downto 0)
		);
end mux4x1;

--Definicao Arquitetura
architecture circuito of mux4x1 is
begin
		REG <= 	MAP1 when SW = "00" else
					MAP2 when SW = "01" else
					MAP3 when SW = "10" else
					MAP4;
end circuito;
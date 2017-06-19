library IEEE;
use IEEE.Std_Logic_1164.all;

--Multiplexador 2x1 10bits
entity mux2x1_10 is
port (IN0,IN1: in std_logic_vector(9 downto 0);
		REG: out std_logic_vector(9 downto 0);
		SW: in std_logic
		);
end mux2x1_10;

--Definicao Arquitetura
architecture circuito of mux2x1_10 is
begin
		REG <= 	IN0 when SW = '0' else
					IN1;
end circuito;
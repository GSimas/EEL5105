library IEEE;
use IEEE.Std_Logic_1164.all;

--Multiplexador 8x1
entity mux8x1 is
port (IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7: in std_logic;
		REG: out std_logic;
		SW: in std_logic_vector(2 downto 0)
		);
end mux8x1;

--Definicao Arquitetura
architecture circuito of mux8x1 is
begin
		REG <= 	IN0 when SW = "000" else
					IN1 when SW = "001" else
					IN2 when SW = "010" else
					IN3 when SW = "011" else
					IN4 when SW = "100" else
					IN5 when SW = "101" else
					IN6 when SW = "110" else
					IN7;
end circuito;
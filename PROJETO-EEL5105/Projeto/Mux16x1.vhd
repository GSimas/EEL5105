library IEEE;
use IEEE.Std_Logic_1164.all;

--Multiplexador 16x1 32bits
entity mux16x1_32 is
port (IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7,IN8,IN9,IN10,IN11,IN12,IN13,IN14,IN15: in std_logic_vector(31 downto 0);
		REG: out std_logic_vector(31 downto 0);
		UP_DOWN: in std_logic_vector(3 downto 0)
		);
end mux16x1_32;

--Definicao Arquitetura
architecture circuito of mux16x1_32 is
begin
		REG <= 	IN0 when UP_DOWN = "0000" else
					IN1 when UP_DOWN = "0001" else
					IN2 when UP_DOWN = "0010" else
					IN3 when UP_DOWN = "0011" else
					IN4 when UP_DOWN = "0100" else
					IN5 when UP_DOWN = "0101" else
					IN6 when UP_DOWN = "0110" else
					IN7 when UP_DOWN = "0111" else
					IN8 when UP_DOWN = "1000" else
					IN9 when UP_DOWN = "1001" else
					IN10 when UP_DOWN = "1010" else
					IN11 when UP_DOWN = "1011" else
					IN12 when UP_DOWN = "1100" else
					IN13 when UP_DOWN = "1101" else
					IN14 when UP_DOWN = "1110" else
					IN15;
end circuito;
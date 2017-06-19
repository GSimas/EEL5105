library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Somador de 10 bits
entity adder_10 is port(
	IN1, IN2: in std_logic_vector(9 downto 0);
	OUT1: out std_logic_vector(9 downto 0)
	);
end adder_10;

--Definicao de arquitetura
architecture bhv of adder_10 is
begin

			OUT1 <= IN1 + IN2;
end bhv;
library ieee;
use ieee.std_logic_1164.all;

entity Lab7a is
	port (
	LEDR: out std_logic_vector(3 downto 0);
	KEY: in std_logic_vector(1 downto 0);
	HEX0: out std_logic_vector(6 downto 0)
	);
end Lab7a;

architecture Lab7a_beh of Lab7a is

signal F: std_logic_vector(3 downto 0);

component FSM_Conta -- Esse e’ o componente FSM
port (
	CLK: in std_logic;
	RST: in std_logic;
	contagem: out std_logic_vector(3 downto 0)
	);
end component;

component decod7seg
port (
C: in std_logic_vector(3 downto 0);
F: out std_logic_vector(6 downto 0)
);
end component;

begin
	L0: FSM_Conta port map ( KEY(1), KEY(0), F );
	L1: decod7seg port map (F(3 downto 0), HEX0);
	LEDR <= F;
end Lab7a_beh;
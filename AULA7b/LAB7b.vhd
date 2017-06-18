library ieee;
use ieee.std_logic_1164.all;

entity Lab7b is
	port (
	LEDR: out std_logic_vector(3 downto 0);
	KEY: in std_logic_vector(1 downto 0);
	HEX0: out std_logic_vector(6 downto 0);
	CLOCK_50: in std_logic
	);
end Lab7b;

architecture Lab7b_beh of Lab7b is

signal F: std_logic_vector(3 downto 0);
signal NUM_clk: std_logic_vector(2 downto 0);

component FSM_Conta -- Esse e’ o componente FSM
port (
	CLK: in std_logic;
	RST: in std_logic;
	NUM_CLK: in std_logic_vector(2 downto 0);
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
NUM_clk <= "010";
	L0: FSM_Conta port map ( CLOCK_50, KEY(0), NUM_clk, F );
	L1: decod7seg port map (F(3 downto 0), HEX0);
	LEDR <= F;
end Lab7b_beh;
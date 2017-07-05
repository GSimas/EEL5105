library ieee;
use ieee.std_logic_1164.all;


entity datapath is
	port
	(
		-- Entradas
		clk : in std_logic;
		A	: in std_logic_vector(3 downto 0);
		B	: in std_logic_vector(3 downto 0);
		ZR,LR,Sub,ZS,LS,ZN,EN : in std_logic;
		-- Output ports
		Nm : out std_logic;
		R  : out std_logic_vector(7 downto 0)
	);
end datapath;



architecture datapath1 of datapath is

signal AA,S,ResSomaSub : std_logic_vector(7 downto 0);
signal N : std_logic_vector(3 downto 0);

component somasub
   port (
	   sub : in std_logic;
		A	 : in std_logic_vector(7 downto 0);
		B	 : in std_logic_vector(7 downto 0);
		R   : out std_logic_vector(7 downto 0)
	);
end component;

component comparador 
	port (
		A	 : in std_logic_vector(3 downto 0);
		B	 : in std_logic_vector(3 downto 0);
		AmB : out std_logic
	);
end component;

component reg8
	port (
		clk   : in std_logic;
		clr   : in std_logic;
		load   : in std_logic;
		D	: in std_logic_vector(7 downto 0);
		Q	: out std_logic_vector(7 downto 0)
	);
end component;

component contador4
	port (
		clk   : in std_logic;
		clr   : in std_logic;
		en    : in std_logic;
		N	: out std_logic_vector(3 downto 0)
	);
end component;

begin

AA <= "0000" & A; -- Gambiarra apenas para conveter A para 8 bits.

SS: somasub port map ( Sub, S, AA, ResSomaSub );

R1R: reg8 port map ( clk, ZR, LR, ResSomaSub, R );

R2S: reg8 port map ( clk, ZS, LS, ResSomaSub, S );

CT1: contador4 port map ( clk, ZN, EN, N );

COMP1: comparador port map ( N, B, Nm );

end datapath1;
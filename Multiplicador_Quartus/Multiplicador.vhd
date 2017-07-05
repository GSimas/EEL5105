library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity multiplicador is
	port
	(
	   clock : in std_logic;
		reset : in std_logic;
		-- Entradas/saídas de controle
		s	: in  std_logic;
		bb  : out std_logic;
		-- Output ports
		A	: in std_logic_vector(3 downto 0);
		B	: in std_logic_vector(3 downto 0);
		R  : out std_logic_vector(7 downto 0)
	);
end multiplicador;


architecture meumult of multiplicador is

signal ZR,LR,Sub,ZS,LS,ZN,EN,Nm : std_logic;

component datapath
port (
		-- Entradas
		clk : in std_logic;
		A	: in std_logic_vector(3 downto 0);
		B	: in std_logic_vector(3 downto 0);
		ZR,LR,Sub,ZS,LS,ZN,EN : in std_logic;
		-- Output ports
		Nm : out std_logic;
		R  : out std_logic_vector(7 downto 0)
	);
end component;

component controle
port (
	   clk   : in std_logic;
		reset   : in std_logic;
		-- Entradas e saídas de controle		
		s     : in std_logic;
		b     : out std_logic;
		-- comando e status
		ZR,LR,Sub,ZS,LS,ZN,EN : out std_logic;
		Nm : in std_logic
);
end component;

begin

dtp: datapath port map (clock,A,B,ZR,LR,Sub,ZS,LS,ZN,EN,Nm,R);

ctrl: controle port map (clock,reset,s,bb,ZR,LR,Sub,ZS,LS,ZN,EN,Nm);

end meumult;



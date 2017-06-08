library ieee;
use ieee.std_logic_1164.all;

entity topo is
port (SW 	: IN STD_LOGIC_VECTOR(9 downto 0);
		LEDR	: OUT STD_LOGIC_VECTOR(9 downto 0)
);
end topo;

architecture topo_estru of topo is
signal C1, C2, C3, C4: std_logic;

component HA
port (A : in std_logic;
		B : in std_logic;
		COUT : out std_logic;
		S : out std_logic);
end component;

component FA
port (A : in std_logic;
		B : in std_logic;
		C : in std_logic;
		COUT : out std_logic;
		S : out std_logic);
end component;

component FA2
port (A : in std_logic;
		B : in std_logic;
		C : in std_logic;
		COUT : out std_logic;
		S : out std_logic);
end component;

component FA3
port (A : in std_logic;
		B : in std_logic;
		C : in std_logic;
		COUT : out std_logic;
		S : out std_logic);
end component;

begin 
L0: HA port map (SW(1), SW(0), C1, LEDR(0));
L1: FA port map (SW(3), SW(2), C1, C2, LEDR(1));
L2: FA port map (SW(5), SW(4), C2, C3, LEDR(2));
L3: FA port map (SW(7), SW(6), C3, LEDR(4), LEDR(3));
end topo_estru;

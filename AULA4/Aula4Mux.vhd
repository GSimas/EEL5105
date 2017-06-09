library ieee;
use ieee.std_logic_1164.all;

entity Aula4Mux is
port ( SW : IN STD_LOGIC_VECTOR(9 downto 0);
LEDR : OUT STD_LOGIC_VECTOR(9 downto 0));
end Aula4Mux;
architecture Aula4Mux_estru of Aula4Mux is
signal F1, F2, F3: std_logic;

component C1
port (A : in std_logic;
B : in std_logic;
C : in std_logic;
F : out std_logic);
end component;

component C2
port (A : in std_logic;
B : in std_logic;
F : out std_logic);
end component;

component C3
port (A : in std_logic;
B : in std_logic;
C : in std_logic;
F : out std_logic);
end component;

component C4
port (w : in std_logic;
x : in std_logic;
y : in std_logic;
z : in std_logic;
s : in std_logic_vector (1 downto 0);
F : out std_logic);
end component;

begin
L0: C1 port map (SW(0), SW(1), SW(2), F1);
L1: C2 port map (SW(1), SW(2), F2);
L2: C3 port map (SW(0), SW(1), SW(2), F3);
L3: C4 port map (F1, F2, F3, SW(7), SW(9 downto 8), LEDR(0));
end Aula4Mux_estru;
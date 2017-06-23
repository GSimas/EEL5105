library IEEE;
use IEEE.Std_Logic_1164.all;

entity LAB8 is
port (SW: in std_logic_vector(9 downto 0);
		HEX1, HEX0: out std_logic_vector(6 downto 0);
		LEDR: out std_logic_vector(9 downto 0);
		KEY: in std_logic_vector(1 downto 0);
		CLOCK_50: in std_logic
);
end LAB8;

architecture lab_stru of LAB8 is
signal seleciona: std_logic_vector (1 downto 0);
signal enable1, enable2: std_logic;
signal Qdecod1, Qdecod2: std_logic_vector(3 downto 0);
signal Q1, Fmux, F1, F2, F3, F4, F: std_logic_vector(7 downto 0);

component FSMctrl
port(
	CLK, RST, ENTER: in std_logic;
	Operacao: in std_logic_vector(1 downto 0);
	Selecao: out std_logic_vector(1 downto 0);
	Enable_1, Enable_2: out std_logic
	);
end component;

component D_8FF
port(
	CLK, RST: in std_logic;
	EN: in std_logic;
	D: in std_logic_vector(7 downto 0);
	Q: out std_logic_vector(7 downto 0)
	);
end component;

component C1
port (A: in std_logic_vector(7 downto 0);
		B: in std_logic_vector(7 downto 0);
		F: out std_logic_vector(7 downto 0)
		);
end component;

component C2
port (A: in std_logic_vector(7 downto 0);
		B: in std_logic_vector(7 downto 0);
		F: out std_logic_vector(7 downto 0)
		);
end component;

component C3
	port(	CLK: in std_logic;
			ENABLE : in std_logic;
			RST: in std_logic;
			sr_in: in std_logic_vector(7 downto 0);
			sr_out: out std_logic_vector(7 downto 0)
			);
end component;

component C4
	port(	CLK: in std_logic;
			ENABLE : in std_logic;
			RST: in std_logic;
			sr_in: in std_logic_vector(7 downto 0);
			sr_out: out std_logic_vector(7 downto 0)
			);
end component;

component mux4x1
port (w, x, y, z: in std_logic_vector(7 downto 0);
		s: in std_logic_vector(1 downto 0);
		m: out std_logic_vector(7 downto 0)
		);
end component;

component D_4FF
port (
	CLK, RST: in std_logic;
	EN: in std_logic;
	D: in std_logic_vector(3 downto 0);
	Q: out std_logic_vector(3 downto 0)
	);
end component;

component decod7seg
port (C: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(6 downto 0)
		);
end component;

begin

L1: FSMctrl port map(CLOCK_50, KEY(0), KEY(1), SW(9 downto 8), seleciona, enable1, enable2);
L2: D_8FF port map(CLOCK_50, KEY(0), enable1, SW(7 downto 0), Q1);
L3: C1 port map(Q1, SW(7 downto 0), F1);
L4: C2 port map(Q1, SW(7 downto 0), F2);
L5: C3 port map(CLOCK_50, enable1, KEY(0), SW(7 downto 0), F3);
L6: C4 port map(CLOCK_50, enable1, KEY(0), SW(7 downto 0), F4);
L7: mux4x1 port map(F1, F2, F3, F4, seleciona, Fmux);
L8: D_4FF port map(CLOCK_50, KEY(0), enable2, Fmux(7 downto 4), Qdecod1);
L9: D_4FF port map(CLOCK_50, KEY(0), enable2, Fmux(3 downto 0), Qdecod2);
L10: decod7seg port map(Qdecod1, HEX1);
L11: decod7seg port map(Qdecod2, HEX0);
L12: D_8FF port map(CLOCK_50, KEY(0), enable2, Fmux, F);

LEDR <= "00" & F;

end lab_stru;




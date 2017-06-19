library IEEE;
use IEEE.Std_Logic_1164.all;
use ieee.std_logic_unsigned.all;


--------------- INICIO		DA			ENTIDADE				-------------------------

entity PROJETO is
port (SW: in std_logic_vector(9 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0);
		LEDR: out std_logic_vector(9 downto 0);
		KEY: in std_logic_vector(3 downto 0);
		CLOCK_50: in std_logic
);
end PROJETO;




--------------- INICIO		DOS SINAIS 		DA			ARQUITETURA			-------------------------

architecture topo_stru of PROJETO is

signal 	btn0, btn1, btn2, btn3: std_logic; -- saida dos botoes do Debouncer

signal 	MAP1F0, MAP1F1, MAP1F2, MAP1F3, MAP1F4, MAP1F5, MAP1F6, MAP1F7, MAP1F8, -- Saida Mapa 1
			MAP1F9, MAP1F10, MAP1F11, MAP1F12, MAP1F13, MAP1F14, MAP1F15: std_logic_vector(31 downto 0);
			
signal 	MAP2F0, MAP2F1, MAP2F2, MAP2F3, MAP2F4, MAP2F5, MAP2F6, MAP2F7, MAP2F8, -- Saida Mapa 2
			MAP2F9, MAP2F10, MAP2F11, MAP2F12, MAP2F13, MAP2F14, MAP2F15: std_logic_vector(31 downto 0);

signal 	MAP3F0, MAP3F1, MAP3F2, MAP3F3, MAP3F4, MAP3F5, MAP3F6, MAP3F7, MAP3F8, -- Saida Mapa 3
			MAP3F9, MAP3F10, MAP3F11, MAP3F12, MAP3F13, MAP3F14, MAP3F15: std_logic_vector(31 downto 0);

signal 	MAP4F0, MAP4F1, MAP4F2, MAP4F3, MAP4F4, MAP4F5, MAP4F6, MAP4F7, MAP4F8, -- Saida Mapa 4
			MAP4F9, MAP4F10, MAP4F11, MAP4F12, MAP4F13, MAP4F14, MAP4F15: std_logic_vector(31 downto 0);

signal 	clock1, clock2, clock3, clock4, clock5, clockm, clockled: std_logic; -- sinais de clock

signal	en_timee, reset, sel_led, set_rol: std_logic; -- sinais controle

signal	sel_disp: std_logic_vector(1 downto 0); -- sinal controle seleciona display

signal	states: std_logic_vector(4 downto 0); -- sinal controle estados

signal	cnt_b: std_logic_vector(4 downto 0); -- sinais contadores

signal	cnt_d, cnt_u: std_logic_vector(9 downto 0); -- sinais contadores

signal	speed: std_logic_vector(2 downto 0); -- sinal velocidade

signal	up_down: std_logic_vector(3 downto 0); -- sinal posicao cima / baixo

constant	compare_end_time: std_logic_vector(9 downto 0) := "0000000000"; -- constante comparacao Fim do Tempo

constant	compare_target: std_logic_vector(9 downto 0) := "0010000000"; -- constante comparacao Target

constant compare_bonus: std_logic_vector(4 downto 0) := "00000"; -- constante comparacao Bonus / Vida

signal	soma: std_logic_vector(9 downto 0) := "0000" & cnt_b & '0'; -- sinal entrada de somador de pontos

signal 	point: std_logic_vector(9 downto 0); -- sinal de pontuacao

signal	end_time, end_bonus, target: std_logic; -- sinais de finalizacao

signal	reg_in0, reg_in1, reg_in2, reg_in3, reg_in4, reg_in5, reg_in6, reg_in7, reg_in8, -- sinais registradores mapa entra
			reg_in9, reg_in10, reg_in11, reg_in12, reg_in13, reg_in14, reg_in15: std_logic_vector(31 downto 0);

signal	reg_out, reg_out0, reg_out1, reg_out2, reg_out3, reg_out4, reg_out5, reg_out6, reg_out7, reg_out8, -- sinais registradores mapa sai
			reg_out9, reg_out10, reg_out11, reg_out12, reg_out13, reg_out14, reg_out15: std_logic_vector(31 downto 0);

signal	mux1: std_logic_vector(29 downto 0) := "01110" & states & "101100101010111000" & SW(8) & SW(7); -- sinal 1 multiplexador display
signal	mux2: std_logic_vector(29 downto 0) := "01110" & states & "11111000000111101111"; -- sinal 2 multiplexador display
signal	mux3: std_logic_vector(29 downto 0) := "01110" & states & "1011111010" & point; -- sinal 3 multiplexador display
signal	hx: std_logic_vector(29 downto 0); -- sinal saida multiplexador display

signal	mux2_sig1: std_logic_vector(9 downto 0) := "0000000000"; -- sinal 1 para multiplexador 2x1 10 bits (LEDS)
signal	mux2_sig2: std_logic_vector(9 downto 0) := clockled & reg_out(30 downto 22); -- sinal 2 para multiplexador 2x1 10 bits (LEDS)

signal	mux2_30_sig1: std_logic_vector(29 downto 0) := "01110" & states & "01011" & cnt_b & cnt_d; -- sinal 1 Multiplexador 2x1 30 bits (Display)
signal	mux2_30_sig2: std_logic_vector(29 downto 0) := "11100" & "00" & speed & "11001" & "0" & up_down & cnt_u; -- sinal 2 Multiplexador 2x1 30 bits (Display)

signal	screen: std_logic_vector(29 downto 0); -- sinal display

signal	led_out: std_logic_vector(9 downto 0); -- sinal led


			
--------------- INICIO		DOS		COMPONENTES				-------------------------


-- Componente Debouncer de botao
component ButtonSync is
	port
	(
		-- Input ports
		key0	: in  std_logic;
		key1	: in  std_logic;
		key2	: in  std_logic;
		key3	: in  std_logic;	
		clk : in std_logic;
		-- Output ports
		btn0	: out std_logic;
		btn1	: out std_logic;
		btn2	: out std_logic;
		btn3	: out std_logic
	);
end component;

-- Componente MAPA 1
component map1 is
	port
	(
		F0, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, F13, F14, F15: out std_logic_vector(31 downto 0)
	);
end component;

-- Componente MAPA 2
component map2 is
	port
	(
		F0, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, F13, F14, F15: out std_logic_vector(31 downto 0)
	);
end component;

-- Componente MAPA 3
component map3 is
	port
	(
		F0, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, F13, F14, F15: out std_logic_vector(31 downto 0)
	);
end component;

-- Componente MAPA 4
component map4 is
	port
	(
		F0, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, F13, F14, F15: out std_logic_vector(31 downto 0)
	);
end component;

-- Componente FSM CLOCK
component FSM_clock is port(
	CLK: in std_logic;
	CLK1, CLK2, CLK3, CLK4, CLK5: out std_logic;
	CLK_led: out std_logic
	);
end component;

-- Componente Contador Descendente Tempo
component Conta_des is port(
	EN_TIME, CLK, RST: in std_logic;
	CNT_OUT: out std_logic_vector(9 downto 0)
	);
end component;

-- Componente Contador Ascendente Posicao
component Conta_asc is port(
	EN_TIME, CLK, RST: in std_logic;
	SPEED: in std_logic_vector(2 downto 0);
	CNT_OUT: out std_logic_vector(9 downto 0)
	);
end component;

-- Componente Contador Descendente Bonus / vida
component Conta_bonus is port(
	EN_TIME, REG_ROM, CLK, RST: in std_logic;
	CNT_OUT: out std_logic_vector(4 downto 0)
	);
end component;

-- Componente Comparador 10 bits
component compare_10 is
port (IN1: in std_logic_vector(9 downto 0);
		IN2: in std_logic_vector(9 downto 0);
		OUT1: out std_logic
		);
end component;

-- Componente Comparador 5 bits
component compare_5 is
port (IN1: in std_logic_vector(4 downto 0);
		IN2: in std_logic_vector(4 downto 0);
		OUT1: out std_logic
		);
end component;

-- Componente Somador 10 bits
component adder_10 is port(
	IN1, IN2: in std_logic_vector(9 downto 0);
	OUT1: out std_logic_vector(9 downto 0)
	);
end component;

-- Componente FSM Posicao
component FSM_position is port(
	CLK, RST, EN_TIME, SW1, SW0: in std_logic;
	SPEED: in std_logic_vector(2 downto 0);
	UP_DOWN: out std_logic_vector(3 downto 0)
	);
end component;

-- Componente FSM Velocidade
component FSM_speed is port(
	CLK, RST, BRK, ACC, EN_TIME: in std_logic;
	speed: out std_logic_vector(2 downto 0)
	);
end component;

-- Componente Deslocamento e Rotacao a esquerda
component rot_32 is port(
	SET_ROLL, EN_TIME, CLOCK_M, RST: in std_logic;
	SPEED: in std_logic_vector(2 downto 0);
	REG_IN: in std_logic_vector(31 downto 0);
	REG_OUT: out std_logic_vector(31 downto 0)
	);
end component;

-- Componente FSM de Controle
component FSM_control is port(
	CLK, RESET, END_BONUS, END_TIME, ENTER, TARGET: in std_logic;
	SEL_DISP: out std_logic_vector(1 downto 0);
	STATESS: out std_logic_vector(4 downto 0);
	SEL_LED, SET_ROLL, EN_TIME, RST: out std_logic
	);
end component;

-- Componente Multiplexador 4x1 32 bits
component mux4x1_32 is
port (MAP1, MAP2, MAP3, MAP4: in std_logic_vector(31 downto 0);
		REG: out std_logic_vector(31 downto 0);
		SW: in std_logic_vector(1 downto 0)
		);
end component;

--	Componente Multiplexador 4x1 30 bits
component mux4x1_30 is
port (MAP1, MAP2, MAP3, MAP4: in std_logic_vector(29 downto 0);
		REG: out std_logic_vector(29 downto 0);
		SW: in std_logic_vector(1 downto 0)
		);
end component;

-- Componente Multiplexador 8x1 1 bit
component mux8x1 is
port (IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7: in std_logic;
		REG: out std_logic;
		SW: in std_logic_vector(2 downto 0)
		);
end component;

-- Componente Multiplexador 16x1 32 bits
component mux16x1_32 is
port (IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7,IN8,IN9,IN10,IN11,IN12,IN13,IN14,IN15: in std_logic_vector(31 downto 0);
		REG: out std_logic_vector(31 downto 0);
		UP_DOWN: in std_logic_vector(3 downto 0)
		);
end component;

-- Componente Multiplexador 2x1 10 bits
component mux2x1_10 is
port (IN0,IN1: in std_logic_vector(9 downto 0);
		REG: out std_logic_vector(9 downto 0);
		SW: in std_logic
		);
end component;

-- Componente Multiplexador 2x1 30 bits
component mux2x1_30 is
port (IN0,IN1: in std_logic_vector(29 downto 0);
		REG: out std_logic_vector(29 downto 0);
		SW: in std_logic
		);
end component;

-- Componente Decodificador para Display LED 7 segmentos
component decod7seg is
port (C: in std_logic_vector(4 downto 0);
		F: out std_logic_vector(6 downto 0)
		);
end component;




--------------- INICIO		DOS		LEVELS					-------------------------

begin

---		BLOCO DEBOUNCER		---
L1: ButtonSync port map(KEY(0), KEY(1), KEY(2), KEY(3), CLOCK_50, btn0, btn1, btn2, btn3); -- Debouncer



---		BLOCO MAPAS		---
L2: map1 port map(MAP1F0, MAP1F1, MAP1F2, MAP1F3, MAP1F4, MAP1F5, MAP1F6, MAP1F7, MAP1F8, 
						MAP1F9, MAP1F10, MAP1F11, MAP1F12, MAP1F13, MAP1F14, MAP1F15); -- Mapa1

L3: map2 port map(MAP2F0, MAP2F1, MAP2F2, MAP2F3, MAP2F4, MAP2F5, MAP2F6, MAP2F7, MAP2F8, 
						MAP2F9, MAP2F10, MAP2F11, MAP2F12, MAP2F13, MAP2F14, MAP2F15); -- Mapa2

L4: map3 port map(MAP3F0, MAP3F1, MAP3F2, MAP3F3, MAP3F4, MAP3F5, MAP3F6, MAP3F7, MAP3F8, 
						MAP3F9, MAP3F10, MAP3F11, MAP3F12, MAP3F13, MAP3F14, MAP3F15); -- Mapa3
						
L5: map4 port map(MAP4F0, MAP4F1, MAP4F2, MAP4F3, MAP4F4, MAP4F5, MAP4F6, MAP4F7, MAP4F8,
						MAP4F9, MAP4F10, MAP4F11, MAP4F12, MAP4F13, MAP4F14, MAP4F15); -- Mapa4

						
						
---		BLOCO CONTADORES		---
L6: FSM_clock port map(CLOCK_50, clock1, clock2, clock3, clock4, clock5, clockled); -- FSM Clock

L7: Conta_des port map(en_timee, clock1, reset, cnt_d); -- Contador Descendente Tempo 99 -> 00

L8: Conta_asc port map(en_timee, clockm, reset, speed, cnt_u); -- Contador Ascendente Posicao

L9: Conta_bonus port map(en_timee, reg_out(31), clockm, reset, cnt_b); -- Contador Descendente Bonus / Vida



---		BLOCO COMPARADORES E SOMADORES		---
L10: compare_10 port map(compare_end_time, cnt_d, end_time); -- Comparador 10 bits Fim Tempo

L11: compare_10 port map(compare_target, cnt_u, target); -- Comparador 10 bits Target - Ganhou jogo

L12: compare_5 port map(compare_bonus, cnt_b, end_bonus); -- Comparador 5 bits Fim Bonus / Vida

L13: adder_10 port map(soma, cnt_u, point); -- Somador 10 bits Pontos



---		BLOCO REGISTRADORES		---
L14: FSM_position port map(clockm, reset, en_timee, SW(2), SW(0), speed,  up_down); -- FSM Posicao

L15: FSM_speed port map(CLOCK_50, reset, btn3, btn2, en_timee, speed); -- FSM Velocidade

L16: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in0, reg_out0); -- Deslocamento e rotacao a esquerda da fila / linha 0
L17: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in1, reg_out1); -- Deslocamento e rotacao a esquerda da fila / linha 1
L18: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in2, reg_out2); -- Deslocamento e rotacao a esquerda da fila / linha 2
L19: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in3, reg_out3); -- Deslocamento e rotacao a esquerda da fila / linha 3
L20: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in4, reg_out4); -- Deslocamento e rotacao a esquerda da fila / linha 4
L21: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in5, reg_out5); -- Deslocamento e rotacao a esquerda da fila / linha 5
L22: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in6, reg_out6); -- Deslocamento e rotacao a esquerda da fila / linha 6
L23: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in7, reg_out7); -- Deslocamento e rotacao a esquerda da fila / linha 7
L24: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in8, reg_out8); -- Deslocamento e rotacao a esquerda da fila / linha 8
L25: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in9, reg_out9); -- Deslocamento e rotacao a esquerda da fila / linha 9
L26: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in10, reg_out10); -- Deslocamento e rotacao a esquerda da fila / linha 10
L27: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in11, reg_out11); -- Deslocamento e rotacao a esquerda da fila / linha 11
L28: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in12, reg_out12); -- Deslocamento e rotacao a esquerda da fila / linha 12
L29: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in13, reg_out13); -- Deslocamento e rotacao a esquerda da fila / linha 13
L30: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in14, reg_out14); -- Deslocamento e rotacao a esquerda da fila / linha 14
L31: rot_32 port map(set_rol, en_timee, clockm, reset, speed, reg_in15, reg_out15); -- Deslocamento e rotacao a esquerda da fila / linha 15



---		BLOCO CONTROLADOR		---
L32: FSM_control port map(	CLOCK_50, btn0, end_bonus, end_time, btn1, target, 
									sel_disp, states, sel_led, set_rol, en_timee, reset); -- FSM de Controle
									

									
---		BLOCO CONTROLADOR		---
L33: mux4x1_32 port map(MAP1F0, MAP2F0, MAP3F0, MAP4F0, reg_in0, SW(8 downto 7)); -- Seleciona Mapa Fila 0
L34: mux4x1_32 port map(MAP1F1, MAP2F1, MAP3F1, MAP4F1, reg_in1, SW(8 downto 7)); -- Seleciona Mapa Fila 1
L35: mux4x1_32 port map(MAP1F2, MAP2F2, MAP3F2, MAP4F2, reg_in2, SW(8 downto 7)); -- Seleciona Mapa Fila 2
L36: mux4x1_32 port map(MAP1F3, MAP2F3, MAP3F3, MAP4F3, reg_in3, SW(8 downto 7)); -- Seleciona Mapa Fila 3
L37: mux4x1_32 port map(MAP1F4, MAP2F4, MAP3F4, MAP4F4, reg_in4, SW(8 downto 7)); -- Seleciona Mapa Fila 4
L38: mux4x1_32 port map(MAP1F5, MAP2F5, MAP3F5, MAP4F5, reg_in5, SW(8 downto 7)); -- Seleciona Mapa Fila 5
L39: mux4x1_32 port map(MAP1F6, MAP2F6, MAP3F6, MAP4F6, reg_in6, SW(8 downto 7)); -- Seleciona Mapa Fila 6
L40: mux4x1_32 port map(MAP1F7, MAP2F7, MAP3F7, MAP4F7, reg_in7, SW(8 downto 7)); -- Seleciona Mapa Fila 7
L41: mux4x1_32 port map(MAP1F8, MAP2F8, MAP3F8, MAP4F8, reg_in8, SW(8 downto 7)); -- Seleciona Mapa Fila 8
L42: mux4x1_32 port map(MAP1F9, MAP2F9, MAP3F9, MAP4F9, reg_in9, SW(8 downto 7)); -- Seleciona Mapa Fila 9
L43: mux4x1_32 port map(MAP1F10, MAP2F10, MAP3F10, MAP4F10, reg_in10, SW(8 downto 7)); -- Seleciona Mapa Fila 10
L44: mux4x1_32 port map(MAP1F11, MAP2F11, MAP3F11, MAP4F11, reg_in11, SW(8 downto 7)); -- Seleciona Mapa Fila 11
L45: mux4x1_32 port map(MAP1F12, MAP2F12, MAP3F12, MAP4F12, reg_in12, SW(8 downto 7)); -- Seleciona Mapa Fila 12
L46: mux4x1_32 port map(MAP1F13, MAP2F13, MAP3F13, MAP4F13, reg_in13, SW(8 downto 7)); -- Seleciona Mapa Fila 13
L47: mux4x1_32 port map(MAP1F14, MAP2F14, MAP3F14, MAP4F14, reg_in14, SW(8 downto 7)); -- Seleciona Mapa Fila 14
L48: mux4x1_32 port map(MAP1F15, MAP2F15, MAP3F15, MAP4F15, reg_in15, SW(8 downto 7)); -- Seleciona Mapa Fila 15

L49: mux4x1_30 port map(screen, mux1, mux2, mux3, hx, sel_disp); -- Multiplexador display

L50: mux8x1 port map(clock1, clock1, clock2, clock3, clock4, clock5, clock1, clock1, clockm, speed); -- Multiplexador clocks

L51: mux16x1_32 port map(	reg_out0, reg_out1, reg_out2, reg_out3, reg_out4, reg_out5, reg_out6, reg_out7, 
									reg_out8, reg_out9, reg_out10, reg_out11, reg_out12, reg_out13, reg_out14, reg_out15,
									reg_out, up_down); -- Multiplexador Registradores Mapa saida 

L52: mux2x1_10 port map(mux2_sig1, mux2_sig2, led_out, sel_led); -- Multiplexador saida LEDS

L53: mux2x1_30 port map(mux2_30_sig1, mux2_30_sig2, screen, SW(9)); -- Multiplexador saida Display

L54: decod7seg port map(hx(29 downto 25), HEX5); -- Decodificador 1 LED 7 segmentos
L55: decod7seg port map(hx(24 downto 20), HEX4); -- Decodificador 2 LED 7 segmentos
L56: decod7seg port map(hx(19 downto 15), HEX3); -- Decodificador 3 LED 7 segmentos
L57: decod7seg port map(hx(14 downto 10), HEX2); -- Decodificador 4 LED 7 segmentos
L58: decod7seg port map(hx(9 downto 5), HEX1); -- Decodificador 5 LED 7 segmentos
L59: decod7seg port map(hx(4 downto 0), HEX0); -- Decodificador 6 LED 7 segmentos

LEDR <= led_out;

end topo_stru;


--------------- FIM			DO			CODIGO					-------------------------


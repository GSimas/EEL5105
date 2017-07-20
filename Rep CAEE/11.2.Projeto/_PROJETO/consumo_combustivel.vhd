--	ALUNOS:
--	Bruno Luiz da Silva
--	Gustavo Fernades
--
--
--	T�TULO:
--	Consumo instant�neo de combust�vel
--
--
--	RESUMO:
--	Calcular� o consumo instant�neo de combust�vel de um carro
--
--
--	ENTRADAS/SA�DAS (I/O):
--	(I) SW: oito chaves, cada uma de um bit, onde ser�o inseridos os dados (multiplicando, multiplicador
--			e expoentes.
--	(I) CLOCK_50: clock de 50 Mhz.
--	(I) KEY: dois bot�es, sendo KEY(1) para realizar as opera��es e KEY(0) para dar reset nos dados.
--	(O) LEDG: nove LEDs, sendo que LED(8) indicar� se houve overflow ou n�o e os outros oite LEDs (7 
--			  downto 0) ser�o utilizados para exibir o valor da mantissa.
--	(O) LEDR: quatro LEDs que ser�o utilizados para exibir o valor do expoente.
--
--	
--	DESCRI��O:
--	O usu�rio colocar� um valor de oito bits inicialmente (multiplicando) e apertar� o bot�o KEY(1) que
--	amazenar� tal valor no registrador de 8 bits. Ap�s o usu�rio soltar o bot�o ent�o o componente
--	aguardar� a inser��o do outro valor (multiplicador) e consequente pressionamento de KEY(1). Ap�s feito
--	isso ent�o o componente aguardar� os valores dos expoentes, sendo de 4 bits cada e ambos ser�o inseridos
--	nas mesmas chaves (SW). Para tal SW(7 downto 4) ser� um expoente e SW(3 downto 0) ser� outro. Assim que for
--	apertado KEY(1) ent�o as opera��es de multiplica��o ser�o realizadas. Somar�-se os dois expoentes,
--	realizar�-se o processo de multiplica��o da mantissa e posterior normaliza��o e por fim haver� a soma
--	do n�mero de deslocamentos que foram necess�rios na normaliza��o com o atual valor da soma dos dois
--	expoentes. Tem-se assim o valor final. Caso houver overflow ele ser� indicado em LEDG(8). As sa�das ser�o
--	representadas em LEDG(7 downto 0) - mantissa e LEDR - expoente.
--
--
--	ANEXO:
--	Todos os passos colocados na descri��o s�o controlados por uma FSM e para maiores detalhes pode-se consultar 
--	o componente "fsm". Caso houver maior interesse no multiplicador ou no expoente ent�o deve-se consultar
--	"multiplicador" ou "expoente".
--
--
--	(I): INPUT	/	(O): OUTPUT

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity consumo_combustivel is
	port(
		SW: in std_logic_vector(7 downto 0);
		CLOCK_50: in std_logic;
		KEY: in std_logic_vector(1 downto 0);
		LEDG: out std_logic_vector(8 downto 0);
		LEDR: out std_logic_vector(3 downto 0)
	);
end consumo_combustivel;

architecture func of consumo_combustivel is
	component multiplicador is
		generic(N: natural := 8);
		port(
			a: in std_logic_vector((N-1) downto 0);			-- Multiplicando e multiplicador
			arguments: in std_logic_vector(2 downto 0);		-- Argumentos que dar� as ordens para o componente
			clk,rst: in std_logic;							-- Clock e reset
			q: out std_logic_vector(((2*N)-1) downto 0);	-- Produto normalizado
			exp_nor: out std_logic_vector(3 downto 0)		-- Expoente da normaliza��o
		);
	end component;
	component fsm is
		port(
			reg_control, press, clk, rst: in std_logic;
			argument: out std_logic_vector(2 downto 0)
		);
	end component;
	
	component expoente is
		generic(N: natural := 4);
		port(
			a,b: in std_logic_vector((N-1) downto 0);		-- Expoentes dados pelo usu�rio
			normal: in std_logic_vector((N-1) downto 0);	-- Deslocamentos que foram necess�rios para normalizar a mantissa
			arguments: in std_logic_vector(2 downto 0);		-- Argumentos que dar� as ordens para o componente
			clk,rst: in std_logic;							-- Clock e reset
			q: out std_logic_vector(N downto 0)				-- Expoente
		);
	end component;
	
	signal mantissa_out: std_logic_vector(15 downto 0);
	signal cntnormal_out, exp_nor_out: std_logic_vector(3 downto 0);
	signal exponent_out: std_logic_vector(4 downto 0);
	signal arg: std_logic_vector(2 downto 0);
begin
	FSM_COMPONENT: fsm port map (mantissa_out(15), not(KEY(1)), CLOCK_50, not(KEY(0)), arg);
	MULTIPLICADOR_COMPONENT: multiplicador port map(SW(7 downto 0), arg, CLOCK_50, not(KEY(0)), mantissa_out, cntnormal_out);
	EXPOENTE_COMPONENT: expoente port map(SW(7 downto 4), SW(3 downto 0), cntnormal_out, arg, CLOCK_50, not(KEY(0)), exponent_out);
	
	LEDG(7 downto 0) <= mantissa_out(15 downto 8); 		-- Mantissa
	LEDR <= exponent_out(3 downto 0);					-- Expoente
	LEDG(8)<= exponent_out(4);							-- Overflow do expoente
end func;
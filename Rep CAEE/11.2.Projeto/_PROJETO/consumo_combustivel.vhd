--	ALUNOS:
--	Bruno Luiz da Silva
--	Gustavo Fernades
--
--
--	TÍTULO:
--	Consumo instantâneo de combustível
--
--
--	RESUMO:
--	Calculará o consumo instantâneo de combustível de um carro
--
--
--	ENTRADAS/SAÍDAS (I/O):
--	(I) SW: oito chaves, cada uma de um bit, onde serão inseridos os dados (multiplicando, multiplicador
--			e expoentes.
--	(I) CLOCK_50: clock de 50 Mhz.
--	(I) KEY: dois botões, sendo KEY(1) para realizar as operações e KEY(0) para dar reset nos dados.
--	(O) LEDG: nove LEDs, sendo que LED(8) indicará se houve overflow ou não e os outros oite LEDs (7 
--			  downto 0) serão utilizados para exibir o valor da mantissa.
--	(O) LEDR: quatro LEDs que serão utilizados para exibir o valor do expoente.
--
--	
--	DESCRIÇÃO:
--	O usuário colocará um valor de oito bits inicialmente (multiplicando) e apertará o botão KEY(1) que
--	amazenará tal valor no registrador de 8 bits. Após o usuário soltar o botão então o componente
--	aguardará a inserção do outro valor (multiplicador) e consequente pressionamento de KEY(1). Após feito
--	isso então o componente aguardará os valores dos expoentes, sendo de 4 bits cada e ambos serão inseridos
--	nas mesmas chaves (SW). Para tal SW(7 downto 4) será um expoente e SW(3 downto 0) será outro. Assim que for
--	apertado KEY(1) então as operações de multiplicação serão realizadas. Somará-se os dois expoentes,
--	realizará-se o processo de multiplicação da mantissa e posterior normalização e por fim haverá a soma
--	do número de deslocamentos que foram necessários na normalização com o atual valor da soma dos dois
--	expoentes. Tem-se assim o valor final. Caso houver overflow ele será indicado em LEDG(8). As saídas serão
--	representadas em LEDG(7 downto 0) - mantissa e LEDR - expoente.
--
--
--	ANEXO:
--	Todos os passos colocados na descrição são controlados por uma FSM e para maiores detalhes pode-se consultar 
--	o componente "fsm". Caso houver maior interesse no multiplicador ou no expoente então deve-se consultar
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
			arguments: in std_logic_vector(2 downto 0);		-- Argumentos que dará as ordens para o componente
			clk,rst: in std_logic;							-- Clock e reset
			q: out std_logic_vector(((2*N)-1) downto 0);	-- Produto normalizado
			exp_nor: out std_logic_vector(3 downto 0)		-- Expoente da normalização
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
			a,b: in std_logic_vector((N-1) downto 0);		-- Expoentes dados pelo usuário
			normal: in std_logic_vector((N-1) downto 0);	-- Deslocamentos que foram necessários para normalizar a mantissa
			arguments: in std_logic_vector(2 downto 0);		-- Argumentos que dará as ordens para o componente
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
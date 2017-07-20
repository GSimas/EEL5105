--	ALUNOS:
--	Bruno Luiz da Silva
--	Gustavo Fernades
--
--
--	TÍTULO:
--		FSM - Full State Machine
--
--
--	RESUMO:
--		Maquina de estados do projeto, contendo um total de 11 estados
--
--
--	ENTRADAS/SAÍDAS (I/O):
--		(I) reg_control: LSB do registrador de 16 bits (valor 15 do vetor) que será usado para comparação no
--						 estado "normaliza".
--		(I) press: será conectada a KEY(1) que será a chave que o usuário apertará para passar alguns estados
--		(I) clk,rst: clock e reset, sendo que o reset zera todas saídas.
--		(O) arguments: argumentos que serão enviados para o "controle" do multiplicador ou do expoente que habi-
--					   litará algumas portas que efetuarão as operações designadas
--
--
--	DESCRIÇÃO:
--		Sendo uma máquina de estados, abaixo segue a descrição detalhada de cada estado:
--		(inicial): esse será o estado inicial, onde não houverá nada a ser feito. Próximo estado: "carrega_reg8"
--		(carrega_reg8): enviará o argumento "001" quando KEY(1) for pressionada. Isso habilitará o reg_8 para 
--						obtenção de dados. Próximo estado: "dummy1".
--		(dummy1): será encarregado de aguardar que a chave ser "despressionada". Próximo estado "carrega_reg16".
--		(carrega_reg16): enviará o argumento "010" quando KEY(1) for pressionada. Isso habilitará a parte baixa
--						 do reg_16 para obtenção de dados. Próximo estado: "dummy2".
--		(dummy2): será encarregado de aguardar que a chave ser "despressionada". Próximo estado "soma_expoentes".
--		(soma_expoentes): enviará o argumento "101" quando KEY(1) for pressionada e assim utilizará os 4 bits altos
--						  e os 4 bits baixos das chaves para realizar uma adição que será o expoente do número.
--						  Inicializa o signal "count" em oito (1000) para posterior utilização.
--						  Próximo estado: "soma_mantissa".
--		(soma_mantissa): enviará o argumento "011" que ativará o componente somador do multiplicador, porém apenas
--						 enquanto o signal "count" for maior que 0. Realizará uma soma entre multiplicando e parte 
--						 alta do registrador ou não fará nada (dependerá do LSB). Para mais detalhes leia a 
--						 documentação do "multiplicador". Próximo estado: "desloca_mantissa" / Próximo estado caso
--						 count for 0: "normaliza".
--		(desloca_mantissa): enviará o argumento "100" que habilitará a opção de deslocamento do registrador de
--							16 bits e decrementará em 1 o signal "count". Próximo estado: "soma_mantissa"
--		(normaliza): enviará o argumento "101" que habilitará a opção de normalização do registrador de 16 bits.
--					 A FSM ficará nesse estado até que reg_control (MSB do registrador) for 1. Próximo estado: "expoente".
--		(expoente): enviará o argumento "111" que habilitará o bloco expoente para somar o atual valor armazenado
--					no estado (adquirido em "soma_expoentes") com o número de deslocamentos realizados pelo
--					registrador anterior. Próximo estado: "final".
--		(final): estado final, onde serão exibidas as saídas. Ficará nesse estado até dar-se reset e então voltará
--				 ao "inicial".
--
--
--	(I): INPUT	/	(O): OUTPUT

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fsm is
	port(
		reg_control,press, clk, rst: in std_logic;
		argument: out std_logic_vector(2 downto 0)
	);
end fsm;

architecture func of fsm is
	type states is (
		inicial,
		carrega_reg8,
		dummy1,
		carrega_reg16,
		dummy2,
		soma_expoentes,
		soma_mantissa,
		desloca_mantissa,
		normaliza,
		expoente,
		final);
	signal actual_step, next_step: states;
	signal argument_aux: std_logic_vector(2 downto 0);
	signal count: std_logic_vector(3 downto 0);
begin
	AUX: process(clk,rst)
	begin
		if(rst = '1') then 
			actual_step <= inicial;
		elsif(rising_edge(clk)) then
			if(next_step = desloca_mantissa) then
				count <= count - 1;
			elsif(next_step = soma_expoentes) then
				count <= "1000";
			end if;
			actual_step <= next_step;
		end if;
	end process;
	MAIN: process(actual_step,count,press,reg_control)
	begin
		case actual_step is
			when inicial =>
				-- Estado inicial (reset)
				argument_aux <= "000";
				next_step <= carrega_reg8;
			when carrega_reg8 =>
				-- Carrega registrador de 8 bits (multiplicando)
				-- count <= "111";
				if(press = '1') then
					argument_aux <= "001";
					next_step <= dummy1;
				else 
					argument_aux <= "000";
					next_step <= carrega_reg8;
				end if;
			when dummy1 =>
				-- Evita possíveis casos de o botão ficar apertado
				-- por muito tempo
				argument_aux <= "000";
				if(press = '0') then
					next_step <= carrega_reg16;
				else next_step <= dummy1;
				end if;
			when carrega_reg16 =>
				-- Inicia parte baixa do registrador de 16 bits (multiplicador)
				if(press = '1') then
					argument_aux <= "010";
					next_step <= dummy2;
				else 
					argument_aux <= "000";
					next_step <= carrega_reg16;
				end if;
			when dummy2 =>
				-- Evita possíveis casos de o botão ficar apertado
				-- por muito tempo			
				argument_aux <= "000";
				if(press = '0') then
					next_step <= soma_expoentes;
				else next_step <= dummy2;
				end if;
			when soma_expoentes => 
				-- Soma os expoentes
				if(press = '1') then
					argument_aux <= "110";
					next_step <= soma_mantissa;
				else 
					argument_aux <= "000";
					next_step <= soma_expoentes;
				end if;
			when soma_mantissa =>
				-- Conta 8x para realizar a operação de multiplicação (soma e desloca)
				if(count = "0000") then
					argument_aux <= "000";
					next_step <= normaliza;
				else
					argument_aux <= "011";
					next_step <= desloca_mantissa;
				end if;
			when desloca_mantissa =>
				-- Realiza a soma e/ou deslocamento
				argument_aux <= "100";
				next_step <= soma_mantissa;
			when normaliza =>
				-- Inicia e termina a normalização
				argument_aux <= "101";
				if(reg_control = '1') then
					next_step <= expoente;
				else 
					next_step <= normaliza;
				end if;
			when expoente =>
				-- Envia dados para o bloco expoente
				argument_aux <= "111";
				next_step <= final;
			when final =>
				argument_aux <= "000";
				next_step <= final;
		end case;
		argument <= argument_aux;
	end process;
end func;

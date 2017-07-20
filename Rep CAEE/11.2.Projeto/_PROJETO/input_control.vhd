--	ALUNOS:
--	Bruno Luiz da Silva
--	Gustavo Fernades
--
--
--	TÍTULO: 
--		Controle de entradas
--
--
--	RESUMO:
--		Bloco que envia a sua entrada para um dos registradores desejados dependendo somente dos argumentos dados
--
--
--	ENTRADAS/SAÍDAS (I/O):
--		(I) a: as chaves SW serão conectadas aqui e posteriormente enviadas para certos componentes dependendo de
--			   "arguments".
--		(I) reg: a parte alta da saída do registrador de 16 bits será conectada aqui para então alimentar certas 
--				 partes do componente de multiplicação, como por exemplo o bloco de adição e deslocamento.
--		(I) arguments: argumentos que serão dados (valores de 3 bits) os quais serão interpretados e darão um valor
--					   lógico alto para uma porta de habilitação específica e as outras receberão valor lógico baixo.
--		(I) clk,rst: clock e reset, sendo que o reset zera todas saídas.
--		(O) l1,l2,s1,shift,n1: saídas que serão conectadas nas portas de habilitação dos outros componentes.
--		(O) q: saída de dados que será ou o valor "a" ou "reg".
--
--
--	DESCRIÇÃO:
--		As entradas "a" e "reg" serão enviadas para a saída, sendo essa redirecionada para alguns componentes. Para 
--		escolher qual componente "receberá" o dado deve-se enviar um argumento (comando de 3 bits) para esse componente 
--		(input_control) sendo que a cada valor desse argumento um componente diferente será habilitado. Segue a relação:
--
--		000: nada	
--		001: saída será "a" e l1 (load 1) será alto - carregará o registrador de 8 bits
--		010: saída será "a" e s1 (start) será alto - carregará a parte baixa do registrador de 16 bits
--		011: saída será "reg" e l2 será alto - ativa o somador e o registrador de 16 bits, sendo que a soma realizada
--			 será entre o valor do registrador de 8 bits com "reg" que será a parte alta do registrador de 16 bits. 
--			 O resultado da soma é enviado para a parte alta do registrador de 16 bits que estará ativado enquanto l2
--			 for alto.
--		100: shift será alto - habilitará o deslocamento do registrador de 16 bits, deslocando os bits a esquerda
--		101: normalize será alto - habilitará a normalização do registrador de 16 bits, normalizando o valor armazenado.
--
--
--	ANEXO:
--		Ainda existem mais dois argumentos porém eles não fazem nenhuma operação aqui. São eles:
--		
--		110: realiza a soma entre os dois expoentes dados (a e b).
--		111: realiza a subtração do atual valor guardado (soma de a e b) com o número de deslocamentos
--	  		 realizados na normalização da mantissa.
--
--
--	(I): INPUT	/	(O): OUTPUT

library ieee;
use ieee.std_logic_1164.all;

entity input_control is
	generic(N: natural := 8);
	port(
		a,reg: in std_logic_vector((N-1) downto 0);		-- Dados de entrada
		arguments: in std_logic_vector(2 downto 0);		-- Argumentos
		clk,rst: in std_logic;							-- Clock, reset
		l1,l2,s1,shift,n1: out std_logic;				-- Saída de controle
		q: out std_logic_vector((N-1) downto 0)			-- Saída de dados
	);
end input_control;

architecture func of input_control is
begin
	INPUT: process(a,reg)
	begin
		if(rst = '1') then 
			q <= (others => '0');
		else 
			-- Checar lista da DESCRIÇÃO para entender o que cada argumento realiza
			case arguments is
				when "001" =>
					q <= a;
					l1 <= '1';
					s1 <= '0';
					l2 <= '0';
					shift <= '0';
					n1 <= '0';
				when "010" =>
					q <= a;
					l1 <= '0';
					s1 <= '1';
					l2 <= '0';
					shift <= '0';
					n1 <= '0';
				when "011" =>
					q <= reg;
					l1 <= '0';
					s1 <= '0';
					l2 <= '1';
					shift <= '0';
					n1 <= '0';
				when "100" =>
					l1 <= '0';
					s1 <= '0';
					l2 <= '0';
					shift <= '1';
					n1 <= '0';
				when "101" =>
					l1 <= '0';
					s1 <= '0';
					l2 <= '0';
					shift <= '0';					
					n1 <= '1';
				when others =>
					q <= (others => '0');
					l1 <= '0';
					s1 <= '0';
					l2 <= '0';
					shift <= '0';
					n1 <= '0';
			end case;
		end if;
	end process;
end func;
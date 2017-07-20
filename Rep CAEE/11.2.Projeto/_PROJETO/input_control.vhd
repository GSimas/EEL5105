--	ALUNOS:
--	Bruno Luiz da Silva
--	Gustavo Fernades
--
--
--	T�TULO: 
--		Controle de entradas
--
--
--	RESUMO:
--		Bloco que envia a sua entrada para um dos registradores desejados dependendo somente dos argumentos dados
--
--
--	ENTRADAS/SA�DAS (I/O):
--		(I) a: as chaves SW ser�o conectadas aqui e posteriormente enviadas para certos componentes dependendo de
--			   "arguments".
--		(I) reg: a parte alta da sa�da do registrador de 16 bits ser� conectada aqui para ent�o alimentar certas 
--				 partes do componente de multiplica��o, como por exemplo o bloco de adi��o e deslocamento.
--		(I) arguments: argumentos que ser�o dados (valores de 3 bits) os quais ser�o interpretados e dar�o um valor
--					   l�gico alto para uma porta de habilita��o espec�fica e as outras receber�o valor l�gico baixo.
--		(I) clk,rst: clock e reset, sendo que o reset zera todas sa�das.
--		(O) l1,l2,s1,shift,n1: sa�das que ser�o conectadas nas portas de habilita��o dos outros componentes.
--		(O) q: sa�da de dados que ser� ou o valor "a" ou "reg".
--
--
--	DESCRI��O:
--		As entradas "a" e "reg" ser�o enviadas para a sa�da, sendo essa redirecionada para alguns componentes. Para 
--		escolher qual componente "receber�" o dado deve-se enviar um argumento (comando de 3 bits) para esse componente 
--		(input_control) sendo que a cada valor desse argumento um componente diferente ser� habilitado. Segue a rela��o:
--
--		000: nada	
--		001: sa�da ser� "a" e l1 (load 1) ser� alto - carregar� o registrador de 8 bits
--		010: sa�da ser� "a" e s1 (start) ser� alto - carregar� a parte baixa do registrador de 16 bits
--		011: sa�da ser� "reg" e l2 ser� alto - ativa o somador e o registrador de 16 bits, sendo que a soma realizada
--			 ser� entre o valor do registrador de 8 bits com "reg" que ser� a parte alta do registrador de 16 bits. 
--			 O resultado da soma � enviado para a parte alta do registrador de 16 bits que estar� ativado enquanto l2
--			 for alto.
--		100: shift ser� alto - habilitar� o deslocamento do registrador de 16 bits, deslocando os bits a esquerda
--		101: normalize ser� alto - habilitar� a normaliza��o do registrador de 16 bits, normalizando o valor armazenado.
--
--
--	ANEXO:
--		Ainda existem mais dois argumentos por�m eles n�o fazem nenhuma opera��o aqui. S�o eles:
--		
--		110: realiza a soma entre os dois expoentes dados (a e b).
--		111: realiza a subtra��o do atual valor guardado (soma de a e b) com o n�mero de deslocamentos
--	  		 realizados na normaliza��o da mantissa.
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
		l1,l2,s1,shift,n1: out std_logic;				-- Sa�da de controle
		q: out std_logic_vector((N-1) downto 0)			-- Sa�da de dados
	);
end input_control;

architecture func of input_control is
begin
	INPUT: process(a,reg)
	begin
		if(rst = '1') then 
			q <= (others => '0');
		else 
			-- Checar lista da DESCRI��O para entender o que cada argumento realiza
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
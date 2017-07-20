--	ALUNOS:
--	Bruno Luiz da Silva
--	Gustavo Fernades
--
--
--	TÍTULO: 
--	Multiplicador
--
--
--	RESUMO:
--	Conjunto de componentes os quais formam um multiplicador
--
--
--	ENTRADAS/SAÍDAS (I/O):
--	(I) a: entradas de 8 bits, sendo essas o multiplicando e o multiplicador.
--	(I) arguments: usado no input_control e assim ele controlará qual componente habilitar e quais desabilitar.
--	(I) clk, rst: clock e reset, sendo que o reset zera todas saídas.
--	(O) q: saída da multiplicação gerada (16 bits) onde constituirá a mantissa do projeto.
--	(O) exp_nor: saída da quantidade de deslocamentos que foram necessários para normalizar a saída gerada (mantissa).
--	
--
--	DESCRIÇÃO:
--	O usuário entrará com os dados de 8 bits e para controlar para quais componentes esses dados irão, será utilizado o
--	input_control, sendo que os "arguments" serão enviados por uma FSM e habilitará os componentes corretos no momento 
--	certo. Deve-se primeiramente carregar o registrador de 8 bits com esses dados (reg_8/ "001"), depois carregar a 
--	parte baixa do registrador de 16 bits (reg16 / "010") e então iniciar a adição e/ou deslocamento.
--	
--	Para tal o componente de soma deverá ser ativado, sendo que o mesmo argumento ativa o armazenamento de dados para a 
--	parte alta registrador de 16 bits ("011"). Essa operação envia a saída da parte alta do registrador de 16 bits para 
--	a entrada "b" do somador e na entrada "a" tem-se o valor do registrador de 8 bits. Ainda é enviado o último bit 
--	presente no reg_16 pois	caso ele for 0 os valores armazenados serão apenas deslocados a direita e caso for 1 então 
--	soma-se as duas entradas e desloca-se os valores armazenados. Para realizar o deslocamento usa-se o argumento "100".
--	
--	O processo de adição e deslocamento deve ser efetuado oito vezes. Quando esse processo terminar tem-se o valor da
--	multiplicação, porém para o projeto será necessário normalizar a mantissa. Para tal o primeiro bit do resultado 
--	deve ser 1 e para isso é preciso avaliar esse bit e caso for 0 desloca-se o valor armazenado para a esquerda. Essa
--	operação é realizada pelo registrador de 16 bits (argumento: "101"). Cada vez que houver o deslocamento será 
--	incrementado 1 em um contador interno. Após o LSB for 1 então finaliza-se o processo e terá-se o valor de vezes que
--	o número foi deslocado. Esse resultado será utilizado para decrementar o expoente posteriormente.
--
--
--	ANEXOS:
--	Parte alta do registrador de 16 bits: refere-se aos valores de 15 a 8 do reg_16 -> reg_16_out(15 downto 8).
--	Parte baixa do registrador de 16 bits: refere-se aos valores de 7 a 0 do reg_16 -> reg_16_out(7 downto 0).
--	Cada argumento possui uma operação específica que é melhor explicada na documentação do componente input_control.
--
--
--	(I): INPUT	/	(O): OUTPUT
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity multiplicador is
	generic(N: natural := 8);
	port(
		a: in std_logic_vector((N-1) downto 0);			-- Multiplicando e multiplicador
		arguments: in std_logic_vector(2 downto 0);		-- Argumentos que dará as ordens para o componente
		clk,rst: in std_logic;							-- Clock e reset
		q: out std_logic_vector(((2*N)-1) downto 0);	-- Produto normalizado
		exp_nor: out std_logic_vector(3 downto 0)		-- Expoente da normalização
	);
end multiplicador;

architecture func of multiplicador is
	-- Registrador de 8 bits (guardará o multiplicando)
	component reg_8 is 
		port(
			d: in std_logic_vector(7 downto 0);
			enable, clk, rst: in std_logic;
			q: out std_logic_vector(7 downto 0)
		);
	end component;
	
	-- Registrador de 16 (+1) bits - 1 bit a mais para o carry
	-- (guardará o multiplicador na parte baixa e as somas parciais na parte alta, deslocando a cada operação e
	-- por fim normalizará o resultado)
	component reg_16 is
		port(
			soma: std_logic_vector(8 downto 0);			-- Resultado do enviado pelo somador
			chave: std_logic_vector (7 downto 0);		-- Valor do multiplicador
			start, load, shift, normalize: in std_logic;-- Recursos para armazenar e manipular valores
			clk, rst: in std_logic;						-- Clock e reset do registrador
			q: out std_logic_vector(15 downto 0);		-- Saída (dados armazenados)
			exp: out std_logic_vector(3 downto 0)		-- Saída de números de deslocamentos realizados
		);
	end component;
	
	-- Soma do multiplicando com parte alta do registrador de 16 bits. 
	component somador is
		generic(N: natural := 8);
		port(
			a,b: in std_logic_vector((N-1) downto 0);	-- Multiplicando e parte alta do registrador de 16 bits
			control,enable: in std_logic;				-- Clock e ativação
			q: out std_logic_vector(N downto 0)			-- Soma
		);
	end component;
	
	-- Executa as operações de acordo com os argumentos enviados
	component input_control is
		generic(N: natural := 8);
		port(
			a,reg: in std_logic_vector((N-1) downto 0);		-- Dado de entrada e valor da parte alta do registrador de 16 bits
			arguments: in std_logic_vector(2 downto 0);		-- Argumentos para operação
			clk,rst: in std_logic;							-- Clock, reset
			l1,l2,s1,shift,n1: out std_logic;				-- Saída para ativar os registradores
			q: out std_logic_vector((N-1) downto 0)			-- Saída do dado de entrada
		);
	end component;
	
	signal reg16in, reg8in, reg8out, control_out: std_logic_vector(7 downto 0);
	signal soma: std_logic_vector(8 downto 0);
	signal reg16out: std_logic_vector(15 downto 0);
	signal l1,l2,s1,shift,n1: std_logic;
	signal exp: std_logic_vector(3 downto 0);
begin
	INPUT: input_control port map (a,reg16out(15 downto 8),arguments,clk,rst,l1,l2,s1,shift,n1,control_out);
	REG8 : reg_8  port map (control_out, l1, clk, rst, reg8out);
	REG16: reg_16 port map (soma, control_out, s1, l2, shift, n1, clk, rst, reg16out, exp);
	SUM: somador port map (reg8out, control_out, reg16out(0), l2, soma);
	q <= reg16out;
	exp_nor <= exp;
end func;
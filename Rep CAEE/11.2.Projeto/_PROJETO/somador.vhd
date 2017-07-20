--	ALUNOS:
--	Bruno Luiz da Silva
--	Gustavo Fernades
--
--
--	T�TULO:
--	Somador do multiplicador
--
--
--	RESUMO:
--	Soma do registrador de 8 bits (multiplicando) com parte alta do de 16 bits, dependendo apenas do MSB do reg_16
--
--
--	ENTRADAS/SA�DAS (I/O):
--	(I) a,b: Valor do registrador de 8 bits (multiplicando) e da parte alta do registrador de 16 bits
--	(I) control: � o MSB do registrador de 16 bits. Ser� utilizado como condi��o para realizar ou n�o a adi��o
--	(I) enable: ativa ou desativa o somador
--	(O) q: sa�da da poss�vel soma, por�m com 9 bits. O bit extra deve-se a um poss�vel carry que pode ser gerado.
--
--
--	DESCRI��O:
--	Realizar� a soma dos valores do registrador de 8 bits e parte alta do registrador de 16 bits quando "enable" for alto 
--	respeitando a condi��o de somente somar ambos se o "control" (MSB do registrador de 16 bits) for 1. Caso contr�rio a 
--	sa�da ser� somente o valor da parte alta do registrador de 16 bits, n�o executando nenhuma opera��o.
--
--
--	(I): INPUT	/	(O): OUTPUT

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somador is
	generic(N: natural := 8);
	port(
		a,b: in std_logic_vector((N-1) downto 0);		-- Valor do registrador de 8 bits e da parte alta do de 16 bits
		control,enable: in std_logic;					-- Clock e enable (l2)
		q: out std_logic_vector(N downto 0)				-- Soma
	);
end somador;

architecture func of somador is
begin
	SOMA: process(enable)
	begin
		if(enable = '1') then
			if(control = '1') then
				q <= ('0' & a) + ('0' & b);
			elsif(control = '0') then
				q <= '0' & b;
			end if;
		end if;
	end process;
end func;
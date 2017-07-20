--	ALUNOS:
--	Bruno Luiz da Silva
--	Gustavo Fernades
--
--
--	TÍTULO:
--	Somador do multiplicador
--
--
--	RESUMO:
--	Soma do registrador de 8 bits (multiplicando) com parte alta do de 16 bits, dependendo apenas do MSB do reg_16
--
--
--	ENTRADAS/SAÍDAS (I/O):
--	(I) a,b: Valor do registrador de 8 bits (multiplicando) e da parte alta do registrador de 16 bits
--	(I) control: é o MSB do registrador de 16 bits. Será utilizado como condição para realizar ou não a adição
--	(I) enable: ativa ou desativa o somador
--	(O) q: saída da possível soma, porém com 9 bits. O bit extra deve-se a um possível carry que pode ser gerado.
--
--
--	DESCRIÇÃO:
--	Realizará a soma dos valores do registrador de 8 bits e parte alta do registrador de 16 bits quando "enable" for alto 
--	respeitando a condição de somente somar ambos se o "control" (MSB do registrador de 16 bits) for 1. Caso contrário a 
--	saída será somente o valor da parte alta do registrador de 16 bits, não executando nenhuma operação.
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
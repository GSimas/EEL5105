--	ALUNOS:
--	Bruno Luiz da Silva
--	Gustavo Fernades
--
--
--	T�TULO:
--	Registrador de 8 bits
--
--
--	RESUMO:
--	Registrador de 8 bits que armazer� o multiplicando
--
--
--	ENTRADAS/SA�DAS (I/O):
--	(I) d: valor de 8 bits que ser� guardado no registrador, sendo, nesse caso, o multiplicando.
--	(I) enable: ativa ou n�o o armazenamento de dados
--	(I) clock,reset: clock e reset, sendo que o reset zera todas sa�das
--	(O) q: sa�da com os dados que foram armazenados previamente
--
--	
--	DESCRI��O:
--	Quando for dado um n�vel l�gico alto para "enable" quando o clock estiver na borda de subida
--	ent�o a entrada (d) ser� armazenada e ent�o a sa�da desse registrador passar� a ser essa entrada.
--
--
--	(I): INPUT	/	(O): OUTPUT

library ieee;
use ieee.std_logic_1164.all;

entity reg_8 is 
	port(
		d: in std_logic_vector(7 downto 0);		-- Valor do multiplicando
		enable, clk, rst: in std_logic;			-- Enable, clock e reset
		q: out std_logic_vector(7 downto 0)		-- Dados armazenados
	);
end reg_8;

architecture func of reg_8 is
begin
	FFD: process(d, clk, rst)
	begin
		if (rst = '1') then 
			q <= (others => '0');
		elsif (rising_edge(clk)) then 
			if(enable = '1') then
				q <= d;
			end if;
		end if;
	end process;
end func;	
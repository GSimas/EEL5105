--	ALUNOS:
--	Bruno Luiz da Silva
--	Gustavo Fernades
--
--
--	TÍTULO:
--	Registrador de 8 bits
--
--
--	RESUMO:
--	Registrador de 8 bits que armazerá o multiplicando
--
--
--	ENTRADAS/SAÍDAS (I/O):
--	(I) d: valor de 8 bits que será guardado no registrador, sendo, nesse caso, o multiplicando.
--	(I) enable: ativa ou não o armazenamento de dados
--	(I) clock,reset: clock e reset, sendo que o reset zera todas saídas
--	(O) q: saída com os dados que foram armazenados previamente
--
--	
--	DESCRIÇÃO:
--	Quando for dado um nível lógico alto para "enable" quando o clock estiver na borda de subida
--	então a entrada (d) será armazenada e então a saída desse registrador passará a ser essa entrada.
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
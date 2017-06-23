library IEEE;
use IEEE.Std_Logic_1164.all;

entity desloc_1_bit_dir is
	generic(N: natural := 64);
	port(	CLK: in std_logic;
			ENABLE : in std_logic;
			RST: in std_logic;
			sr_in: in std_logic_vector(7 downto 0);
			sr_out: out std_logic_vector(7 downto 0)
			);
end entity;

architecture rtl of desloc_1_bit_dir is
signal sr: std_logic_vector (7 downto 0); -- Registrador de N bits

begin
	process (CLK, RST)
	begin
		if (RST = '0') then	-- Reset assíncrono do registrador
			sr <= (others => '0');
		elsif (rising_edge(CLK)) then -- Sinal de clock do registrador (subida)
			if (ENABLE = '1') then		-- Sinal de enable do registrador
				sr(6 downto 0) <= sr_in(7 downto 1);-- Desloca 1 bit para a direita. Bit menos significativo é perdido.
				sr(7) <= '1';
			end if;
		end if;
	end process;
	sr_out <= sr;
end rtl;
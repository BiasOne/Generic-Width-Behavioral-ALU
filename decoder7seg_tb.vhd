library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder7seg_tb is
end decoder7seg_tb;

architecture TB of decoder7seg_tb is

	signal input:	std_logic_vector(3 downto 0);
	signal output:	std_logic_vector(6 downto 0);

begin
	
	UUT: entity work.decoder7seg
		port map(	
				input =>	input,
				output =>	output);
					
	process
	begin
	---------------------START-----------------------
	
	---------------------END-----------------------
	wait;
	end process;
end TB;
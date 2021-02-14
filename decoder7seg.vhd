library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder7seg is 
	port ( 
		input : in std_logic_vector(3 downto 0);
		output : out std_logic_vector(6 downto 0));
end decoder7seg;

architecture d7s of decoder7seg is
begin
	with input select output <=
		"1000000" when "0000",    -- [0]
      "1111001" when "0001",    -- [1]
      "0100100" when "0010",    -- [2]      +---- 0 ----+
      "0110000" when "0011",    -- [3]      |           |
      "0011001" when "0100",    -- [4]      |           |
      "0010010" when "0101",    -- [5]      5           1
      "0000010" when "0110",    -- [6]      |           |
      "1111000" when "0111",    -- [7]      |           |
      "0000000" when "1000",    -- [8]      +---- 6 ----+
      "0011000" when "1001",    -- [9]      |           |
      "0001000" when "1010",    -- [A]      |           |
      "0000011" when "1011",    -- [b]      4           2
      "1000110" when "1100",    -- [c]      |           |
      "0100001" when "1101",    -- [d]      |           |
      "0000110" when "1110",    -- [E]      +---- 3 ----+
      "0001110" when others;    -- [F]
end d7s;
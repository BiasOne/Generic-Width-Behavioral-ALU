library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu_sla_tb is
end alu_sla_tb;

architecture TB of alu_sla_tb is

    component alu_sla

        generic (
            WIDTH : positive := 16
            );
        port (
            input1   : in  std_logic_vector(WIDTH-1 downto 0);
            input2   : in  std_logic_vector(WIDTH-1 downto 0);
            sel      : in  std_logic_vector(3 downto 0);
            output   : out std_logic_vector(WIDTH-1 downto 0);
            overflow : out std_logic
            );

    end component;

    constant WIDTH  : positive                           := 8;
    signal input1   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal input2   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal sel      : std_logic_vector(3 downto 0)       := (others => '0');
    signal output   : std_logic_vector(WIDTH-1 downto 0);
    signal overflow : std_logic;

begin  -- TB

    UUT : alu_sla
        generic map (WIDTH => WIDTH)
        port map (
            input1   => input1,
            input2   => input2,
            sel      => sel,
            output   => output,
            overflow => overflow);

    process
    begin
        ---------------------------ADD------------------------------------
		  		  
        sel    <= "0000";
        input1 <= conv_std_logic_vector(2, input1'length);
        input2 <= conv_std_logic_vector(6, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(8, output'length)) report "Error : 2+6 = " & integer'image(conv_integer(output)) & " instead of 8" severity warning;
        assert(overflow = '0') report "Error                                   : overflow incorrect for 2+8" severity warning;
		  
        sel    <= "0000";
        input1 <= conv_std_logic_vector(250, input1'length);
        input2 <= conv_std_logic_vector(50, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(300, output'length)) report "Error : 250+50 = " & integer'image(conv_integer(output)) & " instead of 44" severity warning;
        assert(overflow = '1') report "Error                                     : overflow incorrect for 250+50" severity warning;
		  -------------------------END ADD------------------------------------
		  --------------------------------------------------------------------
		  
		  ----------------------------SUB--------------------------------------
		  
		  sel    <= "0001";
        input1 <= conv_std_logic_vector(5, input1'length);
        input2 <= conv_std_logic_vector(4, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(1, output'length)) report "Error : 5-4 = " & integer'image(conv_integer(output)) & " instead of 1" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 5-4" severity warning;

		  sel    <= "0001";
        input1 <= conv_std_logic_vector(301, input1'length);
        input2 <= conv_std_logic_vector(1, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(300, output'length)) report "Error : 300-1 = " & integer'image(conv_integer(output)) & " instead of 300" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 300-1" severity warning;
		  --THIS OVERFLOW MIGHT NEED TO BE 1----
        -------------------------END SUB-------------------------------------
		  ---------------------------------------------------------------------
		  
		  ---------------------------MULT-------------------------------------
		  
        sel    <= "0010";
        input1 <= conv_std_logic_vector(5, input1'length);
        input2 <= conv_std_logic_vector(6, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(30, output'length)) report "Error : 5*6 = " & integer'image(conv_integer(output)) & " instead of 30" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for 5*6" severity warning;

        sel    <= "0010";
        input1 <= conv_std_logic_vector(64, input1'length);
        input2 <= conv_std_logic_vector(64, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(4096, output'length)) report "Error : 64*64 = " & integer'image(conv_integer(output)) & " instead of 0" severity warning;
        assert(overflow = '1') report "Error                                      : overflow incorrect for 64*64" severity warning;
		  -------------------------END MULT------------------------------------
		  ---------------------------------------------------------------------
		  
        ---------------------------AND-------------------------------------
		  
        sel    <= "0011";
        input1 <= conv_std_logic_vector(0, input1'length);
        input2 <= conv_std_logic_vector(255, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(0, output'length)) report "Error : 255 AND 0 = " & integer'image(conv_integer(output)) & " instead of 0" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for 255 AND 0" severity warning;

        sel    <= "0011";
        input1 <= conv_std_logic_vector(240, input1'length);
        input2 <= conv_std_logic_vector(0, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(0, output'length)) report "Error : 240 AND 0 = " & integer'image(conv_integer(output)) & " instead of 0" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 240 AND 0" severity warning;
		  -------------------------END AND------------------------------------
		  ---------------------------------------------------------------------
		  
		  ---------------------------OR-------------------------------------
		  
        sel    <= "0100";
        input1 <= conv_std_logic_vector(0, input1'length);
        input2 <= conv_std_logic_vector(255, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(255, output'length)) report "Error : 255 OR 0 = " & integer'image(conv_integer(output)) & " instead of 255" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for 255 OR 0" severity warning;

        sel    <= "0100";
        input1 <= conv_std_logic_vector(240, input1'length);
        input2 <= conv_std_logic_vector(255, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(255, output'length)) report "Error : 240 OR 255 = " & integer'image(conv_integer(output)) & " instead of 255" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 240 OR 255" severity warning;
		  -------------------------END OR------------------------------------
		  ---------------------------------------------------------------------
		  
		  ---------------------------NOT-------------------------------------
		  
        sel    <= "0111";
        input1 <= conv_std_logic_vector(170, input1'length); 
        wait for 40 ns;
        assert(output = conv_std_logic_vector(85, output'length)) report "Error : NOT 170 = " & integer'image(conv_integer(output)) & " instead of 85" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for NOT 170" severity warning;

        sel    <= "0111";
        input1 <= conv_std_logic_vector(240, input1'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(15, output'length)) report "Error : NOT 240 = " & integer'image(conv_integer(output)) & " instead of 15" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for NOT 240" severity warning;
		  ---confused about overflow shittt
		  -------------------------END NOT------------------------------------
		  ---------------------------------------------------------------------
		  
		  ---------------------------LSL-------------------------------------
		  
        sel    <= "1000";
        input1 <= conv_std_logic_vector(1, input1'length); 
        wait for 40 ns;
        assert(output = conv_std_logic_vector(2, output'length)) report "Error :SHIFT LEFT ONCE" & integer'image(conv_integer(output)) & " instead of 2" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for SHIFT LEFT" severity warning;

		  -------------------------END LSL------------------------------------
		  ---------------------------------------------------------------------
		  
		   ---------------------------LSR-------------------------------------
		  
        sel    <= "1001";
        input1 <= conv_std_logic_vector(4, input1'length); 
        wait for 40 ns;
        assert(output = conv_std_logic_vector(1, output'length)) report "Error :SHIFT RIGHT TWICE = " & integer'image(conv_integer(output)) & " instead of 1" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for SHIFT RIGHT" severity warning;

		  -------------------------END LSR------------------------------------
		  ---------------------------------------------------------------------
		  
		  ---------------------------SWAP-------------------------------------
		  
        sel    <= "1010";
        input2 <= conv_std_logic_vector(40, input2'length); 
        wait for 40 ns;
        assert(output = conv_std_logic_vector(130, output'length)) report "Error :SWAP 40 = " & integer'image(conv_integer(output)) & " instead of 130" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for SWAP 40" severity warning;

		  -------------------------END SWAP------------------------------------
		  ---------------------------------------------------------------------
		  
		  ---------------------------REV---------------------------------------
		        
        sel    <= "1011";
        input2 <= conv_std_logic_vector(128, input2'length); 
        wait for 40 ns;
        assert(output = conv_std_logic_vector(1, output'length)) report "Error : Reverse 128 = " & integer'image(conv_integer(output)) & " instead of 1" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for REVERSE 128" severity warning;

		  -------------------------END REV------------------------------------
		  ---------------------------------------------------------------------
		  
		  ---------------------------2S COMP---------------------------------------
		  
        sel    <= "1101";
        input2 <= conv_std_logic_vector(160, input2'length); 
        wait for 40 ns;
        assert(output = conv_std_logic_vector(96, output'length)) report "Error : 2s comp = " & integer'image(conv_integer(output)) & " instead of 96" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for 2s comp" severity warning;

		  -------------------------END 2s COMP------------------------------------
		  ---------------------------------------------------------------------
		  
        wait;
		  

    end process;
	


end TB;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu_sla is generic ( WIDTH : positive := 16 );
	port (
		input1 : in std_logic_vector(WIDTH-1 downto 0);
		input2 : in std_logic_vector(WIDTH-1 downto 0);
		sel : in std_logic_vector(3 downto 0);
		output : out std_logic_vector(WIDTH-1 downto 0);
		overflow : out std_logic );
	end alu_sla;
	
architecture GOOD3 of alu_sla is

  -- We can use constants to make the case statements more readable
  
  constant C_ADD 	: std_logic_vector(3 downto 0) := "0000";
  constant C_SUB 	: std_logic_vector(3 downto 0) := "0001";
  constant C_MUL 	: std_logic_vector(3 downto 0) := "0010";
  constant C_AND 	: std_logic_vector(3 downto 0) := "0011";
  constant C_OR   : std_logic_vector(3 downto 0) := "0100";
  constant C_XOR 	: std_logic_vector(3 downto 0) := "0101";
  constant C_NOR 	: std_logic_vector(3 downto 0) := "0110";
  constant C_NOT 	: std_logic_vector(3 downto 0) := "0111";
  constant C_LSL 	: std_logic_vector(3 downto 0) := "1000";
  constant C_LSR 	: std_logic_vector(3 downto 0) := "1001";
  constant C_SWAP : std_logic_vector(3 downto 0) := "1010";
  constant C_REV  : std_logic_vector(3 downto 0) := "1011";
  constant C_FLAG : std_logic_vector(3 downto 0) := "1100";
  constant C_2COMP: std_logic_vector(3 downto 0) := "1101";
 

begin  -- GOOD3

  process(input1, input2, sel)
  
    variable temp : unsigned(2*WIDTH-1 downto 0);
	 	 
  begin
		overflow <='0';
		
	    case sel is
      when C_ADD =>
        temp := conv_unsigned(unsigned(input1), 2*WIDTH) + conv_unsigned(unsigned(input2), 2*WIDTH);
		  
		  output <= std_logic_vector(temp(WIDTH-1 downto 0));
		  
		  if(temp(2*width-1 downto width) >=1) then
		  overflow <='1';
		  end if;
		  
      when C_SUB =>
        temp := conv_unsigned(unsigned(input1), 2*WIDTH) - conv_unsigned(unsigned(input2), 2*WIDTH);		  
		  output <= std_logic_vector(temp(WIDTH-1 downto 0));
		 
      when C_MUL =>
        temp := unsigned(input1) * unsigned(input2);
		  
		  output <= std_logic_vector(temp(WIDTH-1 downto 0));
		  
		  if(temp(2*width-1 downto width) >=1) then
		  overflow <='1';
		  end if;

      when C_AND =>
        output <= input1 AND input2;
		  		  
		when C_OR =>
        output <= input1 OR input2;
		  		  
		when C_XOR =>
        output <= input1 XOR input2;
		  		  
		when C_NOR =>
        output <= input1 NOR input2;
		  		
		when C_NOT =>
        output <= NOT input1;
		  		  
		when C_LSL =>
        temp := conv_unsigned(SHL(unsigned(input1),"01"),width*2);
		   output <= std_logic_vector(temp(WIDTH-1 downto 0));
		  
		when C_LSR =>
        temp := conv_unsigned(SHR(unsigned(input1),"10"),width*2);
		   output <= std_logic_vector(temp(WIDTH-1 downto 0));
		  
		when C_SWAP =>
		if (WIDTH mod 2 = 0) then
				output <= input2((WIDTH/2)-1 downto 0) & input2(WIDTH-1 downto WIDTH/2);
			else
				output <= input2(((WIDTH+1)/2)-1 downto 0) & input2(WIDTH-1 downto (WIDTH+1)/2);
			end if;
		    
		when C_REV =>
		for i in 0 to WIDTH-1 loop
        temp(i) := input2(WIDTH-1-i);
		  end loop;
		  
		  output <= std_logic_vector(temp(WIDTH-1 downto 0));
		  
		when C_FLAG =>
        if(input2(0) = '0') then
        output <= input2 AND "00000000" ;
		else
			output <= input2 AND "00000001";
		end if;	
		  
		when C_2COMP =>
        temp := (conv_unsigned(unsigned(NOT input2), WIDTH*2)) + 1;
		  output <= std_logic_vector(temp(WIDTH-1 downto 0));

      when others => null;
    end case;
	  
	 
	 end process;
end GOOD3;
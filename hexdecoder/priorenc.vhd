library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity priorenc is 
	Port (
		signal x : in std_logic_vector(7 downto 0);
		signal o : out std_logic_vector (3 downto 0);
		V: out std_logic);
		
	end priorenc;
	
architecture move of priorenc is 
begin 
	o<= "1111" when x(7)='1' else 
		"1101" when x(6)='1' else 
		"1011" when x(5)='1' else 
		"1001" when x(4)='1' else 
		"0111" when x(3)='1' else 
		"0101" when x(2)='1' else 
		"0011" when x(1)='1' else 
		"0001";
		
	
	

end move;		
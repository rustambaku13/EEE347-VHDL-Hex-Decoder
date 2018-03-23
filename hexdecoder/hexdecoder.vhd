library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity hexdecoder is 
	Port ( 
		ins : in STD_LOGIC_VECTOR (0 to 3);
		z : out STD_LOGIC_VECTOR (0 to 7));

end entity;

architecture f of hexdecoder is 

begin
      process(ins) is 
      begin
			case ins is
				when "0000" => z <= "00000011";
				when "0001" => z <= "10011111";
				when "0010" => z <= "00100101";
				when "0011" => z <= "00001101";
				when "0100" => z <= "10011001";
				when "0101" => z <= "01001001";
				when "0110" => z <= "01000001";
				when "0111" => z <= "00011111";
				when "1000" => z <= "00000001";
				when "1001" => z <= "00001001";
				when "1010" => z <= "00010001";
				when "1011" => z <= "11000001";
				when "1100" => z <= "01100011";
				when "1101" => z <= "10000101";
				when "1110" => z <= "01100001";
				when "1111" => z <= "01110001";
				when others => null;
			end case;
			
		end process;	
      
      
end f;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity selector is
 Port ( w0,w1,s : in STD_LOGIC;
 f : out STD_LOGIC);
end selector;
architecture Behavior of selector is
begin
	WITH s SELECT f<=
		w0 WHEN '0' , w1 WHEN OTHERS;
		
			
end Behavior;

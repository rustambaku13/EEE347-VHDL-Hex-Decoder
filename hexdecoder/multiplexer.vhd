
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity multiplexer is 
	Port (
		K : in STD_LOGIC_VECTOR(0 to 3);
		M : in STD_LOGIC_VECTOR (0 to 3);
		s : in STD_LOGIC;
		F : out STD_LOGIC_VECTOR(0 to 3)	
	);
	end multiplexer;
	
architecture cool of multiplexer is 

	component selector
		Port ( w0,w1,s : in STD_LOGIC;
		f : out STD_LOGIC);
		end component;
begin 
stage0 : selector port map(K(0),M(0),s,F(0));
stage1 : selector port map(K(1),M(1),s,F(1));
stage2 : selector port map(K(2),M(2),s,F(2));
stage3 : selector port map(K(3),M(3),s,F(3));


end cool;	
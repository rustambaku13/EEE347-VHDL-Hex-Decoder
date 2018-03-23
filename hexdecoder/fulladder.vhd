-- It is important to include below libraries to get behavioral
-- modeling capability for arithmetic operations:
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
-- Entity declaration with ports
entity fulladder is
 Port ( cin : in STD_LOGIC;
 a : in STD_LOGIC;
 b : in STD_LOGIC;
 cout : out STD_LOGIC;
 sum : out STD_LOGIC);
end fulladder;
-- Architecture name is picked to indicate this is a behavioral model:
architecture Behavior of fulladder is
-- This is an internal signal, which does not go to any port:
signal int_sum: STD_LOGIC_VECTOR(1 DOWNTO 0);
begin
int_sum <= ('0' & a) + b + cin;
sum <= int_sum(0);
cout <= int_sum(1);
end Behavior;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
-- Declared the full adder now interconnect
entity add4bit is
 Port ( cin : in STD_LOGIC;
 x : in STD_LOGIC_VECTOR (3 downto 0);
 y : in STD_LOGIC_VECTOR (3 downto 0);
 s : out STD_LOGIC_VECTOR (3 downto 0);
 cout : out STD_LOGIC);
end add4bit;
architecture Structure of add4bit is
-- declare internal signals used to interconnect 1-bit adders:
signal c1, c2, c3 : STD_LOGIC;
-- declare the component to be used in this architecture:
component fulladder
 Port ( cin : in STD_LOGIC;
 a : in STD_LOGIC;
 b : in STD_LOGIC;
 cout : out STD_LOGIC;
 sum : out STD_LOGIC);
end component;
begin
-- Instantiate 1-bit adder four times and interconnect:
stage0: fulladder port map(cin,x(0),y(0),c1,s(0));
stage1: fulladder port map(c1,x(1),y(1),c2,s(1));
stage2: fulladder port map(c2,x(2),y(2),c3,s(2));
stage3: fulladder port map(c3,x(3),y(3),cout,s(3));

end Structure;
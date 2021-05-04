--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MyPacge is

component flop is
generic (n : NATURAL := 32);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR(n-1 downto 0);
           q : out  STD_LOGIC_VECTOR(n-1 downto 0));
end component;

component Signext is
    Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
           y : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

end MyPacge;


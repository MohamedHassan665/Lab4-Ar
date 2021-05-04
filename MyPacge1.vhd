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

package MyPacge1 is

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

component ShftLeft is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           y : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
component mux2 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           selector : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;
component Alu is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           F : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
component Adder is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
			Cin : in STD_LOGIC;
           C : out  STD_LOGIC);
End component;
end MyPacge1;


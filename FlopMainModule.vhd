----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:04:06 05/04/2021 
-- Design Name: 
-- Module Name:    FlopMainModule - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MyPacge1.All;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FlopMainModule is
generic(n : NATURal :=32);
    Port ( clk : in  STD_LOGIC;
           c : in  STD_LOGIC;
           L : in  STD_LOGIC;
           R1 : out  STD_LOGIC_VECTOR(n-1 downto 0);
           R2 : out  STD_LOGIC_VECTOR(n-1 downto 0));
end FlopMainModule;

architecture Behavioral of FlopMainModule is
signal temp1: STD_LOGIC_VECTOR(n-1 downto 0);
signal temp2: STD_LOGIC_VECTOR(n-1 downto 0);
begin
temp1<= (others => '1');
Rmap1 :flop Generic map(n) port map(clk,c,temp1,temp2);
Rmap2 :flop Generic map(n) port map(clk,not(L),temp2,R2);
R1<= temp2;
end Behavioral;

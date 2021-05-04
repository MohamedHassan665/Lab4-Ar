--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:13:00 05/04/2021
-- Design Name:   
-- Module Name:   E:/Second Year/Hands on lab architcure/LastProject/test.vhd
-- Project Name:  LastProject
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FlopMainModule
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FlopMainModule
    PORT(
         clk : IN  std_logic;
         c : IN  std_logic;
         L : IN  std_logic;
         R1 : OUT  std_logic_vector(31 downto 0);
         R2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal c : std_logic := '0';
   signal L : std_logic := '0';

 	--Outputs
   signal R1 : std_logic_vector(31 downto 0);
   signal R2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 1 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FlopMainModule PORT MAP (
          clk => clk,
          c => c,
          L => L,
          R1 => R1,
          R2 => R2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for clk_period/2 - 10 ns;
d<='1';
      wait for clk_period*2;
reset<='1';
      -- insert stimulus here 

      wait;
   end process;

END;

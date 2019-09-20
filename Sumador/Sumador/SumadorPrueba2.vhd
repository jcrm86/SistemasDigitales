--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:20:41 09/20/2019
-- Design Name:   
-- Module Name:   C:/Users/Juan Camilo/Documents/UMNG/Digitales/SistemasDigitales/Sumador/Sumador/SumadorPrueba2.vhd
-- Project Name:  Sumador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sumador4Bits
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
 
ENTITY SumadorPrueba2 IS
END SumadorPrueba2;
 
ARCHITECTURE behavior OF SumadorPrueba2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sumador4Bits
    PORT(
         A1 : IN  std_logic;
         B1 : IN  std_logic;
         A2 : IN  std_logic;
         B2 : IN  std_logic;
         A3 : IN  std_logic;
         B3 : IN  std_logic;
         A4 : IN  std_logic;
         B4 : IN  std_logic;
         S1 : OUT  std_logic;
         S2 : OUT  std_logic;
         S3 : OUT  std_logic;
         S4 : OUT  std_logic;
         Co : IN  std_logic;
         C : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A1 : std_logic := '1';
   signal B1 : std_logic := '1';
   signal A2 : std_logic := '1';
   signal B2 : std_logic := '0';
   signal A3 : std_logic := '1';
   signal B3 : std_logic := '1';
   signal A4 : std_logic := '1';
   signal B4 : std_logic := '0';
   signal Co : std_logic := '0';

 	--Outputs
   signal S1 : std_logic;
   signal S2 : std_logic;
   signal S3 : std_logic;
   signal S4 : std_logic;
   signal C : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador4Bits PORT MAP (
          A1 => A1,
          B1 => B1,
          A2 => A2,
          B2 => B2,
          A3 => A3,
          B3 => B3,
          A4 => A4,
          B4 => B4,
          S1 => S1,
          S2 => S2,
          S3 => S3,
          S4 => S4,
          Co => Co,
          C => C
        );

   -- Clock process definitions
   <clock>_process :process
   begin
	--	<clock> <= '0';
	--	wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

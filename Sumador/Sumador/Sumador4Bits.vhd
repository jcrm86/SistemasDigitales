----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:51:39 09/19/2019 
-- Design Name: 
-- Module Name:    Sumador4Bits - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sumador4Bits is
    Port ( A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           A3 : in  STD_LOGIC;
           B3 : in  STD_LOGIC;
           A4 : in  STD_LOGIC;
           B4 : in  STD_LOGIC;
           S1 : out  STD_LOGIC;
           S2 : out  STD_LOGIC;
           S3 : out  STD_LOGIC;
           S4 : out  STD_LOGIC;
           Co : in  STD_LOGIC;
           C : out  STD_LOGIC);
end Sumador4Bits;

architecture Behavioral of Sumador4Bits is
--Se definen señales entre bloques
signal C1,C2,C3,C4:std_logic;
--Se definen los componentes a ser utilizados, para este caso serán 4 sumadores de 1 bit
		component Sumador is 
		port(
				A: in std_logic;
				B: in std_logic;
				Co: in std_logic;
				S: out std_logic;
				C: out std_logic);end component;

begin
Sumador1: Sumador port map(A1,B1,Co,S1,C1);
Sumador2: Sumador port map(A2,B2,C1,S2,C2);
Sumador3: Sumador port map(A3,B3,C2,S3,C3);
Sumador4: Sumador port map(A4,B4,C3,S4,C);

end Behavioral;


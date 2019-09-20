----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:35:49 09/19/2019 
-- Design Name: 
-- Module Name:    Sumador - Behavioral 
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

entity Sumador is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Co : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end Sumador;

architecture Behavioral of Sumador is

begin

--Descripcion por comportamiento
S<= (Co xor A xor B);
C<= (Co and (A or B)) or (A and B);



end Behavioral;


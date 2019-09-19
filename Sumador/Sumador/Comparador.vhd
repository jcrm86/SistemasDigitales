----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:50:35 09/19/2019 
-- Design Name: 
-- Module Name:    Comparador - Behavioral 
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

entity Comparador is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end Comparador;

architecture Behavioral of Comparador is

begin
--Estilo funcional
--process
--if A=B then 
	--C<=1;
	--else
	--C<=0;
--end if;

--Estilo por diagrama de flujo
--C <= '1' when (A = B) else '0';

--Estilo
 C<= (not A and not B) or (A and B);

end Behavioral;


----------------------------------------------------------------------------------
-- Company: UMNG
-- Engineer: Juan
-- 
-- Create Date:    08:02:42 09/20/2019 
-- Design Name: 
-- Module Name:    ComparadorPrueba - Behavioral 
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

entity ComparadorPrueba is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Salida_mayor : out  STD_LOGIC;
           Salida_menor : out  STD_LOGIC;
           Salida_igual : out  STD_LOGIC);
end ComparadorPrueba;

architecture Behavioral of ComparadorPrueba is

begin
	--Funcional
	process
	if A=B then
		Salida_igual <= 1;
	else
		Salida_igual <=0;
	end if;

end Behavioral;


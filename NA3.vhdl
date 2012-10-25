library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity NA3 is
    Port ( a : in std_logic;
           b : in std_logic;
           c : in std_logic; 
           y : out std_logic);
end NA3;

architecture arch_NA3 of NA3 is
begin
	
	y <= not((not(a))or(not(b))or(not(c))); 
	 

end arch_NA3;	
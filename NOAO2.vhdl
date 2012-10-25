library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity NOAO2 is
    Port ( a : in std_logic;
           b : in std_logic;
           c : in std_logic; 
           d : in std_logic; 
           y : out std_logic);
end NOAO2;

architecture arch_NOAO2 of NOAO2 is
begin

y <= not((not(a)) and((not(b))or((not(c))and(not(d))))); 	
	 

end arch_NOAO2	;	
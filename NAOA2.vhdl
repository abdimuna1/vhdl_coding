library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity NAOA2 is
    Port ( a : in std_logic;
           b : in std_logic;
           c : in std_logic; 
           d : in std_logic; 
           y : out std_logic);
end NAOA2;

architecture arch_NAOA2 of NAOA2 is
begin

y <= not((not(a))or((not(b))and(not((not(c))or(not(d)))))); 
	 

end arch_NAOA2	;				
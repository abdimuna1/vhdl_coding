library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity EX2 is
    Port ( a : in std_logic;
           b : in std_logic;
           y : out std_logic);
end EX2;

architecture arch_EX2 of EX2 is
begin

y <= (a and (not(b)) or (not(a)) and b);
	 

end arch_EX2;	
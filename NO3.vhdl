library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity NO3 is
    Port ( a : in std_logic;
           b : in std_logic;
           c : in std_logic; 
           y : out std_logic);
end NO3;

architecture arch_NO3 of NO3 is
begin
	--c <= a AND b;
 y <= not((not(a))and(not(b))and(not(c))); 

end arch_NO3;	
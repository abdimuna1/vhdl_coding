library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity NO3A2 is
    Port ( a : in std_logic;
           b : in std_logic;
           c : in std_logic; 
           d : in std_logic; 
           y : out std_logic);
end NO3A2;

architecture arch_NO3A2 of NO3A2 is
begin

y <= not((not(a))and(not(b))and(not((not(d)or(not(c)))))); 	
	 

end arch_NO3A2	;		
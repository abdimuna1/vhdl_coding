library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity NOA3 is
    Port ( a : in std_logic;
           b : in std_logic;
           c : in std_logic; 
           d : in std_logic; 
           y : out std_logic);
end NOA3;

architecture arch_NOA3 of NOA3 is
begin

y <= not((not(a)) or (not((not(b))or(not(c))or(not(d)))));
	 

end arch_NOA3;	
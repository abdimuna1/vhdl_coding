library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity A2 is
    Port ( a : in std_logic;
           b : in std_logic;
           y : out std_logic);
end A2;

architecture arch_A2 of A2 is
begin
	y <= a AND b;
end arch_A2;	
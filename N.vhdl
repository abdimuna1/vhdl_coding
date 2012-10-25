--import std_logic from the IEEE library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


--ENTITY DECLARATION: name, inputs, outputs
entity N is
   port( A  : in std_logic;
         y : out std_logic);
end N;

--FUNCTIONAL DESCRIPTION: how the Inverter works
architecture arch_N of N is
begin
   y <= not A;
end arch_N;

----
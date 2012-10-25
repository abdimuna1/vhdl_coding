library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity top is
    Port ( a : in std_logic;
           b : in std_logic;
           c : in std_logic;
           d : in std_logic;
           y1: out std_logic; 
           y2: out std_logic; 
           y3: out std_logic;
           y4: out std_logic
             );
end top;

architecture arch_top of top is
 --N--component 
 component N IS 
   port(
     a: in std_logic; 
     y: out std_logic); 
   end component; 
	component A2 IS
		PORT (
		  a:in std_logic; 
		  b: in std_logic; 
		  y: out std_logic
			);
	end component;
	---NO3 
	component NO3 IS 
	  PORT( 
	     a: in std_logic; 
	     b: in std_logic; 
	     c: in std_logic; 
	     y: out std_logic); 
	     end component; 
	     --end NO3
	     ---NA3--
	 component NA3 IS 
	   PORT( 
	     a:in std_logic; 
	     b:in std_logic; 
	     c:in std_logic; 
	     y:out std_logic); 
	     end component; 
	   --end NA3
	   
	   ---EX2--- 
	   component EX2 IS 
	     PORT( 
	     a:in std_logic; 
	     b: in std_logic; 
	     y: out std_logic); 
	     end component; 
	   ---end EX2  
	   ---NOA3
	   component NOA3 IS 
	     PORT( 
	     a: in std_logic; 
	     b: in std_logic; 
	     c: in std_logic; 
	     d: in std_logic; 
	     y: out std_logic); 
	     end component; 
	   ---end NOA3
	   
	   	   ---NOAO2
	   component NOAO2 IS 
	     PORT( 
	     a: in std_logic; 
	     b: in std_logic; 
	     c: in std_logic; 
	     d: in std_logic; 
	     y: out std_logic); 
	     end component; 
	   ---end NOAO2
	   ---NO3A2
	   component NO3A2 IS 
	     PORT( 
	     a: in std_logic; 
	     b: in std_logic; 
	     c: in std_logic; 
	     d: in std_logic; 
	     y: out std_logic); 
	     end component; 
	   ---end NO3A2
	   
	    ---NAO2
	   component NAO2 IS 
	     PORT( 
	     a: in std_logic; 
	     b: in std_logic; 
	     c: in std_logic; 
	     y: out std_logic); 
	     end component; 
	   ---end NAO2

	     
      ---NOAO2
	   component NAOA2 IS 
	     PORT( 
	     a: in std_logic; 
	     b: in std_logic; 
	     c: in std_logic; 
	     d: in std_logic; 
	     y: out std_logic); 
	     end component; 
	   ---end NAOA2

	-- additional component definitions go here
	Signal	 temp_N1, temp_A2, temp3,temp_N2,temp_N3:	std_logic;
	Signal  temp_N4, temp_N5, temp_NO3: std_logic; 
	Signal  temp_NA3, temp_EX2, temp_N6, temp_NOA3:std_logic; 
	Signal  y_3, y_2, y_1, y_4:std_logic; 
	
begin
	N1_component:	N
		PORT MAP(a, temp_N1);
	A2_component:	A2
		PORT MAP(a, temp_N1, temp_A2);
	N2_component:N 
	   PORT MAP(temp_A2, temp_N2); 
	N3_componet:N 
	   PORT MAP(c, temp_N3); 
	N4_componet:N 
	    PORT MAP(a, temp_N4); 
	N5_componet:N 
	    PORT MAP(temp_N2, temp_N5); 
	NO3_component:NO3
	    PORT MAP(temp_N3, c, a, temp_NO3); 
	NA3_component:NA3
	    PORT MAP(b, temp_N1, temp_N4, temp_NA3); 
	EX2_component:EX2
	    PORT MAP(c, temp_N5, temp_EX2);  
	N6_component:N
	    PORT MAP( c, temp_N6); 
	NOA3_component:NOA3
	    PORT MAP(temp_NO3, c, temp_N3, a, temp_NOA3);
	NOAO2_component:NOAO2
	    PORT MAP(temp_N6, temp_NA3, b, temp_N2, y_3); 
	NO3A2_component:NO3A2
	    PORT MAP(c, d, temp_N3, temp_N4, y_2);
	NAO2_component:NAO2
	    PORT MAP(temp_EX2, d, b, y_1); 
	NAOA2_component:NAOA2
	    PORT MAP(temp_NOA3, d, temp_N3, a, y_4);

end arch_top;
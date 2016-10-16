----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:52:23 10/16/2016 
-- Design Name: 
-- Module Name:    UnidadControl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity unidadControl is
    Port ( op : in  STD_LOGIC_VECTOR(1 downto 0);
           op3 : in  STD_LOGIC_VECTOR(5 downto 0);
           salida_UC : out  STD_LOGIC_VECTOR(5 downto 0));
end unidadControl;

architecture Behavioral of unidadControl is

begin
    process(op,op3)
  begin
if (op="10")then
			       
					 --del 1 al 20
					 case op3 is 
				
							when "000000" => -- ADD
								salida_UC  <= "000001";
								
							when "010000" => -- ADDcc
								salida_UC  <= "000010";
								
							when "011000" => -- ADDX
								salida_UC  <= "000011";
							
							when "001000" => -- ADDXcc
								salida_UC  <= "000100";

							when "000100" => -- SUB
								 salida_UC <= "000101";
						 
							when "010100" => -- SUBcc
								 salida_UC <= "000110";	
								 
							when "001100" => -- SUBX
								 salida_UC <= "000111";	
                     
                     when "011100" => -- SUBXcc
								 salida_UC <= "001000";							
								 
							when "000001" => -- AND
								salida_UC <= "001001";
								 
							when "000101" => -- ANDN
								salida_UC <= "001010";
							
                      when "010101" => -- ANDNcc
								salida_UC <= "001011";
								 
							when "010001" => -- ANDcc
								salida_UC <= "001100";							
								 
							when "000010" => -- OR
								salida_UC <= "001101";
								
							when "000110" => -- ORN
								salida_UC <= "001110";
								
							when "010010" => -- ORcc
								salida_UC <= "001111";
								
							when "010110" => -- ORNcc
								salida_UC <= "010000";	
								 
							when "000011" => -- XOR
								salida_UC  <= "010001"; 
								
							when "000111" => -- XNOR
								salida_UC <= "010010";
							
                     when "010011" => -- XORcc
								salida_UC  <= "010011"; 
								
							when "010111" => -- XNORcc
								salida_UC <= "010100";							
							when others => --Nop
								salida_UC <= "111111"; 
								
				end case;
						 
		end if; 

end process; 

end Behavioral;


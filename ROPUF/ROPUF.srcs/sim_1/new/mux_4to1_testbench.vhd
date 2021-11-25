----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 01:46:36 PM
-- Design Name: 
-- Module Name: mux_4to1_testbench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_4to1_testbench is
--  Port ( );
end mux_4to1_testbench;

architecture Behavioral of mux_4to1_testbench is
    signal x: std_logic_vector(3 downto 0);
    signal sel: std_logic_vector(1 downto 0);
    signal res: std_logic;
    
    component mux_4to1
        PORT(x : in STD_LOGIC_VECTOR(3 downto 0); 
           sel: in STD_LOGIC_VECTOR(1 downto 0);    
           res: out STD_LOGIC);
    end component;
begin
    DUT: mux_4to1
        PORT MAP(x,sel,res);

    STIMULUS: PROCESS
    begin
        x <= "0101" ; 
        
        sel <= "00" ;
		WAIT FOR 200 NS ;
		sel <= "01" ;
		WAIT FOR 200 NS ;
		sel <= "10" ;
		WAIT FOR 200 NS ;
		sel <= "11" ;
		WAIT FOR 200 NS ;
    end process;
end Behavioral;

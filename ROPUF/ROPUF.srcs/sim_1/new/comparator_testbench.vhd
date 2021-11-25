----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2021 10:40:47 PM
-- Design Name: 
-- Module Name: comparator_testbench - Behavioral
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

entity comparator_testbench is
--  Port ( );
end comparator_testbench;

architecture Behavioral of comparator_testbench is
    signal in1: std_logic_vector(3 downto 0);
    signal in2: std_logic_vector(3 downto 0);
    signal res: std_logic;
    
    component comparator
        port( in1: in std_logic_vector(3 downto 0);
              in2: in std_logic_vector(3 downto 0);
              res: out std_logic);
    end component;
begin
    DUT: comparator
        port map(in1 => in1,
                 in2 => in2,
                 res => res);
    
    STIMULUS: process
    begin
        in1 <= "0000"; in2 <= "0000";
        wait for 200 ns;
        in1 <= "0000"; in2 <= "0001";
        wait for 200 ns;
        in1 <= "0001"; in2 <= "0000";
        wait for 200 ns;
        in1 <= "0001"; in2 <= "0001";
        wait for 200ns;
    end process;

end Behavioral;

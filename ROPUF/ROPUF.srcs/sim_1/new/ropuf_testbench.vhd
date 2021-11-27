----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/25/2021 06:18:37 PM
-- Design Name: 
-- Module Name: ropuf_testbench - Behavioral
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

entity ropuf_testbench is
--  Port ( );
end ropuf_testbench;

architecture Behavioral of ropuf_testbench is
    SIGNAL clk1: STD_LOGIC := '0';
    SIGNAL clk2: STD_LOGIC := '0';
    SIGNAL enable : STD_LOGIC;
    SIGNAL sel : std_logic_vector(1 downto 0) := "01";
    SIGNAL rst: std_logic := '0';
    SIGNAL finalResult: std_logic;
    
    COMPONENT ropuf
        PORT(  clk1: in STD_LOGIC;
               clk2: in STD_LOGIC;
               enable : in STD_LOGIC;
               sel : in std_logic_vector(1 downto 0);
               rst: in std_logic;
               finalResult: out std_logic);
    END COMPONENT;
begin
    clk1 <= not clk1 after 50ns;
    clk2 <= not clk2 after 10ns;
    
    DUT: ropuf
        PORT MAP(clk1, clk2, enable, sel, rst, finalResult);

    STIMULUS: PROCESS
        BEGIN
            WAIT FOR 100 NS;
            enable <= '1'; 
            WAIT FOR 600 NS ;
            enable <= '0'; 
            WAIT FOR 200 NS ;
    END PROCESS;
end Behavioral;

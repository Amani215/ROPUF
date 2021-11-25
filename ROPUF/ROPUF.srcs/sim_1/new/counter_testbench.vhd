----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 02:17:05 PM
-- Design Name: 
-- Module Name: counter_testbench - Behavioral
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

entity counter_testbench is
--  Port ( );
end counter_testbench;

architecture Behavioral of counter_testbench is
    signal clk : STD_LOGIC := '0';
    signal rst : STD_LOGIC;
    signal res : std_logic_vector(0 to 3);
    
    component counter
        port(clk : in STD_LOGIC;
             rst : in STD_LOGIC;
             res : out std_logic_vector(0 to 3));
    end component;
    
begin
    clk <= not clk after 10ns;
    
    DUT: counter
        PORT MAP(clk, rst, res);

    stim_proc: process
    begin        
       rst <= '1';
       wait for 20 ns;    
       rst <= '0';
       wait for 200ns;
    end process;
end Behavioral;
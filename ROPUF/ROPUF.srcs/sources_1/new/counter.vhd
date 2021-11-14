----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 02:05:23 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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
use ieee.std_logic_unsigned.all;

entity counter is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           res : out std_logic_vector(3 downto 0));
end counter;

architecture Behavioral of counter is
    signal count : std_logic_vector(3 downto 0);
begin
    process(rst,clk)
        begin
            if (rst = '1') then 
                count <= "0000";
            elsif (rising_edge(clk)) then 
                count <= count + "0001";
            end if;
    end process;
    res <= count;
end Behavioral;
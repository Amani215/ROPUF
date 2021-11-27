----------------------------------------------------------------------------------
-- Company:
-- Engineer:
-- 
-- Create Date: 11/27/2021 12:16:29 PM
-- Design Name: 
-- Module Name: Inv_gate - Behavioral
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

entity Inv_gate is
    Port ( input: in std_logic;
           output:out std_logic );
end Inv_gate;

architecture Behavioral of Inv_gate is
begin
    output <= not input;
end Behavioral;

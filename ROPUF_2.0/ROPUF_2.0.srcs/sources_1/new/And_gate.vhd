----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2021 12:51:05 PM
-- Design Name: 
-- Module Name: And_gate - Behavioral
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

entity And_gate is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           output : out STD_LOGIC);
end And_gate;

architecture Behavioral of And_gate is
begin
    output <= in1 and in2;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 01:25:11 PM
-- Design Name: 
-- Module Name: mux_4to1 - dataflow
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

entity mux_4to1 is
    Port ( x : in STD_LOGIC_VECTOR(3 downto 0);     --input (3 is MSB, 0 is LSB)
           sel: in STD_LOGIC_VECTOR(1 downto 0);    --selection (1 is MSB, 0 is LSB)
           res: out STD_LOGIC);                      --output
end mux_4to1;

architecture dataflow of mux_4to1 is

begin
    with sel select
        res <= x(0) when "00",
               x(1) when "01",
               x(2) when "10",
               x(3) when "11",
               '0' when others;
end dataflow;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 12:12:29 PM
-- Design Name: 
-- Module Name: ring_oscillator - Behavioral
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

entity ring_oscillator is
    Port ( innerClock: in std_logic;
           enable : in STD_LOGIC;
           res : inout STD_LOGIC);
end ring_oscillator;

architecture dataflow of ring_oscillator is
begin
    process(enable, innerClock, res)
        variable prev: std_logic := '0';
    begin
         if(enable='1') then
         if(innerClock' event and innerClock='1') then
            res <= not(not(not(enable and prev)));
            prev := not prev;
            end if;
         elsif (enable='0') then
            res <= prev;
         else
            res<= '0';
            prev := '0';
         end if;
    end process;
end dataflow;
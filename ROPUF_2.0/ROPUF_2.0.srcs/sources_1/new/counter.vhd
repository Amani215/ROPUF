----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2021 07:27:41 PM
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port (clk : in STD_LOGIC;
          rst : in STD_LOGIC;
          output : out std_logic_vector(7 downto 0) );
end counter;

architecture Behavioral of counter is
    signal count : std_logic_vector(7 downto 0);
begin
    process(rst,clk)
        begin
            if (rst = '1') then 
                count <= (others => '0');
            elsif (rising_edge(clk)) then 
                count <= std_logic_vector( unsigned(count) + 1 );
            end if;
            output <= count;
    end process;

end Behavioral;

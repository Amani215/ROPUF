----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/25/2021 03:49:32 PM
-- Design Name: 
-- Module Name: ro_module_testbench - Behavioral
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

entity ro_module_testbench is
--  Port ( );
end ro_module_testbench;

architecture Behavioral of ro_module_testbench is
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL t_enable : STD_LOGIC;
    SIGNAL t_res: STD_LOGIC;
    
    COMPONENT ring_oscillator
        PORT(   innerClock: in std_logic;
                enable : in STD_LOGIC;
                res: inout STD_LOGIC);
    END COMPONENT;
    
    
begin
    clk <= not clk after 10 ns;
    DUT: ring_oscillator
        PORT MAP(innerClock =>clk, enable => t_enable, res=>t_res);

    STIMULUS: PROCESS
	BEGIN
	    WAIT FOR 100 NS;
		t_enable <= '1'; 
		WAIT FOR 200 NS ;
		t_enable <= '0'; 
		WAIT FOR 200 NS ;
	END PROCESS;

end Behavioral;

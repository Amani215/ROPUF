----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 04:22:02 PM
-- Design Name: 
-- Module Name: ropuf - Behavioral
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

entity ropuf is
    Port ( clk1: in STD_LOGIC;
           clk2: in STD_LOGIC;
           enable : in STD_LOGIC;
           sel : in std_logic_vector(1 downto 0);
           rst: in std_logic;
           finalResult: out std_logic);
end ropuf;

architecture Behavioral of ropuf is
    signal out1: std_logic_vector (3 downto 0);
    signal out2: std_logic_vector (3 downto 0);
    signal mux_result1, mux_result2: std_logic;
    signal counter1, counter2 : std_logic_vector(3 downto 0);
    
    component ring_oscillator
        port(innerClock: in STD_LOGIC;
             enable : in STD_LOGIC;
             res : inout STD_LOGIC);
    end component;
    
    component mux_4to1
        port(x : in STD_LOGIC_VECTOR(3 downto 0);     
             sel: in STD_LOGIC_VECTOR(1 downto 0);   
             res: out STD_LOGIC);
    end component;
    
    component counter
        port(clk : in STD_LOGIC;
             rst : in STD_LOGIC;
             res : out std_logic_vector(3 downto 0));
    end component;
    
    component comparator
        port(in1: in std_logic_vector(3 downto 0);
             in2: in std_logic_vector(3 downto 0);
             res: out std_logic);
    end component;
begin
    --first half of the circuit
    ro1_1: ring_oscillator
        port map(clk1, enable, out1(0));
    ro1_2: ring_oscillator
        port map(clk1, enable, out1(1));
    ro1_3: ring_oscillator
        port map(clk1, enable, out1(2));
    ro1_4: ring_oscillator
        port map(clk1, enable, out1(3));
    
    mux1: mux_4to1
        port map(x=>out1,
                 sel => sel,
                 res=>mux_result1);
                 
    c1: counter
        port map(clk => mux_result1,
                 rst => rst,
                 res => counter1);

--second half of the circuit
    ro2_1: ring_oscillator
        port map(clk2, enable, out2(0));
    ro2_2: ring_oscillator
        port map(clk2, enable, out2(1));
    ro2_3: ring_oscillator
        port map(clk2, enable, out2(2));
    ro2_4: ring_oscillator
        port map(clk2, enable, out2(3));
    
    mux2: mux_4to1
        port map(x=>out2,
                 sel => sel,
                 res=>mux_result2);
                 
    c2: counter
        port map(clk => mux_result2,
                 rst => rst,
                 res => counter2);

--comparing the results:
    comp: comparator
        port map(in1 => counter1, 
                 in2 => counter2,
                 res => finalResult);
end Behavioral;

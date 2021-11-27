----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2021 03:22:44 PM
-- Design Name: 
-- Module Name: delay_line - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Delay line consists of 1 AND gate and NUM_OF_INVERTERS
--              number of inverters. 
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

use work.parameters.all;

entity delay_line is
    Port ( enable: in std_logic;
           output: out std_logic);
end delay_line;

architecture struct of delay_line is
    attribute dont_touch : string;
    
    signal inverter_chain:std_logic_vector(NUM_OF_INVERTERS downto 0);
    signal prev_output: std_logic;
    signal and_output: std_logic;
    
    attribute dont_touch of inverter_chain: signal is "true";
    
    component And_gate
        port(in1 : in STD_LOGIC;
             in2 : in STD_LOGIC;
             output : out STD_LOGIC);
    end component;
begin
    andg: And_gate
        port map(in1 => enable,
                 in2 => inverter_chain(NUM_OF_INVERTERS),
                 output => inverter_chain(0));
        
    inst_inverter_chain: for i in 1 to NUM_OF_INVERTERS generate
    begin
        inst_inverter: entity work.Inv_gate
            port map(input => inverter_chain(i-1),
                     output=> inverter_chain(i));   
    end generate;

    output <= inverter_chain(NUM_OF_INVERTERS);
    
end struct;

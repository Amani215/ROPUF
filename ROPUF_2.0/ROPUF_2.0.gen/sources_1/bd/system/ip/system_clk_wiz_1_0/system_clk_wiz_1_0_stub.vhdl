-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Dec  1 18:32:50 2021
-- Host        : LAPTOP-5PQ60LVJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/asus/Desktop/Studies/ropuf/ROPUF_2.0/ROPUF_2.0.gen/sources_1/bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0_stub.vhdl
-- Design      : system_clk_wiz_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a12tcpg238-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_clk_wiz_1_0 is
  Port ( 
    oclk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end system_clk_wiz_1_0;

architecture stub of system_clk_wiz_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "oclk_out1,locked,clk_in1";
begin
end;

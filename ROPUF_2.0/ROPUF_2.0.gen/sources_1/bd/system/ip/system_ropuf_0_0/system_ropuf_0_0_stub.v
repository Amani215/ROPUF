// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Dec  1 18:35:52 2021
// Host        : LAPTOP-5PQ60LVJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/asus/Desktop/Studies/ropuf/ROPUF_2.0/ROPUF_2.0.gen/sources_1/bd/system/ip/system_ropuf_0_0/system_ropuf_0_0_stub.v
// Design      : system_ropuf_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ropuf,Vivado 2020.2" *)
module system_ropuf_0_0(enable, challenge, rst, finalResult)
/* synthesis syn_black_box black_box_pad_pin="enable,challenge[3:0],rst,finalResult" */;
  input enable;
  input [3:0]challenge;
  input rst;
  output finalResult;
endmodule

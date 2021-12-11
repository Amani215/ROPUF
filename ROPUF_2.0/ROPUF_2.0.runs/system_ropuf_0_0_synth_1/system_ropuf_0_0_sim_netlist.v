// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Dec  1 18:35:52 2021
// Host        : LAPTOP-5PQ60LVJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_ropuf_0_0_sim_netlist.v
// Design      : system_ropuf_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12tcpg238-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comparator
   (CO,
    out,
    output0_carry_0);
  output [0:0]CO;
  input [7:0]out;
  input [7:0]output0_carry_0;

  wire [0:0]CO;
  wire [7:0]out;
  wire [7:0]output0_carry_0;
  wire output0_carry_i_1_n_0;
  wire output0_carry_i_2_n_0;
  wire output0_carry_i_3_n_0;
  wire output0_carry_i_4_n_0;
  wire output0_carry_i_5_n_0;
  wire output0_carry_i_6_n_0;
  wire output0_carry_i_7_n_0;
  wire output0_carry_i_8_n_0;
  wire output0_carry_n_1;
  wire output0_carry_n_2;
  wire output0_carry_n_3;
  wire [3:0]NLW_output0_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 output0_carry
       (.CI(1'b0),
        .CO({CO,output0_carry_n_1,output0_carry_n_2,output0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({output0_carry_i_1_n_0,output0_carry_i_2_n_0,output0_carry_i_3_n_0,output0_carry_i_4_n_0}),
        .O(NLW_output0_carry_O_UNCONNECTED[3:0]),
        .S({output0_carry_i_5_n_0,output0_carry_i_6_n_0,output0_carry_i_7_n_0,output0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    output0_carry_i_1
       (.I0(out[6]),
        .I1(output0_carry_0[6]),
        .I2(output0_carry_0[7]),
        .I3(out[7]),
        .O(output0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    output0_carry_i_2
       (.I0(out[4]),
        .I1(output0_carry_0[4]),
        .I2(output0_carry_0[5]),
        .I3(out[5]),
        .O(output0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    output0_carry_i_3
       (.I0(out[2]),
        .I1(output0_carry_0[2]),
        .I2(output0_carry_0[3]),
        .I3(out[3]),
        .O(output0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    output0_carry_i_4
       (.I0(out[0]),
        .I1(output0_carry_0[0]),
        .I2(output0_carry_0[1]),
        .I3(out[1]),
        .O(output0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output0_carry_i_5
       (.I0(out[6]),
        .I1(output0_carry_0[6]),
        .I2(out[7]),
        .I3(output0_carry_0[7]),
        .O(output0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output0_carry_i_6
       (.I0(out[4]),
        .I1(output0_carry_0[4]),
        .I2(out[5]),
        .I3(output0_carry_0[5]),
        .O(output0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output0_carry_i_7
       (.I0(out[2]),
        .I1(output0_carry_0[2]),
        .I2(out[3]),
        .I3(output0_carry_0[3]),
        .O(output0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output0_carry_i_8
       (.I0(out[0]),
        .I1(output0_carry_0[0]),
        .I2(out[1]),
        .I3(output0_carry_0[1]),
        .O(output0_carry_i_8_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
   (Q,
    CLK,
    rst);
  output [7:0]Q;
  input CLK;
  input rst;

  wire CLK;
  wire [7:0]Q;
  wire \count[7]_i_2_n_0 ;
  wire [7:0]plusOp;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[6]_i_1 
       (.I0(\count[7]_i_2_n_0 ),
        .I1(Q[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[7]_i_1 
       (.I0(\count[7]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[7]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\count[7]_i_2_n_0 ));
  FDCE \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp[0]),
        .Q(Q[0]));
  FDCE \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp[1]),
        .Q(Q[1]));
  FDCE \count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp[2]),
        .Q(Q[2]));
  FDCE \count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp[3]),
        .Q(Q[3]));
  FDCE \count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp[4]),
        .Q(Q[4]));
  FDCE \count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp[5]),
        .Q(Q[5]));
  FDCE \count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp[6]),
        .Q(Q[6]));
  FDCE \count_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0
   (Q,
    I13,
    rst);
  output [7:0]Q;
  input I13;
  input rst;

  wire I13;
  wire [7:0]Q;
  wire \count[7]_i_2__0_n_0 ;
  wire [7:0]plusOp__0;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[6]_i_1__0 
       (.I0(\count[7]_i_2__0_n_0 ),
        .I1(Q[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[7]_i_1__0 
       (.I0(\count[7]_i_2__0_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[7]_i_2__0 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\count[7]_i_2__0_n_0 ));
  FDCE \count_reg[0] 
       (.C(I13),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp__0[0]),
        .Q(Q[0]));
  FDCE \count_reg[1] 
       (.C(I13),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp__0[1]),
        .Q(Q[1]));
  FDCE \count_reg[2] 
       (.C(I13),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp__0[2]),
        .Q(Q[2]));
  FDCE \count_reg[3] 
       (.C(I13),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp__0[3]),
        .Q(Q[3]));
  FDCE \count_reg[4] 
       (.C(I13),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp__0[4]),
        .Q(Q[4]));
  FDCE \count_reg[5] 
       (.C(I13),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp__0[5]),
        .Q(Q[5]));
  FDCE \count_reg[6] 
       (.C(I13),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp__0[6]),
        .Q(Q[6]));
  FDCE \count_reg[7] 
       (.C(I13),
        .CE(1'b1),
        .CLR(rst),
        .D(plusOp__0[7]),
        .Q(Q[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line
   (out,
    enable);
  output [0:0]out;
  input enable;

  wire enable;
  (* DONT_TOUCH *) wire [3:0]inverter_chain;

  assign out[0] = inverter_chain[3];
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_1__3
       (.I0(inverter_chain[2]),
        .O(inverter_chain[3]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_2__3
       (.I0(inverter_chain[1]),
        .O(inverter_chain[2]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_3__3
       (.I0(inverter_chain[0]),
        .O(inverter_chain[1]));
  LUT2 #(
    .INIT(4'h8)) 
    inverter_chain_inferred_i_4__3
       (.I0(enable),
        .I1(inverter_chain[3]),
        .O(inverter_chain[0]));
endmodule

(* ORIG_REF_NAME = "delay_line" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_3
   (out,
    enable);
  output [0:0]out;
  input enable;

  wire enable;
  (* DONT_TOUCH *) wire [3:0]inverter_chain;

  assign out[0] = inverter_chain[3];
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_1__4
       (.I0(inverter_chain[2]),
        .O(inverter_chain[3]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_2__4
       (.I0(inverter_chain[1]),
        .O(inverter_chain[2]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_3__4
       (.I0(inverter_chain[0]),
        .O(inverter_chain[1]));
  LUT2 #(
    .INIT(4'h8)) 
    inverter_chain_inferred_i_4__4
       (.I0(enable),
        .I1(inverter_chain[3]),
        .O(inverter_chain[0]));
endmodule

(* ORIG_REF_NAME = "delay_line" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_4
   (out,
    enable);
  output [0:0]out;
  input enable;

  wire enable;
  (* DONT_TOUCH *) wire [3:0]inverter_chain;

  assign out[0] = inverter_chain[3];
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_1__5
       (.I0(inverter_chain[2]),
        .O(inverter_chain[3]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_2__5
       (.I0(inverter_chain[1]),
        .O(inverter_chain[2]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_3__5
       (.I0(inverter_chain[0]),
        .O(inverter_chain[1]));
  LUT2 #(
    .INIT(4'h8)) 
    inverter_chain_inferred_i_4__5
       (.I0(enable),
        .I1(inverter_chain[3]),
        .O(inverter_chain[0]));
endmodule

(* ORIG_REF_NAME = "delay_line" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_5
   (out,
    enable);
  output [0:0]out;
  input enable;

  wire enable;
  (* DONT_TOUCH *) wire [3:0]inverter_chain;

  assign out[0] = inverter_chain[3];
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_1__6
       (.I0(inverter_chain[2]),
        .O(inverter_chain[3]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_2__6
       (.I0(inverter_chain[1]),
        .O(inverter_chain[2]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_3__6
       (.I0(inverter_chain[0]),
        .O(inverter_chain[1]));
  LUT2 #(
    .INIT(4'h8)) 
    inverter_chain_inferred_i_4__6
       (.I0(enable),
        .I1(inverter_chain[3]),
        .O(inverter_chain[0]));
endmodule

(* ORIG_REF_NAME = "delay_line" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_6
   (out,
    enable);
  output [0:0]out;
  input enable;

  wire enable;
  (* DONT_TOUCH *) wire [3:0]inverter_chain;

  assign out[0] = inverter_chain[3];
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_1
       (.I0(inverter_chain[2]),
        .O(inverter_chain[3]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_2
       (.I0(inverter_chain[1]),
        .O(inverter_chain[2]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_3
       (.I0(inverter_chain[0]),
        .O(inverter_chain[1]));
  LUT2 #(
    .INIT(4'h8)) 
    inverter_chain_inferred_i_4
       (.I0(enable),
        .I1(inverter_chain[3]),
        .O(inverter_chain[0]));
endmodule

(* ORIG_REF_NAME = "delay_line" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_7
   (out,
    enable);
  output [0:0]out;
  input enable;

  wire enable;
  (* DONT_TOUCH *) wire [3:0]inverter_chain;

  assign out[0] = inverter_chain[3];
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_1__0
       (.I0(inverter_chain[2]),
        .O(inverter_chain[3]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_2__0
       (.I0(inverter_chain[1]),
        .O(inverter_chain[2]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_3__0
       (.I0(inverter_chain[0]),
        .O(inverter_chain[1]));
  LUT2 #(
    .INIT(4'h8)) 
    inverter_chain_inferred_i_4__0
       (.I0(enable),
        .I1(inverter_chain[3]),
        .O(inverter_chain[0]));
endmodule

(* ORIG_REF_NAME = "delay_line" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_8
   (out,
    enable);
  output [0:0]out;
  input enable;

  wire enable;
  (* DONT_TOUCH *) wire [3:0]inverter_chain;

  assign out[0] = inverter_chain[3];
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_1__1
       (.I0(inverter_chain[2]),
        .O(inverter_chain[3]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_2__1
       (.I0(inverter_chain[1]),
        .O(inverter_chain[2]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_3__1
       (.I0(inverter_chain[0]),
        .O(inverter_chain[1]));
  LUT2 #(
    .INIT(4'h8)) 
    inverter_chain_inferred_i_4__1
       (.I0(enable),
        .I1(inverter_chain[3]),
        .O(inverter_chain[0]));
endmodule

(* ORIG_REF_NAME = "delay_line" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_9
   (out,
    enable);
  output [0:0]out;
  input enable;

  wire enable;
  (* DONT_TOUCH *) wire [3:0]inverter_chain;

  assign out[0] = inverter_chain[3];
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_1__2
       (.I0(inverter_chain[2]),
        .O(inverter_chain[3]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_2__2
       (.I0(inverter_chain[1]),
        .O(inverter_chain[2]));
  LUT1 #(
    .INIT(2'h1)) 
    inverter_chain_inferred_i_3__2
       (.I0(inverter_chain[0]),
        .O(inverter_chain[1]));
  LUT2 #(
    .INIT(4'h8)) 
    inverter_chain_inferred_i_4__2
       (.I0(enable),
        .I1(inverter_chain[3]),
        .O(inverter_chain[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexer
   (in0,
    out,
    challenge);
  output in0;
  input [3:0]out;
  input [1:0]challenge;

  wire [1:0]challenge;
  wire in0;
  wire [3:0]out;

  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \output 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[3]),
        .I3(challenge[1]),
        .I4(challenge[0]),
        .I5(out[2]),
        .O(in0));
endmodule

(* ORIG_REF_NAME = "multiplexer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexer_1
   (in0,
    out,
    challenge);
  output in0;
  input [3:0]out;
  input [1:0]challenge;

  wire [1:0]challenge;
  wire in0;
  wire [3:0]out;

  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \output 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[3]),
        .I3(challenge[1]),
        .I4(challenge[0]),
        .I5(out[2]),
        .O(in0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ring_oscillator
   (out,
    enable);
  output [3:0]out;
  input enable;

  wire enable;
  (* DONT_TOUCH *) wire [3:0]out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_6 \inst_delay_lines[0].inst_delay_line 
       (.enable(enable),
        .out(out[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_7 \inst_delay_lines[1].inst_delay_line 
       (.enable(enable),
        .out(out[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_8 \inst_delay_lines[2].inst_delay_line 
       (.enable(enable),
        .out(out[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_9 \inst_delay_lines[3].inst_delay_line 
       (.enable(enable),
        .out(out[3]));
endmodule

(* ORIG_REF_NAME = "ring_oscillator" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ring_oscillator_2
   (out,
    enable);
  output [3:0]out;
  input enable;

  wire enable;
  (* DONT_TOUCH *) wire [3:0]out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line \inst_delay_lines[0].inst_delay_line 
       (.enable(enable),
        .out(out[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_3 \inst_delay_lines[1].inst_delay_line 
       (.enable(enable),
        .out(out[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_4 \inst_delay_lines[2].inst_delay_line 
       (.enable(enable),
        .out(out[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_5 \inst_delay_lines[3].inst_delay_line 
       (.enable(enable),
        .out(out[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ropuf
   (finalResult,
    challenge,
    enable,
    rst);
  output finalResult;
  input [3:0]challenge;
  input enable;
  input rst;

  (* DONT_TOUCH *) wire [7:0]c1_output;
  (* DONT_TOUCH *) wire [7:0]c2_output;
  wire [3:0]challenge;
  wire comp_n_0;
  wire enable;
  wire finalResult;
  (* DONT_TOUCH *) wire mux1_output;
  (* DONT_TOUCH *) wire mux2_output;
  (* DONT_TOUCH *) wire [3:0]ro1_output;
  (* DONT_TOUCH *) wire [3:0]ro2_output;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter c1
       (.CLK(mux1_output),
        .Q(c1_output),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0 c2
       (.I13(mux2_output),
        .Q(c2_output),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comparator comp
       (.CO(comp_n_0),
        .out(c2_output),
        .output0_carry_0(c1_output));
  LUT2 #(
    .INIT(4'h2)) 
    finalResult_INST_0
       (.I0(comp_n_0),
        .I1(rst),
        .O(finalResult));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexer mux1
       (.challenge(challenge[1:0]),
        .in0(mux1_output),
        .out(ro1_output));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexer_1 mux2
       (.challenge(challenge[3:2]),
        .in0(mux2_output),
        .out(ro2_output));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ring_oscillator ro1
       (.enable(enable),
        .out(ro1_output));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ring_oscillator_2 ro2
       (.enable(enable),
        .out(ro2_output));
endmodule

(* CHECK_LICENSE_TYPE = "system_ropuf_0_0,ropuf,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ropuf,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (enable,
    challenge,
    rst,
    finalResult);
  input enable;
  input [3:0]challenge;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output finalResult;

  wire [3:0]challenge;
  wire enable;
  wire finalResult;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ropuf U0
       (.challenge(challenge),
        .enable(enable),
        .finalResult(finalResult),
        .rst(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

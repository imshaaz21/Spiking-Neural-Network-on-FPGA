// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Dec 19 20:56:51 2023
// Host        : IMSHAAZ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Vivado
//               Projects/Spiking-Neural-Network-on-FPGA/SNN-RGB/SNN-RGB.sim/sim_1/impl/timing/xsim/sim_snn_rgb_time_impl.v}
// Design      : snn_rgb
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module control
   (clk_o_OBUF_BUFG_inst,
    clk_o_OBUF_BUFG_inst_0,
    de_1,
    ly2_delay,
    SR,
    \num_out1_sp_reg[7] ,
    \num_out0_sp_reg[6] ,
    SS,
    vs_q,
    clk_o_OBUF_BUFG,
    \hs_delay_reg[64]_srl32_0 ,
    de_q,
    Q,
    r_out_1_reg,
    \step_reg[0] ,
    de_0,
    g_out_1,
    b_out_1);
  output clk_o_OBUF_BUFG_inst;
  output clk_o_OBUF_BUFG_inst_0;
  output de_1;
  output [0:0]ly2_delay;
  output [0:0]SR;
  output \num_out1_sp_reg[7] ;
  output \num_out0_sp_reg[6] ;
  output [0:0]SS;
  input vs_q;
  input clk_o_OBUF_BUFG;
  input \hs_delay_reg[64]_srl32_0 ;
  input de_q;
  input [7:0]Q;
  input [7:0]r_out_1_reg;
  input [0:0]\step_reg[0] ;
  input de_0;
  input g_out_1;
  input b_out_1;

  wire [7:0]Q;
  wire Q_net;
  wire [0:0]SR;
  wire [0:0]SS;
  wire b_out_1;
  wire b_out_1_i_2_n_0;
  wire clk_o_OBUF_BUFG;
  wire clk_o_OBUF_BUFG_inst;
  wire clk_o_OBUF_BUFG_inst_0;
  wire de_0;
  wire de_1;
  wire \de_delay_reg[33]_srl32_n_1 ;
  wire \de_delay_reg[65]_srl32_n_1 ;
  wire \de_delay_reg[74]_srl9_n_0 ;
  wire de_q;
  wire g_out_1;
  wire \hs_delay_reg[32]_srl32_n_1 ;
  wire \hs_delay_reg[64]_srl32_0 ;
  wire \hs_delay_reg[64]_srl32_n_1 ;
  wire [0:0]ly2_delay;
  wire \ly2_delay_reg[4]_srl5_i_1_n_0 ;
  wire \ly2_delay_reg[4]_srl5_n_0 ;
  wire \ly2_delay_reg[9]_srl4_n_0 ;
  wire \num_out0_sp_reg[6] ;
  wire \num_out1_sp_reg[7] ;
  wire r_out_1_i_2_n_0;
  wire r_out_1_i_3_n_0;
  wire [7:0]r_out_1_reg;
  wire [0:0]\step_reg[0] ;
  wire \vs_delay_reg[33]_srl32_n_1 ;
  wire \vs_delay_reg[65]_srl32_n_1 ;
  wire vs_q;
  wire \NLW_de_delay_reg[33]_srl32_Q_UNCONNECTED ;
  wire \NLW_de_delay_reg[65]_srl32_Q_UNCONNECTED ;
  wire \NLW_hs_delay_reg[32]_srl32_Q_UNCONNECTED ;
  wire \NLW_hs_delay_reg[64]_srl32_Q_UNCONNECTED ;
  wire \NLW_vs_delay_reg[33]_srl32_Q_UNCONNECTED ;
  wire \NLW_vs_delay_reg[65]_srl32_Q_UNCONNECTED ;

  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    FDRE
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(Q_net),
        .Q(\ly2_delay_reg[4]_srl5_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    b_out_1_i_1
       (.I0(b_out_1_i_2_n_0),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(SR),
        .I4(b_out_1),
        .O(\num_out0_sp_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    b_out_1_i_2
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(b_out_1_i_2_n_0));
  (* srl_bus_name = "\\control/de_delay_reg " *) 
  (* srl_name = "\\control/de_delay_reg[33]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \de_delay_reg[33]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_o_OBUF_BUFG),
        .D(de_q),
        .Q(\NLW_de_delay_reg[33]_srl32_Q_UNCONNECTED ),
        .Q31(\de_delay_reg[33]_srl32_n_1 ));
  (* srl_bus_name = "\\control/de_delay_reg " *) 
  (* srl_name = "\\control/de_delay_reg[65]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \de_delay_reg[65]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_o_OBUF_BUFG),
        .D(\de_delay_reg[33]_srl32_n_1 ),
        .Q(\NLW_de_delay_reg[65]_srl32_Q_UNCONNECTED ),
        .Q31(\de_delay_reg[65]_srl32_n_1 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* XILINX_LEGACY_PRIM = "SRLC32E" *) 
  (* srl_bus_name = "\\control/de_delay_reg " *) 
  (* srl_name = "\\control/de_delay_reg[74]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \de_delay_reg[74]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clk_o_OBUF_BUFG),
        .D(\de_delay_reg[65]_srl32_n_1 ),
        .Q(\de_delay_reg[74]_srl9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \de_delay_reg[75] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\de_delay_reg[74]_srl9_n_0 ),
        .Q(de_1),
        .R(1'b0));
  (* srl_bus_name = "\\control/hs_delay_reg " *) 
  (* srl_name = "\\control/hs_delay_reg[32]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \hs_delay_reg[32]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_o_OBUF_BUFG),
        .D(\hs_delay_reg[64]_srl32_0 ),
        .Q(\NLW_hs_delay_reg[32]_srl32_Q_UNCONNECTED ),
        .Q31(\hs_delay_reg[32]_srl32_n_1 ));
  (* srl_bus_name = "\\control/hs_delay_reg " *) 
  (* srl_name = "\\control/hs_delay_reg[64]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \hs_delay_reg[64]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_o_OBUF_BUFG),
        .D(\hs_delay_reg[32]_srl32_n_1 ),
        .Q(\NLW_hs_delay_reg[64]_srl32_Q_UNCONNECTED ),
        .Q31(\hs_delay_reg[64]_srl32_n_1 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* XILINX_LEGACY_PRIM = "SRLC32E" *) 
  (* srl_bus_name = "\\control/hs_delay_reg " *) 
  (* srl_name = "\\control/hs_delay_reg[75]_srl11 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hs_delay_reg[75]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clk_o_OBUF_BUFG),
        .D(\hs_delay_reg[64]_srl32_n_1 ),
        .Q(clk_o_OBUF_BUFG_inst_0));
  FDRE #(
    .INIT(1'b0)) 
    \ly2_delay_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\ly2_delay_reg[9]_srl4_n_0 ),
        .Q(SR),
        .R(1'b0));
  (* OPT_MODIFIED = "SHIFT_REGISTER_OPT" *) 
  (* srl_bus_name = "\\control/ly2_delay_reg " *) 
  (* srl_name = "\\control/ly2_delay_reg[4]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0001)) 
    \ly2_delay_reg[4]_srl5 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_o_OBUF_BUFG),
        .D(\ly2_delay_reg[4]_srl5_i_1_n_0 ),
        .Q(Q_net));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \ly2_delay_reg[4]_srl5_i_1 
       (.I0(de_1),
        .I1(de_q),
        .I2(\step_reg[0] ),
        .I3(de_0),
        .O(\ly2_delay_reg[4]_srl5_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ly2_delay_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\ly2_delay_reg[4]_srl5_n_0 ),
        .Q(ly2_delay),
        .R(1'b0));
  (* srl_bus_name = "\\control/ly2_delay_reg " *) 
  (* srl_name = "\\control/ly2_delay_reg[9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \ly2_delay_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_o_OBUF_BUFG),
        .D(ly2_delay),
        .Q(\ly2_delay_reg[9]_srl4_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFFFF00FE0000)) 
    r_out_1_i_1
       (.I0(r_out_1_reg[7]),
        .I1(r_out_1_reg[6]),
        .I2(r_out_1_i_2_n_0),
        .I3(r_out_1_i_3_n_0),
        .I4(SR),
        .I5(g_out_1),
        .O(\num_out1_sp_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    r_out_1_i_2
       (.I0(r_out_1_reg[3]),
        .I1(r_out_1_reg[0]),
        .I2(r_out_1_reg[1]),
        .I3(r_out_1_reg[2]),
        .I4(r_out_1_reg[4]),
        .I5(r_out_1_reg[5]),
        .O(r_out_1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    r_out_1_i_3
       (.I0(b_out_1_i_2_n_0),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(r_out_1_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAEFF)) 
    \step[6]_i_1 
       (.I0(\step_reg[0] ),
        .I1(de_q),
        .I2(de_1),
        .I3(de_0),
        .O(SS));
  (* srl_bus_name = "\\control/vs_delay_reg " *) 
  (* srl_name = "\\control/vs_delay_reg[33]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \vs_delay_reg[33]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_o_OBUF_BUFG),
        .D(vs_q),
        .Q(\NLW_vs_delay_reg[33]_srl32_Q_UNCONNECTED ),
        .Q31(\vs_delay_reg[33]_srl32_n_1 ));
  (* srl_bus_name = "\\control/vs_delay_reg " *) 
  (* srl_name = "\\control/vs_delay_reg[65]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \vs_delay_reg[65]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(clk_o_OBUF_BUFG),
        .D(\vs_delay_reg[33]_srl32_n_1 ),
        .Q(\NLW_vs_delay_reg[65]_srl32_Q_UNCONNECTED ),
        .Q31(\vs_delay_reg[65]_srl32_n_1 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* XILINX_LEGACY_PRIM = "SRLC32E" *) 
  (* srl_bus_name = "\\control/vs_delay_reg " *) 
  (* srl_name = "\\control/vs_delay_reg[75]_srl10 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \vs_delay_reg[75]_srl10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(clk_o_OBUF_BUFG),
        .D(\vs_delay_reg[65]_srl32_n_1 ),
        .Q(clk_o_OBUF_BUFG_inst));
endmodule

module gen_input
   (r_sp,
    g_sp,
    b_sp,
    SR,
    clk_o_OBUF_BUFG,
    Q,
    g_sp_reg_0,
    b_sp_reg_0);
  output r_sp;
  output g_sp;
  output b_sp;
  input [0:0]SR;
  input clk_o_OBUF_BUFG;
  input [7:0]Q;
  input [7:0]g_sp_reg_0;
  input [7:0]b_sp_reg_0;

  wire [7:0]Q;
  wire [0:0]SR;
  wire b_sp;
  wire b_sp0_carry_i_1_n_0;
  wire b_sp0_carry_i_2_n_0;
  wire b_sp0_carry_i_3_n_0;
  wire b_sp0_carry_i_4_n_0;
  wire b_sp0_carry_i_5_n_0;
  wire b_sp0_carry_i_6_n_0;
  wire b_sp0_carry_i_7_n_0;
  wire b_sp0_carry_i_8_n_0;
  wire b_sp0_carry_n_0;
  wire [7:0]b_sp_reg_0;
  wire clk_o_OBUF_BUFG;
  wire g_sp;
  wire g_sp0_carry_i_1_n_0;
  wire g_sp0_carry_i_2_n_0;
  wire g_sp0_carry_i_3_n_0;
  wire g_sp0_carry_i_4_n_0;
  wire g_sp0_carry_i_5_n_0;
  wire g_sp0_carry_i_6_n_0;
  wire g_sp0_carry_i_7_n_0;
  wire g_sp0_carry_i_8_n_0;
  wire g_sp0_carry_n_0;
  wire [7:0]g_sp_reg_0;
  wire p_0_in;
  wire [0:0]p_0_out__0;
  wire r_sp;
  wire r_sp0_carry_i_1_n_0;
  wire r_sp0_carry_i_2_n_0;
  wire r_sp0_carry_i_3_n_0;
  wire r_sp0_carry_i_4_n_0;
  wire r_sp0_carry_i_5_n_0;
  wire r_sp0_carry_i_6_n_0;
  wire r_sp0_carry_i_7_n_0;
  wire r_sp0_carry_i_8_n_0;
  wire [7:0]random;
  wire [2:0]NLW_b_sp0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_b_sp0_carry_O_UNCONNECTED;
  wire [2:0]NLW_g_sp0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_g_sp0_carry_O_UNCONNECTED;
  wire [2:0]NLW_r_sp0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_r_sp0_carry_O_UNCONNECTED;

  CARRY4 b_sp0_carry
       (.CI(1'b0),
        .CO({b_sp0_carry_n_0,NLW_b_sp0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({b_sp0_carry_i_1_n_0,b_sp0_carry_i_2_n_0,b_sp0_carry_i_3_n_0,b_sp0_carry_i_4_n_0}),
        .O(NLW_b_sp0_carry_O_UNCONNECTED[3:0]),
        .S({b_sp0_carry_i_5_n_0,b_sp0_carry_i_6_n_0,b_sp0_carry_i_7_n_0,b_sp0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    b_sp0_carry_i_1
       (.I0(b_sp_reg_0[6]),
        .I1(random[6]),
        .I2(random[7]),
        .I3(b_sp_reg_0[7]),
        .O(b_sp0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    b_sp0_carry_i_2
       (.I0(b_sp_reg_0[4]),
        .I1(random[4]),
        .I2(random[5]),
        .I3(b_sp_reg_0[5]),
        .O(b_sp0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    b_sp0_carry_i_3
       (.I0(b_sp_reg_0[2]),
        .I1(random[2]),
        .I2(random[3]),
        .I3(b_sp_reg_0[3]),
        .O(b_sp0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    b_sp0_carry_i_4
       (.I0(b_sp_reg_0[0]),
        .I1(random[0]),
        .I2(random[1]),
        .I3(b_sp_reg_0[1]),
        .O(b_sp0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    b_sp0_carry_i_5
       (.I0(b_sp_reg_0[6]),
        .I1(random[6]),
        .I2(b_sp_reg_0[7]),
        .I3(random[7]),
        .O(b_sp0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    b_sp0_carry_i_6
       (.I0(b_sp_reg_0[4]),
        .I1(random[4]),
        .I2(b_sp_reg_0[5]),
        .I3(random[5]),
        .O(b_sp0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    b_sp0_carry_i_7
       (.I0(b_sp_reg_0[2]),
        .I1(random[2]),
        .I2(b_sp_reg_0[3]),
        .I3(random[3]),
        .O(b_sp0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    b_sp0_carry_i_8
       (.I0(b_sp_reg_0[0]),
        .I1(random[0]),
        .I2(b_sp_reg_0[1]),
        .I3(random[1]),
        .O(b_sp0_carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    b_sp_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_sp0_carry_n_0),
        .Q(b_sp),
        .R(1'b0));
  CARRY4 g_sp0_carry
       (.CI(1'b0),
        .CO({g_sp0_carry_n_0,NLW_g_sp0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({g_sp0_carry_i_1_n_0,g_sp0_carry_i_2_n_0,g_sp0_carry_i_3_n_0,g_sp0_carry_i_4_n_0}),
        .O(NLW_g_sp0_carry_O_UNCONNECTED[3:0]),
        .S({g_sp0_carry_i_5_n_0,g_sp0_carry_i_6_n_0,g_sp0_carry_i_7_n_0,g_sp0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    g_sp0_carry_i_1
       (.I0(g_sp_reg_0[6]),
        .I1(random[6]),
        .I2(random[7]),
        .I3(g_sp_reg_0[7]),
        .O(g_sp0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    g_sp0_carry_i_2
       (.I0(g_sp_reg_0[4]),
        .I1(random[4]),
        .I2(random[5]),
        .I3(g_sp_reg_0[5]),
        .O(g_sp0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    g_sp0_carry_i_3
       (.I0(g_sp_reg_0[2]),
        .I1(random[2]),
        .I2(random[3]),
        .I3(g_sp_reg_0[3]),
        .O(g_sp0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    g_sp0_carry_i_4
       (.I0(g_sp_reg_0[0]),
        .I1(random[0]),
        .I2(random[1]),
        .I3(g_sp_reg_0[1]),
        .O(g_sp0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    g_sp0_carry_i_5
       (.I0(g_sp_reg_0[6]),
        .I1(random[6]),
        .I2(g_sp_reg_0[7]),
        .I3(random[7]),
        .O(g_sp0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    g_sp0_carry_i_6
       (.I0(g_sp_reg_0[4]),
        .I1(random[4]),
        .I2(g_sp_reg_0[5]),
        .I3(random[5]),
        .O(g_sp0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    g_sp0_carry_i_7
       (.I0(g_sp_reg_0[2]),
        .I1(random[2]),
        .I2(g_sp_reg_0[3]),
        .I3(random[3]),
        .O(g_sp0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    g_sp0_carry_i_8
       (.I0(g_sp_reg_0[0]),
        .I1(random[0]),
        .I2(g_sp_reg_0[1]),
        .I3(random[1]),
        .O(g_sp0_carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    g_sp_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_sp0_carry_n_0),
        .Q(g_sp),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    p_0_out
       (.I0(random[4]),
        .I1(random[5]),
        .I2(random[7]),
        .I3(random[3]),
        .O(p_0_out__0));
  CARRY4 r_sp0_carry
       (.CI(1'b0),
        .CO({p_0_in,NLW_r_sp0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({r_sp0_carry_i_1_n_0,r_sp0_carry_i_2_n_0,r_sp0_carry_i_3_n_0,r_sp0_carry_i_4_n_0}),
        .O(NLW_r_sp0_carry_O_UNCONNECTED[3:0]),
        .S({r_sp0_carry_i_5_n_0,r_sp0_carry_i_6_n_0,r_sp0_carry_i_7_n_0,r_sp0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    r_sp0_carry_i_1
       (.I0(Q[6]),
        .I1(random[6]),
        .I2(random[7]),
        .I3(Q[7]),
        .O(r_sp0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    r_sp0_carry_i_2
       (.I0(Q[4]),
        .I1(random[4]),
        .I2(random[5]),
        .I3(Q[5]),
        .O(r_sp0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    r_sp0_carry_i_3
       (.I0(Q[2]),
        .I1(random[2]),
        .I2(random[3]),
        .I3(Q[3]),
        .O(r_sp0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    r_sp0_carry_i_4
       (.I0(Q[0]),
        .I1(random[0]),
        .I2(random[1]),
        .I3(Q[1]),
        .O(r_sp0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_sp0_carry_i_5
       (.I0(Q[6]),
        .I1(random[6]),
        .I2(Q[7]),
        .I3(random[7]),
        .O(r_sp0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_sp0_carry_i_6
       (.I0(Q[4]),
        .I1(random[4]),
        .I2(Q[5]),
        .I3(random[5]),
        .O(r_sp0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_sp0_carry_i_7
       (.I0(Q[2]),
        .I1(random[2]),
        .I2(Q[3]),
        .I3(random[3]),
        .O(r_sp0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    r_sp0_carry_i_8
       (.I0(Q[0]),
        .I1(random[0]),
        .I2(Q[1]),
        .I3(random[1]),
        .O(r_sp0_carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_sp_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in),
        .Q(r_sp),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \random_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_out__0),
        .Q(random[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \random_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(random[0]),
        .Q(random[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \random_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(random[1]),
        .Q(random[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \random_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(random[2]),
        .Q(random[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \random_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(random[3]),
        .Q(random[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \random_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(random[4]),
        .Q(random[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \random_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(random[5]),
        .Q(random[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \random_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(random[6]),
        .Q(random[7]),
        .R(SR));
endmodule

module neuron
   (CO,
    Q,
    ly2_delay,
    clk_o_OBUF_BUFG,
    D,
    \tmp_sum_b_0_1_2_reg[8]_0 );
  output [0:0]CO;
  output [1:0]Q;
  input [0:0]ly2_delay;
  input clk_o_OBUF_BUFG;
  input [1:0]D;
  input [8:0]\tmp_sum_b_0_1_2_reg[8]_0 ;

  wire [31:7]C;
  wire [0:0]CO;
  wire [1:0]D;
  wire [1:0]Q;
  wire clk_o_OBUF_BUFG;
  wire [0:0]ly2_delay;
  wire [8:0]sum;
  wire [8:0]tmp_sum_b_0_1_2;
  wire [8:0]\tmp_sum_b_0_1_2_reg[8]_0 ;
  wire voltage0_carry__0_i_1__7_n_0;
  wire voltage0_carry__0_i_2__7_n_0;
  wire voltage0_carry__0_i_3__7_n_0;
  wire voltage0_carry__0_i_4__7_n_0;
  wire voltage0_carry__0_i_5_n_0;
  wire voltage0_carry__0_n_0;
  wire voltage0_carry__1_i_1__7_n_0;
  wire voltage0_carry__1_i_2__7_n_0;
  wire voltage0_carry__1_i_3__7_n_0;
  wire voltage0_carry__1_i_4__7_n_0;
  wire voltage0_carry__1_i_5_n_0;
  wire voltage0_carry__1_n_0;
  wire voltage0_carry__2_i_1__7_n_0;
  wire voltage0_carry__2_i_2__7_n_0;
  wire voltage0_carry__2_i_3__7_n_0;
  wire voltage0_carry__2_i_4__7_n_0;
  wire voltage0_carry__2_i_5_n_0;
  wire voltage0_carry__2_n_0;
  wire voltage0_carry__3_i_1__7_n_0;
  wire voltage0_carry__3_i_2__7_n_0;
  wire voltage0_carry__3_i_3__7_n_0;
  wire voltage0_carry__3_i_4__7_n_0;
  wire voltage0_carry__3_i_5_n_0;
  wire voltage0_carry__3_n_0;
  wire voltage0_carry__4_i_2__7_n_0;
  wire voltage0_carry__4_i_3__7_n_0;
  wire voltage0_carry__4_i_4__7_n_0;
  wire voltage0_carry__4_i_5_n_0;
  wire voltage0_carry__4_n_0;
  wire voltage0_carry__5_i_1__7_n_0;
  wire voltage0_carry_i_10_n_0;
  wire voltage0_carry_i_11_n_0;
  wire voltage0_carry_i_12_n_0;
  wire voltage0_carry_i_13_n_0;
  wire voltage0_carry_i_14_n_0;
  wire voltage0_carry_i_15_n_0;
  wire voltage0_carry_i_1__7_n_0;
  wire voltage0_carry_i_2__7_n_0;
  wire voltage0_carry_i_3__7_n_0;
  wire voltage0_carry_i_4_n_0;
  wire voltage0_carry_i_5_n_0;
  wire voltage0_carry_i_6_n_0;
  wire voltage0_carry_i_7_n_0;
  wire voltage0_carry_i_8_n_0;
  wire voltage0_carry_i_9_n_0;
  wire voltage0_carry_n_0;
  wire voltage1_carry__0_i_1_n_0;
  wire voltage1_carry__0_i_2_n_0;
  wire voltage1_carry__0_i_3_n_0;
  wire voltage1_carry__0_i_4__7_n_0;
  wire voltage1_carry__0_i_5__7_n_0;
  wire voltage1_carry__0_i_6__7_n_0;
  wire voltage1_carry__0_i_7__7_n_0;
  wire voltage1_carry__0_n_0;
  wire voltage1_carry__1_i_1_n_0;
  wire voltage1_carry__1_i_2_n_0;
  wire voltage1_carry__1_i_3_n_0;
  wire voltage1_carry__1_i_4_n_0;
  wire voltage1_carry__1_i_5__7_n_0;
  wire voltage1_carry__1_i_6__7_n_0;
  wire voltage1_carry__1_i_7__7_n_0;
  wire voltage1_carry__1_i_8__7_n_0;
  wire voltage1_carry__1_n_0;
  wire voltage1_carry__2_i_1__7_n_0;
  wire voltage1_carry__2_i_2_n_0;
  wire voltage1_carry__2_i_3_n_0;
  wire voltage1_carry__2_i_4_n_0;
  wire voltage1_carry__2_i_5__7_n_0;
  wire voltage1_carry__2_i_6__7_n_0;
  wire voltage1_carry__2_i_7__7_n_0;
  wire voltage1_carry__2_i_8__7_n_0;
  wire voltage1_carry_i_1_n_0;
  wire voltage1_carry_i_2_n_0;
  wire voltage1_carry_i_3_n_0;
  wire voltage1_carry_i_4_n_0;
  wire voltage1_carry_i_5_n_0;
  wire voltage1_carry_i_6_n_0;
  wire voltage1_carry_i_7_n_0;
  wire voltage1_carry_i_8_n_0;
  wire voltage1_carry_n_0;
  wire [31:0]voltage2;
  wire \voltage[0]_i_2_n_0 ;
  wire \voltage[0]_i_3_n_0 ;
  wire \voltage[0]_i_4_n_0 ;
  wire \voltage[0]_i_5__0_n_0 ;
  wire \voltage[0]_i_6_n_0 ;
  wire \voltage[0]_i_7__0_n_0 ;
  wire \voltage[0]_i_8_n_0 ;
  wire \voltage[0]_i_9_n_0 ;
  wire \voltage[12]_i_2_n_0 ;
  wire \voltage[12]_i_3_n_0 ;
  wire \voltage[12]_i_4_n_0 ;
  wire \voltage[12]_i_5_n_0 ;
  wire \voltage[16]_i_2_n_0 ;
  wire \voltage[16]_i_3_n_0 ;
  wire \voltage[16]_i_4_n_0 ;
  wire \voltage[16]_i_5_n_0 ;
  wire \voltage[20]_i_2_n_0 ;
  wire \voltage[20]_i_3_n_0 ;
  wire \voltage[20]_i_4_n_0 ;
  wire \voltage[20]_i_5_n_0 ;
  wire \voltage[24]_i_2_n_0 ;
  wire \voltage[24]_i_3_n_0 ;
  wire \voltage[24]_i_4_n_0 ;
  wire \voltage[24]_i_5_n_0 ;
  wire \voltage[28]_i_2_n_0 ;
  wire \voltage[28]_i_3_n_0 ;
  wire \voltage[28]_i_4_n_0 ;
  wire \voltage[28]_i_5_n_0 ;
  wire \voltage[4]_i_2_n_0 ;
  wire \voltage[4]_i_3_n_0 ;
  wire \voltage[4]_i_4_n_0 ;
  wire \voltage[4]_i_5__0_n_0 ;
  wire \voltage[4]_i_6_n_0 ;
  wire \voltage[4]_i_7_n_0 ;
  wire \voltage[4]_i_8__0_n_0 ;
  wire \voltage[4]_i_9_n_0 ;
  wire \voltage[8]_i_2_n_0 ;
  wire \voltage[8]_i_3_n_0 ;
  wire \voltage[8]_i_4_n_0 ;
  wire \voltage[8]_i_5_n_0 ;
  wire \voltage[8]_i_6_n_0 ;
  wire [31:0]voltage_reg;
  wire \voltage_reg[0]_i_1_n_0 ;
  wire \voltage_reg[0]_i_1_n_4 ;
  wire \voltage_reg[0]_i_1_n_5 ;
  wire \voltage_reg[0]_i_1_n_6 ;
  wire \voltage_reg[0]_i_1_n_7 ;
  wire \voltage_reg[12]_i_1_n_0 ;
  wire \voltage_reg[12]_i_1_n_4 ;
  wire \voltage_reg[12]_i_1_n_5 ;
  wire \voltage_reg[12]_i_1_n_6 ;
  wire \voltage_reg[12]_i_1_n_7 ;
  wire \voltage_reg[16]_i_1_n_0 ;
  wire \voltage_reg[16]_i_1_n_4 ;
  wire \voltage_reg[16]_i_1_n_5 ;
  wire \voltage_reg[16]_i_1_n_6 ;
  wire \voltage_reg[16]_i_1_n_7 ;
  wire \voltage_reg[20]_i_1_n_0 ;
  wire \voltage_reg[20]_i_1_n_4 ;
  wire \voltage_reg[20]_i_1_n_5 ;
  wire \voltage_reg[20]_i_1_n_6 ;
  wire \voltage_reg[20]_i_1_n_7 ;
  wire \voltage_reg[24]_i_1_n_0 ;
  wire \voltage_reg[24]_i_1_n_4 ;
  wire \voltage_reg[24]_i_1_n_5 ;
  wire \voltage_reg[24]_i_1_n_6 ;
  wire \voltage_reg[24]_i_1_n_7 ;
  wire \voltage_reg[28]_i_1_n_4 ;
  wire \voltage_reg[28]_i_1_n_5 ;
  wire \voltage_reg[28]_i_1_n_6 ;
  wire \voltage_reg[28]_i_1_n_7 ;
  wire \voltage_reg[4]_i_1_n_0 ;
  wire \voltage_reg[4]_i_1_n_4 ;
  wire \voltage_reg[4]_i_1_n_5 ;
  wire \voltage_reg[4]_i_1_n_6 ;
  wire \voltage_reg[4]_i_1_n_7 ;
  wire \voltage_reg[8]_i_1_n_0 ;
  wire \voltage_reg[8]_i_1_n_4 ;
  wire \voltage_reg[8]_i_1_n_5 ;
  wire \voltage_reg[8]_i_1_n_6 ;
  wire \voltage_reg[8]_i_1_n_7 ;
  wire [2:0]NLW_voltage0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__0_i_1__7_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__1_i_1__7_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__2_i_1__7_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__3_i_1__7_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_voltage0_carry__4_i_1__7_CO_UNCONNECTED;
  wire [3:0]NLW_voltage0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_voltage0_carry__5_O_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry_i_1__7_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry_i_5_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry_i_7_CO_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__2_O_UNCONNECTED;
  wire [2:0]\NLW_voltage_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_voltage_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[8]_i_1_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[0]),
        .Q(sum[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[1]),
        .Q(sum[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[2]),
        .Q(sum[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[3]),
        .Q(sum[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[4]),
        .Q(sum[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[5]),
        .Q(sum[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[6]),
        .Q(sum[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[7]),
        .Q(sum[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[8]),
        .Q(sum[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[8]_0 [0]),
        .Q(tmp_sum_b_0_1_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[8]_0 [1]),
        .Q(tmp_sum_b_0_1_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[8]_0 [2]),
        .Q(tmp_sum_b_0_1_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[8]_0 [3]),
        .Q(tmp_sum_b_0_1_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[8]_0 [4]),
        .Q(tmp_sum_b_0_1_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[8]_0 [5]),
        .Q(tmp_sum_b_0_1_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[8]_0 [6]),
        .Q(tmp_sum_b_0_1_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[8]_0 [7]),
        .Q(tmp_sum_b_0_1_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[8]_0 [8]),
        .Q(tmp_sum_b_0_1_2[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 voltage0_carry
       (.CI(1'b0),
        .CO({voltage0_carry_n_0,NLW_voltage0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage2[10:8],1'b0}),
        .O(C[10:7]),
        .S({voltage0_carry_i_2__7_n_0,voltage0_carry_i_3__7_n_0,voltage0_carry_i_4_n_0,voltage2[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__0
       (.CI(voltage0_carry_n_0),
        .CO({voltage0_carry__0_n_0,NLW_voltage0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2[14:11]),
        .O(C[14:11]),
        .S({voltage0_carry__0_i_2__7_n_0,voltage0_carry__0_i_3__7_n_0,voltage0_carry__0_i_4__7_n_0,voltage0_carry__0_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__0_i_1__7
       (.CI(voltage0_carry_i_1__7_n_0),
        .CO({voltage0_carry__0_i_1__7_n_0,NLW_voltage0_carry__0_i_1__7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[15:12]),
        .O(voltage2[15:12]),
        .S(voltage_reg[15:12]));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_2__7
       (.I0(voltage2[14]),
        .O(voltage0_carry__0_i_2__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_3__7
       (.I0(voltage2[13]),
        .O(voltage0_carry__0_i_3__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_4__7
       (.I0(voltage2[12]),
        .O(voltage0_carry__0_i_4__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_5
       (.I0(voltage2[11]),
        .O(voltage0_carry__0_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__1
       (.CI(voltage0_carry__0_n_0),
        .CO({voltage0_carry__1_n_0,NLW_voltage0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2[18:15]),
        .O(C[18:15]),
        .S({voltage0_carry__1_i_2__7_n_0,voltage0_carry__1_i_3__7_n_0,voltage0_carry__1_i_4__7_n_0,voltage0_carry__1_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__1_i_1__7
       (.CI(voltage0_carry__0_i_1__7_n_0),
        .CO({voltage0_carry__1_i_1__7_n_0,NLW_voltage0_carry__1_i_1__7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[19:16]),
        .O(voltage2[19:16]),
        .S(voltage_reg[19:16]));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_2__7
       (.I0(voltage2[18]),
        .O(voltage0_carry__1_i_2__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_3__7
       (.I0(voltage2[17]),
        .O(voltage0_carry__1_i_3__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_4__7
       (.I0(voltage2[16]),
        .O(voltage0_carry__1_i_4__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_5
       (.I0(voltage2[15]),
        .O(voltage0_carry__1_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__2
       (.CI(voltage0_carry__1_n_0),
        .CO({voltage0_carry__2_n_0,NLW_voltage0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2[22:19]),
        .O(C[22:19]),
        .S({voltage0_carry__2_i_2__7_n_0,voltage0_carry__2_i_3__7_n_0,voltage0_carry__2_i_4__7_n_0,voltage0_carry__2_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__2_i_1__7
       (.CI(voltage0_carry__1_i_1__7_n_0),
        .CO({voltage0_carry__2_i_1__7_n_0,NLW_voltage0_carry__2_i_1__7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[23:20]),
        .O(voltage2[23:20]),
        .S(voltage_reg[23:20]));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_2__7
       (.I0(voltage2[22]),
        .O(voltage0_carry__2_i_2__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_3__7
       (.I0(voltage2[21]),
        .O(voltage0_carry__2_i_3__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_4__7
       (.I0(voltage2[20]),
        .O(voltage0_carry__2_i_4__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_5
       (.I0(voltage2[19]),
        .O(voltage0_carry__2_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__3
       (.CI(voltage0_carry__2_n_0),
        .CO({voltage0_carry__3_n_0,NLW_voltage0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2[26:23]),
        .O(C[26:23]),
        .S({voltage0_carry__3_i_2__7_n_0,voltage0_carry__3_i_3__7_n_0,voltage0_carry__3_i_4__7_n_0,voltage0_carry__3_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__3_i_1__7
       (.CI(voltage0_carry__2_i_1__7_n_0),
        .CO({voltage0_carry__3_i_1__7_n_0,NLW_voltage0_carry__3_i_1__7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[27:24]),
        .O(voltage2[27:24]),
        .S(voltage_reg[27:24]));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_2__7
       (.I0(voltage2[26]),
        .O(voltage0_carry__3_i_2__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_3__7
       (.I0(voltage2[25]),
        .O(voltage0_carry__3_i_3__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_4__7
       (.I0(voltage2[24]),
        .O(voltage0_carry__3_i_4__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_5
       (.I0(voltage2[23]),
        .O(voltage0_carry__3_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__4
       (.CI(voltage0_carry__3_n_0),
        .CO({voltage0_carry__4_n_0,NLW_voltage0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2[30:27]),
        .O(C[30:27]),
        .S({voltage0_carry__4_i_2__7_n_0,voltage0_carry__4_i_3__7_n_0,voltage0_carry__4_i_4__7_n_0,voltage0_carry__4_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__4_i_1__7
       (.CI(voltage0_carry__3_i_1__7_n_0),
        .CO(NLW_voltage0_carry__4_i_1__7_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,voltage_reg[30:28]}),
        .O(voltage2[31:28]),
        .S(voltage_reg[31:28]));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_2__7
       (.I0(voltage2[30]),
        .O(voltage0_carry__4_i_2__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_3__7
       (.I0(voltage2[29]),
        .O(voltage0_carry__4_i_3__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_4__7
       (.I0(voltage2[28]),
        .O(voltage0_carry__4_i_4__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_5
       (.I0(voltage2[27]),
        .O(voltage0_carry__4_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__5
       (.CI(voltage0_carry__4_n_0),
        .CO(NLW_voltage0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_voltage0_carry__5_O_UNCONNECTED[3:1],C[31]}),
        .S({1'b0,1'b0,1'b0,voltage0_carry__5_i_1__7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__5_i_1__7
       (.I0(voltage2[31]),
        .O(voltage0_carry__5_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage0_carry_i_10
       (.I0(voltage_reg[5]),
        .I1(sum[5]),
        .O(voltage0_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage0_carry_i_11
       (.I0(voltage_reg[4]),
        .I1(sum[4]),
        .O(voltage0_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage0_carry_i_12
       (.I0(voltage_reg[3]),
        .I1(sum[3]),
        .O(voltage0_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage0_carry_i_13
       (.I0(voltage_reg[2]),
        .I1(sum[2]),
        .O(voltage0_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage0_carry_i_14
       (.I0(voltage_reg[1]),
        .I1(sum[1]),
        .O(voltage0_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage0_carry_i_15
       (.I0(voltage_reg[0]),
        .I1(sum[0]),
        .O(voltage0_carry_i_15_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry_i_1__7
       (.CI(voltage0_carry_i_5_n_0),
        .CO({voltage0_carry_i_1__7_n_0,NLW_voltage0_carry_i_1__7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[11:8]),
        .O(voltage2[11:8]),
        .S({voltage_reg[11:9],voltage0_carry_i_6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_2__7
       (.I0(voltage2[10]),
        .O(voltage0_carry_i_2__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_3__7
       (.I0(voltage2[9]),
        .O(voltage0_carry_i_3__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_4
       (.I0(voltage2[8]),
        .O(voltage0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry_i_5
       (.CI(voltage0_carry_i_7_n_0),
        .CO({voltage0_carry_i_5_n_0,NLW_voltage0_carry_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[7:4]),
        .O(voltage2[7:4]),
        .S({voltage0_carry_i_8_n_0,voltage0_carry_i_9_n_0,voltage0_carry_i_10_n_0,voltage0_carry_i_11_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage0_carry_i_6
       (.I0(voltage_reg[8]),
        .I1(sum[8]),
        .O(voltage0_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry_i_7
       (.CI(1'b0),
        .CO({voltage0_carry_i_7_n_0,NLW_voltage0_carry_i_7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[3:0]),
        .O(voltage2[3:0]),
        .S({voltage0_carry_i_12_n_0,voltage0_carry_i_13_n_0,voltage0_carry_i_14_n_0,voltage0_carry_i_15_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage0_carry_i_8
       (.I0(voltage_reg[7]),
        .I1(sum[7]),
        .O(voltage0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage0_carry_i_9
       (.I0(voltage_reg[6]),
        .I1(sum[6]),
        .O(voltage0_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry
       (.CI(1'b0),
        .CO({voltage1_carry_n_0,NLW_voltage1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry_i_1_n_0,voltage1_carry_i_2_n_0,voltage1_carry_i_3_n_0,voltage1_carry_i_4_n_0}),
        .O(NLW_voltage1_carry_O_UNCONNECTED[3:0]),
        .S({voltage1_carry_i_5_n_0,voltage1_carry_i_6_n_0,voltage1_carry_i_7_n_0,voltage1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__0
       (.CI(voltage1_carry_n_0),
        .CO({voltage1_carry__0_n_0,NLW_voltage1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__0_i_1_n_0,voltage1_carry__0_i_2_n_0,voltage1_carry__0_i_3_n_0,voltage2[9]}),
        .O(NLW_voltage1_carry__0_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__0_i_4__7_n_0,voltage1_carry__0_i_5__7_n_0,voltage1_carry__0_i_6__7_n_0,voltage1_carry__0_i_7__7_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_1
       (.I0(voltage2[14]),
        .I1(voltage2[15]),
        .O(voltage1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_2
       (.I0(voltage2[12]),
        .I1(voltage2[13]),
        .O(voltage1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_3
       (.I0(voltage2[10]),
        .I1(voltage2[11]),
        .O(voltage1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_4__7
       (.I0(voltage2[14]),
        .I1(voltage2[15]),
        .O(voltage1_carry__0_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_5__7
       (.I0(voltage2[12]),
        .I1(voltage2[13]),
        .O(voltage1_carry__0_i_5__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_6__7
       (.I0(voltage2[10]),
        .I1(voltage2[11]),
        .O(voltage1_carry__0_i_6__7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__0_i_7__7
       (.I0(voltage2[8]),
        .I1(voltage2[9]),
        .O(voltage1_carry__0_i_7__7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__1
       (.CI(voltage1_carry__0_n_0),
        .CO({voltage1_carry__1_n_0,NLW_voltage1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__1_i_1_n_0,voltage1_carry__1_i_2_n_0,voltage1_carry__1_i_3_n_0,voltage1_carry__1_i_4_n_0}),
        .O(NLW_voltage1_carry__1_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__1_i_5__7_n_0,voltage1_carry__1_i_6__7_n_0,voltage1_carry__1_i_7__7_n_0,voltage1_carry__1_i_8__7_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_1
       (.I0(voltage2[22]),
        .I1(voltage2[23]),
        .O(voltage1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_2
       (.I0(voltage2[20]),
        .I1(voltage2[21]),
        .O(voltage1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_3
       (.I0(voltage2[18]),
        .I1(voltage2[19]),
        .O(voltage1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_4
       (.I0(voltage2[16]),
        .I1(voltage2[17]),
        .O(voltage1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_5__7
       (.I0(voltage2[22]),
        .I1(voltage2[23]),
        .O(voltage1_carry__1_i_5__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_6__7
       (.I0(voltage2[20]),
        .I1(voltage2[21]),
        .O(voltage1_carry__1_i_6__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_7__7
       (.I0(voltage2[18]),
        .I1(voltage2[19]),
        .O(voltage1_carry__1_i_7__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_8__7
       (.I0(voltage2[16]),
        .I1(voltage2[17]),
        .O(voltage1_carry__1_i_8__7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__2
       (.CI(voltage1_carry__1_n_0),
        .CO({CO,NLW_voltage1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__2_i_1__7_n_0,voltage1_carry__2_i_2_n_0,voltage1_carry__2_i_3_n_0,voltage1_carry__2_i_4_n_0}),
        .O(NLW_voltage1_carry__2_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__2_i_5__7_n_0,voltage1_carry__2_i_6__7_n_0,voltage1_carry__2_i_7__7_n_0,voltage1_carry__2_i_8__7_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__2_i_1__7
       (.I0(voltage2[30]),
        .I1(voltage2[31]),
        .O(voltage1_carry__2_i_1__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_2
       (.I0(voltage2[28]),
        .I1(voltage2[29]),
        .O(voltage1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_3
       (.I0(voltage2[26]),
        .I1(voltage2[27]),
        .O(voltage1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_4
       (.I0(voltage2[24]),
        .I1(voltage2[25]),
        .O(voltage1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_5__7
       (.I0(voltage2[30]),
        .I1(voltage2[31]),
        .O(voltage1_carry__2_i_5__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_6__7
       (.I0(voltage2[28]),
        .I1(voltage2[29]),
        .O(voltage1_carry__2_i_6__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_7__7
       (.I0(voltage2[26]),
        .I1(voltage2[27]),
        .O(voltage1_carry__2_i_7__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_8__7
       (.I0(voltage2[24]),
        .I1(voltage2[25]),
        .O(voltage1_carry__2_i_8__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_1
       (.I0(voltage2[6]),
        .I1(voltage2[7]),
        .O(voltage1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_2
       (.I0(voltage2[4]),
        .I1(voltage2[5]),
        .O(voltage1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_3
       (.I0(voltage2[2]),
        .I1(voltage2[3]),
        .O(voltage1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_4
       (.I0(voltage2[0]),
        .I1(voltage2[1]),
        .O(voltage1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_5
       (.I0(voltage2[6]),
        .I1(voltage2[7]),
        .O(voltage1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_6
       (.I0(voltage2[4]),
        .I1(voltage2[5]),
        .O(voltage1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_7
       (.I0(voltage2[2]),
        .I1(voltage2[3]),
        .O(voltage1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_8
       (.I0(voltage2[0]),
        .I1(voltage2[1]),
        .O(voltage1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_2 
       (.I0(sum[3]),
        .I1(CO),
        .O(\voltage[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_3 
       (.I0(sum[2]),
        .I1(CO),
        .O(\voltage[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_4 
       (.I0(sum[1]),
        .I1(CO),
        .O(\voltage[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_5__0 
       (.I0(sum[0]),
        .I1(CO),
        .O(\voltage[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_6 
       (.I0(sum[3]),
        .I1(voltage_reg[3]),
        .I2(CO),
        .I3(voltage2[3]),
        .O(\voltage[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_7__0 
       (.I0(sum[2]),
        .I1(voltage_reg[2]),
        .I2(CO),
        .I3(voltage2[2]),
        .O(\voltage[0]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_8 
       (.I0(sum[1]),
        .I1(voltage_reg[1]),
        .I2(CO),
        .I3(voltage2[1]),
        .O(\voltage[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_9 
       (.I0(sum[0]),
        .I1(voltage_reg[0]),
        .I2(CO),
        .I3(voltage2[0]),
        .O(\voltage[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[12]_i_2 
       (.I0(C[15]),
        .I1(CO),
        .I2(voltage_reg[15]),
        .O(\voltage[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[12]_i_3 
       (.I0(C[14]),
        .I1(CO),
        .I2(voltage_reg[14]),
        .O(\voltage[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[12]_i_4 
       (.I0(C[13]),
        .I1(CO),
        .I2(voltage_reg[13]),
        .O(\voltage[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[12]_i_5 
       (.I0(C[12]),
        .I1(CO),
        .I2(voltage_reg[12]),
        .O(\voltage[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[16]_i_2 
       (.I0(C[19]),
        .I1(CO),
        .I2(voltage_reg[19]),
        .O(\voltage[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[16]_i_3 
       (.I0(C[18]),
        .I1(CO),
        .I2(voltage_reg[18]),
        .O(\voltage[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[16]_i_4 
       (.I0(C[17]),
        .I1(CO),
        .I2(voltage_reg[17]),
        .O(\voltage[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[16]_i_5 
       (.I0(C[16]),
        .I1(CO),
        .I2(voltage_reg[16]),
        .O(\voltage[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[20]_i_2 
       (.I0(C[23]),
        .I1(CO),
        .I2(voltage_reg[23]),
        .O(\voltage[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[20]_i_3 
       (.I0(C[22]),
        .I1(CO),
        .I2(voltage_reg[22]),
        .O(\voltage[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[20]_i_4 
       (.I0(C[21]),
        .I1(CO),
        .I2(voltage_reg[21]),
        .O(\voltage[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[20]_i_5 
       (.I0(C[20]),
        .I1(CO),
        .I2(voltage_reg[20]),
        .O(\voltage[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[24]_i_2 
       (.I0(C[27]),
        .I1(CO),
        .I2(voltage_reg[27]),
        .O(\voltage[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[24]_i_3 
       (.I0(C[26]),
        .I1(CO),
        .I2(voltage_reg[26]),
        .O(\voltage[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[24]_i_4 
       (.I0(C[25]),
        .I1(CO),
        .I2(voltage_reg[25]),
        .O(\voltage[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[24]_i_5 
       (.I0(C[24]),
        .I1(CO),
        .I2(voltage_reg[24]),
        .O(\voltage[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[28]_i_2 
       (.I0(C[31]),
        .I1(CO),
        .I2(voltage_reg[31]),
        .O(\voltage[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[28]_i_3 
       (.I0(C[30]),
        .I1(CO),
        .I2(voltage_reg[30]),
        .O(\voltage[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[28]_i_4 
       (.I0(C[29]),
        .I1(CO),
        .I2(voltage_reg[29]),
        .O(\voltage[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[28]_i_5 
       (.I0(C[28]),
        .I1(CO),
        .I2(voltage_reg[28]),
        .O(\voltage[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_2 
       (.I0(sum[7]),
        .I1(CO),
        .O(\voltage[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_3 
       (.I0(sum[6]),
        .I1(CO),
        .O(\voltage[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_4 
       (.I0(sum[5]),
        .I1(CO),
        .O(\voltage[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_5__0 
       (.I0(sum[4]),
        .I1(CO),
        .O(\voltage[4]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_6 
       (.I0(sum[7]),
        .I1(voltage_reg[7]),
        .I2(CO),
        .I3(C[7]),
        .O(\voltage[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_7 
       (.I0(sum[6]),
        .I1(voltage_reg[6]),
        .I2(CO),
        .I3(voltage2[6]),
        .O(\voltage[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_8__0 
       (.I0(sum[5]),
        .I1(voltage_reg[5]),
        .I2(CO),
        .I3(voltage2[5]),
        .O(\voltage[4]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_9 
       (.I0(sum[4]),
        .I1(voltage_reg[4]),
        .I2(CO),
        .I3(voltage2[4]),
        .O(\voltage[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_2 
       (.I0(sum[8]),
        .I1(CO),
        .O(\voltage[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[8]_i_3 
       (.I0(C[11]),
        .I1(CO),
        .I2(voltage_reg[11]),
        .O(\voltage[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[8]_i_4 
       (.I0(C[10]),
        .I1(CO),
        .I2(voltage_reg[10]),
        .O(\voltage[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[8]_i_5 
       (.I0(C[9]),
        .I1(CO),
        .I2(voltage_reg[9]),
        .O(\voltage[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_6 
       (.I0(sum[8]),
        .I1(voltage_reg[8]),
        .I2(CO),
        .I3(C[8]),
        .O(\voltage[8]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1_n_7 ),
        .Q(voltage_reg[0]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\voltage_reg[0]_i_1_n_0 ,\NLW_voltage_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[0]_i_2_n_0 ,\voltage[0]_i_3_n_0 ,\voltage[0]_i_4_n_0 ,\voltage[0]_i_5__0_n_0 }),
        .O({\voltage_reg[0]_i_1_n_4 ,\voltage_reg[0]_i_1_n_5 ,\voltage_reg[0]_i_1_n_6 ,\voltage_reg[0]_i_1_n_7 }),
        .S({\voltage[0]_i_6_n_0 ,\voltage[0]_i_7__0_n_0 ,\voltage[0]_i_8_n_0 ,\voltage[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1_n_5 ),
        .Q(voltage_reg[10]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1_n_4 ),
        .Q(voltage_reg[11]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1_n_7 ),
        .Q(voltage_reg[12]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[12]_i_1 
       (.CI(\voltage_reg[8]_i_1_n_0 ),
        .CO({\voltage_reg[12]_i_1_n_0 ,\NLW_voltage_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\voltage_reg[12]_i_1_n_4 ,\voltage_reg[12]_i_1_n_5 ,\voltage_reg[12]_i_1_n_6 ,\voltage_reg[12]_i_1_n_7 }),
        .S({\voltage[12]_i_2_n_0 ,\voltage[12]_i_3_n_0 ,\voltage[12]_i_4_n_0 ,\voltage[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1_n_6 ),
        .Q(voltage_reg[13]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1_n_5 ),
        .Q(voltage_reg[14]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1_n_4 ),
        .Q(voltage_reg[15]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1_n_7 ),
        .Q(voltage_reg[16]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[16]_i_1 
       (.CI(\voltage_reg[12]_i_1_n_0 ),
        .CO({\voltage_reg[16]_i_1_n_0 ,\NLW_voltage_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\voltage_reg[16]_i_1_n_4 ,\voltage_reg[16]_i_1_n_5 ,\voltage_reg[16]_i_1_n_6 ,\voltage_reg[16]_i_1_n_7 }),
        .S({\voltage[16]_i_2_n_0 ,\voltage[16]_i_3_n_0 ,\voltage[16]_i_4_n_0 ,\voltage[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1_n_6 ),
        .Q(voltage_reg[17]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1_n_5 ),
        .Q(voltage_reg[18]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1_n_4 ),
        .Q(voltage_reg[19]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1_n_6 ),
        .Q(voltage_reg[1]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1_n_7 ),
        .Q(voltage_reg[20]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[20]_i_1 
       (.CI(\voltage_reg[16]_i_1_n_0 ),
        .CO({\voltage_reg[20]_i_1_n_0 ,\NLW_voltage_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\voltage_reg[20]_i_1_n_4 ,\voltage_reg[20]_i_1_n_5 ,\voltage_reg[20]_i_1_n_6 ,\voltage_reg[20]_i_1_n_7 }),
        .S({\voltage[20]_i_2_n_0 ,\voltage[20]_i_3_n_0 ,\voltage[20]_i_4_n_0 ,\voltage[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1_n_6 ),
        .Q(voltage_reg[21]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1_n_5 ),
        .Q(voltage_reg[22]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1_n_4 ),
        .Q(voltage_reg[23]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1_n_7 ),
        .Q(voltage_reg[24]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[24]_i_1 
       (.CI(\voltage_reg[20]_i_1_n_0 ),
        .CO({\voltage_reg[24]_i_1_n_0 ,\NLW_voltage_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\voltage_reg[24]_i_1_n_4 ,\voltage_reg[24]_i_1_n_5 ,\voltage_reg[24]_i_1_n_6 ,\voltage_reg[24]_i_1_n_7 }),
        .S({\voltage[24]_i_2_n_0 ,\voltage[24]_i_3_n_0 ,\voltage[24]_i_4_n_0 ,\voltage[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1_n_6 ),
        .Q(voltage_reg[25]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1_n_5 ),
        .Q(voltage_reg[26]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1_n_4 ),
        .Q(voltage_reg[27]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1_n_7 ),
        .Q(voltage_reg[28]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[28]_i_1 
       (.CI(\voltage_reg[24]_i_1_n_0 ),
        .CO(\NLW_voltage_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\voltage_reg[28]_i_1_n_4 ,\voltage_reg[28]_i_1_n_5 ,\voltage_reg[28]_i_1_n_6 ,\voltage_reg[28]_i_1_n_7 }),
        .S({\voltage[28]_i_2_n_0 ,\voltage[28]_i_3_n_0 ,\voltage[28]_i_4_n_0 ,\voltage[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1_n_6 ),
        .Q(voltage_reg[29]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1_n_5 ),
        .Q(voltage_reg[2]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1_n_5 ),
        .Q(voltage_reg[30]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1_n_4 ),
        .Q(voltage_reg[31]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1_n_4 ),
        .Q(voltage_reg[3]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1_n_7 ),
        .Q(voltage_reg[4]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[4]_i_1 
       (.CI(\voltage_reg[0]_i_1_n_0 ),
        .CO({\voltage_reg[4]_i_1_n_0 ,\NLW_voltage_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[4]_i_2_n_0 ,\voltage[4]_i_3_n_0 ,\voltage[4]_i_4_n_0 ,\voltage[4]_i_5__0_n_0 }),
        .O({\voltage_reg[4]_i_1_n_4 ,\voltage_reg[4]_i_1_n_5 ,\voltage_reg[4]_i_1_n_6 ,\voltage_reg[4]_i_1_n_7 }),
        .S({\voltage[4]_i_6_n_0 ,\voltage[4]_i_7_n_0 ,\voltage[4]_i_8__0_n_0 ,\voltage[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1_n_6 ),
        .Q(voltage_reg[5]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1_n_5 ),
        .Q(voltage_reg[6]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1_n_4 ),
        .Q(voltage_reg[7]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1_n_7 ),
        .Q(voltage_reg[8]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[8]_i_1 
       (.CI(\voltage_reg[4]_i_1_n_0 ),
        .CO({\voltage_reg[8]_i_1_n_0 ,\NLW_voltage_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\voltage[8]_i_2_n_0 }),
        .O({\voltage_reg[8]_i_1_n_4 ,\voltage_reg[8]_i_1_n_5 ,\voltage_reg[8]_i_1_n_6 ,\voltage_reg[8]_i_1_n_7 }),
        .S({\voltage[8]_i_3_n_0 ,\voltage[8]_i_4_n_0 ,\voltage[8]_i_5_n_0 ,\voltage[8]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1_n_6 ),
        .Q(voltage_reg[9]),
        .R(ly2_delay));
endmodule

(* ORIG_REF_NAME = "neuron" *) 
module neuron__parameterized0
   (h_1,
    \tmp_sum_1_2_reg[8]_0 ,
    \tmp_sum_b_0_reg[5] ,
    \tmp_sum_b_0_reg[28] ,
    clk_o_OBUF_BUFG,
    tmp_sum_1,
    tmp_sum_2,
    S,
    DI,
    \tmp_sum_1_2_reg[7]_0 ,
    ly2_delay,
    \tmp_sum_1_2_reg[0]_0 ,
    CO,
    D,
    tmp_sum_b_0,
    tmp_sum_b_0_0);
  output h_1;
  output [1:0]\tmp_sum_1_2_reg[8]_0 ;
  output [3:0]\tmp_sum_b_0_reg[5] ;
  output [1:0]\tmp_sum_b_0_reg[28] ;
  input clk_o_OBUF_BUFG;
  input [0:0]tmp_sum_1;
  input [0:0]tmp_sum_2;
  input [0:0]S;
  input [0:0]DI;
  input [2:0]\tmp_sum_1_2_reg[7]_0 ;
  input [0:0]ly2_delay;
  input \tmp_sum_1_2_reg[0]_0 ;
  input [0:0]CO;
  input [7:0]D;
  input [1:0]tmp_sum_b_0;
  input [0:0]tmp_sum_b_0_0;

  wire [31:7]C;
  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire clk_o_OBUF_BUFG;
  wire h_1;
  wire load;
  wire [0:0]ly2_delay;
  wire [31:0]sum;
  wire [0:0]tmp_sum_1;
  wire [7:1]tmp_sum_1_2;
  wire tmp_sum_1_20_carry__0_n_0;
  wire tmp_sum_1_20_carry__0_n_4;
  wire tmp_sum_1_20_carry__0_n_5;
  wire tmp_sum_1_20_carry__0_n_6;
  wire tmp_sum_1_20_carry__0_n_7;
  wire tmp_sum_1_20_carry__1_n_7;
  wire tmp_sum_1_20_carry_n_0;
  wire tmp_sum_1_20_carry_n_4;
  wire tmp_sum_1_20_carry_n_5;
  wire tmp_sum_1_20_carry_n_6;
  wire \tmp_sum_1_2_reg[0]_0 ;
  wire [2:0]\tmp_sum_1_2_reg[7]_0 ;
  wire [1:0]\tmp_sum_1_2_reg[8]_0 ;
  wire [0:0]tmp_sum_2;
  wire [1:0]tmp_sum_b_0;
  wire [0:0]tmp_sum_b_0_0;
  wire [31:0]tmp_sum_b_0_1_2;
  wire \tmp_sum_b_0_1_2_reg[13]_i_1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[13]_i_1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[13]_i_1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[13]_i_1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[13]_i_1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[17]_i_1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[17]_i_1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[17]_i_1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[17]_i_1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[17]_i_1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[21]_i_1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[21]_i_1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[21]_i_1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[21]_i_1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[21]_i_1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[25]_i_1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[25]_i_1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[25]_i_1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[25]_i_1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[25]_i_1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[29]_i_1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[29]_i_1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[29]_i_1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[29]_i_1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[29]_i_1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[31]_i_1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[31]_i_1_n_7 ;
  wire [1:0]\tmp_sum_b_0_reg[28] ;
  wire [3:0]\tmp_sum_b_0_reg[5] ;
  wire voltage0_carry__0_i_1__6_n_0;
  wire voltage0_carry__0_i_2__6_n_0;
  wire voltage0_carry__0_i_3__6_n_0;
  wire voltage0_carry__0_i_4__6_n_0;
  wire voltage0_carry__0_n_0;
  wire voltage0_carry__1_i_1__6_n_0;
  wire voltage0_carry__1_i_2__6_n_0;
  wire voltage0_carry__1_i_3__6_n_0;
  wire voltage0_carry__1_i_4__6_n_0;
  wire voltage0_carry__1_n_0;
  wire voltage0_carry__2_i_1__6_n_0;
  wire voltage0_carry__2_i_2__6_n_0;
  wire voltage0_carry__2_i_3__6_n_0;
  wire voltage0_carry__2_i_4__6_n_0;
  wire voltage0_carry__2_n_0;
  wire voltage0_carry__3_i_1__6_n_0;
  wire voltage0_carry__3_i_2__6_n_0;
  wire voltage0_carry__3_i_3__6_n_0;
  wire voltage0_carry__3_i_4__6_n_0;
  wire voltage0_carry__3_n_0;
  wire voltage0_carry__4_i_1__6_n_0;
  wire voltage0_carry__4_i_2__6_n_0;
  wire voltage0_carry__4_i_3__6_n_0;
  wire voltage0_carry__4_i_4__6_n_0;
  wire voltage0_carry__4_n_0;
  wire voltage0_carry__5_i_1__6_n_0;
  wire voltage0_carry_i_1__6_n_0;
  wire voltage0_carry_i_2__6_n_0;
  wire voltage0_carry_i_3_n_0;
  wire voltage0_carry_n_0;
  wire voltage1_carry__0_i_1__0_n_0;
  wire voltage1_carry__0_i_2__0_n_0;
  wire voltage1_carry__0_i_3__0_n_0;
  wire voltage1_carry__0_i_4__6_n_0;
  wire voltage1_carry__0_i_5__6_n_0;
  wire voltage1_carry__0_i_6__6_n_0;
  wire voltage1_carry__0_i_7__6_n_0;
  wire voltage1_carry__0_n_0;
  wire voltage1_carry__1_i_1__0_n_0;
  wire voltage1_carry__1_i_2__0_n_0;
  wire voltage1_carry__1_i_3__0_n_0;
  wire voltage1_carry__1_i_4__0_n_0;
  wire voltage1_carry__1_i_5__6_n_0;
  wire voltage1_carry__1_i_6__6_n_0;
  wire voltage1_carry__1_i_7__6_n_0;
  wire voltage1_carry__1_i_8__6_n_0;
  wire voltage1_carry__1_n_0;
  wire voltage1_carry__2_i_1__6_n_0;
  wire voltage1_carry__2_i_2__0_n_0;
  wire voltage1_carry__2_i_3__0_n_0;
  wire voltage1_carry__2_i_4__0_n_0;
  wire voltage1_carry__2_i_5__6_n_0;
  wire voltage1_carry__2_i_6__6_n_0;
  wire voltage1_carry__2_i_7__6_n_0;
  wire voltage1_carry__2_i_8__6_n_0;
  wire voltage1_carry_i_1__0_n_0;
  wire voltage1_carry_i_2__0_n_0;
  wire voltage1_carry_i_3__0_n_0;
  wire voltage1_carry_i_4__0_n_0;
  wire voltage1_carry_i_5__0_n_0;
  wire voltage1_carry_i_6__0_n_0;
  wire voltage1_carry_i_7__0_n_0;
  wire voltage1_carry_i_8__0_n_0;
  wire voltage1_carry_n_0;
  wire [31:0]voltage2__93;
  wire voltage2_carry__0_i_1_n_0;
  wire voltage2_carry__0_i_2_n_0;
  wire voltage2_carry__0_i_3_n_0;
  wire voltage2_carry__0_i_4_n_0;
  wire voltage2_carry__0_n_0;
  wire voltage2_carry__1_i_1_n_0;
  wire voltage2_carry__1_i_2_n_0;
  wire voltage2_carry__1_i_3_n_0;
  wire voltage2_carry__1_i_4_n_0;
  wire voltage2_carry__1_n_0;
  wire voltage2_carry__2_i_1_n_0;
  wire voltage2_carry__2_i_2_n_0;
  wire voltage2_carry__2_i_3_n_0;
  wire voltage2_carry__2_i_4_n_0;
  wire voltage2_carry__2_n_0;
  wire voltage2_carry__3_i_1_n_0;
  wire voltage2_carry__3_i_2_n_0;
  wire voltage2_carry__3_i_3_n_0;
  wire voltage2_carry__3_i_4_n_0;
  wire voltage2_carry__3_n_0;
  wire voltage2_carry__4_i_1_n_0;
  wire voltage2_carry__4_i_2_n_0;
  wire voltage2_carry__4_i_3_n_0;
  wire voltage2_carry__4_i_4_n_0;
  wire voltage2_carry__4_n_0;
  wire voltage2_carry__5_i_1_n_0;
  wire voltage2_carry__5_i_2_n_0;
  wire voltage2_carry__5_i_3_n_0;
  wire voltage2_carry__5_i_4_n_0;
  wire voltage2_carry__5_n_0;
  wire voltage2_carry__6_i_1_n_0;
  wire voltage2_carry__6_i_2_n_0;
  wire voltage2_carry__6_i_3_n_0;
  wire voltage2_carry__6_i_4_n_0;
  wire voltage2_carry_i_1_n_0;
  wire voltage2_carry_i_2_n_0;
  wire voltage2_carry_i_3_n_0;
  wire voltage2_carry_i_4_n_0;
  wire voltage2_carry_n_0;
  wire \voltage[0]_i_2__0_n_0 ;
  wire \voltage[0]_i_3__0_n_0 ;
  wire \voltage[0]_i_4__0_n_0 ;
  wire \voltage[0]_i_5__1_n_0 ;
  wire \voltage[0]_i_6__0_n_0 ;
  wire \voltage[0]_i_7__1_n_0 ;
  wire \voltage[0]_i_8__0_n_0 ;
  wire \voltage[0]_i_9__0_n_0 ;
  wire \voltage[12]_i_2__0_n_0 ;
  wire \voltage[12]_i_3__0_n_0 ;
  wire \voltage[12]_i_4__0_n_0 ;
  wire \voltage[12]_i_5__0_n_0 ;
  wire \voltage[12]_i_6_n_0 ;
  wire \voltage[12]_i_7_n_0 ;
  wire \voltage[12]_i_8_n_0 ;
  wire \voltage[12]_i_9_n_0 ;
  wire \voltage[16]_i_2__0_n_0 ;
  wire \voltage[16]_i_3__0_n_0 ;
  wire \voltage[16]_i_4__0_n_0 ;
  wire \voltage[16]_i_5__0_n_0 ;
  wire \voltage[16]_i_6_n_0 ;
  wire \voltage[16]_i_7_n_0 ;
  wire \voltage[16]_i_8_n_0 ;
  wire \voltage[16]_i_9_n_0 ;
  wire \voltage[20]_i_2__0_n_0 ;
  wire \voltage[20]_i_3__0_n_0 ;
  wire \voltage[20]_i_4__0_n_0 ;
  wire \voltage[20]_i_5__0_n_0 ;
  wire \voltage[20]_i_6_n_0 ;
  wire \voltage[20]_i_7_n_0 ;
  wire \voltage[20]_i_8_n_0 ;
  wire \voltage[20]_i_9_n_0 ;
  wire \voltage[24]_i_2__0_n_0 ;
  wire \voltage[24]_i_3__0_n_0 ;
  wire \voltage[24]_i_4__0_n_0 ;
  wire \voltage[24]_i_5__0_n_0 ;
  wire \voltage[24]_i_6_n_0 ;
  wire \voltage[24]_i_7_n_0 ;
  wire \voltage[24]_i_8_n_0 ;
  wire \voltage[24]_i_9_n_0 ;
  wire \voltage[28]_i_2__0_n_0 ;
  wire \voltage[28]_i_3__0_n_0 ;
  wire \voltage[28]_i_4__0_n_0 ;
  wire \voltage[28]_i_5__0_n_0 ;
  wire \voltage[28]_i_6_n_0 ;
  wire \voltage[28]_i_7_n_0 ;
  wire \voltage[28]_i_8_n_0 ;
  wire \voltage[4]_i_2__0_n_0 ;
  wire \voltage[4]_i_3__0_n_0 ;
  wire \voltage[4]_i_4__0_n_0 ;
  wire \voltage[4]_i_5__1_n_0 ;
  wire \voltage[4]_i_6__0_n_0 ;
  wire \voltage[4]_i_7__0_n_0 ;
  wire \voltage[4]_i_8__1_n_0 ;
  wire \voltage[4]_i_9__0_n_0 ;
  wire \voltage[8]_i_2__0_n_0 ;
  wire \voltage[8]_i_3__0_n_0 ;
  wire \voltage[8]_i_4__0_n_0 ;
  wire \voltage[8]_i_5__0_n_0 ;
  wire \voltage[8]_i_6__0_n_0 ;
  wire \voltage[8]_i_7_n_0 ;
  wire \voltage[8]_i_8_n_0 ;
  wire \voltage[8]_i_9_n_0 ;
  wire [31:0]voltage_reg;
  wire \voltage_reg[0]_i_1__0_n_0 ;
  wire \voltage_reg[0]_i_1__0_n_4 ;
  wire \voltage_reg[0]_i_1__0_n_5 ;
  wire \voltage_reg[0]_i_1__0_n_6 ;
  wire \voltage_reg[0]_i_1__0_n_7 ;
  wire \voltage_reg[12]_i_1__0_n_0 ;
  wire \voltage_reg[12]_i_1__0_n_4 ;
  wire \voltage_reg[12]_i_1__0_n_5 ;
  wire \voltage_reg[12]_i_1__0_n_6 ;
  wire \voltage_reg[12]_i_1__0_n_7 ;
  wire \voltage_reg[16]_i_1__0_n_0 ;
  wire \voltage_reg[16]_i_1__0_n_4 ;
  wire \voltage_reg[16]_i_1__0_n_5 ;
  wire \voltage_reg[16]_i_1__0_n_6 ;
  wire \voltage_reg[16]_i_1__0_n_7 ;
  wire \voltage_reg[20]_i_1__0_n_0 ;
  wire \voltage_reg[20]_i_1__0_n_4 ;
  wire \voltage_reg[20]_i_1__0_n_5 ;
  wire \voltage_reg[20]_i_1__0_n_6 ;
  wire \voltage_reg[20]_i_1__0_n_7 ;
  wire \voltage_reg[24]_i_1__0_n_0 ;
  wire \voltage_reg[24]_i_1__0_n_4 ;
  wire \voltage_reg[24]_i_1__0_n_5 ;
  wire \voltage_reg[24]_i_1__0_n_6 ;
  wire \voltage_reg[24]_i_1__0_n_7 ;
  wire \voltage_reg[28]_i_1__0_n_4 ;
  wire \voltage_reg[28]_i_1__0_n_5 ;
  wire \voltage_reg[28]_i_1__0_n_6 ;
  wire \voltage_reg[28]_i_1__0_n_7 ;
  wire \voltage_reg[4]_i_1__0_n_0 ;
  wire \voltage_reg[4]_i_1__0_n_4 ;
  wire \voltage_reg[4]_i_1__0_n_5 ;
  wire \voltage_reg[4]_i_1__0_n_6 ;
  wire \voltage_reg[4]_i_1__0_n_7 ;
  wire \voltage_reg[8]_i_1__0_n_0 ;
  wire \voltage_reg[8]_i_1__0_n_4 ;
  wire \voltage_reg[8]_i_1__0_n_5 ;
  wire \voltage_reg[8]_i_1__0_n_6 ;
  wire \voltage_reg[8]_i_1__0_n_7 ;
  wire [2:0]NLW_tmp_sum_1_20_carry_CO_UNCONNECTED;
  wire [0:0]NLW_tmp_sum_1_20_carry_O_UNCONNECTED;
  wire [2:0]NLW_tmp_sum_1_20_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_tmp_sum_1_20_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_tmp_sum_1_20_carry__1_O_UNCONNECTED;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[13]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[17]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[21]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[25]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[29]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_b_0_1_2_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp_sum_b_0_1_2_reg[31]_i_1_O_UNCONNECTED ;
  wire [2:0]NLW_voltage0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_voltage0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_voltage0_carry__5_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_voltage2_carry__6_CO_UNCONNECTED;
  wire [2:0]\NLW_voltage_reg[0]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[20]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_voltage_reg[28]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[8]_i_1__0_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    spike_out_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(load),
        .Q(h_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[0]),
        .Q(sum[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[10]),
        .Q(sum[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[11]),
        .Q(sum[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[12]),
        .Q(sum[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[13]),
        .Q(sum[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[14]),
        .Q(sum[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[15]),
        .Q(sum[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[16]),
        .Q(sum[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[17]),
        .Q(sum[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[18]),
        .Q(sum[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[19]),
        .Q(sum[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[1]),
        .Q(sum[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[20]),
        .Q(sum[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[21]),
        .Q(sum[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[22]),
        .Q(sum[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[23]),
        .Q(sum[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[24]),
        .Q(sum[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[25]),
        .Q(sum[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[26]),
        .Q(sum[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[27]),
        .Q(sum[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[28]),
        .Q(sum[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[29]),
        .Q(sum[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[2]),
        .Q(sum[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[30]),
        .Q(sum[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[31]),
        .Q(sum[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[3]),
        .Q(sum[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[4]),
        .Q(sum[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[5]),
        .Q(sum[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[6]),
        .Q(sum[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[7]),
        .Q(sum[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[8]),
        .Q(sum[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[9]),
        .Q(sum[9]),
        .R(1'b0));
  CARRY4 tmp_sum_1_20_carry
       (.CI(1'b0),
        .CO({tmp_sum_1_20_carry_n_0,NLW_tmp_sum_1_20_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_1,1'b0,1'b0,tmp_sum_1}),
        .O({tmp_sum_1_20_carry_n_4,tmp_sum_1_20_carry_n_5,tmp_sum_1_20_carry_n_6,NLW_tmp_sum_1_20_carry_O_UNCONNECTED[0]}),
        .S({tmp_sum_1,tmp_sum_2,tmp_sum_2,S}));
  CARRY4 tmp_sum_1_20_carry__0
       (.CI(tmp_sum_1_20_carry_n_0),
        .CO({tmp_sum_1_20_carry__0_n_0,NLW_tmp_sum_1_20_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_sum_2,DI,tmp_sum_1}),
        .O({tmp_sum_1_20_carry__0_n_4,tmp_sum_1_20_carry__0_n_5,tmp_sum_1_20_carry__0_n_6,tmp_sum_1_20_carry__0_n_7}),
        .S({\tmp_sum_1_2_reg[7]_0 [2:1],tmp_sum_2,\tmp_sum_1_2_reg[7]_0 [0]}));
  CARRY4 tmp_sum_1_20_carry__1
       (.CI(tmp_sum_1_20_carry__0_n_0),
        .CO(NLW_tmp_sum_1_20_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tmp_sum_1_20_carry__1_O_UNCONNECTED[3:1],tmp_sum_1_20_carry__1_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[0]_0 ),
        .Q(\tmp_sum_1_2_reg[8]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry_n_6),
        .Q(tmp_sum_1_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry_n_5),
        .Q(tmp_sum_1_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry_n_4),
        .Q(tmp_sum_1_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry__0_n_7),
        .Q(tmp_sum_1_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry__0_n_6),
        .Q(tmp_sum_1_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry__0_n_5),
        .Q(tmp_sum_1_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry__0_n_4),
        .Q(tmp_sum_1_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry__1_n_7),
        .Q(\tmp_sum_1_2_reg[8]_0 [1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[5]_i_2 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[5]),
        .O(\tmp_sum_b_0_reg[5] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[5]_i_3 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2[4]),
        .O(\tmp_sum_b_0_reg[5] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[5]_i_4 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[3]),
        .O(\tmp_sum_b_0_reg[5] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[5]_i_5 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2[2]),
        .O(\tmp_sum_b_0_reg[5] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[9]_i_2 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[7]),
        .O(\tmp_sum_b_0_reg[28] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[9]_i_3 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2[6]),
        .O(\tmp_sum_b_0_reg[28] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[8]_0 [0]),
        .Q(tmp_sum_b_0_1_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[13]_i_1_n_7 ),
        .Q(tmp_sum_b_0_1_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[13]_i_1_n_6 ),
        .Q(tmp_sum_b_0_1_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[13]_i_1_n_5 ),
        .Q(tmp_sum_b_0_1_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[13]_i_1_n_4 ),
        .Q(tmp_sum_b_0_1_2[13]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[13]_i_1 
       (.CI(CO),
        .CO({\tmp_sum_b_0_1_2_reg[13]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[13]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[13]_i_1_n_4 ,\tmp_sum_b_0_1_2_reg[13]_i_1_n_5 ,\tmp_sum_b_0_1_2_reg[13]_i_1_n_6 ,\tmp_sum_b_0_1_2_reg[13]_i_1_n_7 }),
        .S({\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[17]_i_1_n_7 ),
        .Q(tmp_sum_b_0_1_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[17]_i_1_n_6 ),
        .Q(tmp_sum_b_0_1_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[17]_i_1_n_5 ),
        .Q(tmp_sum_b_0_1_2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[17]_i_1_n_4 ),
        .Q(tmp_sum_b_0_1_2[17]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[17]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[13]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[17]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[17]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[17]_i_1_n_4 ,\tmp_sum_b_0_1_2_reg[17]_i_1_n_5 ,\tmp_sum_b_0_1_2_reg[17]_i_1_n_6 ,\tmp_sum_b_0_1_2_reg[17]_i_1_n_7 }),
        .S({\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[21]_i_1_n_7 ),
        .Q(tmp_sum_b_0_1_2[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[21]_i_1_n_6 ),
        .Q(tmp_sum_b_0_1_2[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_2[1]),
        .Q(tmp_sum_b_0_1_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[21]_i_1_n_5 ),
        .Q(tmp_sum_b_0_1_2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[21]_i_1_n_4 ),
        .Q(tmp_sum_b_0_1_2[21]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[21]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[17]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[21]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[21]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[21]_i_1_n_4 ,\tmp_sum_b_0_1_2_reg[21]_i_1_n_5 ,\tmp_sum_b_0_1_2_reg[21]_i_1_n_6 ,\tmp_sum_b_0_1_2_reg[21]_i_1_n_7 }),
        .S({\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[25]_i_1_n_7 ),
        .Q(tmp_sum_b_0_1_2[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[25]_i_1_n_6 ),
        .Q(tmp_sum_b_0_1_2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[25]_i_1_n_5 ),
        .Q(tmp_sum_b_0_1_2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[25]_i_1_n_4 ),
        .Q(tmp_sum_b_0_1_2[25]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[25]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[21]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[25]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[25]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[25]_i_1_n_4 ,\tmp_sum_b_0_1_2_reg[25]_i_1_n_5 ,\tmp_sum_b_0_1_2_reg[25]_i_1_n_6 ,\tmp_sum_b_0_1_2_reg[25]_i_1_n_7 }),
        .S({\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[29]_i_1_n_7 ),
        .Q(tmp_sum_b_0_1_2[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[29]_i_1_n_6 ),
        .Q(tmp_sum_b_0_1_2[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[29]_i_1_n_5 ),
        .Q(tmp_sum_b_0_1_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[29]_i_1_n_4 ),
        .Q(tmp_sum_b_0_1_2[29]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[29]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[25]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[29]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[29]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[29]_i_1_n_4 ,\tmp_sum_b_0_1_2_reg[29]_i_1_n_5 ,\tmp_sum_b_0_1_2_reg[29]_i_1_n_6 ,\tmp_sum_b_0_1_2_reg[29]_i_1_n_7 }),
        .S({\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(tmp_sum_b_0_1_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_i_1_n_7 ),
        .Q(tmp_sum_b_0_1_2[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_i_1_n_6 ),
        .Q(tmp_sum_b_0_1_2[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[31]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[29]_i_1_n_0 ),
        .CO(\NLW_tmp_sum_b_0_1_2_reg[31]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_sum_b_0_1_2_reg[31]_i_1_O_UNCONNECTED [3:2],\tmp_sum_b_0_1_2_reg[31]_i_1_n_6 ,\tmp_sum_b_0_1_2_reg[31]_i_1_n_7 }),
        .S({1'b0,1'b0,\tmp_sum_1_2_reg[8]_0 [1],\tmp_sum_1_2_reg[8]_0 [1]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(tmp_sum_b_0_1_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(tmp_sum_b_0_1_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(tmp_sum_b_0_1_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(tmp_sum_b_0_1_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(tmp_sum_b_0_1_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(tmp_sum_b_0_1_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(tmp_sum_b_0_1_2[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 voltage0_carry
       (.CI(1'b0),
        .CO({voltage0_carry_n_0,NLW_voltage0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage2__93[10:8],1'b0}),
        .O(C[10:7]),
        .S({voltage0_carry_i_1__6_n_0,voltage0_carry_i_2__6_n_0,voltage0_carry_i_3_n_0,voltage2__93[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__0
       (.CI(voltage0_carry_n_0),
        .CO({voltage0_carry__0_n_0,NLW_voltage0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[14:11]),
        .O(C[14:11]),
        .S({voltage0_carry__0_i_1__6_n_0,voltage0_carry__0_i_2__6_n_0,voltage0_carry__0_i_3__6_n_0,voltage0_carry__0_i_4__6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_1__6
       (.I0(voltage2__93[14]),
        .O(voltage0_carry__0_i_1__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_2__6
       (.I0(voltage2__93[13]),
        .O(voltage0_carry__0_i_2__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_3__6
       (.I0(voltage2__93[12]),
        .O(voltage0_carry__0_i_3__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_4__6
       (.I0(voltage2__93[11]),
        .O(voltage0_carry__0_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__1
       (.CI(voltage0_carry__0_n_0),
        .CO({voltage0_carry__1_n_0,NLW_voltage0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[18:15]),
        .O(C[18:15]),
        .S({voltage0_carry__1_i_1__6_n_0,voltage0_carry__1_i_2__6_n_0,voltage0_carry__1_i_3__6_n_0,voltage0_carry__1_i_4__6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_1__6
       (.I0(voltage2__93[18]),
        .O(voltage0_carry__1_i_1__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_2__6
       (.I0(voltage2__93[17]),
        .O(voltage0_carry__1_i_2__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_3__6
       (.I0(voltage2__93[16]),
        .O(voltage0_carry__1_i_3__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_4__6
       (.I0(voltage2__93[15]),
        .O(voltage0_carry__1_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__2
       (.CI(voltage0_carry__1_n_0),
        .CO({voltage0_carry__2_n_0,NLW_voltage0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[22:19]),
        .O(C[22:19]),
        .S({voltage0_carry__2_i_1__6_n_0,voltage0_carry__2_i_2__6_n_0,voltage0_carry__2_i_3__6_n_0,voltage0_carry__2_i_4__6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_1__6
       (.I0(voltage2__93[22]),
        .O(voltage0_carry__2_i_1__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_2__6
       (.I0(voltage2__93[21]),
        .O(voltage0_carry__2_i_2__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_3__6
       (.I0(voltage2__93[20]),
        .O(voltage0_carry__2_i_3__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_4__6
       (.I0(voltage2__93[19]),
        .O(voltage0_carry__2_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__3
       (.CI(voltage0_carry__2_n_0),
        .CO({voltage0_carry__3_n_0,NLW_voltage0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[26:23]),
        .O(C[26:23]),
        .S({voltage0_carry__3_i_1__6_n_0,voltage0_carry__3_i_2__6_n_0,voltage0_carry__3_i_3__6_n_0,voltage0_carry__3_i_4__6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_1__6
       (.I0(voltage2__93[26]),
        .O(voltage0_carry__3_i_1__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_2__6
       (.I0(voltage2__93[25]),
        .O(voltage0_carry__3_i_2__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_3__6
       (.I0(voltage2__93[24]),
        .O(voltage0_carry__3_i_3__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_4__6
       (.I0(voltage2__93[23]),
        .O(voltage0_carry__3_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__4
       (.CI(voltage0_carry__3_n_0),
        .CO({voltage0_carry__4_n_0,NLW_voltage0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[30:27]),
        .O(C[30:27]),
        .S({voltage0_carry__4_i_1__6_n_0,voltage0_carry__4_i_2__6_n_0,voltage0_carry__4_i_3__6_n_0,voltage0_carry__4_i_4__6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_1__6
       (.I0(voltage2__93[30]),
        .O(voltage0_carry__4_i_1__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_2__6
       (.I0(voltage2__93[29]),
        .O(voltage0_carry__4_i_2__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_3__6
       (.I0(voltage2__93[28]),
        .O(voltage0_carry__4_i_3__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_4__6
       (.I0(voltage2__93[27]),
        .O(voltage0_carry__4_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__5
       (.CI(voltage0_carry__4_n_0),
        .CO(NLW_voltage0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_voltage0_carry__5_O_UNCONNECTED[3:1],C[31]}),
        .S({1'b0,1'b0,1'b0,voltage0_carry__5_i_1__6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__5_i_1__6
       (.I0(voltage2__93[31]),
        .O(voltage0_carry__5_i_1__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_1__6
       (.I0(voltage2__93[10]),
        .O(voltage0_carry_i_1__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_2__6
       (.I0(voltage2__93[9]),
        .O(voltage0_carry_i_2__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_3
       (.I0(voltage2__93[8]),
        .O(voltage0_carry_i_3_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry
       (.CI(1'b0),
        .CO({voltage1_carry_n_0,NLW_voltage1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry_i_1__0_n_0,voltage1_carry_i_2__0_n_0,voltage1_carry_i_3__0_n_0,voltage1_carry_i_4__0_n_0}),
        .O(NLW_voltage1_carry_O_UNCONNECTED[3:0]),
        .S({voltage1_carry_i_5__0_n_0,voltage1_carry_i_6__0_n_0,voltage1_carry_i_7__0_n_0,voltage1_carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__0
       (.CI(voltage1_carry_n_0),
        .CO({voltage1_carry__0_n_0,NLW_voltage1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__0_i_1__0_n_0,voltage1_carry__0_i_2__0_n_0,voltage1_carry__0_i_3__0_n_0,voltage2__93[9]}),
        .O(NLW_voltage1_carry__0_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__0_i_4__6_n_0,voltage1_carry__0_i_5__6_n_0,voltage1_carry__0_i_6__6_n_0,voltage1_carry__0_i_7__6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_1__0
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_2__0
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_3__0
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_4__6
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_5__6
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_6__6
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_6__6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__0_i_7__6
       (.I0(voltage2__93[8]),
        .I1(voltage2__93[9]),
        .O(voltage1_carry__0_i_7__6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__1
       (.CI(voltage1_carry__0_n_0),
        .CO({voltage1_carry__1_n_0,NLW_voltage1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__1_i_1__0_n_0,voltage1_carry__1_i_2__0_n_0,voltage1_carry__1_i_3__0_n_0,voltage1_carry__1_i_4__0_n_0}),
        .O(NLW_voltage1_carry__1_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__1_i_5__6_n_0,voltage1_carry__1_i_6__6_n_0,voltage1_carry__1_i_7__6_n_0,voltage1_carry__1_i_8__6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_1__0
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_2__0
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_3__0
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_4__0
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_5__6
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_6__6
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_6__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_7__6
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_7__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_8__6
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_8__6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__2
       (.CI(voltage1_carry__1_n_0),
        .CO({load,NLW_voltage1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__2_i_1__6_n_0,voltage1_carry__2_i_2__0_n_0,voltage1_carry__2_i_3__0_n_0,voltage1_carry__2_i_4__0_n_0}),
        .O(NLW_voltage1_carry__2_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__2_i_5__6_n_0,voltage1_carry__2_i_6__6_n_0,voltage1_carry__2_i_7__6_n_0,voltage1_carry__2_i_8__6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__2_i_1__6
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_1__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_2__0
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_3__0
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_4__0
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_5__6
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_6__6
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_6__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_7__6
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_7__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_8__6
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_8__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_1__0
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_2__0
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_3__0
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_4__0
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_5__0
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_6__0
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_7__0
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_8__0
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_8__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry
       (.CI(1'b0),
        .CO({voltage2_carry_n_0,NLW_voltage2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[3:0]),
        .O(voltage2__93[3:0]),
        .S({voltage2_carry_i_1_n_0,voltage2_carry_i_2_n_0,voltage2_carry_i_3_n_0,voltage2_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__0
       (.CI(voltage2_carry_n_0),
        .CO({voltage2_carry__0_n_0,NLW_voltage2_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[7:4]),
        .O(voltage2__93[7:4]),
        .S({voltage2_carry__0_i_1_n_0,voltage2_carry__0_i_2_n_0,voltage2_carry__0_i_3_n_0,voltage2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_1
       (.I0(voltage_reg[7]),
        .I1(sum[7]),
        .O(voltage2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_2
       (.I0(voltage_reg[6]),
        .I1(sum[6]),
        .O(voltage2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_3
       (.I0(voltage_reg[5]),
        .I1(sum[5]),
        .O(voltage2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_4
       (.I0(voltage_reg[4]),
        .I1(sum[4]),
        .O(voltage2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__1
       (.CI(voltage2_carry__0_n_0),
        .CO({voltage2_carry__1_n_0,NLW_voltage2_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[11:8]),
        .O(voltage2__93[11:8]),
        .S({voltage2_carry__1_i_1_n_0,voltage2_carry__1_i_2_n_0,voltage2_carry__1_i_3_n_0,voltage2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_1
       (.I0(voltage_reg[11]),
        .I1(sum[11]),
        .O(voltage2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_2
       (.I0(voltage_reg[10]),
        .I1(sum[10]),
        .O(voltage2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_3
       (.I0(voltage_reg[9]),
        .I1(sum[9]),
        .O(voltage2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_4
       (.I0(voltage_reg[8]),
        .I1(sum[8]),
        .O(voltage2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__2
       (.CI(voltage2_carry__1_n_0),
        .CO({voltage2_carry__2_n_0,NLW_voltage2_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[15:12]),
        .O(voltage2__93[15:12]),
        .S({voltage2_carry__2_i_1_n_0,voltage2_carry__2_i_2_n_0,voltage2_carry__2_i_3_n_0,voltage2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_1
       (.I0(voltage_reg[15]),
        .I1(sum[15]),
        .O(voltage2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_2
       (.I0(voltage_reg[14]),
        .I1(sum[14]),
        .O(voltage2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_3
       (.I0(voltage_reg[13]),
        .I1(sum[13]),
        .O(voltage2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_4
       (.I0(voltage_reg[12]),
        .I1(sum[12]),
        .O(voltage2_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__3
       (.CI(voltage2_carry__2_n_0),
        .CO({voltage2_carry__3_n_0,NLW_voltage2_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[19:16]),
        .O(voltage2__93[19:16]),
        .S({voltage2_carry__3_i_1_n_0,voltage2_carry__3_i_2_n_0,voltage2_carry__3_i_3_n_0,voltage2_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_1
       (.I0(voltage_reg[19]),
        .I1(sum[19]),
        .O(voltage2_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_2
       (.I0(voltage_reg[18]),
        .I1(sum[18]),
        .O(voltage2_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_3
       (.I0(voltage_reg[17]),
        .I1(sum[17]),
        .O(voltage2_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_4
       (.I0(voltage_reg[16]),
        .I1(sum[16]),
        .O(voltage2_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__4
       (.CI(voltage2_carry__3_n_0),
        .CO({voltage2_carry__4_n_0,NLW_voltage2_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[23:20]),
        .O(voltage2__93[23:20]),
        .S({voltage2_carry__4_i_1_n_0,voltage2_carry__4_i_2_n_0,voltage2_carry__4_i_3_n_0,voltage2_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_1
       (.I0(voltage_reg[23]),
        .I1(sum[23]),
        .O(voltage2_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_2
       (.I0(voltage_reg[22]),
        .I1(sum[22]),
        .O(voltage2_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_3
       (.I0(voltage_reg[21]),
        .I1(sum[21]),
        .O(voltage2_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_4
       (.I0(voltage_reg[20]),
        .I1(sum[20]),
        .O(voltage2_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__5
       (.CI(voltage2_carry__4_n_0),
        .CO({voltage2_carry__5_n_0,NLW_voltage2_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[27:24]),
        .O(voltage2__93[27:24]),
        .S({voltage2_carry__5_i_1_n_0,voltage2_carry__5_i_2_n_0,voltage2_carry__5_i_3_n_0,voltage2_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_1
       (.I0(voltage_reg[27]),
        .I1(sum[27]),
        .O(voltage2_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_2
       (.I0(voltage_reg[26]),
        .I1(sum[26]),
        .O(voltage2_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_3
       (.I0(voltage_reg[25]),
        .I1(sum[25]),
        .O(voltage2_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_4
       (.I0(voltage_reg[24]),
        .I1(sum[24]),
        .O(voltage2_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__6
       (.CI(voltage2_carry__5_n_0),
        .CO(NLW_voltage2_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,voltage_reg[30:28]}),
        .O(voltage2__93[31:28]),
        .S({voltage2_carry__6_i_1_n_0,voltage2_carry__6_i_2_n_0,voltage2_carry__6_i_3_n_0,voltage2_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_1
       (.I0(voltage_reg[31]),
        .I1(sum[31]),
        .O(voltage2_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_2
       (.I0(voltage_reg[30]),
        .I1(sum[30]),
        .O(voltage2_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_3
       (.I0(voltage_reg[29]),
        .I1(sum[29]),
        .O(voltage2_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_4
       (.I0(voltage_reg[28]),
        .I1(sum[28]),
        .O(voltage2_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_1
       (.I0(voltage_reg[3]),
        .I1(sum[3]),
        .O(voltage2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_2
       (.I0(voltage_reg[2]),
        .I1(sum[2]),
        .O(voltage2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_3
       (.I0(voltage_reg[1]),
        .I1(sum[1]),
        .O(voltage2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_4
       (.I0(voltage_reg[0]),
        .I1(sum[0]),
        .O(voltage2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_2__0 
       (.I0(sum[3]),
        .I1(load),
        .O(\voltage[0]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_3__0 
       (.I0(sum[2]),
        .I1(load),
        .O(\voltage[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_4__0 
       (.I0(sum[1]),
        .I1(load),
        .O(\voltage[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_5__1 
       (.I0(sum[0]),
        .I1(load),
        .O(\voltage[0]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_6__0 
       (.I0(sum[3]),
        .I1(voltage_reg[3]),
        .I2(load),
        .I3(voltage2__93[3]),
        .O(\voltage[0]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_7__1 
       (.I0(sum[2]),
        .I1(voltage_reg[2]),
        .I2(load),
        .I3(voltage2__93[2]),
        .O(\voltage[0]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_8__0 
       (.I0(sum[1]),
        .I1(voltage_reg[1]),
        .I2(load),
        .I3(voltage2__93[1]),
        .O(\voltage[0]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_9__0 
       (.I0(sum[0]),
        .I1(voltage_reg[0]),
        .I2(load),
        .I3(voltage2__93[0]),
        .O(\voltage[0]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_2__0 
       (.I0(sum[15]),
        .I1(load),
        .O(\voltage[12]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_3__0 
       (.I0(sum[14]),
        .I1(load),
        .O(\voltage[12]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_4__0 
       (.I0(sum[13]),
        .I1(load),
        .O(\voltage[12]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_5__0 
       (.I0(sum[12]),
        .I1(load),
        .O(\voltage[12]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_6 
       (.I0(sum[15]),
        .I1(voltage_reg[15]),
        .I2(load),
        .I3(C[15]),
        .O(\voltage[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_7 
       (.I0(sum[14]),
        .I1(voltage_reg[14]),
        .I2(load),
        .I3(C[14]),
        .O(\voltage[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_8 
       (.I0(sum[13]),
        .I1(voltage_reg[13]),
        .I2(load),
        .I3(C[13]),
        .O(\voltage[12]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_9 
       (.I0(sum[12]),
        .I1(voltage_reg[12]),
        .I2(load),
        .I3(C[12]),
        .O(\voltage[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_2__0 
       (.I0(sum[19]),
        .I1(load),
        .O(\voltage[16]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_3__0 
       (.I0(sum[18]),
        .I1(load),
        .O(\voltage[16]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_4__0 
       (.I0(sum[17]),
        .I1(load),
        .O(\voltage[16]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_5__0 
       (.I0(sum[16]),
        .I1(load),
        .O(\voltage[16]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_6 
       (.I0(sum[19]),
        .I1(voltage_reg[19]),
        .I2(load),
        .I3(C[19]),
        .O(\voltage[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_7 
       (.I0(sum[18]),
        .I1(voltage_reg[18]),
        .I2(load),
        .I3(C[18]),
        .O(\voltage[16]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_8 
       (.I0(sum[17]),
        .I1(voltage_reg[17]),
        .I2(load),
        .I3(C[17]),
        .O(\voltage[16]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_9 
       (.I0(sum[16]),
        .I1(voltage_reg[16]),
        .I2(load),
        .I3(C[16]),
        .O(\voltage[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_2__0 
       (.I0(sum[23]),
        .I1(load),
        .O(\voltage[20]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_3__0 
       (.I0(sum[22]),
        .I1(load),
        .O(\voltage[20]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_4__0 
       (.I0(sum[21]),
        .I1(load),
        .O(\voltage[20]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_5__0 
       (.I0(sum[20]),
        .I1(load),
        .O(\voltage[20]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_6 
       (.I0(sum[23]),
        .I1(voltage_reg[23]),
        .I2(load),
        .I3(C[23]),
        .O(\voltage[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_7 
       (.I0(sum[22]),
        .I1(voltage_reg[22]),
        .I2(load),
        .I3(C[22]),
        .O(\voltage[20]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_8 
       (.I0(sum[21]),
        .I1(voltage_reg[21]),
        .I2(load),
        .I3(C[21]),
        .O(\voltage[20]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_9 
       (.I0(sum[20]),
        .I1(voltage_reg[20]),
        .I2(load),
        .I3(C[20]),
        .O(\voltage[20]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_2__0 
       (.I0(sum[27]),
        .I1(load),
        .O(\voltage[24]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_3__0 
       (.I0(sum[26]),
        .I1(load),
        .O(\voltage[24]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_4__0 
       (.I0(sum[25]),
        .I1(load),
        .O(\voltage[24]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_5__0 
       (.I0(sum[24]),
        .I1(load),
        .O(\voltage[24]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_6 
       (.I0(sum[27]),
        .I1(voltage_reg[27]),
        .I2(load),
        .I3(C[27]),
        .O(\voltage[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_7 
       (.I0(sum[26]),
        .I1(voltage_reg[26]),
        .I2(load),
        .I3(C[26]),
        .O(\voltage[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_8 
       (.I0(sum[25]),
        .I1(voltage_reg[25]),
        .I2(load),
        .I3(C[25]),
        .O(\voltage[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_9 
       (.I0(sum[24]),
        .I1(voltage_reg[24]),
        .I2(load),
        .I3(C[24]),
        .O(\voltage[24]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_2__0 
       (.I0(sum[30]),
        .I1(load),
        .O(\voltage[28]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_3__0 
       (.I0(sum[29]),
        .I1(load),
        .O(\voltage[28]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_4__0 
       (.I0(sum[28]),
        .I1(load),
        .O(\voltage[28]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_5__0 
       (.I0(sum[31]),
        .I1(voltage_reg[31]),
        .I2(load),
        .I3(C[31]),
        .O(\voltage[28]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_6 
       (.I0(sum[30]),
        .I1(voltage_reg[30]),
        .I2(load),
        .I3(C[30]),
        .O(\voltage[28]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_7 
       (.I0(sum[29]),
        .I1(voltage_reg[29]),
        .I2(load),
        .I3(C[29]),
        .O(\voltage[28]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_8 
       (.I0(sum[28]),
        .I1(voltage_reg[28]),
        .I2(load),
        .I3(C[28]),
        .O(\voltage[28]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_2__0 
       (.I0(sum[7]),
        .I1(load),
        .O(\voltage[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_3__0 
       (.I0(sum[6]),
        .I1(load),
        .O(\voltage[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_4__0 
       (.I0(sum[5]),
        .I1(load),
        .O(\voltage[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_5__1 
       (.I0(sum[4]),
        .I1(load),
        .O(\voltage[4]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_6__0 
       (.I0(sum[7]),
        .I1(voltage_reg[7]),
        .I2(load),
        .I3(C[7]),
        .O(\voltage[4]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_7__0 
       (.I0(sum[6]),
        .I1(voltage_reg[6]),
        .I2(load),
        .I3(voltage2__93[6]),
        .O(\voltage[4]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_8__1 
       (.I0(sum[5]),
        .I1(voltage_reg[5]),
        .I2(load),
        .I3(voltage2__93[5]),
        .O(\voltage[4]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_9__0 
       (.I0(sum[4]),
        .I1(voltage_reg[4]),
        .I2(load),
        .I3(voltage2__93[4]),
        .O(\voltage[4]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_2__0 
       (.I0(sum[11]),
        .I1(load),
        .O(\voltage[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_3__0 
       (.I0(sum[10]),
        .I1(load),
        .O(\voltage[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_4__0 
       (.I0(sum[9]),
        .I1(load),
        .O(\voltage[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_5__0 
       (.I0(sum[8]),
        .I1(load),
        .O(\voltage[8]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_6__0 
       (.I0(sum[11]),
        .I1(voltage_reg[11]),
        .I2(load),
        .I3(C[11]),
        .O(\voltage[8]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_7 
       (.I0(sum[10]),
        .I1(voltage_reg[10]),
        .I2(load),
        .I3(C[10]),
        .O(\voltage[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_8 
       (.I0(sum[9]),
        .I1(voltage_reg[9]),
        .I2(load),
        .I3(C[9]),
        .O(\voltage[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_9 
       (.I0(sum[8]),
        .I1(voltage_reg[8]),
        .I2(load),
        .I3(C[8]),
        .O(\voltage[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__0_n_7 ),
        .Q(voltage_reg[0]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\voltage_reg[0]_i_1__0_n_0 ,\NLW_voltage_reg[0]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[0]_i_2__0_n_0 ,\voltage[0]_i_3__0_n_0 ,\voltage[0]_i_4__0_n_0 ,\voltage[0]_i_5__1_n_0 }),
        .O({\voltage_reg[0]_i_1__0_n_4 ,\voltage_reg[0]_i_1__0_n_5 ,\voltage_reg[0]_i_1__0_n_6 ,\voltage_reg[0]_i_1__0_n_7 }),
        .S({\voltage[0]_i_6__0_n_0 ,\voltage[0]_i_7__1_n_0 ,\voltage[0]_i_8__0_n_0 ,\voltage[0]_i_9__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__0_n_5 ),
        .Q(voltage_reg[10]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__0_n_4 ),
        .Q(voltage_reg[11]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__0_n_7 ),
        .Q(voltage_reg[12]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[12]_i_1__0 
       (.CI(\voltage_reg[8]_i_1__0_n_0 ),
        .CO({\voltage_reg[12]_i_1__0_n_0 ,\NLW_voltage_reg[12]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[12]_i_2__0_n_0 ,\voltage[12]_i_3__0_n_0 ,\voltage[12]_i_4__0_n_0 ,\voltage[12]_i_5__0_n_0 }),
        .O({\voltage_reg[12]_i_1__0_n_4 ,\voltage_reg[12]_i_1__0_n_5 ,\voltage_reg[12]_i_1__0_n_6 ,\voltage_reg[12]_i_1__0_n_7 }),
        .S({\voltage[12]_i_6_n_0 ,\voltage[12]_i_7_n_0 ,\voltage[12]_i_8_n_0 ,\voltage[12]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__0_n_6 ),
        .Q(voltage_reg[13]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__0_n_5 ),
        .Q(voltage_reg[14]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__0_n_4 ),
        .Q(voltage_reg[15]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__0_n_7 ),
        .Q(voltage_reg[16]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[16]_i_1__0 
       (.CI(\voltage_reg[12]_i_1__0_n_0 ),
        .CO({\voltage_reg[16]_i_1__0_n_0 ,\NLW_voltage_reg[16]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[16]_i_2__0_n_0 ,\voltage[16]_i_3__0_n_0 ,\voltage[16]_i_4__0_n_0 ,\voltage[16]_i_5__0_n_0 }),
        .O({\voltage_reg[16]_i_1__0_n_4 ,\voltage_reg[16]_i_1__0_n_5 ,\voltage_reg[16]_i_1__0_n_6 ,\voltage_reg[16]_i_1__0_n_7 }),
        .S({\voltage[16]_i_6_n_0 ,\voltage[16]_i_7_n_0 ,\voltage[16]_i_8_n_0 ,\voltage[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__0_n_6 ),
        .Q(voltage_reg[17]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__0_n_5 ),
        .Q(voltage_reg[18]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__0_n_4 ),
        .Q(voltage_reg[19]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__0_n_6 ),
        .Q(voltage_reg[1]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__0_n_7 ),
        .Q(voltage_reg[20]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[20]_i_1__0 
       (.CI(\voltage_reg[16]_i_1__0_n_0 ),
        .CO({\voltage_reg[20]_i_1__0_n_0 ,\NLW_voltage_reg[20]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[20]_i_2__0_n_0 ,\voltage[20]_i_3__0_n_0 ,\voltage[20]_i_4__0_n_0 ,\voltage[20]_i_5__0_n_0 }),
        .O({\voltage_reg[20]_i_1__0_n_4 ,\voltage_reg[20]_i_1__0_n_5 ,\voltage_reg[20]_i_1__0_n_6 ,\voltage_reg[20]_i_1__0_n_7 }),
        .S({\voltage[20]_i_6_n_0 ,\voltage[20]_i_7_n_0 ,\voltage[20]_i_8_n_0 ,\voltage[20]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__0_n_6 ),
        .Q(voltage_reg[21]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__0_n_5 ),
        .Q(voltage_reg[22]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__0_n_4 ),
        .Q(voltage_reg[23]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__0_n_7 ),
        .Q(voltage_reg[24]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[24]_i_1__0 
       (.CI(\voltage_reg[20]_i_1__0_n_0 ),
        .CO({\voltage_reg[24]_i_1__0_n_0 ,\NLW_voltage_reg[24]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[24]_i_2__0_n_0 ,\voltage[24]_i_3__0_n_0 ,\voltage[24]_i_4__0_n_0 ,\voltage[24]_i_5__0_n_0 }),
        .O({\voltage_reg[24]_i_1__0_n_4 ,\voltage_reg[24]_i_1__0_n_5 ,\voltage_reg[24]_i_1__0_n_6 ,\voltage_reg[24]_i_1__0_n_7 }),
        .S({\voltage[24]_i_6_n_0 ,\voltage[24]_i_7_n_0 ,\voltage[24]_i_8_n_0 ,\voltage[24]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__0_n_6 ),
        .Q(voltage_reg[25]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__0_n_5 ),
        .Q(voltage_reg[26]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__0_n_4 ),
        .Q(voltage_reg[27]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__0_n_7 ),
        .Q(voltage_reg[28]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[28]_i_1__0 
       (.CI(\voltage_reg[24]_i_1__0_n_0 ),
        .CO(\NLW_voltage_reg[28]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\voltage[28]_i_2__0_n_0 ,\voltage[28]_i_3__0_n_0 ,\voltage[28]_i_4__0_n_0 }),
        .O({\voltage_reg[28]_i_1__0_n_4 ,\voltage_reg[28]_i_1__0_n_5 ,\voltage_reg[28]_i_1__0_n_6 ,\voltage_reg[28]_i_1__0_n_7 }),
        .S({\voltage[28]_i_5__0_n_0 ,\voltage[28]_i_6_n_0 ,\voltage[28]_i_7_n_0 ,\voltage[28]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__0_n_6 ),
        .Q(voltage_reg[29]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__0_n_5 ),
        .Q(voltage_reg[2]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__0_n_5 ),
        .Q(voltage_reg[30]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__0_n_4 ),
        .Q(voltage_reg[31]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__0_n_4 ),
        .Q(voltage_reg[3]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__0_n_7 ),
        .Q(voltage_reg[4]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[4]_i_1__0 
       (.CI(\voltage_reg[0]_i_1__0_n_0 ),
        .CO({\voltage_reg[4]_i_1__0_n_0 ,\NLW_voltage_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[4]_i_2__0_n_0 ,\voltage[4]_i_3__0_n_0 ,\voltage[4]_i_4__0_n_0 ,\voltage[4]_i_5__1_n_0 }),
        .O({\voltage_reg[4]_i_1__0_n_4 ,\voltage_reg[4]_i_1__0_n_5 ,\voltage_reg[4]_i_1__0_n_6 ,\voltage_reg[4]_i_1__0_n_7 }),
        .S({\voltage[4]_i_6__0_n_0 ,\voltage[4]_i_7__0_n_0 ,\voltage[4]_i_8__1_n_0 ,\voltage[4]_i_9__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__0_n_6 ),
        .Q(voltage_reg[5]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__0_n_5 ),
        .Q(voltage_reg[6]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__0_n_4 ),
        .Q(voltage_reg[7]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__0_n_7 ),
        .Q(voltage_reg[8]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[8]_i_1__0 
       (.CI(\voltage_reg[4]_i_1__0_n_0 ),
        .CO({\voltage_reg[8]_i_1__0_n_0 ,\NLW_voltage_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[8]_i_2__0_n_0 ,\voltage[8]_i_3__0_n_0 ,\voltage[8]_i_4__0_n_0 ,\voltage[8]_i_5__0_n_0 }),
        .O({\voltage_reg[8]_i_1__0_n_4 ,\voltage_reg[8]_i_1__0_n_5 ,\voltage_reg[8]_i_1__0_n_6 ,\voltage_reg[8]_i_1__0_n_7 }),
        .S({\voltage[8]_i_6__0_n_0 ,\voltage[8]_i_7_n_0 ,\voltage[8]_i_8_n_0 ,\voltage[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__0_n_6 ),
        .Q(voltage_reg[9]),
        .R(ly2_delay));
endmodule

(* ORIG_REF_NAME = "neuron" *) 
module neuron__parameterized1
   (h_2,
    CO,
    D,
    \tmp_sum_1_reg[5] ,
    Q,
    clk_o_OBUF_BUFG,
    DI,
    S,
    \tmp_sum_1_2_reg[3] ,
    ly2_delay,
    \tmp_sum_b_0_1_2_reg[10]_0 ,
    \voltage_reg[3]_0 ,
    sum,
    \tmp_sum_1_2_reg[0]_0 ,
    \tmp_sum_b_0_1_2_reg[6]_0 );
  output h_2;
  output [0:0]CO;
  output [0:0]D;
  output [2:0]\tmp_sum_1_reg[5] ;
  output [2:0]Q;
  input clk_o_OBUF_BUFG;
  input [2:0]DI;
  input [1:0]S;
  input [0:0]\tmp_sum_1_2_reg[3] ;
  input [0:0]ly2_delay;
  input [0:0]\tmp_sum_b_0_1_2_reg[10]_0 ;
  input [0:0]\voltage_reg[3]_0 ;
  input [0:0]sum;
  input [0:0]\tmp_sum_1_2_reg[0]_0 ;
  input [4:0]\tmp_sum_b_0_1_2_reg[6]_0 ;

  wire [31:7]C;
  wire [0:0]CO;
  wire [0:0]D;
  wire [2:0]DI;
  wire [2:0]Q;
  wire [1:0]S;
  wire clk_o_OBUF_BUFG;
  wire h_2;
  wire [0:0]ly2_delay;
  wire [0:0]sum;
  wire [31:0]sum_0;
  wire [28:0]tmp_sum_1_2;
  wire tmp_sum_1_20__1_carry__0_n_7;
  wire tmp_sum_1_20__1_carry_n_0;
  wire tmp_sum_1_20__1_carry_n_4;
  wire tmp_sum_1_20__1_carry_n_5;
  wire tmp_sum_1_20__1_carry_n_6;
  wire [0:0]\tmp_sum_1_2_reg[0]_0 ;
  wire [0:0]\tmp_sum_1_2_reg[3] ;
  wire [2:0]\tmp_sum_1_reg[5] ;
  wire [31:0]tmp_sum_b_0_1_2;
  wire [0:0]\tmp_sum_b_0_1_2_reg[10]_0 ;
  wire \tmp_sum_b_0_1_2_reg[10]_i_1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[10]_i_1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[10]_i_1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[10]_i_1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[10]_i_1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[14]_i_1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[14]_i_1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[14]_i_1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[14]_i_1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[14]_i_1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[18]_i_1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[18]_i_1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[18]_i_1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[18]_i_1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[18]_i_1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[22]_i_1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[22]_i_1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[22]_i_1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[22]_i_1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[22]_i_1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[26]_i_1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[26]_i_1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[26]_i_1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[26]_i_1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[26]_i_1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[30]_i_1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[30]_i_1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[30]_i_1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[30]_i_1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[30]_i_1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[31]_i_1__0_n_7 ;
  wire [4:0]\tmp_sum_b_0_1_2_reg[6]_0 ;
  wire voltage0_carry__0_i_1__5_n_0;
  wire voltage0_carry__0_i_2__5_n_0;
  wire voltage0_carry__0_i_3__5_n_0;
  wire voltage0_carry__0_i_4__5_n_0;
  wire voltage0_carry__0_n_0;
  wire voltage0_carry__1_i_1__5_n_0;
  wire voltage0_carry__1_i_2__5_n_0;
  wire voltage0_carry__1_i_3__5_n_0;
  wire voltage0_carry__1_i_4__5_n_0;
  wire voltage0_carry__1_n_0;
  wire voltage0_carry__2_i_1__5_n_0;
  wire voltage0_carry__2_i_2__5_n_0;
  wire voltage0_carry__2_i_3__5_n_0;
  wire voltage0_carry__2_i_4__5_n_0;
  wire voltage0_carry__2_n_0;
  wire voltage0_carry__3_i_1__5_n_0;
  wire voltage0_carry__3_i_2__5_n_0;
  wire voltage0_carry__3_i_3__5_n_0;
  wire voltage0_carry__3_i_4__5_n_0;
  wire voltage0_carry__3_n_0;
  wire voltage0_carry__4_i_1__5_n_0;
  wire voltage0_carry__4_i_2__5_n_0;
  wire voltage0_carry__4_i_3__5_n_0;
  wire voltage0_carry__4_i_4__5_n_0;
  wire voltage0_carry__4_n_0;
  wire voltage0_carry__5_i_1__5_n_0;
  wire voltage0_carry_i_1__5_n_0;
  wire voltage0_carry_i_2__5_n_0;
  wire voltage0_carry_i_3__0_n_0;
  wire voltage0_carry_n_0;
  wire voltage1_carry__0_i_1__1_n_0;
  wire voltage1_carry__0_i_2__1_n_0;
  wire voltage1_carry__0_i_3__1_n_0;
  wire voltage1_carry__0_i_4__5_n_0;
  wire voltage1_carry__0_i_5__5_n_0;
  wire voltage1_carry__0_i_6__5_n_0;
  wire voltage1_carry__0_i_7__5_n_0;
  wire voltage1_carry__0_n_0;
  wire voltage1_carry__1_i_1__1_n_0;
  wire voltage1_carry__1_i_2__1_n_0;
  wire voltage1_carry__1_i_3__1_n_0;
  wire voltage1_carry__1_i_4__1_n_0;
  wire voltage1_carry__1_i_5__5_n_0;
  wire voltage1_carry__1_i_6__5_n_0;
  wire voltage1_carry__1_i_7__5_n_0;
  wire voltage1_carry__1_i_8__5_n_0;
  wire voltage1_carry__1_n_0;
  wire voltage1_carry__2_i_1__5_n_0;
  wire voltage1_carry__2_i_2__1_n_0;
  wire voltage1_carry__2_i_3__1_n_0;
  wire voltage1_carry__2_i_4__1_n_0;
  wire voltage1_carry__2_i_5__5_n_0;
  wire voltage1_carry__2_i_6__5_n_0;
  wire voltage1_carry__2_i_7__5_n_0;
  wire voltage1_carry__2_i_8__5_n_0;
  wire voltage1_carry_i_1__1_n_0;
  wire voltage1_carry_i_2__1_n_0;
  wire voltage1_carry_i_3__1_n_0;
  wire voltage1_carry_i_4__1_n_0;
  wire voltage1_carry_i_5__1_n_0;
  wire voltage1_carry_i_6__1_n_0;
  wire voltage1_carry_i_7__1_n_0;
  wire voltage1_carry_i_8__1_n_0;
  wire voltage1_carry_n_0;
  wire [31:0]voltage2__93;
  wire voltage2_carry__0_i_1__0_n_0;
  wire voltage2_carry__0_i_2__0_n_0;
  wire voltage2_carry__0_i_3__0_n_0;
  wire voltage2_carry__0_i_4__0_n_0;
  wire voltage2_carry__0_n_0;
  wire voltage2_carry__1_i_1__0_n_0;
  wire voltage2_carry__1_i_2__0_n_0;
  wire voltage2_carry__1_i_3__0_n_0;
  wire voltage2_carry__1_i_4__0_n_0;
  wire voltage2_carry__1_n_0;
  wire voltage2_carry__2_i_1__0_n_0;
  wire voltage2_carry__2_i_2__0_n_0;
  wire voltage2_carry__2_i_3__0_n_0;
  wire voltage2_carry__2_i_4__0_n_0;
  wire voltage2_carry__2_n_0;
  wire voltage2_carry__3_i_1__0_n_0;
  wire voltage2_carry__3_i_2__0_n_0;
  wire voltage2_carry__3_i_3__0_n_0;
  wire voltage2_carry__3_i_4__0_n_0;
  wire voltage2_carry__3_n_0;
  wire voltage2_carry__4_i_1__0_n_0;
  wire voltage2_carry__4_i_2__0_n_0;
  wire voltage2_carry__4_i_3__0_n_0;
  wire voltage2_carry__4_i_4__0_n_0;
  wire voltage2_carry__4_n_0;
  wire voltage2_carry__5_i_1__0_n_0;
  wire voltage2_carry__5_i_2__0_n_0;
  wire voltage2_carry__5_i_3__0_n_0;
  wire voltage2_carry__5_i_4__0_n_0;
  wire voltage2_carry__5_n_0;
  wire voltage2_carry__6_i_1__0_n_0;
  wire voltage2_carry__6_i_2__0_n_0;
  wire voltage2_carry__6_i_3__0_n_0;
  wire voltage2_carry__6_i_4__0_n_0;
  wire voltage2_carry_i_1__0_n_0;
  wire voltage2_carry_i_2__0_n_0;
  wire voltage2_carry_i_3__0_n_0;
  wire voltage2_carry_i_4__0_n_0;
  wire voltage2_carry_n_0;
  wire \voltage[0]_i_2__1_n_0 ;
  wire \voltage[0]_i_4__1_n_0 ;
  wire \voltage[0]_i_5__2_n_0 ;
  wire \voltage[0]_i_6__1_n_0 ;
  wire \voltage[0]_i_7__2_n_0 ;
  wire \voltage[0]_i_8__1_n_0 ;
  wire \voltage[0]_i_9__1_n_0 ;
  wire \voltage[12]_i_2__1_n_0 ;
  wire \voltage[12]_i_3__1_n_0 ;
  wire \voltage[12]_i_4__1_n_0 ;
  wire \voltage[12]_i_5__1_n_0 ;
  wire \voltage[12]_i_6__0_n_0 ;
  wire \voltage[12]_i_7__0_n_0 ;
  wire \voltage[12]_i_8__0_n_0 ;
  wire \voltage[12]_i_9__0_n_0 ;
  wire \voltage[16]_i_2__1_n_0 ;
  wire \voltage[16]_i_3__1_n_0 ;
  wire \voltage[16]_i_4__1_n_0 ;
  wire \voltage[16]_i_5__1_n_0 ;
  wire \voltage[16]_i_6__0_n_0 ;
  wire \voltage[16]_i_7__0_n_0 ;
  wire \voltage[16]_i_8__0_n_0 ;
  wire \voltage[16]_i_9__0_n_0 ;
  wire \voltage[20]_i_2__1_n_0 ;
  wire \voltage[20]_i_3__1_n_0 ;
  wire \voltage[20]_i_4__1_n_0 ;
  wire \voltage[20]_i_5__1_n_0 ;
  wire \voltage[20]_i_6__0_n_0 ;
  wire \voltage[20]_i_7__0_n_0 ;
  wire \voltage[20]_i_8__0_n_0 ;
  wire \voltage[20]_i_9__0_n_0 ;
  wire \voltage[24]_i_2__1_n_0 ;
  wire \voltage[24]_i_3__1_n_0 ;
  wire \voltage[24]_i_4__1_n_0 ;
  wire \voltage[24]_i_5__1_n_0 ;
  wire \voltage[24]_i_6__0_n_0 ;
  wire \voltage[24]_i_7__0_n_0 ;
  wire \voltage[24]_i_8__0_n_0 ;
  wire \voltage[24]_i_9__0_n_0 ;
  wire \voltage[28]_i_2__1_n_0 ;
  wire \voltage[28]_i_3__1_n_0 ;
  wire \voltage[28]_i_4__1_n_0 ;
  wire \voltage[28]_i_5__1_n_0 ;
  wire \voltage[28]_i_6__0_n_0 ;
  wire \voltage[28]_i_7__0_n_0 ;
  wire \voltage[28]_i_8__0_n_0 ;
  wire \voltage[4]_i_2__1_n_0 ;
  wire \voltage[4]_i_3__1_n_0 ;
  wire \voltage[4]_i_4__1_n_0 ;
  wire \voltage[4]_i_5__2_n_0 ;
  wire \voltage[4]_i_6__1_n_0 ;
  wire \voltage[4]_i_7__1_n_0 ;
  wire \voltage[4]_i_8__2_n_0 ;
  wire \voltage[4]_i_9__1_n_0 ;
  wire \voltage[8]_i_2__1_n_0 ;
  wire \voltage[8]_i_3__1_n_0 ;
  wire \voltage[8]_i_4__1_n_0 ;
  wire \voltage[8]_i_5__1_n_0 ;
  wire \voltage[8]_i_6__1_n_0 ;
  wire \voltage[8]_i_7__0_n_0 ;
  wire \voltage[8]_i_8__0_n_0 ;
  wire \voltage[8]_i_9__0_n_0 ;
  wire [31:0]voltage_reg;
  wire \voltage_reg[0]_i_1__1_n_0 ;
  wire \voltage_reg[0]_i_1__1_n_4 ;
  wire \voltage_reg[0]_i_1__1_n_5 ;
  wire \voltage_reg[0]_i_1__1_n_6 ;
  wire \voltage_reg[0]_i_1__1_n_7 ;
  wire \voltage_reg[12]_i_1__1_n_0 ;
  wire \voltage_reg[12]_i_1__1_n_4 ;
  wire \voltage_reg[12]_i_1__1_n_5 ;
  wire \voltage_reg[12]_i_1__1_n_6 ;
  wire \voltage_reg[12]_i_1__1_n_7 ;
  wire \voltage_reg[16]_i_1__1_n_0 ;
  wire \voltage_reg[16]_i_1__1_n_4 ;
  wire \voltage_reg[16]_i_1__1_n_5 ;
  wire \voltage_reg[16]_i_1__1_n_6 ;
  wire \voltage_reg[16]_i_1__1_n_7 ;
  wire \voltage_reg[20]_i_1__1_n_0 ;
  wire \voltage_reg[20]_i_1__1_n_4 ;
  wire \voltage_reg[20]_i_1__1_n_5 ;
  wire \voltage_reg[20]_i_1__1_n_6 ;
  wire \voltage_reg[20]_i_1__1_n_7 ;
  wire \voltage_reg[24]_i_1__1_n_0 ;
  wire \voltage_reg[24]_i_1__1_n_4 ;
  wire \voltage_reg[24]_i_1__1_n_5 ;
  wire \voltage_reg[24]_i_1__1_n_6 ;
  wire \voltage_reg[24]_i_1__1_n_7 ;
  wire \voltage_reg[28]_i_1__1_n_4 ;
  wire \voltage_reg[28]_i_1__1_n_5 ;
  wire \voltage_reg[28]_i_1__1_n_6 ;
  wire \voltage_reg[28]_i_1__1_n_7 ;
  wire [0:0]\voltage_reg[3]_0 ;
  wire \voltage_reg[4]_i_1__1_n_0 ;
  wire \voltage_reg[4]_i_1__1_n_4 ;
  wire \voltage_reg[4]_i_1__1_n_5 ;
  wire \voltage_reg[4]_i_1__1_n_6 ;
  wire \voltage_reg[4]_i_1__1_n_7 ;
  wire \voltage_reg[8]_i_1__1_n_0 ;
  wire \voltage_reg[8]_i_1__1_n_4 ;
  wire \voltage_reg[8]_i_1__1_n_5 ;
  wire \voltage_reg[8]_i_1__1_n_6 ;
  wire \voltage_reg[8]_i_1__1_n_7 ;
  wire [2:0]NLW_tmp_sum_1_20__0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_tmp_sum_1_20__0_carry_O_UNCONNECTED;
  wire [2:0]NLW_tmp_sum_1_20__1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_tmp_sum_1_20__1_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_tmp_sum_1_20__1_carry__0_O_UNCONNECTED;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[10]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[14]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[18]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[22]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[26]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__0_O_UNCONNECTED ;
  wire [2:0]NLW_voltage0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_voltage0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_voltage0_carry__5_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_voltage2_carry__6_CO_UNCONNECTED;
  wire [2:0]\NLW_voltage_reg[0]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[12]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[16]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[20]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[24]_i_1__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_voltage_reg[28]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[4]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[8]_i_1__1_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    spike_out_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(CO),
        .Q(h_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[0]),
        .Q(sum_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[10]),
        .Q(sum_0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[11]),
        .Q(sum_0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[12]),
        .Q(sum_0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[13]),
        .Q(sum_0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[14]),
        .Q(sum_0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[15]),
        .Q(sum_0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[16]),
        .Q(sum_0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[17]),
        .Q(sum_0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[18]),
        .Q(sum_0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[19]),
        .Q(sum_0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[1]),
        .Q(sum_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[20]),
        .Q(sum_0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[21]),
        .Q(sum_0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[22]),
        .Q(sum_0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[23]),
        .Q(sum_0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[24]),
        .Q(sum_0[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[25]),
        .Q(sum_0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[26]),
        .Q(sum_0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[27]),
        .Q(sum_0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[28]),
        .Q(sum_0[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[29]),
        .Q(sum_0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[30]),
        .Q(sum_0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[31]),
        .Q(sum_0[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[3]),
        .Q(sum_0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[4]),
        .Q(sum_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[5]),
        .Q(sum_0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[6]),
        .Q(sum_0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[7]),
        .Q(sum_0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[8]),
        .Q(sum_0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[9]),
        .Q(sum_0[9]),
        .R(1'b0));
  CARRY4 tmp_sum_1_20__0_carry
       (.CI(1'b0),
        .CO({\tmp_sum_1_reg[5] [2],NLW_tmp_sum_1_20__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI[0]}),
        .O({NLW_tmp_sum_1_20__0_carry_O_UNCONNECTED[3],\tmp_sum_1_reg[5] [1:0],NLW_tmp_sum_1_20__0_carry_O_UNCONNECTED[0]}),
        .S({1'b1,DI[1],DI[1],\tmp_sum_1_2_reg[3] }));
  CARRY4 tmp_sum_1_20__1_carry
       (.CI(1'b0),
        .CO({tmp_sum_1_20__1_carry_n_0,NLW_tmp_sum_1_20__1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({DI,DI[0]}),
        .O({tmp_sum_1_20__1_carry_n_4,tmp_sum_1_20__1_carry_n_5,tmp_sum_1_20__1_carry_n_6,D}),
        .S({S[1],DI[1:0],S[0]}));
  CARRY4 tmp_sum_1_20__1_carry__0
       (.CI(tmp_sum_1_20__1_carry_n_0),
        .CO(NLW_tmp_sum_1_20__1_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tmp_sum_1_20__1_carry__0_O_UNCONNECTED[3:1],tmp_sum_1_20__1_carry__0_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[0]_0 ),
        .Q(tmp_sum_1_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20__1_carry__0_n_7),
        .Q(tmp_sum_1_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20__1_carry_n_6),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20__1_carry_n_5),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20__1_carry_n_4),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_2[0]),
        .Q(tmp_sum_b_0_1_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[10]_i_1_n_4 ),
        .Q(tmp_sum_b_0_1_2[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[10]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[10]_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[10]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[10]_i_1_n_4 ,\tmp_sum_b_0_1_2_reg[10]_i_1_n_5 ,\tmp_sum_b_0_1_2_reg[10]_i_1_n_6 ,\tmp_sum_b_0_1_2_reg[10]_i_1_n_7 }),
        .S({tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[14]_i_1_n_7 ),
        .Q(tmp_sum_b_0_1_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[14]_i_1_n_6 ),
        .Q(tmp_sum_b_0_1_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[14]_i_1_n_5 ),
        .Q(tmp_sum_b_0_1_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[14]_i_1_n_4 ),
        .Q(tmp_sum_b_0_1_2[14]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[14]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[10]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[14]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[14]_i_1_n_4 ,\tmp_sum_b_0_1_2_reg[14]_i_1_n_5 ,\tmp_sum_b_0_1_2_reg[14]_i_1_n_6 ,\tmp_sum_b_0_1_2_reg[14]_i_1_n_7 }),
        .S({tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[18]_i_1_n_7 ),
        .Q(tmp_sum_b_0_1_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[18]_i_1_n_6 ),
        .Q(tmp_sum_b_0_1_2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[18]_i_1_n_5 ),
        .Q(tmp_sum_b_0_1_2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[18]_i_1_n_4 ),
        .Q(tmp_sum_b_0_1_2[18]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[18]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[14]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[18]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[18]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[18]_i_1_n_4 ,\tmp_sum_b_0_1_2_reg[18]_i_1_n_5 ,\tmp_sum_b_0_1_2_reg[18]_i_1_n_6 ,\tmp_sum_b_0_1_2_reg[18]_i_1_n_7 }),
        .S({tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[22]_i_1_n_7 ),
        .Q(tmp_sum_b_0_1_2[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[6]_0 [0]),
        .Q(tmp_sum_b_0_1_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[22]_i_1_n_6 ),
        .Q(tmp_sum_b_0_1_2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[22]_i_1_n_5 ),
        .Q(tmp_sum_b_0_1_2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[22]_i_1_n_4 ),
        .Q(tmp_sum_b_0_1_2[22]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[22]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[18]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[22]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[22]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[22]_i_1_n_4 ,\tmp_sum_b_0_1_2_reg[22]_i_1_n_5 ,\tmp_sum_b_0_1_2_reg[22]_i_1_n_6 ,\tmp_sum_b_0_1_2_reg[22]_i_1_n_7 }),
        .S({tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[26]_i_1_n_7 ),
        .Q(tmp_sum_b_0_1_2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[26]_i_1_n_6 ),
        .Q(tmp_sum_b_0_1_2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[26]_i_1_n_5 ),
        .Q(tmp_sum_b_0_1_2[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[26]_i_1_n_4 ),
        .Q(tmp_sum_b_0_1_2[26]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[26]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[22]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[26]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[26]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[26]_i_1_n_4 ,\tmp_sum_b_0_1_2_reg[26]_i_1_n_5 ,\tmp_sum_b_0_1_2_reg[26]_i_1_n_6 ,\tmp_sum_b_0_1_2_reg[26]_i_1_n_7 }),
        .S({tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[30]_i_1_n_7 ),
        .Q(tmp_sum_b_0_1_2[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[30]_i_1_n_6 ),
        .Q(tmp_sum_b_0_1_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[30]_i_1_n_5 ),
        .Q(tmp_sum_b_0_1_2[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[30]_i_1_n_4 ),
        .Q(tmp_sum_b_0_1_2[30]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[30]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[26]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[30]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[30]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[30]_i_1_n_4 ,\tmp_sum_b_0_1_2_reg[30]_i_1_n_5 ,\tmp_sum_b_0_1_2_reg[30]_i_1_n_6 ,\tmp_sum_b_0_1_2_reg[30]_i_1_n_7 }),
        .S({tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_i_1__0_n_7 ),
        .Q(tmp_sum_b_0_1_2[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[31]_i_1__0 
       (.CI(\tmp_sum_b_0_1_2_reg[30]_i_1_n_0 ),
        .CO(\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__0_O_UNCONNECTED [3:1],\tmp_sum_b_0_1_2_reg[31]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,tmp_sum_1_2[28]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[6]_0 [1]),
        .Q(tmp_sum_b_0_1_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[6]_0 [2]),
        .Q(tmp_sum_b_0_1_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[6]_0 [3]),
        .Q(tmp_sum_b_0_1_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[6]_0 [4]),
        .Q(tmp_sum_b_0_1_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[10]_i_1_n_7 ),
        .Q(tmp_sum_b_0_1_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[10]_i_1_n_6 ),
        .Q(tmp_sum_b_0_1_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[10]_i_1_n_5 ),
        .Q(tmp_sum_b_0_1_2[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 voltage0_carry
       (.CI(1'b0),
        .CO({voltage0_carry_n_0,NLW_voltage0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage2__93[10:8],1'b0}),
        .O(C[10:7]),
        .S({voltage0_carry_i_1__5_n_0,voltage0_carry_i_2__5_n_0,voltage0_carry_i_3__0_n_0,voltage2__93[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__0
       (.CI(voltage0_carry_n_0),
        .CO({voltage0_carry__0_n_0,NLW_voltage0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[14:11]),
        .O(C[14:11]),
        .S({voltage0_carry__0_i_1__5_n_0,voltage0_carry__0_i_2__5_n_0,voltage0_carry__0_i_3__5_n_0,voltage0_carry__0_i_4__5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_1__5
       (.I0(voltage2__93[14]),
        .O(voltage0_carry__0_i_1__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_2__5
       (.I0(voltage2__93[13]),
        .O(voltage0_carry__0_i_2__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_3__5
       (.I0(voltage2__93[12]),
        .O(voltage0_carry__0_i_3__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_4__5
       (.I0(voltage2__93[11]),
        .O(voltage0_carry__0_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__1
       (.CI(voltage0_carry__0_n_0),
        .CO({voltage0_carry__1_n_0,NLW_voltage0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[18:15]),
        .O(C[18:15]),
        .S({voltage0_carry__1_i_1__5_n_0,voltage0_carry__1_i_2__5_n_0,voltage0_carry__1_i_3__5_n_0,voltage0_carry__1_i_4__5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_1__5
       (.I0(voltage2__93[18]),
        .O(voltage0_carry__1_i_1__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_2__5
       (.I0(voltage2__93[17]),
        .O(voltage0_carry__1_i_2__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_3__5
       (.I0(voltage2__93[16]),
        .O(voltage0_carry__1_i_3__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_4__5
       (.I0(voltage2__93[15]),
        .O(voltage0_carry__1_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__2
       (.CI(voltage0_carry__1_n_0),
        .CO({voltage0_carry__2_n_0,NLW_voltage0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[22:19]),
        .O(C[22:19]),
        .S({voltage0_carry__2_i_1__5_n_0,voltage0_carry__2_i_2__5_n_0,voltage0_carry__2_i_3__5_n_0,voltage0_carry__2_i_4__5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_1__5
       (.I0(voltage2__93[22]),
        .O(voltage0_carry__2_i_1__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_2__5
       (.I0(voltage2__93[21]),
        .O(voltage0_carry__2_i_2__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_3__5
       (.I0(voltage2__93[20]),
        .O(voltage0_carry__2_i_3__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_4__5
       (.I0(voltage2__93[19]),
        .O(voltage0_carry__2_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__3
       (.CI(voltage0_carry__2_n_0),
        .CO({voltage0_carry__3_n_0,NLW_voltage0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[26:23]),
        .O(C[26:23]),
        .S({voltage0_carry__3_i_1__5_n_0,voltage0_carry__3_i_2__5_n_0,voltage0_carry__3_i_3__5_n_0,voltage0_carry__3_i_4__5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_1__5
       (.I0(voltage2__93[26]),
        .O(voltage0_carry__3_i_1__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_2__5
       (.I0(voltage2__93[25]),
        .O(voltage0_carry__3_i_2__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_3__5
       (.I0(voltage2__93[24]),
        .O(voltage0_carry__3_i_3__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_4__5
       (.I0(voltage2__93[23]),
        .O(voltage0_carry__3_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__4
       (.CI(voltage0_carry__3_n_0),
        .CO({voltage0_carry__4_n_0,NLW_voltage0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[30:27]),
        .O(C[30:27]),
        .S({voltage0_carry__4_i_1__5_n_0,voltage0_carry__4_i_2__5_n_0,voltage0_carry__4_i_3__5_n_0,voltage0_carry__4_i_4__5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_1__5
       (.I0(voltage2__93[30]),
        .O(voltage0_carry__4_i_1__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_2__5
       (.I0(voltage2__93[29]),
        .O(voltage0_carry__4_i_2__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_3__5
       (.I0(voltage2__93[28]),
        .O(voltage0_carry__4_i_3__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_4__5
       (.I0(voltage2__93[27]),
        .O(voltage0_carry__4_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__5
       (.CI(voltage0_carry__4_n_0),
        .CO(NLW_voltage0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_voltage0_carry__5_O_UNCONNECTED[3:1],C[31]}),
        .S({1'b0,1'b0,1'b0,voltage0_carry__5_i_1__5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__5_i_1__5
       (.I0(voltage2__93[31]),
        .O(voltage0_carry__5_i_1__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_1__5
       (.I0(voltage2__93[10]),
        .O(voltage0_carry_i_1__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_2__5
       (.I0(voltage2__93[9]),
        .O(voltage0_carry_i_2__5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_3__0
       (.I0(voltage2__93[8]),
        .O(voltage0_carry_i_3__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry
       (.CI(1'b0),
        .CO({voltage1_carry_n_0,NLW_voltage1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry_i_1__1_n_0,voltage1_carry_i_2__1_n_0,voltage1_carry_i_3__1_n_0,voltage1_carry_i_4__1_n_0}),
        .O(NLW_voltage1_carry_O_UNCONNECTED[3:0]),
        .S({voltage1_carry_i_5__1_n_0,voltage1_carry_i_6__1_n_0,voltage1_carry_i_7__1_n_0,voltage1_carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__0
       (.CI(voltage1_carry_n_0),
        .CO({voltage1_carry__0_n_0,NLW_voltage1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__0_i_1__1_n_0,voltage1_carry__0_i_2__1_n_0,voltage1_carry__0_i_3__1_n_0,voltage2__93[9]}),
        .O(NLW_voltage1_carry__0_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__0_i_4__5_n_0,voltage1_carry__0_i_5__5_n_0,voltage1_carry__0_i_6__5_n_0,voltage1_carry__0_i_7__5_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_1__1
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_2__1
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_3__1
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_4__5
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_5__5
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_6__5
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_6__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__0_i_7__5
       (.I0(voltage2__93[8]),
        .I1(voltage2__93[9]),
        .O(voltage1_carry__0_i_7__5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__1
       (.CI(voltage1_carry__0_n_0),
        .CO({voltage1_carry__1_n_0,NLW_voltage1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__1_i_1__1_n_0,voltage1_carry__1_i_2__1_n_0,voltage1_carry__1_i_3__1_n_0,voltage1_carry__1_i_4__1_n_0}),
        .O(NLW_voltage1_carry__1_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__1_i_5__5_n_0,voltage1_carry__1_i_6__5_n_0,voltage1_carry__1_i_7__5_n_0,voltage1_carry__1_i_8__5_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_1__1
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_2__1
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_3__1
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_4__1
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_5__5
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_6__5
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_6__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_7__5
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_7__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_8__5
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_8__5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__2
       (.CI(voltage1_carry__1_n_0),
        .CO({CO,NLW_voltage1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__2_i_1__5_n_0,voltage1_carry__2_i_2__1_n_0,voltage1_carry__2_i_3__1_n_0,voltage1_carry__2_i_4__1_n_0}),
        .O(NLW_voltage1_carry__2_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__2_i_5__5_n_0,voltage1_carry__2_i_6__5_n_0,voltage1_carry__2_i_7__5_n_0,voltage1_carry__2_i_8__5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__2_i_1__5
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_1__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_2__1
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_3__1
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_4__1
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_5__5
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_6__5
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_6__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_7__5
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_7__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_8__5
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_8__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_1__1
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_2__1
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_3__1
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_4__1
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_5__1
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_6__1
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_7__1
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_8__1
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_8__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry
       (.CI(1'b0),
        .CO({voltage2_carry_n_0,NLW_voltage2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[3:0]),
        .O(voltage2__93[3:0]),
        .S({voltage2_carry_i_1__0_n_0,voltage2_carry_i_2__0_n_0,voltage2_carry_i_3__0_n_0,voltage2_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__0
       (.CI(voltage2_carry_n_0),
        .CO({voltage2_carry__0_n_0,NLW_voltage2_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[7:4]),
        .O(voltage2__93[7:4]),
        .S({voltage2_carry__0_i_1__0_n_0,voltage2_carry__0_i_2__0_n_0,voltage2_carry__0_i_3__0_n_0,voltage2_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_1__0
       (.I0(voltage_reg[7]),
        .I1(sum_0[7]),
        .O(voltage2_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_2__0
       (.I0(voltage_reg[6]),
        .I1(sum_0[6]),
        .O(voltage2_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_3__0
       (.I0(voltage_reg[5]),
        .I1(sum_0[5]),
        .O(voltage2_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_4__0
       (.I0(voltage_reg[4]),
        .I1(sum_0[4]),
        .O(voltage2_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__1
       (.CI(voltage2_carry__0_n_0),
        .CO({voltage2_carry__1_n_0,NLW_voltage2_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[11:8]),
        .O(voltage2__93[11:8]),
        .S({voltage2_carry__1_i_1__0_n_0,voltage2_carry__1_i_2__0_n_0,voltage2_carry__1_i_3__0_n_0,voltage2_carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_1__0
       (.I0(voltage_reg[11]),
        .I1(sum_0[11]),
        .O(voltage2_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_2__0
       (.I0(voltage_reg[10]),
        .I1(sum_0[10]),
        .O(voltage2_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_3__0
       (.I0(voltage_reg[9]),
        .I1(sum_0[9]),
        .O(voltage2_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_4__0
       (.I0(voltage_reg[8]),
        .I1(sum_0[8]),
        .O(voltage2_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__2
       (.CI(voltage2_carry__1_n_0),
        .CO({voltage2_carry__2_n_0,NLW_voltage2_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[15:12]),
        .O(voltage2__93[15:12]),
        .S({voltage2_carry__2_i_1__0_n_0,voltage2_carry__2_i_2__0_n_0,voltage2_carry__2_i_3__0_n_0,voltage2_carry__2_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_1__0
       (.I0(voltage_reg[15]),
        .I1(sum_0[15]),
        .O(voltage2_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_2__0
       (.I0(voltage_reg[14]),
        .I1(sum_0[14]),
        .O(voltage2_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_3__0
       (.I0(voltage_reg[13]),
        .I1(sum_0[13]),
        .O(voltage2_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_4__0
       (.I0(voltage_reg[12]),
        .I1(sum_0[12]),
        .O(voltage2_carry__2_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__3
       (.CI(voltage2_carry__2_n_0),
        .CO({voltage2_carry__3_n_0,NLW_voltage2_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[19:16]),
        .O(voltage2__93[19:16]),
        .S({voltage2_carry__3_i_1__0_n_0,voltage2_carry__3_i_2__0_n_0,voltage2_carry__3_i_3__0_n_0,voltage2_carry__3_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_1__0
       (.I0(voltage_reg[19]),
        .I1(sum_0[19]),
        .O(voltage2_carry__3_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_2__0
       (.I0(voltage_reg[18]),
        .I1(sum_0[18]),
        .O(voltage2_carry__3_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_3__0
       (.I0(voltage_reg[17]),
        .I1(sum_0[17]),
        .O(voltage2_carry__3_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_4__0
       (.I0(voltage_reg[16]),
        .I1(sum_0[16]),
        .O(voltage2_carry__3_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__4
       (.CI(voltage2_carry__3_n_0),
        .CO({voltage2_carry__4_n_0,NLW_voltage2_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[23:20]),
        .O(voltage2__93[23:20]),
        .S({voltage2_carry__4_i_1__0_n_0,voltage2_carry__4_i_2__0_n_0,voltage2_carry__4_i_3__0_n_0,voltage2_carry__4_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_1__0
       (.I0(voltage_reg[23]),
        .I1(sum_0[23]),
        .O(voltage2_carry__4_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_2__0
       (.I0(voltage_reg[22]),
        .I1(sum_0[22]),
        .O(voltage2_carry__4_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_3__0
       (.I0(voltage_reg[21]),
        .I1(sum_0[21]),
        .O(voltage2_carry__4_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_4__0
       (.I0(voltage_reg[20]),
        .I1(sum_0[20]),
        .O(voltage2_carry__4_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__5
       (.CI(voltage2_carry__4_n_0),
        .CO({voltage2_carry__5_n_0,NLW_voltage2_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[27:24]),
        .O(voltage2__93[27:24]),
        .S({voltage2_carry__5_i_1__0_n_0,voltage2_carry__5_i_2__0_n_0,voltage2_carry__5_i_3__0_n_0,voltage2_carry__5_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_1__0
       (.I0(voltage_reg[27]),
        .I1(sum_0[27]),
        .O(voltage2_carry__5_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_2__0
       (.I0(voltage_reg[26]),
        .I1(sum_0[26]),
        .O(voltage2_carry__5_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_3__0
       (.I0(voltage_reg[25]),
        .I1(sum_0[25]),
        .O(voltage2_carry__5_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_4__0
       (.I0(voltage_reg[24]),
        .I1(sum_0[24]),
        .O(voltage2_carry__5_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__6
       (.CI(voltage2_carry__5_n_0),
        .CO(NLW_voltage2_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,voltage_reg[30:28]}),
        .O(voltage2__93[31:28]),
        .S({voltage2_carry__6_i_1__0_n_0,voltage2_carry__6_i_2__0_n_0,voltage2_carry__6_i_3__0_n_0,voltage2_carry__6_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_1__0
       (.I0(voltage_reg[31]),
        .I1(sum_0[31]),
        .O(voltage2_carry__6_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_2__0
       (.I0(voltage_reg[30]),
        .I1(sum_0[30]),
        .O(voltage2_carry__6_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_3__0
       (.I0(voltage_reg[29]),
        .I1(sum_0[29]),
        .O(voltage2_carry__6_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_4__0
       (.I0(voltage_reg[28]),
        .I1(sum_0[28]),
        .O(voltage2_carry__6_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_1__0
       (.I0(voltage_reg[3]),
        .I1(sum_0[3]),
        .O(voltage2_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_2__0
       (.I0(voltage_reg[2]),
        .I1(sum),
        .O(voltage2_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_3__0
       (.I0(voltage_reg[1]),
        .I1(sum_0[1]),
        .O(voltage2_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_4__0
       (.I0(voltage_reg[0]),
        .I1(sum_0[0]),
        .O(voltage2_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_2__1 
       (.I0(sum_0[3]),
        .I1(CO),
        .O(\voltage[0]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_4__1 
       (.I0(sum_0[1]),
        .I1(CO),
        .O(\voltage[0]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_5__2 
       (.I0(sum_0[0]),
        .I1(CO),
        .O(\voltage[0]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_6__1 
       (.I0(sum_0[3]),
        .I1(voltage_reg[3]),
        .I2(CO),
        .I3(voltage2__93[3]),
        .O(\voltage[0]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_7__2 
       (.I0(sum),
        .I1(voltage_reg[2]),
        .I2(CO),
        .I3(voltage2__93[2]),
        .O(\voltage[0]_i_7__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_8__1 
       (.I0(sum_0[1]),
        .I1(voltage_reg[1]),
        .I2(CO),
        .I3(voltage2__93[1]),
        .O(\voltage[0]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_9__1 
       (.I0(sum_0[0]),
        .I1(voltage_reg[0]),
        .I2(CO),
        .I3(voltage2__93[0]),
        .O(\voltage[0]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_2__1 
       (.I0(sum_0[15]),
        .I1(CO),
        .O(\voltage[12]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_3__1 
       (.I0(sum_0[14]),
        .I1(CO),
        .O(\voltage[12]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_4__1 
       (.I0(sum_0[13]),
        .I1(CO),
        .O(\voltage[12]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_5__1 
       (.I0(sum_0[12]),
        .I1(CO),
        .O(\voltage[12]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_6__0 
       (.I0(sum_0[15]),
        .I1(voltage_reg[15]),
        .I2(CO),
        .I3(C[15]),
        .O(\voltage[12]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_7__0 
       (.I0(sum_0[14]),
        .I1(voltage_reg[14]),
        .I2(CO),
        .I3(C[14]),
        .O(\voltage[12]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_8__0 
       (.I0(sum_0[13]),
        .I1(voltage_reg[13]),
        .I2(CO),
        .I3(C[13]),
        .O(\voltage[12]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_9__0 
       (.I0(sum_0[12]),
        .I1(voltage_reg[12]),
        .I2(CO),
        .I3(C[12]),
        .O(\voltage[12]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_2__1 
       (.I0(sum_0[19]),
        .I1(CO),
        .O(\voltage[16]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_3__1 
       (.I0(sum_0[18]),
        .I1(CO),
        .O(\voltage[16]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_4__1 
       (.I0(sum_0[17]),
        .I1(CO),
        .O(\voltage[16]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_5__1 
       (.I0(sum_0[16]),
        .I1(CO),
        .O(\voltage[16]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_6__0 
       (.I0(sum_0[19]),
        .I1(voltage_reg[19]),
        .I2(CO),
        .I3(C[19]),
        .O(\voltage[16]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_7__0 
       (.I0(sum_0[18]),
        .I1(voltage_reg[18]),
        .I2(CO),
        .I3(C[18]),
        .O(\voltage[16]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_8__0 
       (.I0(sum_0[17]),
        .I1(voltage_reg[17]),
        .I2(CO),
        .I3(C[17]),
        .O(\voltage[16]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_9__0 
       (.I0(sum_0[16]),
        .I1(voltage_reg[16]),
        .I2(CO),
        .I3(C[16]),
        .O(\voltage[16]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_2__1 
       (.I0(sum_0[23]),
        .I1(CO),
        .O(\voltage[20]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_3__1 
       (.I0(sum_0[22]),
        .I1(CO),
        .O(\voltage[20]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_4__1 
       (.I0(sum_0[21]),
        .I1(CO),
        .O(\voltage[20]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_5__1 
       (.I0(sum_0[20]),
        .I1(CO),
        .O(\voltage[20]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_6__0 
       (.I0(sum_0[23]),
        .I1(voltage_reg[23]),
        .I2(CO),
        .I3(C[23]),
        .O(\voltage[20]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_7__0 
       (.I0(sum_0[22]),
        .I1(voltage_reg[22]),
        .I2(CO),
        .I3(C[22]),
        .O(\voltage[20]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_8__0 
       (.I0(sum_0[21]),
        .I1(voltage_reg[21]),
        .I2(CO),
        .I3(C[21]),
        .O(\voltage[20]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_9__0 
       (.I0(sum_0[20]),
        .I1(voltage_reg[20]),
        .I2(CO),
        .I3(C[20]),
        .O(\voltage[20]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_2__1 
       (.I0(sum_0[27]),
        .I1(CO),
        .O(\voltage[24]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_3__1 
       (.I0(sum_0[26]),
        .I1(CO),
        .O(\voltage[24]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_4__1 
       (.I0(sum_0[25]),
        .I1(CO),
        .O(\voltage[24]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_5__1 
       (.I0(sum_0[24]),
        .I1(CO),
        .O(\voltage[24]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_6__0 
       (.I0(sum_0[27]),
        .I1(voltage_reg[27]),
        .I2(CO),
        .I3(C[27]),
        .O(\voltage[24]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_7__0 
       (.I0(sum_0[26]),
        .I1(voltage_reg[26]),
        .I2(CO),
        .I3(C[26]),
        .O(\voltage[24]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_8__0 
       (.I0(sum_0[25]),
        .I1(voltage_reg[25]),
        .I2(CO),
        .I3(C[25]),
        .O(\voltage[24]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_9__0 
       (.I0(sum_0[24]),
        .I1(voltage_reg[24]),
        .I2(CO),
        .I3(C[24]),
        .O(\voltage[24]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_2__1 
       (.I0(sum_0[30]),
        .I1(CO),
        .O(\voltage[28]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_3__1 
       (.I0(sum_0[29]),
        .I1(CO),
        .O(\voltage[28]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_4__1 
       (.I0(sum_0[28]),
        .I1(CO),
        .O(\voltage[28]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_5__1 
       (.I0(sum_0[31]),
        .I1(voltage_reg[31]),
        .I2(CO),
        .I3(C[31]),
        .O(\voltage[28]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_6__0 
       (.I0(sum_0[30]),
        .I1(voltage_reg[30]),
        .I2(CO),
        .I3(C[30]),
        .O(\voltage[28]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_7__0 
       (.I0(sum_0[29]),
        .I1(voltage_reg[29]),
        .I2(CO),
        .I3(C[29]),
        .O(\voltage[28]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_8__0 
       (.I0(sum_0[28]),
        .I1(voltage_reg[28]),
        .I2(CO),
        .I3(C[28]),
        .O(\voltage[28]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_2__1 
       (.I0(sum_0[7]),
        .I1(CO),
        .O(\voltage[4]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_3__1 
       (.I0(sum_0[6]),
        .I1(CO),
        .O(\voltage[4]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_4__1 
       (.I0(sum_0[5]),
        .I1(CO),
        .O(\voltage[4]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_5__2 
       (.I0(sum_0[4]),
        .I1(CO),
        .O(\voltage[4]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_6__1 
       (.I0(sum_0[7]),
        .I1(voltage_reg[7]),
        .I2(CO),
        .I3(C[7]),
        .O(\voltage[4]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_7__1 
       (.I0(sum_0[6]),
        .I1(voltage_reg[6]),
        .I2(CO),
        .I3(voltage2__93[6]),
        .O(\voltage[4]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_8__2 
       (.I0(sum_0[5]),
        .I1(voltage_reg[5]),
        .I2(CO),
        .I3(voltage2__93[5]),
        .O(\voltage[4]_i_8__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_9__1 
       (.I0(sum_0[4]),
        .I1(voltage_reg[4]),
        .I2(CO),
        .I3(voltage2__93[4]),
        .O(\voltage[4]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_2__1 
       (.I0(sum_0[11]),
        .I1(CO),
        .O(\voltage[8]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_3__1 
       (.I0(sum_0[10]),
        .I1(CO),
        .O(\voltage[8]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_4__1 
       (.I0(sum_0[9]),
        .I1(CO),
        .O(\voltage[8]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_5__1 
       (.I0(sum_0[8]),
        .I1(CO),
        .O(\voltage[8]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_6__1 
       (.I0(sum_0[11]),
        .I1(voltage_reg[11]),
        .I2(CO),
        .I3(C[11]),
        .O(\voltage[8]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_7__0 
       (.I0(sum_0[10]),
        .I1(voltage_reg[10]),
        .I2(CO),
        .I3(C[10]),
        .O(\voltage[8]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_8__0 
       (.I0(sum_0[9]),
        .I1(voltage_reg[9]),
        .I2(CO),
        .I3(C[9]),
        .O(\voltage[8]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_9__0 
       (.I0(sum_0[8]),
        .I1(voltage_reg[8]),
        .I2(CO),
        .I3(C[8]),
        .O(\voltage[8]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__1_n_7 ),
        .Q(voltage_reg[0]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[0]_i_1__1 
       (.CI(1'b0),
        .CO({\voltage_reg[0]_i_1__1_n_0 ,\NLW_voltage_reg[0]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[0]_i_2__1_n_0 ,\voltage_reg[3]_0 ,\voltage[0]_i_4__1_n_0 ,\voltage[0]_i_5__2_n_0 }),
        .O({\voltage_reg[0]_i_1__1_n_4 ,\voltage_reg[0]_i_1__1_n_5 ,\voltage_reg[0]_i_1__1_n_6 ,\voltage_reg[0]_i_1__1_n_7 }),
        .S({\voltage[0]_i_6__1_n_0 ,\voltage[0]_i_7__2_n_0 ,\voltage[0]_i_8__1_n_0 ,\voltage[0]_i_9__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__1_n_5 ),
        .Q(voltage_reg[10]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__1_n_4 ),
        .Q(voltage_reg[11]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__1_n_7 ),
        .Q(voltage_reg[12]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[12]_i_1__1 
       (.CI(\voltage_reg[8]_i_1__1_n_0 ),
        .CO({\voltage_reg[12]_i_1__1_n_0 ,\NLW_voltage_reg[12]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[12]_i_2__1_n_0 ,\voltage[12]_i_3__1_n_0 ,\voltage[12]_i_4__1_n_0 ,\voltage[12]_i_5__1_n_0 }),
        .O({\voltage_reg[12]_i_1__1_n_4 ,\voltage_reg[12]_i_1__1_n_5 ,\voltage_reg[12]_i_1__1_n_6 ,\voltage_reg[12]_i_1__1_n_7 }),
        .S({\voltage[12]_i_6__0_n_0 ,\voltage[12]_i_7__0_n_0 ,\voltage[12]_i_8__0_n_0 ,\voltage[12]_i_9__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__1_n_6 ),
        .Q(voltage_reg[13]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__1_n_5 ),
        .Q(voltage_reg[14]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__1_n_4 ),
        .Q(voltage_reg[15]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__1_n_7 ),
        .Q(voltage_reg[16]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[16]_i_1__1 
       (.CI(\voltage_reg[12]_i_1__1_n_0 ),
        .CO({\voltage_reg[16]_i_1__1_n_0 ,\NLW_voltage_reg[16]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[16]_i_2__1_n_0 ,\voltage[16]_i_3__1_n_0 ,\voltage[16]_i_4__1_n_0 ,\voltage[16]_i_5__1_n_0 }),
        .O({\voltage_reg[16]_i_1__1_n_4 ,\voltage_reg[16]_i_1__1_n_5 ,\voltage_reg[16]_i_1__1_n_6 ,\voltage_reg[16]_i_1__1_n_7 }),
        .S({\voltage[16]_i_6__0_n_0 ,\voltage[16]_i_7__0_n_0 ,\voltage[16]_i_8__0_n_0 ,\voltage[16]_i_9__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__1_n_6 ),
        .Q(voltage_reg[17]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__1_n_5 ),
        .Q(voltage_reg[18]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__1_n_4 ),
        .Q(voltage_reg[19]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__1_n_6 ),
        .Q(voltage_reg[1]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__1_n_7 ),
        .Q(voltage_reg[20]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[20]_i_1__1 
       (.CI(\voltage_reg[16]_i_1__1_n_0 ),
        .CO({\voltage_reg[20]_i_1__1_n_0 ,\NLW_voltage_reg[20]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[20]_i_2__1_n_0 ,\voltage[20]_i_3__1_n_0 ,\voltage[20]_i_4__1_n_0 ,\voltage[20]_i_5__1_n_0 }),
        .O({\voltage_reg[20]_i_1__1_n_4 ,\voltage_reg[20]_i_1__1_n_5 ,\voltage_reg[20]_i_1__1_n_6 ,\voltage_reg[20]_i_1__1_n_7 }),
        .S({\voltage[20]_i_6__0_n_0 ,\voltage[20]_i_7__0_n_0 ,\voltage[20]_i_8__0_n_0 ,\voltage[20]_i_9__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__1_n_6 ),
        .Q(voltage_reg[21]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__1_n_5 ),
        .Q(voltage_reg[22]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__1_n_4 ),
        .Q(voltage_reg[23]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__1_n_7 ),
        .Q(voltage_reg[24]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[24]_i_1__1 
       (.CI(\voltage_reg[20]_i_1__1_n_0 ),
        .CO({\voltage_reg[24]_i_1__1_n_0 ,\NLW_voltage_reg[24]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[24]_i_2__1_n_0 ,\voltage[24]_i_3__1_n_0 ,\voltage[24]_i_4__1_n_0 ,\voltage[24]_i_5__1_n_0 }),
        .O({\voltage_reg[24]_i_1__1_n_4 ,\voltage_reg[24]_i_1__1_n_5 ,\voltage_reg[24]_i_1__1_n_6 ,\voltage_reg[24]_i_1__1_n_7 }),
        .S({\voltage[24]_i_6__0_n_0 ,\voltage[24]_i_7__0_n_0 ,\voltage[24]_i_8__0_n_0 ,\voltage[24]_i_9__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__1_n_6 ),
        .Q(voltage_reg[25]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__1_n_5 ),
        .Q(voltage_reg[26]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__1_n_4 ),
        .Q(voltage_reg[27]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__1_n_7 ),
        .Q(voltage_reg[28]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[28]_i_1__1 
       (.CI(\voltage_reg[24]_i_1__1_n_0 ),
        .CO(\NLW_voltage_reg[28]_i_1__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\voltage[28]_i_2__1_n_0 ,\voltage[28]_i_3__1_n_0 ,\voltage[28]_i_4__1_n_0 }),
        .O({\voltage_reg[28]_i_1__1_n_4 ,\voltage_reg[28]_i_1__1_n_5 ,\voltage_reg[28]_i_1__1_n_6 ,\voltage_reg[28]_i_1__1_n_7 }),
        .S({\voltage[28]_i_5__1_n_0 ,\voltage[28]_i_6__0_n_0 ,\voltage[28]_i_7__0_n_0 ,\voltage[28]_i_8__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__1_n_6 ),
        .Q(voltage_reg[29]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__1_n_5 ),
        .Q(voltage_reg[2]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__1_n_5 ),
        .Q(voltage_reg[30]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__1_n_4 ),
        .Q(voltage_reg[31]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__1_n_4 ),
        .Q(voltage_reg[3]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__1_n_7 ),
        .Q(voltage_reg[4]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[4]_i_1__1 
       (.CI(\voltage_reg[0]_i_1__1_n_0 ),
        .CO({\voltage_reg[4]_i_1__1_n_0 ,\NLW_voltage_reg[4]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[4]_i_2__1_n_0 ,\voltage[4]_i_3__1_n_0 ,\voltage[4]_i_4__1_n_0 ,\voltage[4]_i_5__2_n_0 }),
        .O({\voltage_reg[4]_i_1__1_n_4 ,\voltage_reg[4]_i_1__1_n_5 ,\voltage_reg[4]_i_1__1_n_6 ,\voltage_reg[4]_i_1__1_n_7 }),
        .S({\voltage[4]_i_6__1_n_0 ,\voltage[4]_i_7__1_n_0 ,\voltage[4]_i_8__2_n_0 ,\voltage[4]_i_9__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__1_n_6 ),
        .Q(voltage_reg[5]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__1_n_5 ),
        .Q(voltage_reg[6]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__1_n_4 ),
        .Q(voltage_reg[7]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__1_n_7 ),
        .Q(voltage_reg[8]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[8]_i_1__1 
       (.CI(\voltage_reg[4]_i_1__1_n_0 ),
        .CO({\voltage_reg[8]_i_1__1_n_0 ,\NLW_voltage_reg[8]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[8]_i_2__1_n_0 ,\voltage[8]_i_3__1_n_0 ,\voltage[8]_i_4__1_n_0 ,\voltage[8]_i_5__1_n_0 }),
        .O({\voltage_reg[8]_i_1__1_n_4 ,\voltage_reg[8]_i_1__1_n_5 ,\voltage_reg[8]_i_1__1_n_6 ,\voltage_reg[8]_i_1__1_n_7 }),
        .S({\voltage[8]_i_6__1_n_0 ,\voltage[8]_i_7__0_n_0 ,\voltage[8]_i_8__0_n_0 ,\voltage[8]_i_9__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__1_n_6 ),
        .Q(voltage_reg[9]),
        .R(ly2_delay));
endmodule

(* ORIG_REF_NAME = "neuron" *) 
module neuron__parameterized2
   (h_3,
    tmp_sum_1_2,
    S,
    \tmp_sum_b_0_reg[5] ,
    clk_o_OBUF_BUFG,
    DI,
    ly2_delay,
    \tmp_sum_1_2_reg[4]_0 ,
    D,
    tmp_sum_b_0,
    tmp_sum_1_2_0,
    tmp_sum_b_0_1,
    \tmp_sum_b_0_1_2_reg[3]_0 );
  output h_3;
  output [1:0]tmp_sum_1_2;
  output [1:0]S;
  output [0:0]\tmp_sum_b_0_reg[5] ;
  input clk_o_OBUF_BUFG;
  input [0:0]DI;
  input [0:0]ly2_delay;
  input \tmp_sum_1_2_reg[4]_0 ;
  input [29:0]D;
  input [0:0]tmp_sum_b_0;
  input [0:0]tmp_sum_1_2_0;
  input [0:0]tmp_sum_b_0_1;
  input [0:0]\tmp_sum_b_0_1_2_reg[3]_0 ;

  wire [31:7]C;
  wire [29:0]D;
  wire [0:0]DI;
  wire [1:0]S;
  wire clk_o_OBUF_BUFG;
  wire h_3;
  wire load;
  wire [0:0]ly2_delay;
  wire [31:1]sum;
  wire [1:0]tmp_sum_1_2;
  wire [0:0]tmp_sum_1_2_0;
  wire \tmp_sum_1_2_reg[4]_0 ;
  wire [0:0]tmp_sum_b_0;
  wire [0:0]tmp_sum_b_0_1;
  wire [31:1]tmp_sum_b_0_1_2;
  wire [0:0]\tmp_sum_b_0_1_2_reg[3]_0 ;
  wire [0:0]\tmp_sum_b_0_reg[5] ;
  wire voltage0_carry__0_i_1__3_n_0;
  wire voltage0_carry__0_i_2__3_n_0;
  wire voltage0_carry__0_i_3__3_n_0;
  wire voltage0_carry__0_i_4__3_n_0;
  wire voltage0_carry__0_n_0;
  wire voltage0_carry__1_i_1__3_n_0;
  wire voltage0_carry__1_i_2__3_n_0;
  wire voltage0_carry__1_i_3__3_n_0;
  wire voltage0_carry__1_i_4__3_n_0;
  wire voltage0_carry__1_n_0;
  wire voltage0_carry__2_i_1__3_n_0;
  wire voltage0_carry__2_i_2__3_n_0;
  wire voltage0_carry__2_i_3__3_n_0;
  wire voltage0_carry__2_i_4__3_n_0;
  wire voltage0_carry__2_n_0;
  wire voltage0_carry__3_i_1__3_n_0;
  wire voltage0_carry__3_i_2__3_n_0;
  wire voltage0_carry__3_i_3__3_n_0;
  wire voltage0_carry__3_i_4__3_n_0;
  wire voltage0_carry__3_n_0;
  wire voltage0_carry__4_i_1__3_n_0;
  wire voltage0_carry__4_i_2__3_n_0;
  wire voltage0_carry__4_i_3__3_n_0;
  wire voltage0_carry__4_i_4__3_n_0;
  wire voltage0_carry__4_n_0;
  wire voltage0_carry__5_i_1__3_n_0;
  wire voltage0_carry_i_1__3_n_0;
  wire voltage0_carry_i_2__3_n_0;
  wire voltage0_carry_i_3__1_n_0;
  wire voltage0_carry_n_0;
  wire voltage1_carry__0_i_1__2_n_0;
  wire voltage1_carry__0_i_2__2_n_0;
  wire voltage1_carry__0_i_3__2_n_0;
  wire voltage1_carry__0_i_4__3_n_0;
  wire voltage1_carry__0_i_5__3_n_0;
  wire voltage1_carry__0_i_6__3_n_0;
  wire voltage1_carry__0_i_7__3_n_0;
  wire voltage1_carry__0_n_0;
  wire voltage1_carry__1_i_1__2_n_0;
  wire voltage1_carry__1_i_2__2_n_0;
  wire voltage1_carry__1_i_3__2_n_0;
  wire voltage1_carry__1_i_4__2_n_0;
  wire voltage1_carry__1_i_5__3_n_0;
  wire voltage1_carry__1_i_6__3_n_0;
  wire voltage1_carry__1_i_7__3_n_0;
  wire voltage1_carry__1_i_8__3_n_0;
  wire voltage1_carry__1_n_0;
  wire voltage1_carry__2_i_1__3_n_0;
  wire voltage1_carry__2_i_2__2_n_0;
  wire voltage1_carry__2_i_3__2_n_0;
  wire voltage1_carry__2_i_4__2_n_0;
  wire voltage1_carry__2_i_5__3_n_0;
  wire voltage1_carry__2_i_6__3_n_0;
  wire voltage1_carry__2_i_7__3_n_0;
  wire voltage1_carry__2_i_8__3_n_0;
  wire voltage1_carry_i_1__2_n_0;
  wire voltage1_carry_i_2__2_n_0;
  wire voltage1_carry_i_3__2_n_0;
  wire voltage1_carry_i_4__2_n_0;
  wire voltage1_carry_i_5__2_n_0;
  wire voltage1_carry_i_6__2_n_0;
  wire voltage1_carry_i_7__2_n_0;
  wire voltage1_carry_i_8__2_n_0;
  wire voltage1_carry_n_0;
  wire [31:0]voltage2__93;
  wire voltage2_carry__0_i_1__1_n_0;
  wire voltage2_carry__0_i_2__1_n_0;
  wire voltage2_carry__0_i_3__1_n_0;
  wire voltage2_carry__0_i_4__1_n_0;
  wire voltage2_carry__0_n_0;
  wire voltage2_carry__1_i_1__1_n_0;
  wire voltage2_carry__1_i_2__1_n_0;
  wire voltage2_carry__1_i_3__1_n_0;
  wire voltage2_carry__1_i_4__1_n_0;
  wire voltage2_carry__1_n_0;
  wire voltage2_carry__2_i_1__1_n_0;
  wire voltage2_carry__2_i_2__1_n_0;
  wire voltage2_carry__2_i_3__1_n_0;
  wire voltage2_carry__2_i_4__1_n_0;
  wire voltage2_carry__2_n_0;
  wire voltage2_carry__3_i_1__1_n_0;
  wire voltage2_carry__3_i_2__1_n_0;
  wire voltage2_carry__3_i_3__1_n_0;
  wire voltage2_carry__3_i_4__1_n_0;
  wire voltage2_carry__3_n_0;
  wire voltage2_carry__4_i_1__1_n_0;
  wire voltage2_carry__4_i_2__1_n_0;
  wire voltage2_carry__4_i_3__1_n_0;
  wire voltage2_carry__4_i_4__1_n_0;
  wire voltage2_carry__4_n_0;
  wire voltage2_carry__5_i_1__1_n_0;
  wire voltage2_carry__5_i_2__1_n_0;
  wire voltage2_carry__5_i_3__1_n_0;
  wire voltage2_carry__5_i_4__1_n_0;
  wire voltage2_carry__5_n_0;
  wire voltage2_carry__6_i_1__1_n_0;
  wire voltage2_carry__6_i_2__1_n_0;
  wire voltage2_carry__6_i_3__1_n_0;
  wire voltage2_carry__6_i_4__1_n_0;
  wire voltage2_carry_i_1__1_n_0;
  wire voltage2_carry_i_2__1_n_0;
  wire voltage2_carry_i_3__1_n_0;
  wire voltage2_carry_i_4__1_n_0;
  wire voltage2_carry_n_0;
  wire \voltage[0]_i_2__2_n_0 ;
  wire \voltage[0]_i_3__2_n_0 ;
  wire \voltage[0]_i_4__2_n_0 ;
  wire \voltage[0]_i_5__7_n_0 ;
  wire \voltage[0]_i_6__2_n_0 ;
  wire \voltage[0]_i_7__3_n_0 ;
  wire \voltage[0]_i_8__2_n_0 ;
  wire \voltage[0]_i_9__2_n_0 ;
  wire \voltage[12]_i_2__2_n_0 ;
  wire \voltage[12]_i_3__2_n_0 ;
  wire \voltage[12]_i_4__2_n_0 ;
  wire \voltage[12]_i_5__2_n_0 ;
  wire \voltage[12]_i_6__1_n_0 ;
  wire \voltage[12]_i_7__1_n_0 ;
  wire \voltage[12]_i_8__1_n_0 ;
  wire \voltage[12]_i_9__1_n_0 ;
  wire \voltage[16]_i_2__2_n_0 ;
  wire \voltage[16]_i_3__2_n_0 ;
  wire \voltage[16]_i_4__2_n_0 ;
  wire \voltage[16]_i_5__2_n_0 ;
  wire \voltage[16]_i_6__1_n_0 ;
  wire \voltage[16]_i_7__1_n_0 ;
  wire \voltage[16]_i_8__1_n_0 ;
  wire \voltage[16]_i_9__1_n_0 ;
  wire \voltage[20]_i_2__2_n_0 ;
  wire \voltage[20]_i_3__2_n_0 ;
  wire \voltage[20]_i_4__2_n_0 ;
  wire \voltage[20]_i_5__2_n_0 ;
  wire \voltage[20]_i_6__1_n_0 ;
  wire \voltage[20]_i_7__1_n_0 ;
  wire \voltage[20]_i_8__1_n_0 ;
  wire \voltage[20]_i_9__1_n_0 ;
  wire \voltage[24]_i_2__2_n_0 ;
  wire \voltage[24]_i_3__2_n_0 ;
  wire \voltage[24]_i_4__2_n_0 ;
  wire \voltage[24]_i_5__2_n_0 ;
  wire \voltage[24]_i_6__1_n_0 ;
  wire \voltage[24]_i_7__1_n_0 ;
  wire \voltage[24]_i_8__1_n_0 ;
  wire \voltage[24]_i_9__1_n_0 ;
  wire \voltage[28]_i_2__2_n_0 ;
  wire \voltage[28]_i_3__2_n_0 ;
  wire \voltage[28]_i_4__2_n_0 ;
  wire \voltage[28]_i_5__2_n_0 ;
  wire \voltage[28]_i_6__1_n_0 ;
  wire \voltage[28]_i_7__1_n_0 ;
  wire \voltage[28]_i_8__1_n_0 ;
  wire \voltage[4]_i_2__2_n_0 ;
  wire \voltage[4]_i_3__2_n_0 ;
  wire \voltage[4]_i_4__2_n_0 ;
  wire \voltage[4]_i_5__3_n_0 ;
  wire \voltage[4]_i_6__2_n_0 ;
  wire \voltage[4]_i_7__2_n_0 ;
  wire \voltage[4]_i_8__3_n_0 ;
  wire \voltage[4]_i_9__2_n_0 ;
  wire \voltage[8]_i_2__2_n_0 ;
  wire \voltage[8]_i_3__2_n_0 ;
  wire \voltage[8]_i_4__2_n_0 ;
  wire \voltage[8]_i_5__2_n_0 ;
  wire \voltage[8]_i_6__2_n_0 ;
  wire \voltage[8]_i_7__1_n_0 ;
  wire \voltage[8]_i_8__1_n_0 ;
  wire \voltage[8]_i_9__1_n_0 ;
  wire [31:0]voltage_reg;
  wire \voltage_reg[0]_i_1__2_n_0 ;
  wire \voltage_reg[0]_i_1__2_n_4 ;
  wire \voltage_reg[0]_i_1__2_n_5 ;
  wire \voltage_reg[0]_i_1__2_n_6 ;
  wire \voltage_reg[0]_i_1__2_n_7 ;
  wire \voltage_reg[12]_i_1__2_n_0 ;
  wire \voltage_reg[12]_i_1__2_n_4 ;
  wire \voltage_reg[12]_i_1__2_n_5 ;
  wire \voltage_reg[12]_i_1__2_n_6 ;
  wire \voltage_reg[12]_i_1__2_n_7 ;
  wire \voltage_reg[16]_i_1__2_n_0 ;
  wire \voltage_reg[16]_i_1__2_n_4 ;
  wire \voltage_reg[16]_i_1__2_n_5 ;
  wire \voltage_reg[16]_i_1__2_n_6 ;
  wire \voltage_reg[16]_i_1__2_n_7 ;
  wire \voltage_reg[20]_i_1__2_n_0 ;
  wire \voltage_reg[20]_i_1__2_n_4 ;
  wire \voltage_reg[20]_i_1__2_n_5 ;
  wire \voltage_reg[20]_i_1__2_n_6 ;
  wire \voltage_reg[20]_i_1__2_n_7 ;
  wire \voltage_reg[24]_i_1__2_n_0 ;
  wire \voltage_reg[24]_i_1__2_n_4 ;
  wire \voltage_reg[24]_i_1__2_n_5 ;
  wire \voltage_reg[24]_i_1__2_n_6 ;
  wire \voltage_reg[24]_i_1__2_n_7 ;
  wire \voltage_reg[28]_i_1__2_n_4 ;
  wire \voltage_reg[28]_i_1__2_n_5 ;
  wire \voltage_reg[28]_i_1__2_n_6 ;
  wire \voltage_reg[28]_i_1__2_n_7 ;
  wire \voltage_reg[4]_i_1__2_n_0 ;
  wire \voltage_reg[4]_i_1__2_n_4 ;
  wire \voltage_reg[4]_i_1__2_n_5 ;
  wire \voltage_reg[4]_i_1__2_n_6 ;
  wire \voltage_reg[4]_i_1__2_n_7 ;
  wire \voltage_reg[8]_i_1__2_n_0 ;
  wire \voltage_reg[8]_i_1__2_n_4 ;
  wire \voltage_reg[8]_i_1__2_n_5 ;
  wire \voltage_reg[8]_i_1__2_n_6 ;
  wire \voltage_reg[8]_i_1__2_n_7 ;
  wire [2:0]NLW_voltage0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_voltage0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_voltage0_carry__5_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_voltage2_carry__6_CO_UNCONNECTED;
  wire [2:0]\NLW_voltage_reg[0]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[12]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[16]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[20]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[24]_i_1__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_voltage_reg[28]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[4]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[8]_i_1__2_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    spike_out_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(load),
        .Q(h_3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[10]),
        .Q(sum[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[11]),
        .Q(sum[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[12]),
        .Q(sum[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[13]),
        .Q(sum[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[14]),
        .Q(sum[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[15]),
        .Q(sum[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[16]),
        .Q(sum[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[17]),
        .Q(sum[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[18]),
        .Q(sum[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[19]),
        .Q(sum[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[1]),
        .Q(sum[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[20]),
        .Q(sum[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[21]),
        .Q(sum[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[22]),
        .Q(sum[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[23]),
        .Q(sum[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[24]),
        .Q(sum[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[25]),
        .Q(sum[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[26]),
        .Q(sum[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[27]),
        .Q(sum[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[28]),
        .Q(sum[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[29]),
        .Q(sum[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[2]),
        .Q(sum[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[30]),
        .Q(sum[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[31]),
        .Q(sum[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[3]),
        .Q(sum[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[4]),
        .Q(sum[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[5]),
        .Q(sum[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[6]),
        .Q(sum[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[7]),
        .Q(sum[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[8]),
        .Q(sum[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[9]),
        .Q(sum[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[4]_0 ),
        .Q(tmp_sum_1_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(DI),
        .Q(tmp_sum_1_2[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_2 
       (.I0(tmp_sum_b_0_1),
        .I1(\tmp_sum_b_0_1_2_reg[3]_0 ),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_3 
       (.I0(tmp_sum_b_0),
        .I1(tmp_sum_1_2_0),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[5]_i_2 
       (.I0(tmp_sum_b_0),
        .I1(tmp_sum_1_2[0]),
        .O(\tmp_sum_b_0_reg[5] ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(tmp_sum_b_0_1_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(tmp_sum_b_0_1_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(tmp_sum_b_0_1_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(tmp_sum_b_0_1_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(tmp_sum_b_0_1_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(tmp_sum_b_0_1_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(tmp_sum_b_0_1_2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(tmp_sum_b_0_1_2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[16]),
        .Q(tmp_sum_b_0_1_2[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[17]),
        .Q(tmp_sum_b_0_1_2[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(tmp_sum_b_0_1_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[18]),
        .Q(tmp_sum_b_0_1_2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[19]),
        .Q(tmp_sum_b_0_1_2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[20]),
        .Q(tmp_sum_b_0_1_2[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[21]),
        .Q(tmp_sum_b_0_1_2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[22]),
        .Q(tmp_sum_b_0_1_2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[23]),
        .Q(tmp_sum_b_0_1_2[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[24]),
        .Q(tmp_sum_b_0_1_2[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[25]),
        .Q(tmp_sum_b_0_1_2[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[26]),
        .Q(tmp_sum_b_0_1_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[27]),
        .Q(tmp_sum_b_0_1_2[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(tmp_sum_b_0_1_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[28]),
        .Q(tmp_sum_b_0_1_2[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[29]),
        .Q(tmp_sum_b_0_1_2[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(tmp_sum_b_0_1_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(tmp_sum_b_0_1_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(tmp_sum_b_0_1_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_2[1]),
        .Q(tmp_sum_b_0_1_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(tmp_sum_b_0_1_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(tmp_sum_b_0_1_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(tmp_sum_b_0_1_2[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 voltage0_carry
       (.CI(1'b0),
        .CO({voltage0_carry_n_0,NLW_voltage0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage2__93[10:8],1'b0}),
        .O(C[10:7]),
        .S({voltage0_carry_i_1__3_n_0,voltage0_carry_i_2__3_n_0,voltage0_carry_i_3__1_n_0,voltage2__93[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__0
       (.CI(voltage0_carry_n_0),
        .CO({voltage0_carry__0_n_0,NLW_voltage0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[14:11]),
        .O(C[14:11]),
        .S({voltage0_carry__0_i_1__3_n_0,voltage0_carry__0_i_2__3_n_0,voltage0_carry__0_i_3__3_n_0,voltage0_carry__0_i_4__3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_1__3
       (.I0(voltage2__93[14]),
        .O(voltage0_carry__0_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_2__3
       (.I0(voltage2__93[13]),
        .O(voltage0_carry__0_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_3__3
       (.I0(voltage2__93[12]),
        .O(voltage0_carry__0_i_3__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_4__3
       (.I0(voltage2__93[11]),
        .O(voltage0_carry__0_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__1
       (.CI(voltage0_carry__0_n_0),
        .CO({voltage0_carry__1_n_0,NLW_voltage0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[18:15]),
        .O(C[18:15]),
        .S({voltage0_carry__1_i_1__3_n_0,voltage0_carry__1_i_2__3_n_0,voltage0_carry__1_i_3__3_n_0,voltage0_carry__1_i_4__3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_1__3
       (.I0(voltage2__93[18]),
        .O(voltage0_carry__1_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_2__3
       (.I0(voltage2__93[17]),
        .O(voltage0_carry__1_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_3__3
       (.I0(voltage2__93[16]),
        .O(voltage0_carry__1_i_3__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_4__3
       (.I0(voltage2__93[15]),
        .O(voltage0_carry__1_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__2
       (.CI(voltage0_carry__1_n_0),
        .CO({voltage0_carry__2_n_0,NLW_voltage0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[22:19]),
        .O(C[22:19]),
        .S({voltage0_carry__2_i_1__3_n_0,voltage0_carry__2_i_2__3_n_0,voltage0_carry__2_i_3__3_n_0,voltage0_carry__2_i_4__3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_1__3
       (.I0(voltage2__93[22]),
        .O(voltage0_carry__2_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_2__3
       (.I0(voltage2__93[21]),
        .O(voltage0_carry__2_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_3__3
       (.I0(voltage2__93[20]),
        .O(voltage0_carry__2_i_3__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_4__3
       (.I0(voltage2__93[19]),
        .O(voltage0_carry__2_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__3
       (.CI(voltage0_carry__2_n_0),
        .CO({voltage0_carry__3_n_0,NLW_voltage0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[26:23]),
        .O(C[26:23]),
        .S({voltage0_carry__3_i_1__3_n_0,voltage0_carry__3_i_2__3_n_0,voltage0_carry__3_i_3__3_n_0,voltage0_carry__3_i_4__3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_1__3
       (.I0(voltage2__93[26]),
        .O(voltage0_carry__3_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_2__3
       (.I0(voltage2__93[25]),
        .O(voltage0_carry__3_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_3__3
       (.I0(voltage2__93[24]),
        .O(voltage0_carry__3_i_3__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_4__3
       (.I0(voltage2__93[23]),
        .O(voltage0_carry__3_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__4
       (.CI(voltage0_carry__3_n_0),
        .CO({voltage0_carry__4_n_0,NLW_voltage0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[30:27]),
        .O(C[30:27]),
        .S({voltage0_carry__4_i_1__3_n_0,voltage0_carry__4_i_2__3_n_0,voltage0_carry__4_i_3__3_n_0,voltage0_carry__4_i_4__3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_1__3
       (.I0(voltage2__93[30]),
        .O(voltage0_carry__4_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_2__3
       (.I0(voltage2__93[29]),
        .O(voltage0_carry__4_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_3__3
       (.I0(voltage2__93[28]),
        .O(voltage0_carry__4_i_3__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_4__3
       (.I0(voltage2__93[27]),
        .O(voltage0_carry__4_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__5
       (.CI(voltage0_carry__4_n_0),
        .CO(NLW_voltage0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_voltage0_carry__5_O_UNCONNECTED[3:1],C[31]}),
        .S({1'b0,1'b0,1'b0,voltage0_carry__5_i_1__3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__5_i_1__3
       (.I0(voltage2__93[31]),
        .O(voltage0_carry__5_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_1__3
       (.I0(voltage2__93[10]),
        .O(voltage0_carry_i_1__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_2__3
       (.I0(voltage2__93[9]),
        .O(voltage0_carry_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_3__1
       (.I0(voltage2__93[8]),
        .O(voltage0_carry_i_3__1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry
       (.CI(1'b0),
        .CO({voltage1_carry_n_0,NLW_voltage1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry_i_1__2_n_0,voltage1_carry_i_2__2_n_0,voltage1_carry_i_3__2_n_0,voltage1_carry_i_4__2_n_0}),
        .O(NLW_voltage1_carry_O_UNCONNECTED[3:0]),
        .S({voltage1_carry_i_5__2_n_0,voltage1_carry_i_6__2_n_0,voltage1_carry_i_7__2_n_0,voltage1_carry_i_8__2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__0
       (.CI(voltage1_carry_n_0),
        .CO({voltage1_carry__0_n_0,NLW_voltage1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__0_i_1__2_n_0,voltage1_carry__0_i_2__2_n_0,voltage1_carry__0_i_3__2_n_0,voltage2__93[9]}),
        .O(NLW_voltage1_carry__0_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__0_i_4__3_n_0,voltage1_carry__0_i_5__3_n_0,voltage1_carry__0_i_6__3_n_0,voltage1_carry__0_i_7__3_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_1__2
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_2__2
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_3__2
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_4__3
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_5__3
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_6__3
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_6__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__0_i_7__3
       (.I0(voltage2__93[8]),
        .I1(voltage2__93[9]),
        .O(voltage1_carry__0_i_7__3_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__1
       (.CI(voltage1_carry__0_n_0),
        .CO({voltage1_carry__1_n_0,NLW_voltage1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__1_i_1__2_n_0,voltage1_carry__1_i_2__2_n_0,voltage1_carry__1_i_3__2_n_0,voltage1_carry__1_i_4__2_n_0}),
        .O(NLW_voltage1_carry__1_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__1_i_5__3_n_0,voltage1_carry__1_i_6__3_n_0,voltage1_carry__1_i_7__3_n_0,voltage1_carry__1_i_8__3_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_1__2
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_2__2
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_2__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_3__2
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_3__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_4__2
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_5__3
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_6__3
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_6__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_7__3
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_7__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_8__3
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_8__3_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__2
       (.CI(voltage1_carry__1_n_0),
        .CO({load,NLW_voltage1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__2_i_1__3_n_0,voltage1_carry__2_i_2__2_n_0,voltage1_carry__2_i_3__2_n_0,voltage1_carry__2_i_4__2_n_0}),
        .O(NLW_voltage1_carry__2_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__2_i_5__3_n_0,voltage1_carry__2_i_6__3_n_0,voltage1_carry__2_i_7__3_n_0,voltage1_carry__2_i_8__3_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__2_i_1__3
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_1__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_2__2
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_2__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_3__2
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_3__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_4__2
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_5__3
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_6__3
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_6__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_7__3
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_7__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_8__3
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_8__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_1__2
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_2__2
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_3__2
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_4__2
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_5__2
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_6__2
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_7__2
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_8__2
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_8__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry
       (.CI(1'b0),
        .CO({voltage2_carry_n_0,NLW_voltage2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[3:0]),
        .O(voltage2__93[3:0]),
        .S({voltage2_carry_i_1__1_n_0,voltage2_carry_i_2__1_n_0,voltage2_carry_i_3__1_n_0,voltage2_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__0
       (.CI(voltage2_carry_n_0),
        .CO({voltage2_carry__0_n_0,NLW_voltage2_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[7:4]),
        .O(voltage2__93[7:4]),
        .S({voltage2_carry__0_i_1__1_n_0,voltage2_carry__0_i_2__1_n_0,voltage2_carry__0_i_3__1_n_0,voltage2_carry__0_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_1__1
       (.I0(voltage_reg[7]),
        .I1(sum[7]),
        .O(voltage2_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_2__1
       (.I0(voltage_reg[6]),
        .I1(sum[6]),
        .O(voltage2_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_3__1
       (.I0(voltage_reg[5]),
        .I1(sum[5]),
        .O(voltage2_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_4__1
       (.I0(voltage_reg[4]),
        .I1(sum[4]),
        .O(voltage2_carry__0_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__1
       (.CI(voltage2_carry__0_n_0),
        .CO({voltage2_carry__1_n_0,NLW_voltage2_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[11:8]),
        .O(voltage2__93[11:8]),
        .S({voltage2_carry__1_i_1__1_n_0,voltage2_carry__1_i_2__1_n_0,voltage2_carry__1_i_3__1_n_0,voltage2_carry__1_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_1__1
       (.I0(voltage_reg[11]),
        .I1(sum[11]),
        .O(voltage2_carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_2__1
       (.I0(voltage_reg[10]),
        .I1(sum[10]),
        .O(voltage2_carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_3__1
       (.I0(voltage_reg[9]),
        .I1(sum[9]),
        .O(voltage2_carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_4__1
       (.I0(voltage_reg[8]),
        .I1(sum[8]),
        .O(voltage2_carry__1_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__2
       (.CI(voltage2_carry__1_n_0),
        .CO({voltage2_carry__2_n_0,NLW_voltage2_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[15:12]),
        .O(voltage2__93[15:12]),
        .S({voltage2_carry__2_i_1__1_n_0,voltage2_carry__2_i_2__1_n_0,voltage2_carry__2_i_3__1_n_0,voltage2_carry__2_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_1__1
       (.I0(voltage_reg[15]),
        .I1(sum[15]),
        .O(voltage2_carry__2_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_2__1
       (.I0(voltage_reg[14]),
        .I1(sum[14]),
        .O(voltage2_carry__2_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_3__1
       (.I0(voltage_reg[13]),
        .I1(sum[13]),
        .O(voltage2_carry__2_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_4__1
       (.I0(voltage_reg[12]),
        .I1(sum[12]),
        .O(voltage2_carry__2_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__3
       (.CI(voltage2_carry__2_n_0),
        .CO({voltage2_carry__3_n_0,NLW_voltage2_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[19:16]),
        .O(voltage2__93[19:16]),
        .S({voltage2_carry__3_i_1__1_n_0,voltage2_carry__3_i_2__1_n_0,voltage2_carry__3_i_3__1_n_0,voltage2_carry__3_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_1__1
       (.I0(voltage_reg[19]),
        .I1(sum[19]),
        .O(voltage2_carry__3_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_2__1
       (.I0(voltage_reg[18]),
        .I1(sum[18]),
        .O(voltage2_carry__3_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_3__1
       (.I0(voltage_reg[17]),
        .I1(sum[17]),
        .O(voltage2_carry__3_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_4__1
       (.I0(voltage_reg[16]),
        .I1(sum[16]),
        .O(voltage2_carry__3_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__4
       (.CI(voltage2_carry__3_n_0),
        .CO({voltage2_carry__4_n_0,NLW_voltage2_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[23:20]),
        .O(voltage2__93[23:20]),
        .S({voltage2_carry__4_i_1__1_n_0,voltage2_carry__4_i_2__1_n_0,voltage2_carry__4_i_3__1_n_0,voltage2_carry__4_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_1__1
       (.I0(voltage_reg[23]),
        .I1(sum[23]),
        .O(voltage2_carry__4_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_2__1
       (.I0(voltage_reg[22]),
        .I1(sum[22]),
        .O(voltage2_carry__4_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_3__1
       (.I0(voltage_reg[21]),
        .I1(sum[21]),
        .O(voltage2_carry__4_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_4__1
       (.I0(voltage_reg[20]),
        .I1(sum[20]),
        .O(voltage2_carry__4_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__5
       (.CI(voltage2_carry__4_n_0),
        .CO({voltage2_carry__5_n_0,NLW_voltage2_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[27:24]),
        .O(voltage2__93[27:24]),
        .S({voltage2_carry__5_i_1__1_n_0,voltage2_carry__5_i_2__1_n_0,voltage2_carry__5_i_3__1_n_0,voltage2_carry__5_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_1__1
       (.I0(voltage_reg[27]),
        .I1(sum[27]),
        .O(voltage2_carry__5_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_2__1
       (.I0(voltage_reg[26]),
        .I1(sum[26]),
        .O(voltage2_carry__5_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_3__1
       (.I0(voltage_reg[25]),
        .I1(sum[25]),
        .O(voltage2_carry__5_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_4__1
       (.I0(voltage_reg[24]),
        .I1(sum[24]),
        .O(voltage2_carry__5_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__6
       (.CI(voltage2_carry__5_n_0),
        .CO(NLW_voltage2_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,voltage_reg[30:28]}),
        .O(voltage2__93[31:28]),
        .S({voltage2_carry__6_i_1__1_n_0,voltage2_carry__6_i_2__1_n_0,voltage2_carry__6_i_3__1_n_0,voltage2_carry__6_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_1__1
       (.I0(voltage_reg[31]),
        .I1(sum[31]),
        .O(voltage2_carry__6_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_2__1
       (.I0(voltage_reg[30]),
        .I1(sum[30]),
        .O(voltage2_carry__6_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_3__1
       (.I0(voltage_reg[29]),
        .I1(sum[29]),
        .O(voltage2_carry__6_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_4__1
       (.I0(voltage_reg[28]),
        .I1(sum[28]),
        .O(voltage2_carry__6_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_1__1
       (.I0(voltage_reg[3]),
        .I1(sum[3]),
        .O(voltage2_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_2__1
       (.I0(voltage_reg[2]),
        .I1(sum[2]),
        .O(voltage2_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_3__1
       (.I0(voltage_reg[1]),
        .I1(sum[1]),
        .O(voltage2_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_4__1
       (.I0(voltage_reg[0]),
        .I1(sum[7]),
        .O(voltage2_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_2__2 
       (.I0(sum[3]),
        .I1(load),
        .O(\voltage[0]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_3__2 
       (.I0(sum[2]),
        .I1(load),
        .O(\voltage[0]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_4__2 
       (.I0(sum[1]),
        .I1(load),
        .O(\voltage[0]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_5__7 
       (.I0(sum[7]),
        .I1(load),
        .O(\voltage[0]_i_5__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_6__2 
       (.I0(sum[3]),
        .I1(voltage_reg[3]),
        .I2(load),
        .I3(voltage2__93[3]),
        .O(\voltage[0]_i_6__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_7__3 
       (.I0(sum[2]),
        .I1(voltage_reg[2]),
        .I2(load),
        .I3(voltage2__93[2]),
        .O(\voltage[0]_i_7__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_8__2 
       (.I0(sum[1]),
        .I1(voltage_reg[1]),
        .I2(load),
        .I3(voltage2__93[1]),
        .O(\voltage[0]_i_8__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_9__2 
       (.I0(sum[7]),
        .I1(voltage_reg[0]),
        .I2(load),
        .I3(voltage2__93[0]),
        .O(\voltage[0]_i_9__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_2__2 
       (.I0(sum[15]),
        .I1(load),
        .O(\voltage[12]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_3__2 
       (.I0(sum[14]),
        .I1(load),
        .O(\voltage[12]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_4__2 
       (.I0(sum[13]),
        .I1(load),
        .O(\voltage[12]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_5__2 
       (.I0(sum[12]),
        .I1(load),
        .O(\voltage[12]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_6__1 
       (.I0(sum[15]),
        .I1(voltage_reg[15]),
        .I2(load),
        .I3(C[15]),
        .O(\voltage[12]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_7__1 
       (.I0(sum[14]),
        .I1(voltage_reg[14]),
        .I2(load),
        .I3(C[14]),
        .O(\voltage[12]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_8__1 
       (.I0(sum[13]),
        .I1(voltage_reg[13]),
        .I2(load),
        .I3(C[13]),
        .O(\voltage[12]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_9__1 
       (.I0(sum[12]),
        .I1(voltage_reg[12]),
        .I2(load),
        .I3(C[12]),
        .O(\voltage[12]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_2__2 
       (.I0(sum[19]),
        .I1(load),
        .O(\voltage[16]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_3__2 
       (.I0(sum[18]),
        .I1(load),
        .O(\voltage[16]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_4__2 
       (.I0(sum[17]),
        .I1(load),
        .O(\voltage[16]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_5__2 
       (.I0(sum[16]),
        .I1(load),
        .O(\voltage[16]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_6__1 
       (.I0(sum[19]),
        .I1(voltage_reg[19]),
        .I2(load),
        .I3(C[19]),
        .O(\voltage[16]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_7__1 
       (.I0(sum[18]),
        .I1(voltage_reg[18]),
        .I2(load),
        .I3(C[18]),
        .O(\voltage[16]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_8__1 
       (.I0(sum[17]),
        .I1(voltage_reg[17]),
        .I2(load),
        .I3(C[17]),
        .O(\voltage[16]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_9__1 
       (.I0(sum[16]),
        .I1(voltage_reg[16]),
        .I2(load),
        .I3(C[16]),
        .O(\voltage[16]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_2__2 
       (.I0(sum[23]),
        .I1(load),
        .O(\voltage[20]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_3__2 
       (.I0(sum[22]),
        .I1(load),
        .O(\voltage[20]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_4__2 
       (.I0(sum[21]),
        .I1(load),
        .O(\voltage[20]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_5__2 
       (.I0(sum[20]),
        .I1(load),
        .O(\voltage[20]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_6__1 
       (.I0(sum[23]),
        .I1(voltage_reg[23]),
        .I2(load),
        .I3(C[23]),
        .O(\voltage[20]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_7__1 
       (.I0(sum[22]),
        .I1(voltage_reg[22]),
        .I2(load),
        .I3(C[22]),
        .O(\voltage[20]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_8__1 
       (.I0(sum[21]),
        .I1(voltage_reg[21]),
        .I2(load),
        .I3(C[21]),
        .O(\voltage[20]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_9__1 
       (.I0(sum[20]),
        .I1(voltage_reg[20]),
        .I2(load),
        .I3(C[20]),
        .O(\voltage[20]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_2__2 
       (.I0(sum[27]),
        .I1(load),
        .O(\voltage[24]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_3__2 
       (.I0(sum[26]),
        .I1(load),
        .O(\voltage[24]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_4__2 
       (.I0(sum[25]),
        .I1(load),
        .O(\voltage[24]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_5__2 
       (.I0(sum[24]),
        .I1(load),
        .O(\voltage[24]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_6__1 
       (.I0(sum[27]),
        .I1(voltage_reg[27]),
        .I2(load),
        .I3(C[27]),
        .O(\voltage[24]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_7__1 
       (.I0(sum[26]),
        .I1(voltage_reg[26]),
        .I2(load),
        .I3(C[26]),
        .O(\voltage[24]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_8__1 
       (.I0(sum[25]),
        .I1(voltage_reg[25]),
        .I2(load),
        .I3(C[25]),
        .O(\voltage[24]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_9__1 
       (.I0(sum[24]),
        .I1(voltage_reg[24]),
        .I2(load),
        .I3(C[24]),
        .O(\voltage[24]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_2__2 
       (.I0(sum[30]),
        .I1(load),
        .O(\voltage[28]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_3__2 
       (.I0(sum[29]),
        .I1(load),
        .O(\voltage[28]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_4__2 
       (.I0(sum[28]),
        .I1(load),
        .O(\voltage[28]_i_4__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_5__2 
       (.I0(sum[31]),
        .I1(voltage_reg[31]),
        .I2(load),
        .I3(C[31]),
        .O(\voltage[28]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_6__1 
       (.I0(sum[30]),
        .I1(voltage_reg[30]),
        .I2(load),
        .I3(C[30]),
        .O(\voltage[28]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_7__1 
       (.I0(sum[29]),
        .I1(voltage_reg[29]),
        .I2(load),
        .I3(C[29]),
        .O(\voltage[28]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_8__1 
       (.I0(sum[28]),
        .I1(voltage_reg[28]),
        .I2(load),
        .I3(C[28]),
        .O(\voltage[28]_i_8__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_2__2 
       (.I0(sum[7]),
        .I1(load),
        .O(\voltage[4]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_3__2 
       (.I0(sum[6]),
        .I1(load),
        .O(\voltage[4]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_4__2 
       (.I0(sum[5]),
        .I1(load),
        .O(\voltage[4]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_5__3 
       (.I0(sum[4]),
        .I1(load),
        .O(\voltage[4]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_6__2 
       (.I0(sum[7]),
        .I1(voltage_reg[7]),
        .I2(load),
        .I3(C[7]),
        .O(\voltage[4]_i_6__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_7__2 
       (.I0(sum[6]),
        .I1(voltage_reg[6]),
        .I2(load),
        .I3(voltage2__93[6]),
        .O(\voltage[4]_i_7__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_8__3 
       (.I0(sum[5]),
        .I1(voltage_reg[5]),
        .I2(load),
        .I3(voltage2__93[5]),
        .O(\voltage[4]_i_8__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_9__2 
       (.I0(sum[4]),
        .I1(voltage_reg[4]),
        .I2(load),
        .I3(voltage2__93[4]),
        .O(\voltage[4]_i_9__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_2__2 
       (.I0(sum[11]),
        .I1(load),
        .O(\voltage[8]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_3__2 
       (.I0(sum[10]),
        .I1(load),
        .O(\voltage[8]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_4__2 
       (.I0(sum[9]),
        .I1(load),
        .O(\voltage[8]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_5__2 
       (.I0(sum[8]),
        .I1(load),
        .O(\voltage[8]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_6__2 
       (.I0(sum[11]),
        .I1(voltage_reg[11]),
        .I2(load),
        .I3(C[11]),
        .O(\voltage[8]_i_6__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_7__1 
       (.I0(sum[10]),
        .I1(voltage_reg[10]),
        .I2(load),
        .I3(C[10]),
        .O(\voltage[8]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_8__1 
       (.I0(sum[9]),
        .I1(voltage_reg[9]),
        .I2(load),
        .I3(C[9]),
        .O(\voltage[8]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_9__1 
       (.I0(sum[8]),
        .I1(voltage_reg[8]),
        .I2(load),
        .I3(C[8]),
        .O(\voltage[8]_i_9__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__2_n_7 ),
        .Q(voltage_reg[0]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[0]_i_1__2 
       (.CI(1'b0),
        .CO({\voltage_reg[0]_i_1__2_n_0 ,\NLW_voltage_reg[0]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[0]_i_2__2_n_0 ,\voltage[0]_i_3__2_n_0 ,\voltage[0]_i_4__2_n_0 ,\voltage[0]_i_5__7_n_0 }),
        .O({\voltage_reg[0]_i_1__2_n_4 ,\voltage_reg[0]_i_1__2_n_5 ,\voltage_reg[0]_i_1__2_n_6 ,\voltage_reg[0]_i_1__2_n_7 }),
        .S({\voltage[0]_i_6__2_n_0 ,\voltage[0]_i_7__3_n_0 ,\voltage[0]_i_8__2_n_0 ,\voltage[0]_i_9__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__2_n_5 ),
        .Q(voltage_reg[10]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__2_n_4 ),
        .Q(voltage_reg[11]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__2_n_7 ),
        .Q(voltage_reg[12]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[12]_i_1__2 
       (.CI(\voltage_reg[8]_i_1__2_n_0 ),
        .CO({\voltage_reg[12]_i_1__2_n_0 ,\NLW_voltage_reg[12]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[12]_i_2__2_n_0 ,\voltage[12]_i_3__2_n_0 ,\voltage[12]_i_4__2_n_0 ,\voltage[12]_i_5__2_n_0 }),
        .O({\voltage_reg[12]_i_1__2_n_4 ,\voltage_reg[12]_i_1__2_n_5 ,\voltage_reg[12]_i_1__2_n_6 ,\voltage_reg[12]_i_1__2_n_7 }),
        .S({\voltage[12]_i_6__1_n_0 ,\voltage[12]_i_7__1_n_0 ,\voltage[12]_i_8__1_n_0 ,\voltage[12]_i_9__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__2_n_6 ),
        .Q(voltage_reg[13]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__2_n_5 ),
        .Q(voltage_reg[14]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__2_n_4 ),
        .Q(voltage_reg[15]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__2_n_7 ),
        .Q(voltage_reg[16]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[16]_i_1__2 
       (.CI(\voltage_reg[12]_i_1__2_n_0 ),
        .CO({\voltage_reg[16]_i_1__2_n_0 ,\NLW_voltage_reg[16]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[16]_i_2__2_n_0 ,\voltage[16]_i_3__2_n_0 ,\voltage[16]_i_4__2_n_0 ,\voltage[16]_i_5__2_n_0 }),
        .O({\voltage_reg[16]_i_1__2_n_4 ,\voltage_reg[16]_i_1__2_n_5 ,\voltage_reg[16]_i_1__2_n_6 ,\voltage_reg[16]_i_1__2_n_7 }),
        .S({\voltage[16]_i_6__1_n_0 ,\voltage[16]_i_7__1_n_0 ,\voltage[16]_i_8__1_n_0 ,\voltage[16]_i_9__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__2_n_6 ),
        .Q(voltage_reg[17]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__2_n_5 ),
        .Q(voltage_reg[18]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__2_n_4 ),
        .Q(voltage_reg[19]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__2_n_6 ),
        .Q(voltage_reg[1]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__2_n_7 ),
        .Q(voltage_reg[20]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[20]_i_1__2 
       (.CI(\voltage_reg[16]_i_1__2_n_0 ),
        .CO({\voltage_reg[20]_i_1__2_n_0 ,\NLW_voltage_reg[20]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[20]_i_2__2_n_0 ,\voltage[20]_i_3__2_n_0 ,\voltage[20]_i_4__2_n_0 ,\voltage[20]_i_5__2_n_0 }),
        .O({\voltage_reg[20]_i_1__2_n_4 ,\voltage_reg[20]_i_1__2_n_5 ,\voltage_reg[20]_i_1__2_n_6 ,\voltage_reg[20]_i_1__2_n_7 }),
        .S({\voltage[20]_i_6__1_n_0 ,\voltage[20]_i_7__1_n_0 ,\voltage[20]_i_8__1_n_0 ,\voltage[20]_i_9__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__2_n_6 ),
        .Q(voltage_reg[21]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__2_n_5 ),
        .Q(voltage_reg[22]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__2_n_4 ),
        .Q(voltage_reg[23]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__2_n_7 ),
        .Q(voltage_reg[24]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[24]_i_1__2 
       (.CI(\voltage_reg[20]_i_1__2_n_0 ),
        .CO({\voltage_reg[24]_i_1__2_n_0 ,\NLW_voltage_reg[24]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[24]_i_2__2_n_0 ,\voltage[24]_i_3__2_n_0 ,\voltage[24]_i_4__2_n_0 ,\voltage[24]_i_5__2_n_0 }),
        .O({\voltage_reg[24]_i_1__2_n_4 ,\voltage_reg[24]_i_1__2_n_5 ,\voltage_reg[24]_i_1__2_n_6 ,\voltage_reg[24]_i_1__2_n_7 }),
        .S({\voltage[24]_i_6__1_n_0 ,\voltage[24]_i_7__1_n_0 ,\voltage[24]_i_8__1_n_0 ,\voltage[24]_i_9__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__2_n_6 ),
        .Q(voltage_reg[25]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__2_n_5 ),
        .Q(voltage_reg[26]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__2_n_4 ),
        .Q(voltage_reg[27]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__2_n_7 ),
        .Q(voltage_reg[28]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[28]_i_1__2 
       (.CI(\voltage_reg[24]_i_1__2_n_0 ),
        .CO(\NLW_voltage_reg[28]_i_1__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\voltage[28]_i_2__2_n_0 ,\voltage[28]_i_3__2_n_0 ,\voltage[28]_i_4__2_n_0 }),
        .O({\voltage_reg[28]_i_1__2_n_4 ,\voltage_reg[28]_i_1__2_n_5 ,\voltage_reg[28]_i_1__2_n_6 ,\voltage_reg[28]_i_1__2_n_7 }),
        .S({\voltage[28]_i_5__2_n_0 ,\voltage[28]_i_6__1_n_0 ,\voltage[28]_i_7__1_n_0 ,\voltage[28]_i_8__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__2_n_6 ),
        .Q(voltage_reg[29]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__2_n_5 ),
        .Q(voltage_reg[2]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__2_n_5 ),
        .Q(voltage_reg[30]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__2_n_4 ),
        .Q(voltage_reg[31]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__2_n_4 ),
        .Q(voltage_reg[3]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__2_n_7 ),
        .Q(voltage_reg[4]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[4]_i_1__2 
       (.CI(\voltage_reg[0]_i_1__2_n_0 ),
        .CO({\voltage_reg[4]_i_1__2_n_0 ,\NLW_voltage_reg[4]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[4]_i_2__2_n_0 ,\voltage[4]_i_3__2_n_0 ,\voltage[4]_i_4__2_n_0 ,\voltage[4]_i_5__3_n_0 }),
        .O({\voltage_reg[4]_i_1__2_n_4 ,\voltage_reg[4]_i_1__2_n_5 ,\voltage_reg[4]_i_1__2_n_6 ,\voltage_reg[4]_i_1__2_n_7 }),
        .S({\voltage[4]_i_6__2_n_0 ,\voltage[4]_i_7__2_n_0 ,\voltage[4]_i_8__3_n_0 ,\voltage[4]_i_9__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__2_n_6 ),
        .Q(voltage_reg[5]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__2_n_5 ),
        .Q(voltage_reg[6]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__2_n_4 ),
        .Q(voltage_reg[7]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__2_n_7 ),
        .Q(voltage_reg[8]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[8]_i_1__2 
       (.CI(\voltage_reg[4]_i_1__2_n_0 ),
        .CO({\voltage_reg[8]_i_1__2_n_0 ,\NLW_voltage_reg[8]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[8]_i_2__2_n_0 ,\voltage[8]_i_3__2_n_0 ,\voltage[8]_i_4__2_n_0 ,\voltage[8]_i_5__2_n_0 }),
        .O({\voltage_reg[8]_i_1__2_n_4 ,\voltage_reg[8]_i_1__2_n_5 ,\voltage_reg[8]_i_1__2_n_6 ,\voltage_reg[8]_i_1__2_n_7 }),
        .S({\voltage[8]_i_6__2_n_0 ,\voltage[8]_i_7__1_n_0 ,\voltage[8]_i_8__1_n_0 ,\voltage[8]_i_9__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__2_n_6 ),
        .Q(voltage_reg[9]),
        .R(ly2_delay));
endmodule

(* ORIG_REF_NAME = "neuron" *) 
module neuron__parameterized3
   (h_4,
    \tmp_sum_1_reg[5] ,
    \tmp_sum_b_0_reg[5] ,
    \tmp_sum_b_0_reg[28] ,
    \tmp_sum_b_0_reg[5]_0 ,
    \tmp_sum_b_0_reg[5]_1 ,
    \tmp_sum_b_0_reg[5]_2 ,
    \tmp_sum_b_0_reg[5]_3 ,
    \tmp_sum_b_0_reg[5]_4 ,
    \tmp_sum_b_0_reg[5]_5 ,
    clk_o_OBUF_BUFG,
    DI,
    S,
    ly2_delay,
    D,
    \tmp_sum_b_0_1_2_reg[31]_0 ,
    tmp_sum_b_0,
    tmp_sum_b_0_0);
  output h_4;
  output [0:0]\tmp_sum_1_reg[5] ;
  output [3:0]\tmp_sum_b_0_reg[5] ;
  output [3:0]\tmp_sum_b_0_reg[28] ;
  output [3:0]\tmp_sum_b_0_reg[5]_0 ;
  output [3:0]\tmp_sum_b_0_reg[5]_1 ;
  output [3:0]\tmp_sum_b_0_reg[5]_2 ;
  output [3:0]\tmp_sum_b_0_reg[5]_3 ;
  output [3:0]\tmp_sum_b_0_reg[5]_4 ;
  output [3:0]\tmp_sum_b_0_reg[5]_5 ;
  input clk_o_OBUF_BUFG;
  input [1:0]DI;
  input [1:0]S;
  input [0:0]ly2_delay;
  input [0:0]D;
  input [31:0]\tmp_sum_b_0_1_2_reg[31]_0 ;
  input [1:0]tmp_sum_b_0;
  input [0:0]tmp_sum_b_0_0;

  wire [31:7]C;
  wire [0:0]D;
  wire [1:0]DI;
  wire [1:0]S;
  wire clk_o_OBUF_BUFG;
  wire h_4;
  wire load;
  wire [0:0]ly2_delay;
  wire [31:0]sum;
  wire [28:0]tmp_sum_1_2;
  wire tmp_sum_1_20_carry__0_n_4;
  wire tmp_sum_1_20_carry__0_n_5;
  wire tmp_sum_1_20_carry__0_n_6;
  wire tmp_sum_1_20_carry__0_n_7;
  wire tmp_sum_1_20_carry_n_0;
  wire tmp_sum_1_20_carry_n_4;
  wire tmp_sum_1_20_carry_n_5;
  wire tmp_sum_1_20_carry_n_6;
  wire [0:0]\tmp_sum_1_reg[5] ;
  wire [1:0]tmp_sum_b_0;
  wire [0:0]tmp_sum_b_0_0;
  wire [31:0]tmp_sum_b_0_1_2;
  wire [31:0]\tmp_sum_b_0_1_2_reg[31]_0 ;
  wire [3:0]\tmp_sum_b_0_reg[28] ;
  wire [3:0]\tmp_sum_b_0_reg[5] ;
  wire [3:0]\tmp_sum_b_0_reg[5]_0 ;
  wire [3:0]\tmp_sum_b_0_reg[5]_1 ;
  wire [3:0]\tmp_sum_b_0_reg[5]_2 ;
  wire [3:0]\tmp_sum_b_0_reg[5]_3 ;
  wire [3:0]\tmp_sum_b_0_reg[5]_4 ;
  wire [3:0]\tmp_sum_b_0_reg[5]_5 ;
  wire voltage0_carry__0_i_1__4_n_0;
  wire voltage0_carry__0_i_2__4_n_0;
  wire voltage0_carry__0_i_3__4_n_0;
  wire voltage0_carry__0_i_4__4_n_0;
  wire voltage0_carry__0_n_0;
  wire voltage0_carry__1_i_1__4_n_0;
  wire voltage0_carry__1_i_2__4_n_0;
  wire voltage0_carry__1_i_3__4_n_0;
  wire voltage0_carry__1_i_4__4_n_0;
  wire voltage0_carry__1_n_0;
  wire voltage0_carry__2_i_1__4_n_0;
  wire voltage0_carry__2_i_2__4_n_0;
  wire voltage0_carry__2_i_3__4_n_0;
  wire voltage0_carry__2_i_4__4_n_0;
  wire voltage0_carry__2_n_0;
  wire voltage0_carry__3_i_1__4_n_0;
  wire voltage0_carry__3_i_2__4_n_0;
  wire voltage0_carry__3_i_3__4_n_0;
  wire voltage0_carry__3_i_4__4_n_0;
  wire voltage0_carry__3_n_0;
  wire voltage0_carry__4_i_1__4_n_0;
  wire voltage0_carry__4_i_2__4_n_0;
  wire voltage0_carry__4_i_3__4_n_0;
  wire voltage0_carry__4_i_4__4_n_0;
  wire voltage0_carry__4_n_0;
  wire voltage0_carry__5_i_1__4_n_0;
  wire voltage0_carry_i_1__4_n_0;
  wire voltage0_carry_i_2__4_n_0;
  wire voltage0_carry_i_3__2_n_0;
  wire voltage0_carry_n_0;
  wire voltage1_carry__0_i_1__3_n_0;
  wire voltage1_carry__0_i_2__3_n_0;
  wire voltage1_carry__0_i_3__3_n_0;
  wire voltage1_carry__0_i_4__4_n_0;
  wire voltage1_carry__0_i_5__4_n_0;
  wire voltage1_carry__0_i_6__4_n_0;
  wire voltage1_carry__0_i_7__4_n_0;
  wire voltage1_carry__0_n_0;
  wire voltage1_carry__1_i_1__3_n_0;
  wire voltage1_carry__1_i_2__3_n_0;
  wire voltage1_carry__1_i_3__3_n_0;
  wire voltage1_carry__1_i_4__3_n_0;
  wire voltage1_carry__1_i_5__4_n_0;
  wire voltage1_carry__1_i_6__4_n_0;
  wire voltage1_carry__1_i_7__4_n_0;
  wire voltage1_carry__1_i_8__4_n_0;
  wire voltage1_carry__1_n_0;
  wire voltage1_carry__2_i_1__4_n_0;
  wire voltage1_carry__2_i_2__3_n_0;
  wire voltage1_carry__2_i_3__3_n_0;
  wire voltage1_carry__2_i_4__3_n_0;
  wire voltage1_carry__2_i_5__4_n_0;
  wire voltage1_carry__2_i_6__4_n_0;
  wire voltage1_carry__2_i_7__4_n_0;
  wire voltage1_carry__2_i_8__4_n_0;
  wire voltage1_carry_i_1__3_n_0;
  wire voltage1_carry_i_2__3_n_0;
  wire voltage1_carry_i_3__3_n_0;
  wire voltage1_carry_i_4__3_n_0;
  wire voltage1_carry_i_5__3_n_0;
  wire voltage1_carry_i_6__3_n_0;
  wire voltage1_carry_i_7__3_n_0;
  wire voltage1_carry_i_8__3_n_0;
  wire voltage1_carry_n_0;
  wire [31:0]voltage2__93;
  wire voltage2_carry__0_i_1__2_n_0;
  wire voltage2_carry__0_i_2__2_n_0;
  wire voltage2_carry__0_i_3__2_n_0;
  wire voltage2_carry__0_i_4__2_n_0;
  wire voltage2_carry__0_n_0;
  wire voltage2_carry__1_i_1__2_n_0;
  wire voltage2_carry__1_i_2__2_n_0;
  wire voltage2_carry__1_i_3__2_n_0;
  wire voltage2_carry__1_i_4__2_n_0;
  wire voltage2_carry__1_n_0;
  wire voltage2_carry__2_i_1__2_n_0;
  wire voltage2_carry__2_i_2__2_n_0;
  wire voltage2_carry__2_i_3__2_n_0;
  wire voltage2_carry__2_i_4__2_n_0;
  wire voltage2_carry__2_n_0;
  wire voltage2_carry__3_i_1__2_n_0;
  wire voltage2_carry__3_i_2__2_n_0;
  wire voltage2_carry__3_i_3__2_n_0;
  wire voltage2_carry__3_i_4__2_n_0;
  wire voltage2_carry__3_n_0;
  wire voltage2_carry__4_i_1__2_n_0;
  wire voltage2_carry__4_i_2__2_n_0;
  wire voltage2_carry__4_i_3__2_n_0;
  wire voltage2_carry__4_i_4__2_n_0;
  wire voltage2_carry__4_n_0;
  wire voltage2_carry__5_i_1__2_n_0;
  wire voltage2_carry__5_i_2__2_n_0;
  wire voltage2_carry__5_i_3__2_n_0;
  wire voltage2_carry__5_i_4__2_n_0;
  wire voltage2_carry__5_n_0;
  wire voltage2_carry__6_i_1__2_n_0;
  wire voltage2_carry__6_i_2__2_n_0;
  wire voltage2_carry__6_i_3__2_n_0;
  wire voltage2_carry__6_i_4__2_n_0;
  wire voltage2_carry_i_1__2_n_0;
  wire voltage2_carry_i_2__2_n_0;
  wire voltage2_carry_i_3__2_n_0;
  wire voltage2_carry_i_4__2_n_0;
  wire voltage2_carry_n_0;
  wire \voltage[0]_i_2__3_n_0 ;
  wire \voltage[0]_i_3__3_n_0 ;
  wire \voltage[0]_i_4__3_n_0 ;
  wire \voltage[0]_i_5__3_n_0 ;
  wire \voltage[0]_i_6__3_n_0 ;
  wire \voltage[0]_i_7__4_n_0 ;
  wire \voltage[0]_i_8__3_n_0 ;
  wire \voltage[0]_i_9__3_n_0 ;
  wire \voltage[12]_i_2__3_n_0 ;
  wire \voltage[12]_i_3__3_n_0 ;
  wire \voltage[12]_i_4__3_n_0 ;
  wire \voltage[12]_i_5__3_n_0 ;
  wire \voltage[12]_i_6__2_n_0 ;
  wire \voltage[12]_i_7__2_n_0 ;
  wire \voltage[12]_i_8__2_n_0 ;
  wire \voltage[12]_i_9__2_n_0 ;
  wire \voltage[16]_i_2__3_n_0 ;
  wire \voltage[16]_i_3__3_n_0 ;
  wire \voltage[16]_i_4__3_n_0 ;
  wire \voltage[16]_i_5__3_n_0 ;
  wire \voltage[16]_i_6__2_n_0 ;
  wire \voltage[16]_i_7__2_n_0 ;
  wire \voltage[16]_i_8__2_n_0 ;
  wire \voltage[16]_i_9__2_n_0 ;
  wire \voltage[20]_i_2__3_n_0 ;
  wire \voltage[20]_i_3__3_n_0 ;
  wire \voltage[20]_i_4__3_n_0 ;
  wire \voltage[20]_i_5__3_n_0 ;
  wire \voltage[20]_i_6__2_n_0 ;
  wire \voltage[20]_i_7__2_n_0 ;
  wire \voltage[20]_i_8__2_n_0 ;
  wire \voltage[20]_i_9__2_n_0 ;
  wire \voltage[24]_i_2__3_n_0 ;
  wire \voltage[24]_i_3__3_n_0 ;
  wire \voltage[24]_i_4__3_n_0 ;
  wire \voltage[24]_i_5__3_n_0 ;
  wire \voltage[24]_i_6__2_n_0 ;
  wire \voltage[24]_i_7__2_n_0 ;
  wire \voltage[24]_i_8__2_n_0 ;
  wire \voltage[24]_i_9__2_n_0 ;
  wire \voltage[28]_i_2__3_n_0 ;
  wire \voltage[28]_i_3__3_n_0 ;
  wire \voltage[28]_i_4__3_n_0 ;
  wire \voltage[28]_i_5__3_n_0 ;
  wire \voltage[28]_i_6__2_n_0 ;
  wire \voltage[28]_i_7__2_n_0 ;
  wire \voltage[28]_i_8__2_n_0 ;
  wire \voltage[4]_i_2__3_n_0 ;
  wire \voltage[4]_i_3__3_n_0 ;
  wire \voltage[4]_i_4__3_n_0 ;
  wire \voltage[4]_i_5__4_n_0 ;
  wire \voltage[4]_i_6__3_n_0 ;
  wire \voltage[4]_i_7__3_n_0 ;
  wire \voltage[4]_i_8__4_n_0 ;
  wire \voltage[4]_i_9__3_n_0 ;
  wire \voltage[8]_i_2__3_n_0 ;
  wire \voltage[8]_i_3__3_n_0 ;
  wire \voltage[8]_i_4__3_n_0 ;
  wire \voltage[8]_i_5__3_n_0 ;
  wire \voltage[8]_i_6__3_n_0 ;
  wire \voltage[8]_i_7__2_n_0 ;
  wire \voltage[8]_i_8__2_n_0 ;
  wire \voltage[8]_i_9__2_n_0 ;
  wire [31:0]voltage_reg;
  wire \voltage_reg[0]_i_1__3_n_0 ;
  wire \voltage_reg[0]_i_1__3_n_4 ;
  wire \voltage_reg[0]_i_1__3_n_5 ;
  wire \voltage_reg[0]_i_1__3_n_6 ;
  wire \voltage_reg[0]_i_1__3_n_7 ;
  wire \voltage_reg[12]_i_1__3_n_0 ;
  wire \voltage_reg[12]_i_1__3_n_4 ;
  wire \voltage_reg[12]_i_1__3_n_5 ;
  wire \voltage_reg[12]_i_1__3_n_6 ;
  wire \voltage_reg[12]_i_1__3_n_7 ;
  wire \voltage_reg[16]_i_1__3_n_0 ;
  wire \voltage_reg[16]_i_1__3_n_4 ;
  wire \voltage_reg[16]_i_1__3_n_5 ;
  wire \voltage_reg[16]_i_1__3_n_6 ;
  wire \voltage_reg[16]_i_1__3_n_7 ;
  wire \voltage_reg[20]_i_1__3_n_0 ;
  wire \voltage_reg[20]_i_1__3_n_4 ;
  wire \voltage_reg[20]_i_1__3_n_5 ;
  wire \voltage_reg[20]_i_1__3_n_6 ;
  wire \voltage_reg[20]_i_1__3_n_7 ;
  wire \voltage_reg[24]_i_1__3_n_0 ;
  wire \voltage_reg[24]_i_1__3_n_4 ;
  wire \voltage_reg[24]_i_1__3_n_5 ;
  wire \voltage_reg[24]_i_1__3_n_6 ;
  wire \voltage_reg[24]_i_1__3_n_7 ;
  wire \voltage_reg[28]_i_1__3_n_4 ;
  wire \voltage_reg[28]_i_1__3_n_5 ;
  wire \voltage_reg[28]_i_1__3_n_6 ;
  wire \voltage_reg[28]_i_1__3_n_7 ;
  wire \voltage_reg[4]_i_1__3_n_0 ;
  wire \voltage_reg[4]_i_1__3_n_4 ;
  wire \voltage_reg[4]_i_1__3_n_5 ;
  wire \voltage_reg[4]_i_1__3_n_6 ;
  wire \voltage_reg[4]_i_1__3_n_7 ;
  wire \voltage_reg[8]_i_1__3_n_0 ;
  wire \voltage_reg[8]_i_1__3_n_4 ;
  wire \voltage_reg[8]_i_1__3_n_5 ;
  wire \voltage_reg[8]_i_1__3_n_6 ;
  wire \voltage_reg[8]_i_1__3_n_7 ;
  wire [2:0]NLW_tmp_sum_1_20_carry_CO_UNCONNECTED;
  wire [3:0]NLW_tmp_sum_1_20_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_voltage0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_voltage0_carry__5_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_voltage2_carry__6_CO_UNCONNECTED;
  wire [2:0]\NLW_voltage_reg[0]_i_1__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[12]_i_1__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[16]_i_1__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[20]_i_1__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[24]_i_1__3_CO_UNCONNECTED ;
  wire [3:0]\NLW_voltage_reg[28]_i_1__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[4]_i_1__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[8]_i_1__3_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    spike_out_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(load),
        .Q(h_4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[0]),
        .Q(sum[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[10]),
        .Q(sum[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[11]),
        .Q(sum[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[12]),
        .Q(sum[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[13]),
        .Q(sum[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[14]),
        .Q(sum[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[15]),
        .Q(sum[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[16]),
        .Q(sum[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[17]),
        .Q(sum[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[18]),
        .Q(sum[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[19]),
        .Q(sum[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[1]),
        .Q(sum[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[20]),
        .Q(sum[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[21]),
        .Q(sum[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[22]),
        .Q(sum[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[23]),
        .Q(sum[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[24]),
        .Q(sum[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[25]),
        .Q(sum[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[26]),
        .Q(sum[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[27]),
        .Q(sum[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[28]),
        .Q(sum[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[29]),
        .Q(sum[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[2]),
        .Q(sum[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[30]),
        .Q(sum[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[31]),
        .Q(sum[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[3]),
        .Q(sum[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[4]),
        .Q(sum[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[5]),
        .Q(sum[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[6]),
        .Q(sum[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[7]),
        .Q(sum[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[8]),
        .Q(sum[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[9]),
        .Q(sum[9]),
        .R(1'b0));
  CARRY4 tmp_sum_1_20_carry
       (.CI(1'b0),
        .CO({tmp_sum_1_20_carry_n_0,NLW_tmp_sum_1_20_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({DI[0],DI[0],1'b0,DI[0]}),
        .O({tmp_sum_1_20_carry_n_4,tmp_sum_1_20_carry_n_5,tmp_sum_1_20_carry_n_6,\tmp_sum_1_reg[5] }),
        .S({S[1],DI[0],DI[1],S[0]}));
  CARRY4 tmp_sum_1_20_carry__0
       (.CI(tmp_sum_1_20_carry_n_0),
        .CO(NLW_tmp_sum_1_20_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,DI[0],1'b0}),
        .O({tmp_sum_1_20_carry__0_n_4,tmp_sum_1_20_carry__0_n_5,tmp_sum_1_20_carry__0_n_6,tmp_sum_1_20_carry__0_n_7}),
        .S({1'b1,DI,DI[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(tmp_sum_1_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry_n_6),
        .Q(tmp_sum_1_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry__0_n_4),
        .Q(tmp_sum_1_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry_n_5),
        .Q(tmp_sum_1_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry_n_4),
        .Q(tmp_sum_1_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry__0_n_7),
        .Q(\tmp_sum_b_0_reg[5] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry__0_n_6),
        .Q(tmp_sum_1_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_20_carry__0_n_5),
        .Q(tmp_sum_1_2[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[11]_i_2 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[11]_i_3 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[11]_i_4 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[11]_i_5 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[15]_i_2 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[15]_i_3 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[15]_i_4 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[15]_i_5 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_2 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[19]_i_2 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_3 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[19]_i_3 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_3 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[19]_i_4 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_3 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[19]_i_5 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_3 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[23]_i_2 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_4 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[23]_i_3 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_4 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[23]_i_4 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_4 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[23]_i_5 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_4 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[27]_i_2 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_5 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[27]_i_3 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_5 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[27]_i_4 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_5 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[27]_i_5 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_5 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[31]_i_2 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[31]_i_3 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[31]_i_4 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[31]_i_5 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_2 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[3]),
        .O(\tmp_sum_b_0_reg[28] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_3 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[2]),
        .O(\tmp_sum_b_0_reg[28] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_4 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[1]),
        .O(\tmp_sum_b_0_reg[28] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_5 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2[0]),
        .O(\tmp_sum_b_0_reg[28] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[7]_i_2 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[5] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[7]_i_3 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[6]),
        .O(\tmp_sum_b_0_reg[5] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[7]_i_4 
       (.I0(tmp_sum_b_0_0),
        .I1(tmp_sum_1_2[5]),
        .O(\tmp_sum_b_0_reg[5] [1]));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [0]),
        .Q(tmp_sum_b_0_1_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [10]),
        .Q(tmp_sum_b_0_1_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [11]),
        .Q(tmp_sum_b_0_1_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [12]),
        .Q(tmp_sum_b_0_1_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [13]),
        .Q(tmp_sum_b_0_1_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [14]),
        .Q(tmp_sum_b_0_1_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [15]),
        .Q(tmp_sum_b_0_1_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [16]),
        .Q(tmp_sum_b_0_1_2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [17]),
        .Q(tmp_sum_b_0_1_2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [18]),
        .Q(tmp_sum_b_0_1_2[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [19]),
        .Q(tmp_sum_b_0_1_2[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [1]),
        .Q(tmp_sum_b_0_1_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [20]),
        .Q(tmp_sum_b_0_1_2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [21]),
        .Q(tmp_sum_b_0_1_2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [22]),
        .Q(tmp_sum_b_0_1_2[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [23]),
        .Q(tmp_sum_b_0_1_2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [24]),
        .Q(tmp_sum_b_0_1_2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [25]),
        .Q(tmp_sum_b_0_1_2[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [26]),
        .Q(tmp_sum_b_0_1_2[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [27]),
        .Q(tmp_sum_b_0_1_2[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [28]),
        .Q(tmp_sum_b_0_1_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [29]),
        .Q(tmp_sum_b_0_1_2[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [2]),
        .Q(tmp_sum_b_0_1_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [30]),
        .Q(tmp_sum_b_0_1_2[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [31]),
        .Q(tmp_sum_b_0_1_2[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [3]),
        .Q(tmp_sum_b_0_1_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [4]),
        .Q(tmp_sum_b_0_1_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [5]),
        .Q(tmp_sum_b_0_1_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [6]),
        .Q(tmp_sum_b_0_1_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [7]),
        .Q(tmp_sum_b_0_1_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [8]),
        .Q(tmp_sum_b_0_1_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [9]),
        .Q(tmp_sum_b_0_1_2[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 voltage0_carry
       (.CI(1'b0),
        .CO({voltage0_carry_n_0,NLW_voltage0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage2__93[10:8],1'b0}),
        .O(C[10:7]),
        .S({voltage0_carry_i_1__4_n_0,voltage0_carry_i_2__4_n_0,voltage0_carry_i_3__2_n_0,voltage2__93[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__0
       (.CI(voltage0_carry_n_0),
        .CO({voltage0_carry__0_n_0,NLW_voltage0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[14:11]),
        .O(C[14:11]),
        .S({voltage0_carry__0_i_1__4_n_0,voltage0_carry__0_i_2__4_n_0,voltage0_carry__0_i_3__4_n_0,voltage0_carry__0_i_4__4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_1__4
       (.I0(voltage2__93[14]),
        .O(voltage0_carry__0_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_2__4
       (.I0(voltage2__93[13]),
        .O(voltage0_carry__0_i_2__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_3__4
       (.I0(voltage2__93[12]),
        .O(voltage0_carry__0_i_3__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_4__4
       (.I0(voltage2__93[11]),
        .O(voltage0_carry__0_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__1
       (.CI(voltage0_carry__0_n_0),
        .CO({voltage0_carry__1_n_0,NLW_voltage0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[18:15]),
        .O(C[18:15]),
        .S({voltage0_carry__1_i_1__4_n_0,voltage0_carry__1_i_2__4_n_0,voltage0_carry__1_i_3__4_n_0,voltage0_carry__1_i_4__4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_1__4
       (.I0(voltage2__93[18]),
        .O(voltage0_carry__1_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_2__4
       (.I0(voltage2__93[17]),
        .O(voltage0_carry__1_i_2__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_3__4
       (.I0(voltage2__93[16]),
        .O(voltage0_carry__1_i_3__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_4__4
       (.I0(voltage2__93[15]),
        .O(voltage0_carry__1_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__2
       (.CI(voltage0_carry__1_n_0),
        .CO({voltage0_carry__2_n_0,NLW_voltage0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[22:19]),
        .O(C[22:19]),
        .S({voltage0_carry__2_i_1__4_n_0,voltage0_carry__2_i_2__4_n_0,voltage0_carry__2_i_3__4_n_0,voltage0_carry__2_i_4__4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_1__4
       (.I0(voltage2__93[22]),
        .O(voltage0_carry__2_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_2__4
       (.I0(voltage2__93[21]),
        .O(voltage0_carry__2_i_2__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_3__4
       (.I0(voltage2__93[20]),
        .O(voltage0_carry__2_i_3__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_4__4
       (.I0(voltage2__93[19]),
        .O(voltage0_carry__2_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__3
       (.CI(voltage0_carry__2_n_0),
        .CO({voltage0_carry__3_n_0,NLW_voltage0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[26:23]),
        .O(C[26:23]),
        .S({voltage0_carry__3_i_1__4_n_0,voltage0_carry__3_i_2__4_n_0,voltage0_carry__3_i_3__4_n_0,voltage0_carry__3_i_4__4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_1__4
       (.I0(voltage2__93[26]),
        .O(voltage0_carry__3_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_2__4
       (.I0(voltage2__93[25]),
        .O(voltage0_carry__3_i_2__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_3__4
       (.I0(voltage2__93[24]),
        .O(voltage0_carry__3_i_3__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_4__4
       (.I0(voltage2__93[23]),
        .O(voltage0_carry__3_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__4
       (.CI(voltage0_carry__3_n_0),
        .CO({voltage0_carry__4_n_0,NLW_voltage0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[30:27]),
        .O(C[30:27]),
        .S({voltage0_carry__4_i_1__4_n_0,voltage0_carry__4_i_2__4_n_0,voltage0_carry__4_i_3__4_n_0,voltage0_carry__4_i_4__4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_1__4
       (.I0(voltage2__93[30]),
        .O(voltage0_carry__4_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_2__4
       (.I0(voltage2__93[29]),
        .O(voltage0_carry__4_i_2__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_3__4
       (.I0(voltage2__93[28]),
        .O(voltage0_carry__4_i_3__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_4__4
       (.I0(voltage2__93[27]),
        .O(voltage0_carry__4_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__5
       (.CI(voltage0_carry__4_n_0),
        .CO(NLW_voltage0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_voltage0_carry__5_O_UNCONNECTED[3:1],C[31]}),
        .S({1'b0,1'b0,1'b0,voltage0_carry__5_i_1__4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__5_i_1__4
       (.I0(voltage2__93[31]),
        .O(voltage0_carry__5_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_1__4
       (.I0(voltage2__93[10]),
        .O(voltage0_carry_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_2__4
       (.I0(voltage2__93[9]),
        .O(voltage0_carry_i_2__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_3__2
       (.I0(voltage2__93[8]),
        .O(voltage0_carry_i_3__2_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry
       (.CI(1'b0),
        .CO({voltage1_carry_n_0,NLW_voltage1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry_i_1__3_n_0,voltage1_carry_i_2__3_n_0,voltage1_carry_i_3__3_n_0,voltage1_carry_i_4__3_n_0}),
        .O(NLW_voltage1_carry_O_UNCONNECTED[3:0]),
        .S({voltage1_carry_i_5__3_n_0,voltage1_carry_i_6__3_n_0,voltage1_carry_i_7__3_n_0,voltage1_carry_i_8__3_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__0
       (.CI(voltage1_carry_n_0),
        .CO({voltage1_carry__0_n_0,NLW_voltage1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__0_i_1__3_n_0,voltage1_carry__0_i_2__3_n_0,voltage1_carry__0_i_3__3_n_0,voltage2__93[9]}),
        .O(NLW_voltage1_carry__0_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__0_i_4__4_n_0,voltage1_carry__0_i_5__4_n_0,voltage1_carry__0_i_6__4_n_0,voltage1_carry__0_i_7__4_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_1__3
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_2__3
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_3__3
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_4__4
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_5__4
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_6__4
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_6__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__0_i_7__4
       (.I0(voltage2__93[8]),
        .I1(voltage2__93[9]),
        .O(voltage1_carry__0_i_7__4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__1
       (.CI(voltage1_carry__0_n_0),
        .CO({voltage1_carry__1_n_0,NLW_voltage1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__1_i_1__3_n_0,voltage1_carry__1_i_2__3_n_0,voltage1_carry__1_i_3__3_n_0,voltage1_carry__1_i_4__3_n_0}),
        .O(NLW_voltage1_carry__1_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__1_i_5__4_n_0,voltage1_carry__1_i_6__4_n_0,voltage1_carry__1_i_7__4_n_0,voltage1_carry__1_i_8__4_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_1__3
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_1__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_2__3
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_2__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_3__3
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_3__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_4__3
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_5__4
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_6__4
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_6__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_7__4
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_7__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_8__4
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_8__4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__2
       (.CI(voltage1_carry__1_n_0),
        .CO({load,NLW_voltage1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__2_i_1__4_n_0,voltage1_carry__2_i_2__3_n_0,voltage1_carry__2_i_3__3_n_0,voltage1_carry__2_i_4__3_n_0}),
        .O(NLW_voltage1_carry__2_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__2_i_5__4_n_0,voltage1_carry__2_i_6__4_n_0,voltage1_carry__2_i_7__4_n_0,voltage1_carry__2_i_8__4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__2_i_1__4
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_1__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_2__3
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_2__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_3__3
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_3__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_4__3
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_5__4
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_6__4
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_6__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_7__4
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_7__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_8__4
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_8__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_1__3
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_2__3
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_3__3
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_4__3
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_5__3
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_6__3
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_6__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_7__3
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_7__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_8__3
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_8__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry
       (.CI(1'b0),
        .CO({voltage2_carry_n_0,NLW_voltage2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[3:0]),
        .O(voltage2__93[3:0]),
        .S({voltage2_carry_i_1__2_n_0,voltage2_carry_i_2__2_n_0,voltage2_carry_i_3__2_n_0,voltage2_carry_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__0
       (.CI(voltage2_carry_n_0),
        .CO({voltage2_carry__0_n_0,NLW_voltage2_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[7:4]),
        .O(voltage2__93[7:4]),
        .S({voltage2_carry__0_i_1__2_n_0,voltage2_carry__0_i_2__2_n_0,voltage2_carry__0_i_3__2_n_0,voltage2_carry__0_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_1__2
       (.I0(voltage_reg[7]),
        .I1(sum[7]),
        .O(voltage2_carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_2__2
       (.I0(voltage_reg[6]),
        .I1(sum[6]),
        .O(voltage2_carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_3__2
       (.I0(voltage_reg[5]),
        .I1(sum[5]),
        .O(voltage2_carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_4__2
       (.I0(voltage_reg[4]),
        .I1(sum[4]),
        .O(voltage2_carry__0_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__1
       (.CI(voltage2_carry__0_n_0),
        .CO({voltage2_carry__1_n_0,NLW_voltage2_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[11:8]),
        .O(voltage2__93[11:8]),
        .S({voltage2_carry__1_i_1__2_n_0,voltage2_carry__1_i_2__2_n_0,voltage2_carry__1_i_3__2_n_0,voltage2_carry__1_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_1__2
       (.I0(voltage_reg[11]),
        .I1(sum[11]),
        .O(voltage2_carry__1_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_2__2
       (.I0(voltage_reg[10]),
        .I1(sum[10]),
        .O(voltage2_carry__1_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_3__2
       (.I0(voltage_reg[9]),
        .I1(sum[9]),
        .O(voltage2_carry__1_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_4__2
       (.I0(voltage_reg[8]),
        .I1(sum[8]),
        .O(voltage2_carry__1_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__2
       (.CI(voltage2_carry__1_n_0),
        .CO({voltage2_carry__2_n_0,NLW_voltage2_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[15:12]),
        .O(voltage2__93[15:12]),
        .S({voltage2_carry__2_i_1__2_n_0,voltage2_carry__2_i_2__2_n_0,voltage2_carry__2_i_3__2_n_0,voltage2_carry__2_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_1__2
       (.I0(voltage_reg[15]),
        .I1(sum[15]),
        .O(voltage2_carry__2_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_2__2
       (.I0(voltage_reg[14]),
        .I1(sum[14]),
        .O(voltage2_carry__2_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_3__2
       (.I0(voltage_reg[13]),
        .I1(sum[13]),
        .O(voltage2_carry__2_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_4__2
       (.I0(voltage_reg[12]),
        .I1(sum[12]),
        .O(voltage2_carry__2_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__3
       (.CI(voltage2_carry__2_n_0),
        .CO({voltage2_carry__3_n_0,NLW_voltage2_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[19:16]),
        .O(voltage2__93[19:16]),
        .S({voltage2_carry__3_i_1__2_n_0,voltage2_carry__3_i_2__2_n_0,voltage2_carry__3_i_3__2_n_0,voltage2_carry__3_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_1__2
       (.I0(voltage_reg[19]),
        .I1(sum[19]),
        .O(voltage2_carry__3_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_2__2
       (.I0(voltage_reg[18]),
        .I1(sum[18]),
        .O(voltage2_carry__3_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_3__2
       (.I0(voltage_reg[17]),
        .I1(sum[17]),
        .O(voltage2_carry__3_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_4__2
       (.I0(voltage_reg[16]),
        .I1(sum[16]),
        .O(voltage2_carry__3_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__4
       (.CI(voltage2_carry__3_n_0),
        .CO({voltage2_carry__4_n_0,NLW_voltage2_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[23:20]),
        .O(voltage2__93[23:20]),
        .S({voltage2_carry__4_i_1__2_n_0,voltage2_carry__4_i_2__2_n_0,voltage2_carry__4_i_3__2_n_0,voltage2_carry__4_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_1__2
       (.I0(voltage_reg[23]),
        .I1(sum[23]),
        .O(voltage2_carry__4_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_2__2
       (.I0(voltage_reg[22]),
        .I1(sum[22]),
        .O(voltage2_carry__4_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_3__2
       (.I0(voltage_reg[21]),
        .I1(sum[21]),
        .O(voltage2_carry__4_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_4__2
       (.I0(voltage_reg[20]),
        .I1(sum[20]),
        .O(voltage2_carry__4_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__5
       (.CI(voltage2_carry__4_n_0),
        .CO({voltage2_carry__5_n_0,NLW_voltage2_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[27:24]),
        .O(voltage2__93[27:24]),
        .S({voltage2_carry__5_i_1__2_n_0,voltage2_carry__5_i_2__2_n_0,voltage2_carry__5_i_3__2_n_0,voltage2_carry__5_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_1__2
       (.I0(voltage_reg[27]),
        .I1(sum[27]),
        .O(voltage2_carry__5_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_2__2
       (.I0(voltage_reg[26]),
        .I1(sum[26]),
        .O(voltage2_carry__5_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_3__2
       (.I0(voltage_reg[25]),
        .I1(sum[25]),
        .O(voltage2_carry__5_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_4__2
       (.I0(voltage_reg[24]),
        .I1(sum[24]),
        .O(voltage2_carry__5_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__6
       (.CI(voltage2_carry__5_n_0),
        .CO(NLW_voltage2_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,voltage_reg[30:28]}),
        .O(voltage2__93[31:28]),
        .S({voltage2_carry__6_i_1__2_n_0,voltage2_carry__6_i_2__2_n_0,voltage2_carry__6_i_3__2_n_0,voltage2_carry__6_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_1__2
       (.I0(voltage_reg[31]),
        .I1(sum[31]),
        .O(voltage2_carry__6_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_2__2
       (.I0(voltage_reg[30]),
        .I1(sum[30]),
        .O(voltage2_carry__6_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_3__2
       (.I0(voltage_reg[29]),
        .I1(sum[29]),
        .O(voltage2_carry__6_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_4__2
       (.I0(voltage_reg[28]),
        .I1(sum[28]),
        .O(voltage2_carry__6_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_1__2
       (.I0(voltage_reg[3]),
        .I1(sum[3]),
        .O(voltage2_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_2__2
       (.I0(voltage_reg[2]),
        .I1(sum[2]),
        .O(voltage2_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_3__2
       (.I0(voltage_reg[1]),
        .I1(sum[1]),
        .O(voltage2_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_4__2
       (.I0(voltage_reg[0]),
        .I1(sum[0]),
        .O(voltage2_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_2__3 
       (.I0(sum[3]),
        .I1(load),
        .O(\voltage[0]_i_2__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_3__3 
       (.I0(sum[2]),
        .I1(load),
        .O(\voltage[0]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_4__3 
       (.I0(sum[1]),
        .I1(load),
        .O(\voltage[0]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_5__3 
       (.I0(sum[0]),
        .I1(load),
        .O(\voltage[0]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_6__3 
       (.I0(sum[3]),
        .I1(voltage_reg[3]),
        .I2(load),
        .I3(voltage2__93[3]),
        .O(\voltage[0]_i_6__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_7__4 
       (.I0(sum[2]),
        .I1(voltage_reg[2]),
        .I2(load),
        .I3(voltage2__93[2]),
        .O(\voltage[0]_i_7__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_8__3 
       (.I0(sum[1]),
        .I1(voltage_reg[1]),
        .I2(load),
        .I3(voltage2__93[1]),
        .O(\voltage[0]_i_8__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_9__3 
       (.I0(sum[0]),
        .I1(voltage_reg[0]),
        .I2(load),
        .I3(voltage2__93[0]),
        .O(\voltage[0]_i_9__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_2__3 
       (.I0(sum[15]),
        .I1(load),
        .O(\voltage[12]_i_2__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_3__3 
       (.I0(sum[14]),
        .I1(load),
        .O(\voltage[12]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_4__3 
       (.I0(sum[13]),
        .I1(load),
        .O(\voltage[12]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_5__3 
       (.I0(sum[12]),
        .I1(load),
        .O(\voltage[12]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_6__2 
       (.I0(sum[15]),
        .I1(voltage_reg[15]),
        .I2(load),
        .I3(C[15]),
        .O(\voltage[12]_i_6__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_7__2 
       (.I0(sum[14]),
        .I1(voltage_reg[14]),
        .I2(load),
        .I3(C[14]),
        .O(\voltage[12]_i_7__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_8__2 
       (.I0(sum[13]),
        .I1(voltage_reg[13]),
        .I2(load),
        .I3(C[13]),
        .O(\voltage[12]_i_8__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_9__2 
       (.I0(sum[12]),
        .I1(voltage_reg[12]),
        .I2(load),
        .I3(C[12]),
        .O(\voltage[12]_i_9__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_2__3 
       (.I0(sum[19]),
        .I1(load),
        .O(\voltage[16]_i_2__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_3__3 
       (.I0(sum[18]),
        .I1(load),
        .O(\voltage[16]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_4__3 
       (.I0(sum[17]),
        .I1(load),
        .O(\voltage[16]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_5__3 
       (.I0(sum[16]),
        .I1(load),
        .O(\voltage[16]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_6__2 
       (.I0(sum[19]),
        .I1(voltage_reg[19]),
        .I2(load),
        .I3(C[19]),
        .O(\voltage[16]_i_6__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_7__2 
       (.I0(sum[18]),
        .I1(voltage_reg[18]),
        .I2(load),
        .I3(C[18]),
        .O(\voltage[16]_i_7__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_8__2 
       (.I0(sum[17]),
        .I1(voltage_reg[17]),
        .I2(load),
        .I3(C[17]),
        .O(\voltage[16]_i_8__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_9__2 
       (.I0(sum[16]),
        .I1(voltage_reg[16]),
        .I2(load),
        .I3(C[16]),
        .O(\voltage[16]_i_9__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_2__3 
       (.I0(sum[23]),
        .I1(load),
        .O(\voltage[20]_i_2__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_3__3 
       (.I0(sum[22]),
        .I1(load),
        .O(\voltage[20]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_4__3 
       (.I0(sum[21]),
        .I1(load),
        .O(\voltage[20]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_5__3 
       (.I0(sum[20]),
        .I1(load),
        .O(\voltage[20]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_6__2 
       (.I0(sum[23]),
        .I1(voltage_reg[23]),
        .I2(load),
        .I3(C[23]),
        .O(\voltage[20]_i_6__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_7__2 
       (.I0(sum[22]),
        .I1(voltage_reg[22]),
        .I2(load),
        .I3(C[22]),
        .O(\voltage[20]_i_7__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_8__2 
       (.I0(sum[21]),
        .I1(voltage_reg[21]),
        .I2(load),
        .I3(C[21]),
        .O(\voltage[20]_i_8__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_9__2 
       (.I0(sum[20]),
        .I1(voltage_reg[20]),
        .I2(load),
        .I3(C[20]),
        .O(\voltage[20]_i_9__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_2__3 
       (.I0(sum[27]),
        .I1(load),
        .O(\voltage[24]_i_2__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_3__3 
       (.I0(sum[26]),
        .I1(load),
        .O(\voltage[24]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_4__3 
       (.I0(sum[25]),
        .I1(load),
        .O(\voltage[24]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_5__3 
       (.I0(sum[24]),
        .I1(load),
        .O(\voltage[24]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_6__2 
       (.I0(sum[27]),
        .I1(voltage_reg[27]),
        .I2(load),
        .I3(C[27]),
        .O(\voltage[24]_i_6__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_7__2 
       (.I0(sum[26]),
        .I1(voltage_reg[26]),
        .I2(load),
        .I3(C[26]),
        .O(\voltage[24]_i_7__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_8__2 
       (.I0(sum[25]),
        .I1(voltage_reg[25]),
        .I2(load),
        .I3(C[25]),
        .O(\voltage[24]_i_8__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_9__2 
       (.I0(sum[24]),
        .I1(voltage_reg[24]),
        .I2(load),
        .I3(C[24]),
        .O(\voltage[24]_i_9__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_2__3 
       (.I0(sum[30]),
        .I1(load),
        .O(\voltage[28]_i_2__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_3__3 
       (.I0(sum[29]),
        .I1(load),
        .O(\voltage[28]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_4__3 
       (.I0(sum[28]),
        .I1(load),
        .O(\voltage[28]_i_4__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_5__3 
       (.I0(sum[31]),
        .I1(voltage_reg[31]),
        .I2(load),
        .I3(C[31]),
        .O(\voltage[28]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_6__2 
       (.I0(sum[30]),
        .I1(voltage_reg[30]),
        .I2(load),
        .I3(C[30]),
        .O(\voltage[28]_i_6__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_7__2 
       (.I0(sum[29]),
        .I1(voltage_reg[29]),
        .I2(load),
        .I3(C[29]),
        .O(\voltage[28]_i_7__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_8__2 
       (.I0(sum[28]),
        .I1(voltage_reg[28]),
        .I2(load),
        .I3(C[28]),
        .O(\voltage[28]_i_8__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_2__3 
       (.I0(sum[7]),
        .I1(load),
        .O(\voltage[4]_i_2__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_3__3 
       (.I0(sum[6]),
        .I1(load),
        .O(\voltage[4]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_4__3 
       (.I0(sum[5]),
        .I1(load),
        .O(\voltage[4]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_5__4 
       (.I0(sum[4]),
        .I1(load),
        .O(\voltage[4]_i_5__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_6__3 
       (.I0(sum[7]),
        .I1(voltage_reg[7]),
        .I2(load),
        .I3(C[7]),
        .O(\voltage[4]_i_6__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_7__3 
       (.I0(sum[6]),
        .I1(voltage_reg[6]),
        .I2(load),
        .I3(voltage2__93[6]),
        .O(\voltage[4]_i_7__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_8__4 
       (.I0(sum[5]),
        .I1(voltage_reg[5]),
        .I2(load),
        .I3(voltage2__93[5]),
        .O(\voltage[4]_i_8__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_9__3 
       (.I0(sum[4]),
        .I1(voltage_reg[4]),
        .I2(load),
        .I3(voltage2__93[4]),
        .O(\voltage[4]_i_9__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_2__3 
       (.I0(sum[11]),
        .I1(load),
        .O(\voltage[8]_i_2__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_3__3 
       (.I0(sum[10]),
        .I1(load),
        .O(\voltage[8]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_4__3 
       (.I0(sum[9]),
        .I1(load),
        .O(\voltage[8]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_5__3 
       (.I0(sum[8]),
        .I1(load),
        .O(\voltage[8]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_6__3 
       (.I0(sum[11]),
        .I1(voltage_reg[11]),
        .I2(load),
        .I3(C[11]),
        .O(\voltage[8]_i_6__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_7__2 
       (.I0(sum[10]),
        .I1(voltage_reg[10]),
        .I2(load),
        .I3(C[10]),
        .O(\voltage[8]_i_7__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_8__2 
       (.I0(sum[9]),
        .I1(voltage_reg[9]),
        .I2(load),
        .I3(C[9]),
        .O(\voltage[8]_i_8__2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_9__2 
       (.I0(sum[8]),
        .I1(voltage_reg[8]),
        .I2(load),
        .I3(C[8]),
        .O(\voltage[8]_i_9__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__3_n_7 ),
        .Q(voltage_reg[0]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[0]_i_1__3 
       (.CI(1'b0),
        .CO({\voltage_reg[0]_i_1__3_n_0 ,\NLW_voltage_reg[0]_i_1__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[0]_i_2__3_n_0 ,\voltage[0]_i_3__3_n_0 ,\voltage[0]_i_4__3_n_0 ,\voltage[0]_i_5__3_n_0 }),
        .O({\voltage_reg[0]_i_1__3_n_4 ,\voltage_reg[0]_i_1__3_n_5 ,\voltage_reg[0]_i_1__3_n_6 ,\voltage_reg[0]_i_1__3_n_7 }),
        .S({\voltage[0]_i_6__3_n_0 ,\voltage[0]_i_7__4_n_0 ,\voltage[0]_i_8__3_n_0 ,\voltage[0]_i_9__3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__3_n_5 ),
        .Q(voltage_reg[10]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__3_n_4 ),
        .Q(voltage_reg[11]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__3_n_7 ),
        .Q(voltage_reg[12]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[12]_i_1__3 
       (.CI(\voltage_reg[8]_i_1__3_n_0 ),
        .CO({\voltage_reg[12]_i_1__3_n_0 ,\NLW_voltage_reg[12]_i_1__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[12]_i_2__3_n_0 ,\voltage[12]_i_3__3_n_0 ,\voltage[12]_i_4__3_n_0 ,\voltage[12]_i_5__3_n_0 }),
        .O({\voltage_reg[12]_i_1__3_n_4 ,\voltage_reg[12]_i_1__3_n_5 ,\voltage_reg[12]_i_1__3_n_6 ,\voltage_reg[12]_i_1__3_n_7 }),
        .S({\voltage[12]_i_6__2_n_0 ,\voltage[12]_i_7__2_n_0 ,\voltage[12]_i_8__2_n_0 ,\voltage[12]_i_9__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__3_n_6 ),
        .Q(voltage_reg[13]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__3_n_5 ),
        .Q(voltage_reg[14]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__3_n_4 ),
        .Q(voltage_reg[15]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__3_n_7 ),
        .Q(voltage_reg[16]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[16]_i_1__3 
       (.CI(\voltage_reg[12]_i_1__3_n_0 ),
        .CO({\voltage_reg[16]_i_1__3_n_0 ,\NLW_voltage_reg[16]_i_1__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[16]_i_2__3_n_0 ,\voltage[16]_i_3__3_n_0 ,\voltage[16]_i_4__3_n_0 ,\voltage[16]_i_5__3_n_0 }),
        .O({\voltage_reg[16]_i_1__3_n_4 ,\voltage_reg[16]_i_1__3_n_5 ,\voltage_reg[16]_i_1__3_n_6 ,\voltage_reg[16]_i_1__3_n_7 }),
        .S({\voltage[16]_i_6__2_n_0 ,\voltage[16]_i_7__2_n_0 ,\voltage[16]_i_8__2_n_0 ,\voltage[16]_i_9__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__3_n_6 ),
        .Q(voltage_reg[17]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__3_n_5 ),
        .Q(voltage_reg[18]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__3_n_4 ),
        .Q(voltage_reg[19]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__3_n_6 ),
        .Q(voltage_reg[1]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__3_n_7 ),
        .Q(voltage_reg[20]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[20]_i_1__3 
       (.CI(\voltage_reg[16]_i_1__3_n_0 ),
        .CO({\voltage_reg[20]_i_1__3_n_0 ,\NLW_voltage_reg[20]_i_1__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[20]_i_2__3_n_0 ,\voltage[20]_i_3__3_n_0 ,\voltage[20]_i_4__3_n_0 ,\voltage[20]_i_5__3_n_0 }),
        .O({\voltage_reg[20]_i_1__3_n_4 ,\voltage_reg[20]_i_1__3_n_5 ,\voltage_reg[20]_i_1__3_n_6 ,\voltage_reg[20]_i_1__3_n_7 }),
        .S({\voltage[20]_i_6__2_n_0 ,\voltage[20]_i_7__2_n_0 ,\voltage[20]_i_8__2_n_0 ,\voltage[20]_i_9__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__3_n_6 ),
        .Q(voltage_reg[21]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__3_n_5 ),
        .Q(voltage_reg[22]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__3_n_4 ),
        .Q(voltage_reg[23]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__3_n_7 ),
        .Q(voltage_reg[24]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[24]_i_1__3 
       (.CI(\voltage_reg[20]_i_1__3_n_0 ),
        .CO({\voltage_reg[24]_i_1__3_n_0 ,\NLW_voltage_reg[24]_i_1__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[24]_i_2__3_n_0 ,\voltage[24]_i_3__3_n_0 ,\voltage[24]_i_4__3_n_0 ,\voltage[24]_i_5__3_n_0 }),
        .O({\voltage_reg[24]_i_1__3_n_4 ,\voltage_reg[24]_i_1__3_n_5 ,\voltage_reg[24]_i_1__3_n_6 ,\voltage_reg[24]_i_1__3_n_7 }),
        .S({\voltage[24]_i_6__2_n_0 ,\voltage[24]_i_7__2_n_0 ,\voltage[24]_i_8__2_n_0 ,\voltage[24]_i_9__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__3_n_6 ),
        .Q(voltage_reg[25]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__3_n_5 ),
        .Q(voltage_reg[26]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__3_n_4 ),
        .Q(voltage_reg[27]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__3_n_7 ),
        .Q(voltage_reg[28]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[28]_i_1__3 
       (.CI(\voltage_reg[24]_i_1__3_n_0 ),
        .CO(\NLW_voltage_reg[28]_i_1__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\voltage[28]_i_2__3_n_0 ,\voltage[28]_i_3__3_n_0 ,\voltage[28]_i_4__3_n_0 }),
        .O({\voltage_reg[28]_i_1__3_n_4 ,\voltage_reg[28]_i_1__3_n_5 ,\voltage_reg[28]_i_1__3_n_6 ,\voltage_reg[28]_i_1__3_n_7 }),
        .S({\voltage[28]_i_5__3_n_0 ,\voltage[28]_i_6__2_n_0 ,\voltage[28]_i_7__2_n_0 ,\voltage[28]_i_8__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__3_n_6 ),
        .Q(voltage_reg[29]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__3_n_5 ),
        .Q(voltage_reg[2]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__3_n_5 ),
        .Q(voltage_reg[30]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__3_n_4 ),
        .Q(voltage_reg[31]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__3_n_4 ),
        .Q(voltage_reg[3]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__3_n_7 ),
        .Q(voltage_reg[4]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[4]_i_1__3 
       (.CI(\voltage_reg[0]_i_1__3_n_0 ),
        .CO({\voltage_reg[4]_i_1__3_n_0 ,\NLW_voltage_reg[4]_i_1__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[4]_i_2__3_n_0 ,\voltage[4]_i_3__3_n_0 ,\voltage[4]_i_4__3_n_0 ,\voltage[4]_i_5__4_n_0 }),
        .O({\voltage_reg[4]_i_1__3_n_4 ,\voltage_reg[4]_i_1__3_n_5 ,\voltage_reg[4]_i_1__3_n_6 ,\voltage_reg[4]_i_1__3_n_7 }),
        .S({\voltage[4]_i_6__3_n_0 ,\voltage[4]_i_7__3_n_0 ,\voltage[4]_i_8__4_n_0 ,\voltage[4]_i_9__3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__3_n_6 ),
        .Q(voltage_reg[5]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__3_n_5 ),
        .Q(voltage_reg[6]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__3_n_4 ),
        .Q(voltage_reg[7]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__3_n_7 ),
        .Q(voltage_reg[8]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[8]_i_1__3 
       (.CI(\voltage_reg[4]_i_1__3_n_0 ),
        .CO({\voltage_reg[8]_i_1__3_n_0 ,\NLW_voltage_reg[8]_i_1__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[8]_i_2__3_n_0 ,\voltage[8]_i_3__3_n_0 ,\voltage[8]_i_4__3_n_0 ,\voltage[8]_i_5__3_n_0 }),
        .O({\voltage_reg[8]_i_1__3_n_4 ,\voltage_reg[8]_i_1__3_n_5 ,\voltage_reg[8]_i_1__3_n_6 ,\voltage_reg[8]_i_1__3_n_7 }),
        .S({\voltage[8]_i_6__3_n_0 ,\voltage[8]_i_7__2_n_0 ,\voltage[8]_i_8__2_n_0 ,\voltage[8]_i_9__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__3_n_6 ),
        .Q(voltage_reg[9]),
        .R(ly2_delay));
endmodule

(* ORIG_REF_NAME = "neuron" *) 
module neuron__parameterized4
   (h_5,
    DI,
    D,
    \tmp_sum_1_reg[5]_0 ,
    S,
    \tmp_sum_1_reg[5]_1 ,
    \tmp_sum_1_reg[5]_2 ,
    \tmp_sum_1_reg[5]_3 ,
    \tmp_sum_1_reg[5]_4 ,
    \tmp_sum_b_0_reg[28] ,
    \tmp_sum_b_0_reg[5] ,
    clk_o_OBUF_BUFG,
    g_sp,
    ly2_delay,
    \tmp_sum_1_2_reg[4] ,
    \tmp_sum_1_2_reg[3]_0 ,
    \tmp_sum_b_0_1_2_reg[31]_0 ,
    tmp_sum_b_0,
    tmp_sum_1_2);
  output h_5;
  output [0:0]DI;
  output [1:0]D;
  output \tmp_sum_1_reg[5]_0 ;
  output [0:0]S;
  output [0:0]\tmp_sum_1_reg[5]_1 ;
  output [0:0]\tmp_sum_1_reg[5]_2 ;
  output [1:0]\tmp_sum_1_reg[5]_3 ;
  output [0:0]\tmp_sum_1_reg[5]_4 ;
  output [3:0]\tmp_sum_b_0_reg[28] ;
  output [0:0]\tmp_sum_b_0_reg[5] ;
  input clk_o_OBUF_BUFG;
  input g_sp;
  input [0:0]ly2_delay;
  input [0:0]\tmp_sum_1_2_reg[4] ;
  input [2:0]\tmp_sum_1_2_reg[3]_0 ;
  input [31:0]\tmp_sum_b_0_1_2_reg[31]_0 ;
  input [1:0]tmp_sum_b_0;
  input [0:0]tmp_sum_1_2;

  wire [31:7]C;
  wire [1:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire clk_o_OBUF_BUFG;
  wire g_sp;
  wire h_5;
  wire load;
  wire [0:0]ly2_delay;
  wire [31:0]sum;
  wire [0:0]tmp_sum_1_2;
  wire \tmp_sum_1_2[4]_i_2_n_0 ;
  wire [3:0]tmp_sum_1_2_0;
  wire [2:0]\tmp_sum_1_2_reg[3]_0 ;
  wire [0:0]\tmp_sum_1_2_reg[4] ;
  wire \tmp_sum_1_2_reg[4]_i_1_n_7 ;
  wire \tmp_sum_1_reg[5]_0 ;
  wire [0:0]\tmp_sum_1_reg[5]_1 ;
  wire [0:0]\tmp_sum_1_reg[5]_2 ;
  wire [1:0]\tmp_sum_1_reg[5]_3 ;
  wire [0:0]\tmp_sum_1_reg[5]_4 ;
  wire [1:0]tmp_sum_b_0;
  wire [31:0]tmp_sum_b_0_1_2;
  wire [31:0]\tmp_sum_b_0_1_2_reg[31]_0 ;
  wire [3:0]\tmp_sum_b_0_reg[28] ;
  wire [0:0]\tmp_sum_b_0_reg[5] ;
  wire voltage0_carry__0_i_1__2_n_0;
  wire voltage0_carry__0_i_2__2_n_0;
  wire voltage0_carry__0_i_3__2_n_0;
  wire voltage0_carry__0_i_4__2_n_0;
  wire voltage0_carry__0_n_0;
  wire voltage0_carry__1_i_1__2_n_0;
  wire voltage0_carry__1_i_2__2_n_0;
  wire voltage0_carry__1_i_3__2_n_0;
  wire voltage0_carry__1_i_4__2_n_0;
  wire voltage0_carry__1_n_0;
  wire voltage0_carry__2_i_1__2_n_0;
  wire voltage0_carry__2_i_2__2_n_0;
  wire voltage0_carry__2_i_3__2_n_0;
  wire voltage0_carry__2_i_4__2_n_0;
  wire voltage0_carry__2_n_0;
  wire voltage0_carry__3_i_1__2_n_0;
  wire voltage0_carry__3_i_2__2_n_0;
  wire voltage0_carry__3_i_3__2_n_0;
  wire voltage0_carry__3_i_4__2_n_0;
  wire voltage0_carry__3_n_0;
  wire voltage0_carry__4_i_1__2_n_0;
  wire voltage0_carry__4_i_2__2_n_0;
  wire voltage0_carry__4_i_3__2_n_0;
  wire voltage0_carry__4_i_4__2_n_0;
  wire voltage0_carry__4_n_0;
  wire voltage0_carry__5_i_1__2_n_0;
  wire voltage0_carry_i_1__2_n_0;
  wire voltage0_carry_i_2__2_n_0;
  wire voltage0_carry_i_3__3_n_0;
  wire voltage0_carry_n_0;
  wire voltage1_carry__0_i_1__4_n_0;
  wire voltage1_carry__0_i_2__4_n_0;
  wire voltage1_carry__0_i_3__4_n_0;
  wire voltage1_carry__0_i_4__2_n_0;
  wire voltage1_carry__0_i_5__2_n_0;
  wire voltage1_carry__0_i_6__2_n_0;
  wire voltage1_carry__0_i_7__2_n_0;
  wire voltage1_carry__0_n_0;
  wire voltage1_carry__1_i_1__4_n_0;
  wire voltage1_carry__1_i_2__4_n_0;
  wire voltage1_carry__1_i_3__4_n_0;
  wire voltage1_carry__1_i_4__4_n_0;
  wire voltage1_carry__1_i_5__2_n_0;
  wire voltage1_carry__1_i_6__2_n_0;
  wire voltage1_carry__1_i_7__2_n_0;
  wire voltage1_carry__1_i_8__2_n_0;
  wire voltage1_carry__1_n_0;
  wire voltage1_carry__2_i_1__2_n_0;
  wire voltage1_carry__2_i_2__4_n_0;
  wire voltage1_carry__2_i_3__4_n_0;
  wire voltage1_carry__2_i_4__4_n_0;
  wire voltage1_carry__2_i_5__2_n_0;
  wire voltage1_carry__2_i_6__2_n_0;
  wire voltage1_carry__2_i_7__2_n_0;
  wire voltage1_carry__2_i_8__2_n_0;
  wire voltage1_carry_i_1__4_n_0;
  wire voltage1_carry_i_2__4_n_0;
  wire voltage1_carry_i_3__4_n_0;
  wire voltage1_carry_i_4__4_n_0;
  wire voltage1_carry_i_5__4_n_0;
  wire voltage1_carry_i_6__4_n_0;
  wire voltage1_carry_i_7__4_n_0;
  wire voltage1_carry_i_8__4_n_0;
  wire voltage1_carry_n_0;
  wire [31:0]voltage2__93;
  wire voltage2_carry__0_i_1__3_n_0;
  wire voltage2_carry__0_i_2__3_n_0;
  wire voltage2_carry__0_i_3__3_n_0;
  wire voltage2_carry__0_i_4__3_n_0;
  wire voltage2_carry__0_n_0;
  wire voltage2_carry__1_i_1__3_n_0;
  wire voltage2_carry__1_i_2__3_n_0;
  wire voltage2_carry__1_i_3__3_n_0;
  wire voltage2_carry__1_i_4__3_n_0;
  wire voltage2_carry__1_n_0;
  wire voltage2_carry__2_i_1__3_n_0;
  wire voltage2_carry__2_i_2__3_n_0;
  wire voltage2_carry__2_i_3__3_n_0;
  wire voltage2_carry__2_i_4__3_n_0;
  wire voltage2_carry__2_n_0;
  wire voltage2_carry__3_i_1__3_n_0;
  wire voltage2_carry__3_i_2__3_n_0;
  wire voltage2_carry__3_i_3__3_n_0;
  wire voltage2_carry__3_i_4__3_n_0;
  wire voltage2_carry__3_n_0;
  wire voltage2_carry__4_i_1__3_n_0;
  wire voltage2_carry__4_i_2__3_n_0;
  wire voltage2_carry__4_i_3__3_n_0;
  wire voltage2_carry__4_i_4__3_n_0;
  wire voltage2_carry__4_n_0;
  wire voltage2_carry__5_i_1__3_n_0;
  wire voltage2_carry__5_i_2__3_n_0;
  wire voltage2_carry__5_i_3__3_n_0;
  wire voltage2_carry__5_i_4__3_n_0;
  wire voltage2_carry__5_n_0;
  wire voltage2_carry__6_i_1__3_n_0;
  wire voltage2_carry__6_i_2__3_n_0;
  wire voltage2_carry__6_i_3__3_n_0;
  wire voltage2_carry__6_i_4__3_n_0;
  wire voltage2_carry_i_1__3_n_0;
  wire voltage2_carry_i_2__3_n_0;
  wire voltage2_carry_i_3__3_n_0;
  wire voltage2_carry_i_4__3_n_0;
  wire voltage2_carry_n_0;
  wire \voltage[0]_i_2__4_n_0 ;
  wire \voltage[0]_i_3__4_n_0 ;
  wire \voltage[0]_i_4__4_n_0 ;
  wire \voltage[0]_i_5__4_n_0 ;
  wire \voltage[0]_i_6__4_n_0 ;
  wire \voltage[0]_i_7__5_n_0 ;
  wire \voltage[0]_i_8__4_n_0 ;
  wire \voltage[0]_i_9__4_n_0 ;
  wire \voltage[12]_i_2__4_n_0 ;
  wire \voltage[12]_i_3__4_n_0 ;
  wire \voltage[12]_i_4__4_n_0 ;
  wire \voltage[12]_i_5__4_n_0 ;
  wire \voltage[12]_i_6__3_n_0 ;
  wire \voltage[12]_i_7__3_n_0 ;
  wire \voltage[12]_i_8__3_n_0 ;
  wire \voltage[12]_i_9__3_n_0 ;
  wire \voltage[16]_i_2__4_n_0 ;
  wire \voltage[16]_i_3__4_n_0 ;
  wire \voltage[16]_i_4__4_n_0 ;
  wire \voltage[16]_i_5__4_n_0 ;
  wire \voltage[16]_i_6__3_n_0 ;
  wire \voltage[16]_i_7__3_n_0 ;
  wire \voltage[16]_i_8__3_n_0 ;
  wire \voltage[16]_i_9__3_n_0 ;
  wire \voltage[20]_i_2__4_n_0 ;
  wire \voltage[20]_i_3__4_n_0 ;
  wire \voltage[20]_i_4__4_n_0 ;
  wire \voltage[20]_i_5__4_n_0 ;
  wire \voltage[20]_i_6__3_n_0 ;
  wire \voltage[20]_i_7__3_n_0 ;
  wire \voltage[20]_i_8__3_n_0 ;
  wire \voltage[20]_i_9__3_n_0 ;
  wire \voltage[24]_i_2__4_n_0 ;
  wire \voltage[24]_i_3__4_n_0 ;
  wire \voltage[24]_i_4__4_n_0 ;
  wire \voltage[24]_i_5__4_n_0 ;
  wire \voltage[24]_i_6__3_n_0 ;
  wire \voltage[24]_i_7__3_n_0 ;
  wire \voltage[24]_i_8__3_n_0 ;
  wire \voltage[24]_i_9__3_n_0 ;
  wire \voltage[28]_i_2__4_n_0 ;
  wire \voltage[28]_i_3__4_n_0 ;
  wire \voltage[28]_i_4__4_n_0 ;
  wire \voltage[28]_i_5__4_n_0 ;
  wire \voltage[28]_i_6__3_n_0 ;
  wire \voltage[28]_i_7__3_n_0 ;
  wire \voltage[28]_i_8__3_n_0 ;
  wire \voltage[4]_i_2__4_n_0 ;
  wire \voltage[4]_i_3__4_n_0 ;
  wire \voltage[4]_i_4__4_n_0 ;
  wire \voltage[4]_i_5__5_n_0 ;
  wire \voltage[4]_i_6__4_n_0 ;
  wire \voltage[4]_i_7__4_n_0 ;
  wire \voltage[4]_i_8__5_n_0 ;
  wire \voltage[4]_i_9__4_n_0 ;
  wire \voltage[8]_i_2__4_n_0 ;
  wire \voltage[8]_i_3__4_n_0 ;
  wire \voltage[8]_i_4__4_n_0 ;
  wire \voltage[8]_i_5__4_n_0 ;
  wire \voltage[8]_i_6__4_n_0 ;
  wire \voltage[8]_i_7__3_n_0 ;
  wire \voltage[8]_i_8__3_n_0 ;
  wire \voltage[8]_i_9__3_n_0 ;
  wire [31:0]voltage_reg;
  wire \voltage_reg[0]_i_1__4_n_0 ;
  wire \voltage_reg[0]_i_1__4_n_4 ;
  wire \voltage_reg[0]_i_1__4_n_5 ;
  wire \voltage_reg[0]_i_1__4_n_6 ;
  wire \voltage_reg[0]_i_1__4_n_7 ;
  wire \voltage_reg[12]_i_1__4_n_0 ;
  wire \voltage_reg[12]_i_1__4_n_4 ;
  wire \voltage_reg[12]_i_1__4_n_5 ;
  wire \voltage_reg[12]_i_1__4_n_6 ;
  wire \voltage_reg[12]_i_1__4_n_7 ;
  wire \voltage_reg[16]_i_1__4_n_0 ;
  wire \voltage_reg[16]_i_1__4_n_4 ;
  wire \voltage_reg[16]_i_1__4_n_5 ;
  wire \voltage_reg[16]_i_1__4_n_6 ;
  wire \voltage_reg[16]_i_1__4_n_7 ;
  wire \voltage_reg[20]_i_1__4_n_0 ;
  wire \voltage_reg[20]_i_1__4_n_4 ;
  wire \voltage_reg[20]_i_1__4_n_5 ;
  wire \voltage_reg[20]_i_1__4_n_6 ;
  wire \voltage_reg[20]_i_1__4_n_7 ;
  wire \voltage_reg[24]_i_1__4_n_0 ;
  wire \voltage_reg[24]_i_1__4_n_4 ;
  wire \voltage_reg[24]_i_1__4_n_5 ;
  wire \voltage_reg[24]_i_1__4_n_6 ;
  wire \voltage_reg[24]_i_1__4_n_7 ;
  wire \voltage_reg[28]_i_1__4_n_4 ;
  wire \voltage_reg[28]_i_1__4_n_5 ;
  wire \voltage_reg[28]_i_1__4_n_6 ;
  wire \voltage_reg[28]_i_1__4_n_7 ;
  wire \voltage_reg[4]_i_1__4_n_0 ;
  wire \voltage_reg[4]_i_1__4_n_4 ;
  wire \voltage_reg[4]_i_1__4_n_5 ;
  wire \voltage_reg[4]_i_1__4_n_6 ;
  wire \voltage_reg[4]_i_1__4_n_7 ;
  wire \voltage_reg[8]_i_1__4_n_0 ;
  wire \voltage_reg[8]_i_1__4_n_4 ;
  wire \voltage_reg[8]_i_1__4_n_5 ;
  wire \voltage_reg[8]_i_1__4_n_6 ;
  wire \voltage_reg[8]_i_1__4_n_7 ;
  wire [3:0]\NLW_tmp_sum_1_2_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp_sum_1_2_reg[4]_i_1_O_UNCONNECTED ;
  wire [2:0]NLW_voltage0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_voltage0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_voltage0_carry__5_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_voltage2_carry__6_CO_UNCONNECTED;
  wire [2:0]\NLW_voltage_reg[0]_i_1__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[12]_i_1__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[16]_i_1__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[20]_i_1__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[24]_i_1__4_CO_UNCONNECTED ;
  wire [3:0]\NLW_voltage_reg[28]_i_1__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[4]_i_1__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[8]_i_1__4_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    spike_out_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(load),
        .Q(h_5),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[0]),
        .Q(sum[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[10]),
        .Q(sum[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[11]),
        .Q(sum[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[12]),
        .Q(sum[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[13]),
        .Q(sum[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[14]),
        .Q(sum[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[15]),
        .Q(sum[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[16]),
        .Q(sum[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[17]),
        .Q(sum[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[18]),
        .Q(sum[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[19]),
        .Q(sum[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[1]),
        .Q(sum[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[20]),
        .Q(sum[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[21]),
        .Q(sum[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[22]),
        .Q(sum[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[23]),
        .Q(sum[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[24]),
        .Q(sum[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[25]),
        .Q(sum[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[26]),
        .Q(sum[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[27]),
        .Q(sum[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[28]),
        .Q(sum[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[29]),
        .Q(sum[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[2]),
        .Q(sum[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[30]),
        .Q(sum[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[31]),
        .Q(sum[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[3]),
        .Q(sum[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[4]),
        .Q(sum[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[5]),
        .Q(sum[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[6]),
        .Q(sum[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[7]),
        .Q(sum[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[8]),
        .Q(sum[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[9]),
        .Q(sum[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_sum_1_20__0_carry_i_1
       (.I0(DI),
        .I1(\tmp_sum_1_2_reg[4] ),
        .O(\tmp_sum_1_reg[5]_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_sum_1_20__1_carry_i_3
       (.I0(DI),
        .I1(\tmp_sum_1_2_reg[4] ),
        .O(\tmp_sum_1_reg[5]_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_sum_1_20_carry__0_i_4
       (.I0(DI),
        .I1(\tmp_sum_1_2_reg[4] ),
        .O(\tmp_sum_1_reg[5]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_sum_1_20_carry_i_1
       (.I0(DI),
        .I1(\tmp_sum_1_2_reg[4] ),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_sum_1_20_carry_i_1__0
       (.I0(DI),
        .I1(\tmp_sum_1_2_reg[4] ),
        .O(\tmp_sum_1_reg[5]_3 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_sum_1_20_carry_i_2
       (.I0(DI),
        .I1(\tmp_sum_1_2_reg[4] ),
        .O(\tmp_sum_1_reg[5]_3 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_1_2[0]_i_1 
       (.I0(DI),
        .I1(\tmp_sum_1_2_reg[4] ),
        .O(\tmp_sum_1_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_1_2[4]_i_2 
       (.I0(DI),
        .I1(\tmp_sum_1_2_reg[4] ),
        .O(\tmp_sum_1_2[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[4]_i_1_n_7 ),
        .Q(tmp_sum_1_2_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[3]_0 [0]),
        .Q(tmp_sum_1_2_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[3]_0 [1]),
        .Q(tmp_sum_1_2_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[3]_0 [2]),
        .Q(tmp_sum_1_2_0[3]),
        .R(1'b0));
  CARRY4 \tmp_sum_1_2_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\NLW_tmp_sum_1_2_reg[4]_i_1_CO_UNCONNECTED [3],D[1],\NLW_tmp_sum_1_2_reg[4]_i_1_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\NLW_tmp_sum_1_2_reg[4]_i_1_O_UNCONNECTED [3:2],D[0],\tmp_sum_1_2_reg[4]_i_1_n_7 }),
        .S({1'b0,1'b1,\tmp_sum_1_2_reg[4] ,\tmp_sum_1_2[4]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_sp),
        .Q(DI),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_2 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2_0[3]),
        .O(\tmp_sum_b_0_reg[28] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_3 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2_0[2]),
        .O(\tmp_sum_b_0_reg[28] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_4 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2_0[1]),
        .O(\tmp_sum_b_0_reg[28] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_5 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2_0[0]),
        .O(\tmp_sum_b_0_reg[28] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[7]_i_2 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2),
        .O(\tmp_sum_b_0_reg[5] ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [0]),
        .Q(tmp_sum_b_0_1_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [10]),
        .Q(tmp_sum_b_0_1_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [11]),
        .Q(tmp_sum_b_0_1_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [12]),
        .Q(tmp_sum_b_0_1_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [13]),
        .Q(tmp_sum_b_0_1_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [14]),
        .Q(tmp_sum_b_0_1_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [15]),
        .Q(tmp_sum_b_0_1_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [16]),
        .Q(tmp_sum_b_0_1_2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [17]),
        .Q(tmp_sum_b_0_1_2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [18]),
        .Q(tmp_sum_b_0_1_2[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [19]),
        .Q(tmp_sum_b_0_1_2[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [1]),
        .Q(tmp_sum_b_0_1_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [20]),
        .Q(tmp_sum_b_0_1_2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [21]),
        .Q(tmp_sum_b_0_1_2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [22]),
        .Q(tmp_sum_b_0_1_2[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [23]),
        .Q(tmp_sum_b_0_1_2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [24]),
        .Q(tmp_sum_b_0_1_2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [25]),
        .Q(tmp_sum_b_0_1_2[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [26]),
        .Q(tmp_sum_b_0_1_2[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [27]),
        .Q(tmp_sum_b_0_1_2[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [28]),
        .Q(tmp_sum_b_0_1_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [29]),
        .Q(tmp_sum_b_0_1_2[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [2]),
        .Q(tmp_sum_b_0_1_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [30]),
        .Q(tmp_sum_b_0_1_2[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [31]),
        .Q(tmp_sum_b_0_1_2[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [3]),
        .Q(tmp_sum_b_0_1_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [4]),
        .Q(tmp_sum_b_0_1_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [5]),
        .Q(tmp_sum_b_0_1_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [6]),
        .Q(tmp_sum_b_0_1_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [7]),
        .Q(tmp_sum_b_0_1_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [8]),
        .Q(tmp_sum_b_0_1_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [9]),
        .Q(tmp_sum_b_0_1_2[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 voltage0_carry
       (.CI(1'b0),
        .CO({voltage0_carry_n_0,NLW_voltage0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage2__93[10:8],1'b0}),
        .O(C[10:7]),
        .S({voltage0_carry_i_1__2_n_0,voltage0_carry_i_2__2_n_0,voltage0_carry_i_3__3_n_0,voltage2__93[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__0
       (.CI(voltage0_carry_n_0),
        .CO({voltage0_carry__0_n_0,NLW_voltage0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[14:11]),
        .O(C[14:11]),
        .S({voltage0_carry__0_i_1__2_n_0,voltage0_carry__0_i_2__2_n_0,voltage0_carry__0_i_3__2_n_0,voltage0_carry__0_i_4__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_1__2
       (.I0(voltage2__93[14]),
        .O(voltage0_carry__0_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_2__2
       (.I0(voltage2__93[13]),
        .O(voltage0_carry__0_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_3__2
       (.I0(voltage2__93[12]),
        .O(voltage0_carry__0_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_4__2
       (.I0(voltage2__93[11]),
        .O(voltage0_carry__0_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__1
       (.CI(voltage0_carry__0_n_0),
        .CO({voltage0_carry__1_n_0,NLW_voltage0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[18:15]),
        .O(C[18:15]),
        .S({voltage0_carry__1_i_1__2_n_0,voltage0_carry__1_i_2__2_n_0,voltage0_carry__1_i_3__2_n_0,voltage0_carry__1_i_4__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_1__2
       (.I0(voltage2__93[18]),
        .O(voltage0_carry__1_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_2__2
       (.I0(voltage2__93[17]),
        .O(voltage0_carry__1_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_3__2
       (.I0(voltage2__93[16]),
        .O(voltage0_carry__1_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_4__2
       (.I0(voltage2__93[15]),
        .O(voltage0_carry__1_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__2
       (.CI(voltage0_carry__1_n_0),
        .CO({voltage0_carry__2_n_0,NLW_voltage0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[22:19]),
        .O(C[22:19]),
        .S({voltage0_carry__2_i_1__2_n_0,voltage0_carry__2_i_2__2_n_0,voltage0_carry__2_i_3__2_n_0,voltage0_carry__2_i_4__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_1__2
       (.I0(voltage2__93[22]),
        .O(voltage0_carry__2_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_2__2
       (.I0(voltage2__93[21]),
        .O(voltage0_carry__2_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_3__2
       (.I0(voltage2__93[20]),
        .O(voltage0_carry__2_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_4__2
       (.I0(voltage2__93[19]),
        .O(voltage0_carry__2_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__3
       (.CI(voltage0_carry__2_n_0),
        .CO({voltage0_carry__3_n_0,NLW_voltage0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[26:23]),
        .O(C[26:23]),
        .S({voltage0_carry__3_i_1__2_n_0,voltage0_carry__3_i_2__2_n_0,voltage0_carry__3_i_3__2_n_0,voltage0_carry__3_i_4__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_1__2
       (.I0(voltage2__93[26]),
        .O(voltage0_carry__3_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_2__2
       (.I0(voltage2__93[25]),
        .O(voltage0_carry__3_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_3__2
       (.I0(voltage2__93[24]),
        .O(voltage0_carry__3_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_4__2
       (.I0(voltage2__93[23]),
        .O(voltage0_carry__3_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__4
       (.CI(voltage0_carry__3_n_0),
        .CO({voltage0_carry__4_n_0,NLW_voltage0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[30:27]),
        .O(C[30:27]),
        .S({voltage0_carry__4_i_1__2_n_0,voltage0_carry__4_i_2__2_n_0,voltage0_carry__4_i_3__2_n_0,voltage0_carry__4_i_4__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_1__2
       (.I0(voltage2__93[30]),
        .O(voltage0_carry__4_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_2__2
       (.I0(voltage2__93[29]),
        .O(voltage0_carry__4_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_3__2
       (.I0(voltage2__93[28]),
        .O(voltage0_carry__4_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_4__2
       (.I0(voltage2__93[27]),
        .O(voltage0_carry__4_i_4__2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__5
       (.CI(voltage0_carry__4_n_0),
        .CO(NLW_voltage0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_voltage0_carry__5_O_UNCONNECTED[3:1],C[31]}),
        .S({1'b0,1'b0,1'b0,voltage0_carry__5_i_1__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__5_i_1__2
       (.I0(voltage2__93[31]),
        .O(voltage0_carry__5_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_1__2
       (.I0(voltage2__93[10]),
        .O(voltage0_carry_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_2__2
       (.I0(voltage2__93[9]),
        .O(voltage0_carry_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_3__3
       (.I0(voltage2__93[8]),
        .O(voltage0_carry_i_3__3_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry
       (.CI(1'b0),
        .CO({voltage1_carry_n_0,NLW_voltage1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry_i_1__4_n_0,voltage1_carry_i_2__4_n_0,voltage1_carry_i_3__4_n_0,voltage1_carry_i_4__4_n_0}),
        .O(NLW_voltage1_carry_O_UNCONNECTED[3:0]),
        .S({voltage1_carry_i_5__4_n_0,voltage1_carry_i_6__4_n_0,voltage1_carry_i_7__4_n_0,voltage1_carry_i_8__4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__0
       (.CI(voltage1_carry_n_0),
        .CO({voltage1_carry__0_n_0,NLW_voltage1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__0_i_1__4_n_0,voltage1_carry__0_i_2__4_n_0,voltage1_carry__0_i_3__4_n_0,voltage2__93[9]}),
        .O(NLW_voltage1_carry__0_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__0_i_4__2_n_0,voltage1_carry__0_i_5__2_n_0,voltage1_carry__0_i_6__2_n_0,voltage1_carry__0_i_7__2_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_1__4
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_1__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_2__4
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_2__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_3__4
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_4__2
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_5__2
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_6__2
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__0_i_7__2
       (.I0(voltage2__93[8]),
        .I1(voltage2__93[9]),
        .O(voltage1_carry__0_i_7__2_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__1
       (.CI(voltage1_carry__0_n_0),
        .CO({voltage1_carry__1_n_0,NLW_voltage1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__1_i_1__4_n_0,voltage1_carry__1_i_2__4_n_0,voltage1_carry__1_i_3__4_n_0,voltage1_carry__1_i_4__4_n_0}),
        .O(NLW_voltage1_carry__1_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__1_i_5__2_n_0,voltage1_carry__1_i_6__2_n_0,voltage1_carry__1_i_7__2_n_0,voltage1_carry__1_i_8__2_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_1__4
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_1__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_2__4
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_2__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_3__4
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_3__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_4__4
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_5__2
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_6__2
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_7__2
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_8__2
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_8__2_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__2
       (.CI(voltage1_carry__1_n_0),
        .CO({load,NLW_voltage1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__2_i_1__2_n_0,voltage1_carry__2_i_2__4_n_0,voltage1_carry__2_i_3__4_n_0,voltage1_carry__2_i_4__4_n_0}),
        .O(NLW_voltage1_carry__2_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__2_i_5__2_n_0,voltage1_carry__2_i_6__2_n_0,voltage1_carry__2_i_7__2_n_0,voltage1_carry__2_i_8__2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__2_i_1__2
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_2__4
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_2__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_3__4
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_3__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_4__4
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_5__2
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_6__2
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_7__2
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_8__2
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_8__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_1__4
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_2__4
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_3__4
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_4__4
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_5__4
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_6__4
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_6__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_7__4
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_7__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_8__4
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_8__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry
       (.CI(1'b0),
        .CO({voltage2_carry_n_0,NLW_voltage2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[3:0]),
        .O(voltage2__93[3:0]),
        .S({voltage2_carry_i_1__3_n_0,voltage2_carry_i_2__3_n_0,voltage2_carry_i_3__3_n_0,voltage2_carry_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__0
       (.CI(voltage2_carry_n_0),
        .CO({voltage2_carry__0_n_0,NLW_voltage2_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[7:4]),
        .O(voltage2__93[7:4]),
        .S({voltage2_carry__0_i_1__3_n_0,voltage2_carry__0_i_2__3_n_0,voltage2_carry__0_i_3__3_n_0,voltage2_carry__0_i_4__3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_1__3
       (.I0(voltage_reg[7]),
        .I1(sum[7]),
        .O(voltage2_carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_2__3
       (.I0(voltage_reg[6]),
        .I1(sum[6]),
        .O(voltage2_carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_3__3
       (.I0(voltage_reg[5]),
        .I1(sum[5]),
        .O(voltage2_carry__0_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_4__3
       (.I0(voltage_reg[4]),
        .I1(sum[4]),
        .O(voltage2_carry__0_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__1
       (.CI(voltage2_carry__0_n_0),
        .CO({voltage2_carry__1_n_0,NLW_voltage2_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[11:8]),
        .O(voltage2__93[11:8]),
        .S({voltage2_carry__1_i_1__3_n_0,voltage2_carry__1_i_2__3_n_0,voltage2_carry__1_i_3__3_n_0,voltage2_carry__1_i_4__3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_1__3
       (.I0(voltage_reg[11]),
        .I1(sum[11]),
        .O(voltage2_carry__1_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_2__3
       (.I0(voltage_reg[10]),
        .I1(sum[10]),
        .O(voltage2_carry__1_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_3__3
       (.I0(voltage_reg[9]),
        .I1(sum[9]),
        .O(voltage2_carry__1_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_4__3
       (.I0(voltage_reg[8]),
        .I1(sum[8]),
        .O(voltage2_carry__1_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__2
       (.CI(voltage2_carry__1_n_0),
        .CO({voltage2_carry__2_n_0,NLW_voltage2_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[15:12]),
        .O(voltage2__93[15:12]),
        .S({voltage2_carry__2_i_1__3_n_0,voltage2_carry__2_i_2__3_n_0,voltage2_carry__2_i_3__3_n_0,voltage2_carry__2_i_4__3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_1__3
       (.I0(voltage_reg[15]),
        .I1(sum[15]),
        .O(voltage2_carry__2_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_2__3
       (.I0(voltage_reg[14]),
        .I1(sum[14]),
        .O(voltage2_carry__2_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_3__3
       (.I0(voltage_reg[13]),
        .I1(sum[13]),
        .O(voltage2_carry__2_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_4__3
       (.I0(voltage_reg[12]),
        .I1(sum[12]),
        .O(voltage2_carry__2_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__3
       (.CI(voltage2_carry__2_n_0),
        .CO({voltage2_carry__3_n_0,NLW_voltage2_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[19:16]),
        .O(voltage2__93[19:16]),
        .S({voltage2_carry__3_i_1__3_n_0,voltage2_carry__3_i_2__3_n_0,voltage2_carry__3_i_3__3_n_0,voltage2_carry__3_i_4__3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_1__3
       (.I0(voltage_reg[19]),
        .I1(sum[19]),
        .O(voltage2_carry__3_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_2__3
       (.I0(voltage_reg[18]),
        .I1(sum[18]),
        .O(voltage2_carry__3_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_3__3
       (.I0(voltage_reg[17]),
        .I1(sum[17]),
        .O(voltage2_carry__3_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_4__3
       (.I0(voltage_reg[16]),
        .I1(sum[16]),
        .O(voltage2_carry__3_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__4
       (.CI(voltage2_carry__3_n_0),
        .CO({voltage2_carry__4_n_0,NLW_voltage2_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[23:20]),
        .O(voltage2__93[23:20]),
        .S({voltage2_carry__4_i_1__3_n_0,voltage2_carry__4_i_2__3_n_0,voltage2_carry__4_i_3__3_n_0,voltage2_carry__4_i_4__3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_1__3
       (.I0(voltage_reg[23]),
        .I1(sum[23]),
        .O(voltage2_carry__4_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_2__3
       (.I0(voltage_reg[22]),
        .I1(sum[22]),
        .O(voltage2_carry__4_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_3__3
       (.I0(voltage_reg[21]),
        .I1(sum[21]),
        .O(voltage2_carry__4_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_4__3
       (.I0(voltage_reg[20]),
        .I1(sum[20]),
        .O(voltage2_carry__4_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__5
       (.CI(voltage2_carry__4_n_0),
        .CO({voltage2_carry__5_n_0,NLW_voltage2_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[27:24]),
        .O(voltage2__93[27:24]),
        .S({voltage2_carry__5_i_1__3_n_0,voltage2_carry__5_i_2__3_n_0,voltage2_carry__5_i_3__3_n_0,voltage2_carry__5_i_4__3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_1__3
       (.I0(voltage_reg[27]),
        .I1(sum[27]),
        .O(voltage2_carry__5_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_2__3
       (.I0(voltage_reg[26]),
        .I1(sum[26]),
        .O(voltage2_carry__5_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_3__3
       (.I0(voltage_reg[25]),
        .I1(sum[25]),
        .O(voltage2_carry__5_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_4__3
       (.I0(voltage_reg[24]),
        .I1(sum[24]),
        .O(voltage2_carry__5_i_4__3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__6
       (.CI(voltage2_carry__5_n_0),
        .CO(NLW_voltage2_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,voltage_reg[30:28]}),
        .O(voltage2__93[31:28]),
        .S({voltage2_carry__6_i_1__3_n_0,voltage2_carry__6_i_2__3_n_0,voltage2_carry__6_i_3__3_n_0,voltage2_carry__6_i_4__3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_1__3
       (.I0(voltage_reg[31]),
        .I1(sum[31]),
        .O(voltage2_carry__6_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_2__3
       (.I0(voltage_reg[30]),
        .I1(sum[30]),
        .O(voltage2_carry__6_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_3__3
       (.I0(voltage_reg[29]),
        .I1(sum[29]),
        .O(voltage2_carry__6_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_4__3
       (.I0(voltage_reg[28]),
        .I1(sum[28]),
        .O(voltage2_carry__6_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_1__3
       (.I0(voltage_reg[3]),
        .I1(sum[3]),
        .O(voltage2_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_2__3
       (.I0(voltage_reg[2]),
        .I1(sum[2]),
        .O(voltage2_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_3__3
       (.I0(voltage_reg[1]),
        .I1(sum[1]),
        .O(voltage2_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_4__3
       (.I0(voltage_reg[0]),
        .I1(sum[0]),
        .O(voltage2_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_2__4 
       (.I0(sum[3]),
        .I1(load),
        .O(\voltage[0]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_3__4 
       (.I0(sum[2]),
        .I1(load),
        .O(\voltage[0]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_4__4 
       (.I0(sum[1]),
        .I1(load),
        .O(\voltage[0]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_5__4 
       (.I0(sum[0]),
        .I1(load),
        .O(\voltage[0]_i_5__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_6__4 
       (.I0(sum[3]),
        .I1(voltage_reg[3]),
        .I2(load),
        .I3(voltage2__93[3]),
        .O(\voltage[0]_i_6__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_7__5 
       (.I0(sum[2]),
        .I1(voltage_reg[2]),
        .I2(load),
        .I3(voltage2__93[2]),
        .O(\voltage[0]_i_7__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_8__4 
       (.I0(sum[1]),
        .I1(voltage_reg[1]),
        .I2(load),
        .I3(voltage2__93[1]),
        .O(\voltage[0]_i_8__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_9__4 
       (.I0(sum[0]),
        .I1(voltage_reg[0]),
        .I2(load),
        .I3(voltage2__93[0]),
        .O(\voltage[0]_i_9__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_2__4 
       (.I0(sum[15]),
        .I1(load),
        .O(\voltage[12]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_3__4 
       (.I0(sum[14]),
        .I1(load),
        .O(\voltage[12]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_4__4 
       (.I0(sum[13]),
        .I1(load),
        .O(\voltage[12]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_5__4 
       (.I0(sum[12]),
        .I1(load),
        .O(\voltage[12]_i_5__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_6__3 
       (.I0(sum[15]),
        .I1(voltage_reg[15]),
        .I2(load),
        .I3(C[15]),
        .O(\voltage[12]_i_6__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_7__3 
       (.I0(sum[14]),
        .I1(voltage_reg[14]),
        .I2(load),
        .I3(C[14]),
        .O(\voltage[12]_i_7__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_8__3 
       (.I0(sum[13]),
        .I1(voltage_reg[13]),
        .I2(load),
        .I3(C[13]),
        .O(\voltage[12]_i_8__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_9__3 
       (.I0(sum[12]),
        .I1(voltage_reg[12]),
        .I2(load),
        .I3(C[12]),
        .O(\voltage[12]_i_9__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_2__4 
       (.I0(sum[19]),
        .I1(load),
        .O(\voltage[16]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_3__4 
       (.I0(sum[18]),
        .I1(load),
        .O(\voltage[16]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_4__4 
       (.I0(sum[17]),
        .I1(load),
        .O(\voltage[16]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_5__4 
       (.I0(sum[16]),
        .I1(load),
        .O(\voltage[16]_i_5__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_6__3 
       (.I0(sum[19]),
        .I1(voltage_reg[19]),
        .I2(load),
        .I3(C[19]),
        .O(\voltage[16]_i_6__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_7__3 
       (.I0(sum[18]),
        .I1(voltage_reg[18]),
        .I2(load),
        .I3(C[18]),
        .O(\voltage[16]_i_7__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_8__3 
       (.I0(sum[17]),
        .I1(voltage_reg[17]),
        .I2(load),
        .I3(C[17]),
        .O(\voltage[16]_i_8__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_9__3 
       (.I0(sum[16]),
        .I1(voltage_reg[16]),
        .I2(load),
        .I3(C[16]),
        .O(\voltage[16]_i_9__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_2__4 
       (.I0(sum[23]),
        .I1(load),
        .O(\voltage[20]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_3__4 
       (.I0(sum[22]),
        .I1(load),
        .O(\voltage[20]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_4__4 
       (.I0(sum[21]),
        .I1(load),
        .O(\voltage[20]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_5__4 
       (.I0(sum[20]),
        .I1(load),
        .O(\voltage[20]_i_5__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_6__3 
       (.I0(sum[23]),
        .I1(voltage_reg[23]),
        .I2(load),
        .I3(C[23]),
        .O(\voltage[20]_i_6__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_7__3 
       (.I0(sum[22]),
        .I1(voltage_reg[22]),
        .I2(load),
        .I3(C[22]),
        .O(\voltage[20]_i_7__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_8__3 
       (.I0(sum[21]),
        .I1(voltage_reg[21]),
        .I2(load),
        .I3(C[21]),
        .O(\voltage[20]_i_8__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_9__3 
       (.I0(sum[20]),
        .I1(voltage_reg[20]),
        .I2(load),
        .I3(C[20]),
        .O(\voltage[20]_i_9__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_2__4 
       (.I0(sum[27]),
        .I1(load),
        .O(\voltage[24]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_3__4 
       (.I0(sum[26]),
        .I1(load),
        .O(\voltage[24]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_4__4 
       (.I0(sum[25]),
        .I1(load),
        .O(\voltage[24]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_5__4 
       (.I0(sum[24]),
        .I1(load),
        .O(\voltage[24]_i_5__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_6__3 
       (.I0(sum[27]),
        .I1(voltage_reg[27]),
        .I2(load),
        .I3(C[27]),
        .O(\voltage[24]_i_6__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_7__3 
       (.I0(sum[26]),
        .I1(voltage_reg[26]),
        .I2(load),
        .I3(C[26]),
        .O(\voltage[24]_i_7__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_8__3 
       (.I0(sum[25]),
        .I1(voltage_reg[25]),
        .I2(load),
        .I3(C[25]),
        .O(\voltage[24]_i_8__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_9__3 
       (.I0(sum[24]),
        .I1(voltage_reg[24]),
        .I2(load),
        .I3(C[24]),
        .O(\voltage[24]_i_9__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_2__4 
       (.I0(sum[30]),
        .I1(load),
        .O(\voltage[28]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_3__4 
       (.I0(sum[29]),
        .I1(load),
        .O(\voltage[28]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_4__4 
       (.I0(sum[28]),
        .I1(load),
        .O(\voltage[28]_i_4__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_5__4 
       (.I0(sum[31]),
        .I1(voltage_reg[31]),
        .I2(load),
        .I3(C[31]),
        .O(\voltage[28]_i_5__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_6__3 
       (.I0(sum[30]),
        .I1(voltage_reg[30]),
        .I2(load),
        .I3(C[30]),
        .O(\voltage[28]_i_6__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_7__3 
       (.I0(sum[29]),
        .I1(voltage_reg[29]),
        .I2(load),
        .I3(C[29]),
        .O(\voltage[28]_i_7__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_8__3 
       (.I0(sum[28]),
        .I1(voltage_reg[28]),
        .I2(load),
        .I3(C[28]),
        .O(\voltage[28]_i_8__3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_2__4 
       (.I0(sum[7]),
        .I1(load),
        .O(\voltage[4]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_3__4 
       (.I0(sum[6]),
        .I1(load),
        .O(\voltage[4]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_4__4 
       (.I0(sum[5]),
        .I1(load),
        .O(\voltage[4]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_5__5 
       (.I0(sum[4]),
        .I1(load),
        .O(\voltage[4]_i_5__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_6__4 
       (.I0(sum[7]),
        .I1(voltage_reg[7]),
        .I2(load),
        .I3(C[7]),
        .O(\voltage[4]_i_6__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_7__4 
       (.I0(sum[6]),
        .I1(voltage_reg[6]),
        .I2(load),
        .I3(voltage2__93[6]),
        .O(\voltage[4]_i_7__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_8__5 
       (.I0(sum[5]),
        .I1(voltage_reg[5]),
        .I2(load),
        .I3(voltage2__93[5]),
        .O(\voltage[4]_i_8__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_9__4 
       (.I0(sum[4]),
        .I1(voltage_reg[4]),
        .I2(load),
        .I3(voltage2__93[4]),
        .O(\voltage[4]_i_9__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_2__4 
       (.I0(sum[11]),
        .I1(load),
        .O(\voltage[8]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_3__4 
       (.I0(sum[10]),
        .I1(load),
        .O(\voltage[8]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_4__4 
       (.I0(sum[9]),
        .I1(load),
        .O(\voltage[8]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_5__4 
       (.I0(sum[8]),
        .I1(load),
        .O(\voltage[8]_i_5__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_6__4 
       (.I0(sum[11]),
        .I1(voltage_reg[11]),
        .I2(load),
        .I3(C[11]),
        .O(\voltage[8]_i_6__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_7__3 
       (.I0(sum[10]),
        .I1(voltage_reg[10]),
        .I2(load),
        .I3(C[10]),
        .O(\voltage[8]_i_7__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_8__3 
       (.I0(sum[9]),
        .I1(voltage_reg[9]),
        .I2(load),
        .I3(C[9]),
        .O(\voltage[8]_i_8__3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_9__3 
       (.I0(sum[8]),
        .I1(voltage_reg[8]),
        .I2(load),
        .I3(C[8]),
        .O(\voltage[8]_i_9__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__4_n_7 ),
        .Q(voltage_reg[0]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[0]_i_1__4 
       (.CI(1'b0),
        .CO({\voltage_reg[0]_i_1__4_n_0 ,\NLW_voltage_reg[0]_i_1__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[0]_i_2__4_n_0 ,\voltage[0]_i_3__4_n_0 ,\voltage[0]_i_4__4_n_0 ,\voltage[0]_i_5__4_n_0 }),
        .O({\voltage_reg[0]_i_1__4_n_4 ,\voltage_reg[0]_i_1__4_n_5 ,\voltage_reg[0]_i_1__4_n_6 ,\voltage_reg[0]_i_1__4_n_7 }),
        .S({\voltage[0]_i_6__4_n_0 ,\voltage[0]_i_7__5_n_0 ,\voltage[0]_i_8__4_n_0 ,\voltage[0]_i_9__4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__4_n_5 ),
        .Q(voltage_reg[10]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__4_n_4 ),
        .Q(voltage_reg[11]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__4_n_7 ),
        .Q(voltage_reg[12]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[12]_i_1__4 
       (.CI(\voltage_reg[8]_i_1__4_n_0 ),
        .CO({\voltage_reg[12]_i_1__4_n_0 ,\NLW_voltage_reg[12]_i_1__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[12]_i_2__4_n_0 ,\voltage[12]_i_3__4_n_0 ,\voltage[12]_i_4__4_n_0 ,\voltage[12]_i_5__4_n_0 }),
        .O({\voltage_reg[12]_i_1__4_n_4 ,\voltage_reg[12]_i_1__4_n_5 ,\voltage_reg[12]_i_1__4_n_6 ,\voltage_reg[12]_i_1__4_n_7 }),
        .S({\voltage[12]_i_6__3_n_0 ,\voltage[12]_i_7__3_n_0 ,\voltage[12]_i_8__3_n_0 ,\voltage[12]_i_9__3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__4_n_6 ),
        .Q(voltage_reg[13]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__4_n_5 ),
        .Q(voltage_reg[14]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__4_n_4 ),
        .Q(voltage_reg[15]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__4_n_7 ),
        .Q(voltage_reg[16]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[16]_i_1__4 
       (.CI(\voltage_reg[12]_i_1__4_n_0 ),
        .CO({\voltage_reg[16]_i_1__4_n_0 ,\NLW_voltage_reg[16]_i_1__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[16]_i_2__4_n_0 ,\voltage[16]_i_3__4_n_0 ,\voltage[16]_i_4__4_n_0 ,\voltage[16]_i_5__4_n_0 }),
        .O({\voltage_reg[16]_i_1__4_n_4 ,\voltage_reg[16]_i_1__4_n_5 ,\voltage_reg[16]_i_1__4_n_6 ,\voltage_reg[16]_i_1__4_n_7 }),
        .S({\voltage[16]_i_6__3_n_0 ,\voltage[16]_i_7__3_n_0 ,\voltage[16]_i_8__3_n_0 ,\voltage[16]_i_9__3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__4_n_6 ),
        .Q(voltage_reg[17]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__4_n_5 ),
        .Q(voltage_reg[18]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__4_n_4 ),
        .Q(voltage_reg[19]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__4_n_6 ),
        .Q(voltage_reg[1]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__4_n_7 ),
        .Q(voltage_reg[20]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[20]_i_1__4 
       (.CI(\voltage_reg[16]_i_1__4_n_0 ),
        .CO({\voltage_reg[20]_i_1__4_n_0 ,\NLW_voltage_reg[20]_i_1__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[20]_i_2__4_n_0 ,\voltage[20]_i_3__4_n_0 ,\voltage[20]_i_4__4_n_0 ,\voltage[20]_i_5__4_n_0 }),
        .O({\voltage_reg[20]_i_1__4_n_4 ,\voltage_reg[20]_i_1__4_n_5 ,\voltage_reg[20]_i_1__4_n_6 ,\voltage_reg[20]_i_1__4_n_7 }),
        .S({\voltage[20]_i_6__3_n_0 ,\voltage[20]_i_7__3_n_0 ,\voltage[20]_i_8__3_n_0 ,\voltage[20]_i_9__3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__4_n_6 ),
        .Q(voltage_reg[21]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__4_n_5 ),
        .Q(voltage_reg[22]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__4_n_4 ),
        .Q(voltage_reg[23]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__4_n_7 ),
        .Q(voltage_reg[24]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[24]_i_1__4 
       (.CI(\voltage_reg[20]_i_1__4_n_0 ),
        .CO({\voltage_reg[24]_i_1__4_n_0 ,\NLW_voltage_reg[24]_i_1__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[24]_i_2__4_n_0 ,\voltage[24]_i_3__4_n_0 ,\voltage[24]_i_4__4_n_0 ,\voltage[24]_i_5__4_n_0 }),
        .O({\voltage_reg[24]_i_1__4_n_4 ,\voltage_reg[24]_i_1__4_n_5 ,\voltage_reg[24]_i_1__4_n_6 ,\voltage_reg[24]_i_1__4_n_7 }),
        .S({\voltage[24]_i_6__3_n_0 ,\voltage[24]_i_7__3_n_0 ,\voltage[24]_i_8__3_n_0 ,\voltage[24]_i_9__3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__4_n_6 ),
        .Q(voltage_reg[25]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__4_n_5 ),
        .Q(voltage_reg[26]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__4_n_4 ),
        .Q(voltage_reg[27]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__4_n_7 ),
        .Q(voltage_reg[28]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[28]_i_1__4 
       (.CI(\voltage_reg[24]_i_1__4_n_0 ),
        .CO(\NLW_voltage_reg[28]_i_1__4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\voltage[28]_i_2__4_n_0 ,\voltage[28]_i_3__4_n_0 ,\voltage[28]_i_4__4_n_0 }),
        .O({\voltage_reg[28]_i_1__4_n_4 ,\voltage_reg[28]_i_1__4_n_5 ,\voltage_reg[28]_i_1__4_n_6 ,\voltage_reg[28]_i_1__4_n_7 }),
        .S({\voltage[28]_i_5__4_n_0 ,\voltage[28]_i_6__3_n_0 ,\voltage[28]_i_7__3_n_0 ,\voltage[28]_i_8__3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__4_n_6 ),
        .Q(voltage_reg[29]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__4_n_5 ),
        .Q(voltage_reg[2]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__4_n_5 ),
        .Q(voltage_reg[30]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__4_n_4 ),
        .Q(voltage_reg[31]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__4_n_4 ),
        .Q(voltage_reg[3]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__4_n_7 ),
        .Q(voltage_reg[4]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[4]_i_1__4 
       (.CI(\voltage_reg[0]_i_1__4_n_0 ),
        .CO({\voltage_reg[4]_i_1__4_n_0 ,\NLW_voltage_reg[4]_i_1__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[4]_i_2__4_n_0 ,\voltage[4]_i_3__4_n_0 ,\voltage[4]_i_4__4_n_0 ,\voltage[4]_i_5__5_n_0 }),
        .O({\voltage_reg[4]_i_1__4_n_4 ,\voltage_reg[4]_i_1__4_n_5 ,\voltage_reg[4]_i_1__4_n_6 ,\voltage_reg[4]_i_1__4_n_7 }),
        .S({\voltage[4]_i_6__4_n_0 ,\voltage[4]_i_7__4_n_0 ,\voltage[4]_i_8__5_n_0 ,\voltage[4]_i_9__4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__4_n_6 ),
        .Q(voltage_reg[5]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__4_n_5 ),
        .Q(voltage_reg[6]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__4_n_4 ),
        .Q(voltage_reg[7]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__4_n_7 ),
        .Q(voltage_reg[8]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[8]_i_1__4 
       (.CI(\voltage_reg[4]_i_1__4_n_0 ),
        .CO({\voltage_reg[8]_i_1__4_n_0 ,\NLW_voltage_reg[8]_i_1__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[8]_i_2__4_n_0 ,\voltage[8]_i_3__4_n_0 ,\voltage[8]_i_4__4_n_0 ,\voltage[8]_i_5__4_n_0 }),
        .O({\voltage_reg[8]_i_1__4_n_4 ,\voltage_reg[8]_i_1__4_n_5 ,\voltage_reg[8]_i_1__4_n_6 ,\voltage_reg[8]_i_1__4_n_7 }),
        .S({\voltage[8]_i_6__4_n_0 ,\voltage[8]_i_7__3_n_0 ,\voltage[8]_i_8__3_n_0 ,\voltage[8]_i_9__3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__4_n_6 ),
        .Q(voltage_reg[9]),
        .R(ly2_delay));
endmodule

(* ORIG_REF_NAME = "neuron" *) 
module neuron__parameterized5
   (h_6,
    DI,
    tmp_sum_b_0,
    tmp_sum_1_2,
    \sum_reg[6]_0 ,
    \tmp_sum_2_reg[7]_0 ,
    \tmp_sum_2_reg[7]_1 ,
    CO,
    D,
    \tmp_sum_b_0_reg[28]_0 ,
    \tmp_sum_b_0_reg[28]_1 ,
    \tmp_sum_b_0_reg[28]_2 ,
    \tmp_sum_1_2_reg[7]_0 ,
    \tmp_sum_b_0_reg[28]_3 ,
    \tmp_sum_b_0_reg[28]_4 ,
    \tmp_sum_b_0_reg[5]_0 ,
    \tmp_sum_b_0_reg[28]_5 ,
    \tmp_sum_2_reg[7]_2 ,
    \tmp_sum_2_reg[7]_3 ,
    \sum_reg[6]_1 ,
    clk_o_OBUF_BUFG,
    r_sp,
    b_sp,
    ly2_delay,
    \tmp_sum_b_0_1_2_reg[9]_0 ,
    S,
    tmp_sum_b_0_0,
    Q,
    \tmp_sum_b_0_1_2_reg[6]_0 ,
    \tmp_sum_b_0_1_2_reg[3] ,
    \tmp_sum_b_0_1_2_reg[3]_0 ,
    \tmp_sum_b_0_1_2_reg[3]_1 ,
    \tmp_sum_b_0_1_2_reg[7]_0 ,
    \tmp_sum_b_0_1_2_reg[3]_2 ,
    \tmp_sum_1_2_reg[4] ,
    \voltage_reg[3]_0 );
  output h_6;
  output [1:0]DI;
  output [1:0]tmp_sum_b_0;
  output [0:0]tmp_sum_1_2;
  output [0:0]\sum_reg[6]_0 ;
  output [0:0]\tmp_sum_2_reg[7]_0 ;
  output [1:0]\tmp_sum_2_reg[7]_1 ;
  output [0:0]CO;
  output [3:0]D;
  output [0:0]\tmp_sum_b_0_reg[28]_0 ;
  output [3:0]\tmp_sum_b_0_reg[28]_1 ;
  output [0:0]\tmp_sum_b_0_reg[28]_2 ;
  output [27:0]\tmp_sum_1_2_reg[7]_0 ;
  output [0:0]\tmp_sum_b_0_reg[28]_3 ;
  output [3:0]\tmp_sum_b_0_reg[28]_4 ;
  output [31:0]\tmp_sum_b_0_reg[5]_0 ;
  output [0:0]\tmp_sum_b_0_reg[28]_5 ;
  output \tmp_sum_2_reg[7]_2 ;
  output [0:0]\tmp_sum_2_reg[7]_3 ;
  output [0:0]\sum_reg[6]_1 ;
  input clk_o_OBUF_BUFG;
  input r_sp;
  input b_sp;
  input [0:0]ly2_delay;
  input [0:0]\tmp_sum_b_0_1_2_reg[9]_0 ;
  input [2:0]S;
  input [0:0]tmp_sum_b_0_0;
  input [2:0]Q;
  input [0:0]\tmp_sum_b_0_1_2_reg[6]_0 ;
  input [1:0]\tmp_sum_b_0_1_2_reg[3] ;
  input [3:0]\tmp_sum_b_0_1_2_reg[3]_0 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[3]_1 ;
  input [1:0]\tmp_sum_b_0_1_2_reg[7]_0 ;
  input [0:0]\tmp_sum_b_0_1_2_reg[3]_2 ;
  input [0:0]\tmp_sum_1_2_reg[4] ;
  input [0:0]\voltage_reg[3]_0 ;

  wire [31:7]C;
  wire [0:0]CO;
  wire [3:0]D;
  wire [1:0]DI;
  wire [2:0]Q;
  wire [2:0]S;
  wire b_sp;
  wire clk_o_OBUF_BUFG;
  wire h_6;
  wire load;
  wire [0:0]ly2_delay;
  wire r_sp;
  wire [31:2]sum;
  wire [0:0]\sum_reg[6]_0 ;
  wire [0:0]\sum_reg[6]_1 ;
  wire [7:7]tmp_sum_0;
  wire [0:0]tmp_sum_1_2;
  wire [0:0]\tmp_sum_1_2_reg[4] ;
  wire [27:0]\tmp_sum_1_2_reg[7]_0 ;
  wire [0:0]\tmp_sum_2_reg[7]_0 ;
  wire [1:0]\tmp_sum_2_reg[7]_1 ;
  wire \tmp_sum_2_reg[7]_2 ;
  wire [0:0]\tmp_sum_2_reg[7]_3 ;
  wire [1:0]tmp_sum_b_0;
  wire \tmp_sum_b_0[5]_i_1_n_0 ;
  wire [0:0]tmp_sum_b_0_0;
  wire [31:2]tmp_sum_b_0_1_2;
  wire \tmp_sum_b_0_1_2[10]_i_2__0_n_0 ;
  wire \tmp_sum_b_0_1_2[10]_i_2_n_0 ;
  wire \tmp_sum_b_0_1_2[3]_i_4__0_n_0 ;
  wire \tmp_sum_b_0_1_2[6]_i_2_n_0 ;
  wire \tmp_sum_b_0_1_2[7]_i_3_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[10]_i_1__0_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[10]_i_1__1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[10]_i_1__1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[10]_i_1__1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[10]_i_1__1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[11]_i_1__0_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[14]_i_1__0_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[14]_i_1__1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[14]_i_1__1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[14]_i_1__1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[14]_i_1__1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[14]_i_1__1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[15]_i_1__0_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[18]_i_1__0_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[18]_i_1__1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[18]_i_1__1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[18]_i_1__1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[18]_i_1__1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[18]_i_1__1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[19]_i_1__0_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[22]_i_1__0_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[22]_i_1__1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[22]_i_1__1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[22]_i_1__1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[22]_i_1__1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[22]_i_1__1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[23]_i_1__0_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[26]_i_1__0_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[26]_i_1__1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[26]_i_1__1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[26]_i_1__1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[26]_i_1__1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[26]_i_1__1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[27]_i_1__0_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[30]_i_1__0_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[30]_i_1__1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[30]_i_1__1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[30]_i_1__1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[30]_i_1__1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[30]_i_1__1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[31]_i_1__4_n_7 ;
  wire [1:0]\tmp_sum_b_0_1_2_reg[3] ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[3]_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[3]_1 ;
  wire [0:0]\tmp_sum_b_0_1_2_reg[3]_2 ;
  wire \tmp_sum_b_0_1_2_reg[3]_i_1__0_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[3]_i_1__2_n_0 ;
  wire [0:0]\tmp_sum_b_0_1_2_reg[6]_0 ;
  wire [1:0]\tmp_sum_b_0_1_2_reg[7]_0 ;
  wire \tmp_sum_b_0_1_2_reg[7]_i_1__1_n_0 ;
  wire [0:0]\tmp_sum_b_0_1_2_reg[9]_0 ;
  wire [0:0]\tmp_sum_b_0_reg[28]_0 ;
  wire [3:0]\tmp_sum_b_0_reg[28]_1 ;
  wire [0:0]\tmp_sum_b_0_reg[28]_2 ;
  wire [0:0]\tmp_sum_b_0_reg[28]_3 ;
  wire [3:0]\tmp_sum_b_0_reg[28]_4 ;
  wire [0:0]\tmp_sum_b_0_reg[28]_5 ;
  wire [31:0]\tmp_sum_b_0_reg[5]_0 ;
  wire voltage0_carry__0_i_1__1_n_0;
  wire voltage0_carry__0_i_2__1_n_0;
  wire voltage0_carry__0_i_3__1_n_0;
  wire voltage0_carry__0_i_4__1_n_0;
  wire voltage0_carry__0_n_0;
  wire voltage0_carry__1_i_1__1_n_0;
  wire voltage0_carry__1_i_2__1_n_0;
  wire voltage0_carry__1_i_3__1_n_0;
  wire voltage0_carry__1_i_4__1_n_0;
  wire voltage0_carry__1_n_0;
  wire voltage0_carry__2_i_1__1_n_0;
  wire voltage0_carry__2_i_2__1_n_0;
  wire voltage0_carry__2_i_3__1_n_0;
  wire voltage0_carry__2_i_4__1_n_0;
  wire voltage0_carry__2_n_0;
  wire voltage0_carry__3_i_1__1_n_0;
  wire voltage0_carry__3_i_2__1_n_0;
  wire voltage0_carry__3_i_3__1_n_0;
  wire voltage0_carry__3_i_4__1_n_0;
  wire voltage0_carry__3_n_0;
  wire voltage0_carry__4_i_1__1_n_0;
  wire voltage0_carry__4_i_2__1_n_0;
  wire voltage0_carry__4_i_3__1_n_0;
  wire voltage0_carry__4_i_4__1_n_0;
  wire voltage0_carry__4_n_0;
  wire voltage0_carry__5_i_1__1_n_0;
  wire voltage0_carry_i_1__1_n_0;
  wire voltage0_carry_i_2__1_n_0;
  wire voltage0_carry_i_3__4_n_0;
  wire voltage0_carry_n_0;
  wire voltage1_carry__0_i_1__5_n_0;
  wire voltage1_carry__0_i_2__5_n_0;
  wire voltage1_carry__0_i_3__5_n_0;
  wire voltage1_carry__0_i_4__1_n_0;
  wire voltage1_carry__0_i_5__1_n_0;
  wire voltage1_carry__0_i_6__1_n_0;
  wire voltage1_carry__0_i_7__1_n_0;
  wire voltage1_carry__0_n_0;
  wire voltage1_carry__1_i_1__5_n_0;
  wire voltage1_carry__1_i_2__5_n_0;
  wire voltage1_carry__1_i_3__5_n_0;
  wire voltage1_carry__1_i_4__5_n_0;
  wire voltage1_carry__1_i_5__1_n_0;
  wire voltage1_carry__1_i_6__1_n_0;
  wire voltage1_carry__1_i_7__1_n_0;
  wire voltage1_carry__1_i_8__1_n_0;
  wire voltage1_carry__1_n_0;
  wire voltage1_carry__2_i_1__1_n_0;
  wire voltage1_carry__2_i_2__5_n_0;
  wire voltage1_carry__2_i_3__5_n_0;
  wire voltage1_carry__2_i_4__5_n_0;
  wire voltage1_carry__2_i_5__1_n_0;
  wire voltage1_carry__2_i_6__1_n_0;
  wire voltage1_carry__2_i_7__1_n_0;
  wire voltage1_carry__2_i_8__1_n_0;
  wire voltage1_carry_i_1__5_n_0;
  wire voltage1_carry_i_2__5_n_0;
  wire voltage1_carry_i_3__5_n_0;
  wire voltage1_carry_i_4__5_n_0;
  wire voltage1_carry_i_5__5_n_0;
  wire voltage1_carry_i_6__5_n_0;
  wire voltage1_carry_i_7__5_n_0;
  wire voltage1_carry_i_8__5_n_0;
  wire voltage1_carry_n_0;
  wire [31:0]voltage2__91;
  wire voltage2_carry__0_i_1__4_n_0;
  wire voltage2_carry__0_i_2__4_n_0;
  wire voltage2_carry__0_i_3__4_n_0;
  wire voltage2_carry__0_n_0;
  wire voltage2_carry__1_i_1__4_n_0;
  wire voltage2_carry__1_i_2__4_n_0;
  wire voltage2_carry__1_i_3__4_n_0;
  wire voltage2_carry__1_i_4__4_n_0;
  wire voltage2_carry__1_n_0;
  wire voltage2_carry__2_i_1__4_n_0;
  wire voltage2_carry__2_i_2__4_n_0;
  wire voltage2_carry__2_i_3__4_n_0;
  wire voltage2_carry__2_i_4__4_n_0;
  wire voltage2_carry__2_n_0;
  wire voltage2_carry__3_i_1__4_n_0;
  wire voltage2_carry__3_i_2__4_n_0;
  wire voltage2_carry__3_i_3__4_n_0;
  wire voltage2_carry__3_i_4__4_n_0;
  wire voltage2_carry__3_n_0;
  wire voltage2_carry__4_i_1__4_n_0;
  wire voltage2_carry__4_i_2__4_n_0;
  wire voltage2_carry__4_i_3__4_n_0;
  wire voltage2_carry__4_i_4__4_n_0;
  wire voltage2_carry__4_n_0;
  wire voltage2_carry__5_i_1__4_n_0;
  wire voltage2_carry__5_i_2__4_n_0;
  wire voltage2_carry__5_i_3__4_n_0;
  wire voltage2_carry__5_i_4__4_n_0;
  wire voltage2_carry__5_n_0;
  wire voltage2_carry__6_i_1__4_n_0;
  wire voltage2_carry__6_i_2__4_n_0;
  wire voltage2_carry__6_i_3__4_n_0;
  wire voltage2_carry__6_i_4__4_n_0;
  wire voltage2_carry_i_1__4_n_0;
  wire voltage2_carry_i_2__4_n_0;
  wire voltage2_carry_i_3__4_n_0;
  wire voltage2_carry_n_0;
  wire \voltage[0]_i_2__7_n_0 ;
  wire \voltage[0]_i_3__5_n_0 ;
  wire \voltage[0]_i_4__7_n_0 ;
  wire \voltage[0]_i_5_n_0 ;
  wire \voltage[0]_i_6__5_n_0 ;
  wire \voltage[0]_i_7_n_0 ;
  wire \voltage[0]_i_8__5_n_0 ;
  wire \voltage[12]_i_2__5_n_0 ;
  wire \voltage[12]_i_3__5_n_0 ;
  wire \voltage[12]_i_4__5_n_0 ;
  wire \voltage[12]_i_5__5_n_0 ;
  wire \voltage[12]_i_6__4_n_0 ;
  wire \voltage[12]_i_7__4_n_0 ;
  wire \voltage[12]_i_8__4_n_0 ;
  wire \voltage[12]_i_9__4_n_0 ;
  wire \voltage[16]_i_2__5_n_0 ;
  wire \voltage[16]_i_3__5_n_0 ;
  wire \voltage[16]_i_4__5_n_0 ;
  wire \voltage[16]_i_5__5_n_0 ;
  wire \voltage[16]_i_6__4_n_0 ;
  wire \voltage[16]_i_7__4_n_0 ;
  wire \voltage[16]_i_8__4_n_0 ;
  wire \voltage[16]_i_9__4_n_0 ;
  wire \voltage[20]_i_2__5_n_0 ;
  wire \voltage[20]_i_3__5_n_0 ;
  wire \voltage[20]_i_4__5_n_0 ;
  wire \voltage[20]_i_5__5_n_0 ;
  wire \voltage[20]_i_6__4_n_0 ;
  wire \voltage[20]_i_7__4_n_0 ;
  wire \voltage[20]_i_8__4_n_0 ;
  wire \voltage[20]_i_9__4_n_0 ;
  wire \voltage[24]_i_2__5_n_0 ;
  wire \voltage[24]_i_3__5_n_0 ;
  wire \voltage[24]_i_4__5_n_0 ;
  wire \voltage[24]_i_5__5_n_0 ;
  wire \voltage[24]_i_6__4_n_0 ;
  wire \voltage[24]_i_7__4_n_0 ;
  wire \voltage[24]_i_8__4_n_0 ;
  wire \voltage[24]_i_9__4_n_0 ;
  wire \voltage[28]_i_2__5_n_0 ;
  wire \voltage[28]_i_3__5_n_0 ;
  wire \voltage[28]_i_4__5_n_0 ;
  wire \voltage[28]_i_5__5_n_0 ;
  wire \voltage[28]_i_6__4_n_0 ;
  wire \voltage[28]_i_7__4_n_0 ;
  wire \voltage[28]_i_8__4_n_0 ;
  wire \voltage[4]_i_2__5_n_0 ;
  wire \voltage[4]_i_3__5_n_0 ;
  wire \voltage[4]_i_4__5_n_0 ;
  wire \voltage[4]_i_5_n_0 ;
  wire \voltage[4]_i_6__5_n_0 ;
  wire \voltage[4]_i_7__5_n_0 ;
  wire \voltage[4]_i_8_n_0 ;
  wire \voltage[8]_i_2__5_n_0 ;
  wire \voltage[8]_i_3__5_n_0 ;
  wire \voltage[8]_i_4__5_n_0 ;
  wire \voltage[8]_i_5__5_n_0 ;
  wire \voltage[8]_i_6__5_n_0 ;
  wire \voltage[8]_i_7__4_n_0 ;
  wire \voltage[8]_i_8__4_n_0 ;
  wire \voltage[8]_i_9__4_n_0 ;
  wire [31:0]voltage_reg;
  wire \voltage_reg[0]_i_1__5_n_0 ;
  wire \voltage_reg[0]_i_1__5_n_4 ;
  wire \voltage_reg[0]_i_1__5_n_5 ;
  wire \voltage_reg[0]_i_1__5_n_6 ;
  wire \voltage_reg[0]_i_1__5_n_7 ;
  wire \voltage_reg[12]_i_1__5_n_0 ;
  wire \voltage_reg[12]_i_1__5_n_4 ;
  wire \voltage_reg[12]_i_1__5_n_5 ;
  wire \voltage_reg[12]_i_1__5_n_6 ;
  wire \voltage_reg[12]_i_1__5_n_7 ;
  wire \voltage_reg[16]_i_1__5_n_0 ;
  wire \voltage_reg[16]_i_1__5_n_4 ;
  wire \voltage_reg[16]_i_1__5_n_5 ;
  wire \voltage_reg[16]_i_1__5_n_6 ;
  wire \voltage_reg[16]_i_1__5_n_7 ;
  wire \voltage_reg[20]_i_1__5_n_0 ;
  wire \voltage_reg[20]_i_1__5_n_4 ;
  wire \voltage_reg[20]_i_1__5_n_5 ;
  wire \voltage_reg[20]_i_1__5_n_6 ;
  wire \voltage_reg[20]_i_1__5_n_7 ;
  wire \voltage_reg[24]_i_1__5_n_0 ;
  wire \voltage_reg[24]_i_1__5_n_4 ;
  wire \voltage_reg[24]_i_1__5_n_5 ;
  wire \voltage_reg[24]_i_1__5_n_6 ;
  wire \voltage_reg[24]_i_1__5_n_7 ;
  wire \voltage_reg[28]_i_1__5_n_4 ;
  wire \voltage_reg[28]_i_1__5_n_5 ;
  wire \voltage_reg[28]_i_1__5_n_6 ;
  wire \voltage_reg[28]_i_1__5_n_7 ;
  wire [0:0]\voltage_reg[3]_0 ;
  wire \voltage_reg[4]_i_1__5_n_0 ;
  wire \voltage_reg[4]_i_1__5_n_4 ;
  wire \voltage_reg[4]_i_1__5_n_5 ;
  wire \voltage_reg[4]_i_1__5_n_6 ;
  wire \voltage_reg[4]_i_1__5_n_7 ;
  wire \voltage_reg[8]_i_1__5_n_0 ;
  wire \voltage_reg[8]_i_1__5_n_4 ;
  wire \voltage_reg[8]_i_1__5_n_5 ;
  wire \voltage_reg[8]_i_1__5_n_6 ;
  wire \voltage_reg[8]_i_1__5_n_7 ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[10]_i_1__0_CO_UNCONNECTED ;
  wire [0:0]\NLW_tmp_sum_b_0_1_2_reg[10]_i_1__0_O_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[10]_i_1__1_CO_UNCONNECTED ;
  wire [0:0]\NLW_tmp_sum_b_0_1_2_reg[10]_i_1__1_O_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[11]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[14]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[14]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[15]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[18]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[18]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[19]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[22]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[22]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[23]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[26]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[26]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[27]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[30]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[30]_i_1__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__1_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__3_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__4_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__4_O_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[3]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[3]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[3]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[6]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[7]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[9]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_voltage0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_voltage0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_voltage0_carry__5_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_voltage2_carry__6_CO_UNCONNECTED;
  wire [2:0]\NLW_voltage_reg[0]_i_1__5_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[12]_i_1__5_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[16]_i_1__5_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[20]_i_1__5_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[24]_i_1__5_CO_UNCONNECTED ;
  wire [3:0]\NLW_voltage_reg[28]_i_1__5_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[4]_i_1__5_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[8]_i_1__5_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    spike_out_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(load),
        .Q(h_6),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[10]),
        .Q(sum[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[11]),
        .Q(sum[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[12]),
        .Q(sum[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[13]),
        .Q(sum[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[14]),
        .Q(sum[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[15]),
        .Q(sum[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[16]),
        .Q(sum[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[17]),
        .Q(sum[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[18]),
        .Q(sum[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[19]),
        .Q(sum[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[20]),
        .Q(sum[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[21]),
        .Q(sum[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[22]),
        .Q(sum[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[23]),
        .Q(sum[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[24]),
        .Q(sum[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[25]),
        .Q(sum[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[26]),
        .Q(sum[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[27]),
        .Q(sum[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[28]),
        .Q(sum[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[29]),
        .Q(sum[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[2]),
        .Q(sum[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[30]),
        .Q(sum[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[31]),
        .Q(sum[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[5]),
        .Q(sum[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[6]),
        .Q(\sum_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[7]),
        .Q(sum[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[8]),
        .Q(sum[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0_1_2[9]),
        .Q(sum[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_0_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(r_sp),
        .Q(tmp_sum_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_sum_1_20__1_carry_i_1
       (.I0(DI[0]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_sum_1_20__1_carry_i_2
       (.I0(DI[0]),
        .I1(\tmp_sum_1_2_reg[4] ),
        .O(\tmp_sum_2_reg[7]_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_sum_1_20_carry__0_i_1
       (.I0(DI[0]),
        .O(\tmp_sum_2_reg[7]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_sum_1_20_carry__0_i_2
       (.I0(DI[0]),
        .O(\tmp_sum_2_reg[7]_1 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_sum_1_20_carry__0_i_3
       (.I0(DI[0]),
        .O(\tmp_sum_2_reg[7]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_sum_1_2[4]_i_1__0 
       (.I0(DI[0]),
        .I1(\tmp_sum_1_2_reg[4] ),
        .O(\tmp_sum_2_reg[7]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(DI[0]),
        .Q(tmp_sum_1_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_sp),
        .Q(DI[0]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_sum_b_0[5]_i_1 
       (.I0(tmp_sum_0),
        .O(\tmp_sum_b_0[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[10]_i_2 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2),
        .O(\tmp_sum_b_0_1_2[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[10]_i_2__0 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2),
        .O(\tmp_sum_b_0_1_2[10]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_2 
       (.I0(tmp_sum_b_0[1]),
        .I1(\tmp_sum_b_0_1_2_reg[3]_2 ),
        .O(\tmp_sum_b_0_reg[28]_5 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_4__0 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2),
        .O(\tmp_sum_b_0_1_2[3]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[6]_i_2 
       (.I0(tmp_sum_b_0[1]),
        .I1(Q[0]),
        .O(\tmp_sum_b_0_1_2[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[7]_i_1 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2),
        .O(\tmp_sum_1_2_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[7]_i_3 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2),
        .O(\tmp_sum_b_0_1_2[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[10]_i_1__1_n_4 ),
        .Q(tmp_sum_b_0_1_2[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[10]_i_1__0 
       (.CI(1'b0),
        .CO({\tmp_sum_b_0_1_2_reg[10]_i_1__0_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[10]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,tmp_sum_b_0[1]}),
        .O({\tmp_sum_1_2_reg[7]_0 [6:4],\NLW_tmp_sum_b_0_1_2_reg[10]_i_1__0_O_UNCONNECTED [0]}),
        .S({tmp_sum_1_2,tmp_sum_1_2,tmp_sum_1_2,\tmp_sum_b_0_1_2[10]_i_2_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[10]_i_1__1 
       (.CI(1'b0),
        .CO({\tmp_sum_b_0_1_2_reg[10]_i_1__1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[10]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}),
        .O({\tmp_sum_b_0_1_2_reg[10]_i_1__1_n_4 ,\tmp_sum_b_0_1_2_reg[10]_i_1__1_n_5 ,\tmp_sum_b_0_1_2_reg[10]_i_1__1_n_6 ,\NLW_tmp_sum_b_0_1_2_reg[10]_i_1__1_O_UNCONNECTED [0]}),
        .S({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],\tmp_sum_b_0_1_2[10]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[14]_i_1__1_n_7 ),
        .Q(tmp_sum_b_0_1_2[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[11]_i_1__0 
       (.CI(\tmp_sum_b_0_1_2_reg[7]_i_1__1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[11]_i_1__0_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[11]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_0 [11:8]),
        .S({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[14]_i_1__1_n_6 ),
        .Q(tmp_sum_b_0_1_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[14]_i_1__1_n_5 ),
        .Q(tmp_sum_b_0_1_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[14]_i_1__1_n_4 ),
        .Q(tmp_sum_b_0_1_2[14]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[14]_i_1__0 
       (.CI(\tmp_sum_b_0_1_2_reg[10]_i_1__0_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[14]_i_1__0_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[14]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\tmp_sum_1_2_reg[7]_0 [10:7]),
        .S({tmp_sum_1_2,tmp_sum_1_2,tmp_sum_1_2,tmp_sum_1_2}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[14]_i_1__1 
       (.CI(\tmp_sum_b_0_1_2_reg[10]_i_1__1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[14]_i_1__1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[14]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}),
        .O({\tmp_sum_b_0_1_2_reg[14]_i_1__1_n_4 ,\tmp_sum_b_0_1_2_reg[14]_i_1__1_n_5 ,\tmp_sum_b_0_1_2_reg[14]_i_1__1_n_6 ,\tmp_sum_b_0_1_2_reg[14]_i_1__1_n_7 }),
        .S({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[18]_i_1__1_n_7 ),
        .Q(tmp_sum_b_0_1_2[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[15]_i_1__0 
       (.CI(\tmp_sum_b_0_1_2_reg[11]_i_1__0_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[15]_i_1__0_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[15]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_0 [15:12]),
        .S({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[18]_i_1__1_n_6 ),
        .Q(tmp_sum_b_0_1_2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[18]_i_1__1_n_5 ),
        .Q(tmp_sum_b_0_1_2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[18]_i_1__1_n_4 ),
        .Q(tmp_sum_b_0_1_2[18]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[18]_i_1__0 
       (.CI(\tmp_sum_b_0_1_2_reg[14]_i_1__0_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[18]_i_1__0_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[18]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\tmp_sum_1_2_reg[7]_0 [14:11]),
        .S({tmp_sum_1_2,tmp_sum_1_2,tmp_sum_1_2,tmp_sum_1_2}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[18]_i_1__1 
       (.CI(\tmp_sum_b_0_1_2_reg[14]_i_1__1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[18]_i_1__1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[18]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}),
        .O({\tmp_sum_b_0_1_2_reg[18]_i_1__1_n_4 ,\tmp_sum_b_0_1_2_reg[18]_i_1__1_n_5 ,\tmp_sum_b_0_1_2_reg[18]_i_1__1_n_6 ,\tmp_sum_b_0_1_2_reg[18]_i_1__1_n_7 }),
        .S({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[22]_i_1__1_n_7 ),
        .Q(tmp_sum_b_0_1_2[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[19]_i_1__0 
       (.CI(\tmp_sum_b_0_1_2_reg[15]_i_1__0_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[19]_i_1__0_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[19]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_0 [19:16]),
        .S({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[22]_i_1__1_n_6 ),
        .Q(tmp_sum_b_0_1_2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[22]_i_1__1_n_5 ),
        .Q(tmp_sum_b_0_1_2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[22]_i_1__1_n_4 ),
        .Q(tmp_sum_b_0_1_2[22]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[22]_i_1__0 
       (.CI(\tmp_sum_b_0_1_2_reg[18]_i_1__0_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[22]_i_1__0_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[22]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\tmp_sum_1_2_reg[7]_0 [18:15]),
        .S({tmp_sum_1_2,tmp_sum_1_2,tmp_sum_1_2,tmp_sum_1_2}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[22]_i_1__1 
       (.CI(\tmp_sum_b_0_1_2_reg[18]_i_1__1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[22]_i_1__1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[22]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}),
        .O({\tmp_sum_b_0_1_2_reg[22]_i_1__1_n_4 ,\tmp_sum_b_0_1_2_reg[22]_i_1__1_n_5 ,\tmp_sum_b_0_1_2_reg[22]_i_1__1_n_6 ,\tmp_sum_b_0_1_2_reg[22]_i_1__1_n_7 }),
        .S({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[26]_i_1__1_n_7 ),
        .Q(tmp_sum_b_0_1_2[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[23]_i_1__0 
       (.CI(\tmp_sum_b_0_1_2_reg[19]_i_1__0_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[23]_i_1__0_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[23]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_0 [23:20]),
        .S({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[26]_i_1__1_n_6 ),
        .Q(tmp_sum_b_0_1_2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[26]_i_1__1_n_5 ),
        .Q(tmp_sum_b_0_1_2[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[26]_i_1__1_n_4 ),
        .Q(tmp_sum_b_0_1_2[26]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[26]_i_1__0 
       (.CI(\tmp_sum_b_0_1_2_reg[22]_i_1__0_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[26]_i_1__0_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[26]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\tmp_sum_1_2_reg[7]_0 [22:19]),
        .S({tmp_sum_1_2,tmp_sum_1_2,tmp_sum_1_2,tmp_sum_1_2}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[26]_i_1__1 
       (.CI(\tmp_sum_b_0_1_2_reg[22]_i_1__1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[26]_i_1__1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[26]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}),
        .O({\tmp_sum_b_0_1_2_reg[26]_i_1__1_n_4 ,\tmp_sum_b_0_1_2_reg[26]_i_1__1_n_5 ,\tmp_sum_b_0_1_2_reg[26]_i_1__1_n_6 ,\tmp_sum_b_0_1_2_reg[26]_i_1__1_n_7 }),
        .S({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[30]_i_1__1_n_7 ),
        .Q(tmp_sum_b_0_1_2[27]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[27]_i_1__0 
       (.CI(\tmp_sum_b_0_1_2_reg[23]_i_1__0_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[27]_i_1__0_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[27]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_0 [27:24]),
        .S({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[30]_i_1__1_n_6 ),
        .Q(tmp_sum_b_0_1_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[30]_i_1__1_n_5 ),
        .Q(tmp_sum_b_0_1_2[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1_2),
        .Q(tmp_sum_b_0_1_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[30]_i_1__1_n_4 ),
        .Q(tmp_sum_b_0_1_2[30]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[30]_i_1__0 
       (.CI(\tmp_sum_b_0_1_2_reg[26]_i_1__0_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[30]_i_1__0_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[30]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\tmp_sum_1_2_reg[7]_0 [26:23]),
        .S({tmp_sum_1_2,tmp_sum_1_2,tmp_sum_1_2,tmp_sum_1_2}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[30]_i_1__1 
       (.CI(\tmp_sum_b_0_1_2_reg[26]_i_1__1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[30]_i_1__1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[30]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}),
        .O({\tmp_sum_b_0_1_2_reg[30]_i_1__1_n_4 ,\tmp_sum_b_0_1_2_reg[30]_i_1__1_n_5 ,\tmp_sum_b_0_1_2_reg[30]_i_1__1_n_6 ,\tmp_sum_b_0_1_2_reg[30]_i_1__1_n_7 }),
        .S({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_i_1__4_n_7 ),
        .Q(tmp_sum_b_0_1_2[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[31]_i_1__1 
       (.CI(\tmp_sum_b_0_1_2_reg[30]_i_1__0_n_0 ),
        .CO(\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__1_O_UNCONNECTED [3:1],\tmp_sum_1_2_reg[7]_0 [27]}),
        .S({1'b0,1'b0,1'b0,tmp_sum_1_2}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[31]_i_1__3 
       (.CI(\tmp_sum_b_0_1_2_reg[27]_i_1__0_n_0 ),
        .CO(\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_0 [31:28]),
        .S({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[31]_i_1__4 
       (.CI(\tmp_sum_b_0_1_2_reg[30]_i_1__1_n_0 ),
        .CO(\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__4_O_UNCONNECTED [3:1],\tmp_sum_b_0_1_2_reg[31]_i_1__4_n_7 }),
        .S({1'b0,1'b0,1'b0,tmp_sum_b_0[1]}));
  CARRY4 \tmp_sum_b_0_1_2_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\tmp_sum_b_0_reg[28]_2 ,\NLW_tmp_sum_b_0_1_2_reg[3]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0_0,1'b0,tmp_sum_b_0[1]}),
        .O({\tmp_sum_1_2_reg[7]_0 [2:0],\tmp_sum_b_0_1_2_reg[3]_i_1__0_n_7 }),
        .S({\tmp_sum_b_0_1_2_reg[3] ,tmp_sum_1_2,\tmp_sum_b_0_1_2[3]_i_4__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[3]_i_1__1 
       (.CI(1'b0),
        .CO({\tmp_sum_b_0_reg[28]_3 ,\NLW_tmp_sum_b_0_1_2_reg[3]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0_0,tmp_sum_b_0_0,tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[28]_4 ),
        .S(\tmp_sum_b_0_1_2_reg[3]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[3]_i_1__2 
       (.CI(1'b0),
        .CO({\tmp_sum_b_0_1_2_reg[3]_i_1__2_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[3]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0,tmp_sum_b_0[0],tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_0 [3:0]),
        .S(\tmp_sum_b_0_1_2_reg[3]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0[0]),
        .Q(tmp_sum_b_0_1_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_b_0[1]),
        .Q(tmp_sum_b_0_1_2[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\tmp_sum_b_0_reg[28]_0 ,\NLW_tmp_sum_b_0_1_2_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tmp_sum_b_0[1],tmp_sum_b_0_0}),
        .O(\tmp_sum_b_0_reg[28]_1 ),
        .S({Q[2:1],\tmp_sum_b_0_1_2[6]_i_2_n_0 ,\tmp_sum_b_0_1_2_reg[6]_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[3]_i_1__0_n_7 ),
        .Q(tmp_sum_b_0_1_2[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[7]_i_1__1 
       (.CI(\tmp_sum_b_0_1_2_reg[3]_i_1__2_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[7]_i_1__1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[7]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[0],1'b0,tmp_sum_b_0[1]}),
        .O(\tmp_sum_b_0_reg[5]_0 [7:4]),
        .S({tmp_sum_b_0[0],\tmp_sum_b_0_1_2_reg[7]_0 ,\tmp_sum_b_0_1_2[7]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[10]_i_1__1_n_6 ),
        .Q(tmp_sum_b_0_1_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[10]_i_1__1_n_5 ),
        .Q(tmp_sum_b_0_1_2[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[9]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[9]_0 ),
        .CO({CO,\NLW_tmp_sum_b_0_1_2_reg[9]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tmp_sum_b_0}),
        .O(D),
        .S({S[2],S}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_0),
        .Q(tmp_sum_b_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0[5]_i_1_n_0 ),
        .Q(tmp_sum_b_0[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 voltage0_carry
       (.CI(1'b0),
        .CO({voltage0_carry_n_0,NLW_voltage0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage2__91[10:8],1'b0}),
        .O(C[10:7]),
        .S({voltage0_carry_i_1__1_n_0,voltage0_carry_i_2__1_n_0,voltage0_carry_i_3__4_n_0,voltage2__91[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__0
       (.CI(voltage0_carry_n_0),
        .CO({voltage0_carry__0_n_0,NLW_voltage0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__91[14:11]),
        .O(C[14:11]),
        .S({voltage0_carry__0_i_1__1_n_0,voltage0_carry__0_i_2__1_n_0,voltage0_carry__0_i_3__1_n_0,voltage0_carry__0_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_1__1
       (.I0(voltage2__91[14]),
        .O(voltage0_carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_2__1
       (.I0(voltage2__91[13]),
        .O(voltage0_carry__0_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_3__1
       (.I0(voltage2__91[12]),
        .O(voltage0_carry__0_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_4__1
       (.I0(voltage2__91[11]),
        .O(voltage0_carry__0_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__1
       (.CI(voltage0_carry__0_n_0),
        .CO({voltage0_carry__1_n_0,NLW_voltage0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__91[18:15]),
        .O(C[18:15]),
        .S({voltage0_carry__1_i_1__1_n_0,voltage0_carry__1_i_2__1_n_0,voltage0_carry__1_i_3__1_n_0,voltage0_carry__1_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_1__1
       (.I0(voltage2__91[18]),
        .O(voltage0_carry__1_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_2__1
       (.I0(voltage2__91[17]),
        .O(voltage0_carry__1_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_3__1
       (.I0(voltage2__91[16]),
        .O(voltage0_carry__1_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_4__1
       (.I0(voltage2__91[15]),
        .O(voltage0_carry__1_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__2
       (.CI(voltage0_carry__1_n_0),
        .CO({voltage0_carry__2_n_0,NLW_voltage0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__91[22:19]),
        .O(C[22:19]),
        .S({voltage0_carry__2_i_1__1_n_0,voltage0_carry__2_i_2__1_n_0,voltage0_carry__2_i_3__1_n_0,voltage0_carry__2_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_1__1
       (.I0(voltage2__91[22]),
        .O(voltage0_carry__2_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_2__1
       (.I0(voltage2__91[21]),
        .O(voltage0_carry__2_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_3__1
       (.I0(voltage2__91[20]),
        .O(voltage0_carry__2_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_4__1
       (.I0(voltage2__91[19]),
        .O(voltage0_carry__2_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__3
       (.CI(voltage0_carry__2_n_0),
        .CO({voltage0_carry__3_n_0,NLW_voltage0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__91[26:23]),
        .O(C[26:23]),
        .S({voltage0_carry__3_i_1__1_n_0,voltage0_carry__3_i_2__1_n_0,voltage0_carry__3_i_3__1_n_0,voltage0_carry__3_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_1__1
       (.I0(voltage2__91[26]),
        .O(voltage0_carry__3_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_2__1
       (.I0(voltage2__91[25]),
        .O(voltage0_carry__3_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_3__1
       (.I0(voltage2__91[24]),
        .O(voltage0_carry__3_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_4__1
       (.I0(voltage2__91[23]),
        .O(voltage0_carry__3_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__4
       (.CI(voltage0_carry__3_n_0),
        .CO({voltage0_carry__4_n_0,NLW_voltage0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__91[30:27]),
        .O(C[30:27]),
        .S({voltage0_carry__4_i_1__1_n_0,voltage0_carry__4_i_2__1_n_0,voltage0_carry__4_i_3__1_n_0,voltage0_carry__4_i_4__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_1__1
       (.I0(voltage2__91[30]),
        .O(voltage0_carry__4_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_2__1
       (.I0(voltage2__91[29]),
        .O(voltage0_carry__4_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_3__1
       (.I0(voltage2__91[28]),
        .O(voltage0_carry__4_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_4__1
       (.I0(voltage2__91[27]),
        .O(voltage0_carry__4_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__5
       (.CI(voltage0_carry__4_n_0),
        .CO(NLW_voltage0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_voltage0_carry__5_O_UNCONNECTED[3:1],C[31]}),
        .S({1'b0,1'b0,1'b0,voltage0_carry__5_i_1__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__5_i_1__1
       (.I0(voltage2__91[31]),
        .O(voltage0_carry__5_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_1__1
       (.I0(voltage2__91[10]),
        .O(voltage0_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_2__1
       (.I0(voltage2__91[9]),
        .O(voltage0_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_3__4
       (.I0(voltage2__91[8]),
        .O(voltage0_carry_i_3__4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry
       (.CI(1'b0),
        .CO({voltage1_carry_n_0,NLW_voltage1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry_i_1__5_n_0,voltage1_carry_i_2__5_n_0,voltage1_carry_i_3__5_n_0,voltage1_carry_i_4__5_n_0}),
        .O(NLW_voltage1_carry_O_UNCONNECTED[3:0]),
        .S({voltage1_carry_i_5__5_n_0,voltage1_carry_i_6__5_n_0,voltage1_carry_i_7__5_n_0,voltage1_carry_i_8__5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__0
       (.CI(voltage1_carry_n_0),
        .CO({voltage1_carry__0_n_0,NLW_voltage1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__0_i_1__5_n_0,voltage1_carry__0_i_2__5_n_0,voltage1_carry__0_i_3__5_n_0,voltage2__91[9]}),
        .O(NLW_voltage1_carry__0_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__0_i_4__1_n_0,voltage1_carry__0_i_5__1_n_0,voltage1_carry__0_i_6__1_n_0,voltage1_carry__0_i_7__1_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_1__5
       (.I0(voltage2__91[14]),
        .I1(voltage2__91[15]),
        .O(voltage1_carry__0_i_1__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_2__5
       (.I0(voltage2__91[12]),
        .I1(voltage2__91[13]),
        .O(voltage1_carry__0_i_2__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_3__5
       (.I0(voltage2__91[10]),
        .I1(voltage2__91[11]),
        .O(voltage1_carry__0_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_4__1
       (.I0(voltage2__91[14]),
        .I1(voltage2__91[15]),
        .O(voltage1_carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_5__1
       (.I0(voltage2__91[12]),
        .I1(voltage2__91[13]),
        .O(voltage1_carry__0_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_6__1
       (.I0(voltage2__91[10]),
        .I1(voltage2__91[11]),
        .O(voltage1_carry__0_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__0_i_7__1
       (.I0(voltage2__91[8]),
        .I1(voltage2__91[9]),
        .O(voltage1_carry__0_i_7__1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__1
       (.CI(voltage1_carry__0_n_0),
        .CO({voltage1_carry__1_n_0,NLW_voltage1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__1_i_1__5_n_0,voltage1_carry__1_i_2__5_n_0,voltage1_carry__1_i_3__5_n_0,voltage1_carry__1_i_4__5_n_0}),
        .O(NLW_voltage1_carry__1_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__1_i_5__1_n_0,voltage1_carry__1_i_6__1_n_0,voltage1_carry__1_i_7__1_n_0,voltage1_carry__1_i_8__1_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_1__5
       (.I0(voltage2__91[22]),
        .I1(voltage2__91[23]),
        .O(voltage1_carry__1_i_1__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_2__5
       (.I0(voltage2__91[20]),
        .I1(voltage2__91[21]),
        .O(voltage1_carry__1_i_2__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_3__5
       (.I0(voltage2__91[18]),
        .I1(voltage2__91[19]),
        .O(voltage1_carry__1_i_3__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_4__5
       (.I0(voltage2__91[16]),
        .I1(voltage2__91[17]),
        .O(voltage1_carry__1_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_5__1
       (.I0(voltage2__91[22]),
        .I1(voltage2__91[23]),
        .O(voltage1_carry__1_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_6__1
       (.I0(voltage2__91[20]),
        .I1(voltage2__91[21]),
        .O(voltage1_carry__1_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_7__1
       (.I0(voltage2__91[18]),
        .I1(voltage2__91[19]),
        .O(voltage1_carry__1_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_8__1
       (.I0(voltage2__91[16]),
        .I1(voltage2__91[17]),
        .O(voltage1_carry__1_i_8__1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__2
       (.CI(voltage1_carry__1_n_0),
        .CO({load,NLW_voltage1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__2_i_1__1_n_0,voltage1_carry__2_i_2__5_n_0,voltage1_carry__2_i_3__5_n_0,voltage1_carry__2_i_4__5_n_0}),
        .O(NLW_voltage1_carry__2_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__2_i_5__1_n_0,voltage1_carry__2_i_6__1_n_0,voltage1_carry__2_i_7__1_n_0,voltage1_carry__2_i_8__1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__2_i_1__1
       (.I0(voltage2__91[30]),
        .I1(voltage2__91[31]),
        .O(voltage1_carry__2_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_2__5
       (.I0(voltage2__91[28]),
        .I1(voltage2__91[29]),
        .O(voltage1_carry__2_i_2__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_3__5
       (.I0(voltage2__91[26]),
        .I1(voltage2__91[27]),
        .O(voltage1_carry__2_i_3__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_4__5
       (.I0(voltage2__91[24]),
        .I1(voltage2__91[25]),
        .O(voltage1_carry__2_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_5__1
       (.I0(voltage2__91[30]),
        .I1(voltage2__91[31]),
        .O(voltage1_carry__2_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_6__1
       (.I0(voltage2__91[28]),
        .I1(voltage2__91[29]),
        .O(voltage1_carry__2_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_7__1
       (.I0(voltage2__91[26]),
        .I1(voltage2__91[27]),
        .O(voltage1_carry__2_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_8__1
       (.I0(voltage2__91[24]),
        .I1(voltage2__91[25]),
        .O(voltage1_carry__2_i_8__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_1__5
       (.I0(voltage2__91[6]),
        .I1(voltage2__91[7]),
        .O(voltage1_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_2__5
       (.I0(voltage2__91[4]),
        .I1(voltage2__91[5]),
        .O(voltage1_carry_i_2__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_3__5
       (.I0(voltage2__91[2]),
        .I1(voltage2__91[3]),
        .O(voltage1_carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_4__5
       (.I0(voltage2__91[0]),
        .I1(voltage2__91[1]),
        .O(voltage1_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_5__5
       (.I0(voltage2__91[6]),
        .I1(voltage2__91[7]),
        .O(voltage1_carry_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_6__5
       (.I0(voltage2__91[4]),
        .I1(voltage2__91[5]),
        .O(voltage1_carry_i_6__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_7__5
       (.I0(voltage2__91[2]),
        .I1(voltage2__91[3]),
        .O(voltage1_carry_i_7__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_8__5
       (.I0(voltage2__91[0]),
        .I1(voltage2__91[1]),
        .O(voltage1_carry_i_8__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry
       (.CI(1'b0),
        .CO({voltage2_carry_n_0,NLW_voltage2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[3:0]),
        .O(voltage2__91[3:0]),
        .S({voltage2_carry_i_1__4_n_0,voltage2_carry_i_2__4_n_0,voltage_reg[1],voltage2_carry_i_3__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__0
       (.CI(voltage2_carry_n_0),
        .CO({voltage2_carry__0_n_0,NLW_voltage2_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[7:4]),
        .O(voltage2__91[7:4]),
        .S({voltage2_carry__0_i_1__4_n_0,voltage2_carry__0_i_2__4_n_0,voltage2_carry__0_i_3__4_n_0,voltage_reg[4]}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_1__4
       (.I0(voltage_reg[7]),
        .I1(sum[7]),
        .O(voltage2_carry__0_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_2__4
       (.I0(voltage_reg[6]),
        .I1(\sum_reg[6]_0 ),
        .O(voltage2_carry__0_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_3__4
       (.I0(voltage_reg[5]),
        .I1(sum[5]),
        .O(voltage2_carry__0_i_3__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__1
       (.CI(voltage2_carry__0_n_0),
        .CO({voltage2_carry__1_n_0,NLW_voltage2_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[11:8]),
        .O(voltage2__91[11:8]),
        .S({voltage2_carry__1_i_1__4_n_0,voltage2_carry__1_i_2__4_n_0,voltage2_carry__1_i_3__4_n_0,voltage2_carry__1_i_4__4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_1__4
       (.I0(voltage_reg[11]),
        .I1(sum[11]),
        .O(voltage2_carry__1_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_2__4
       (.I0(voltage_reg[10]),
        .I1(sum[10]),
        .O(voltage2_carry__1_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_3__4
       (.I0(voltage_reg[9]),
        .I1(sum[9]),
        .O(voltage2_carry__1_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_4__4
       (.I0(voltage_reg[8]),
        .I1(sum[8]),
        .O(voltage2_carry__1_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__2
       (.CI(voltage2_carry__1_n_0),
        .CO({voltage2_carry__2_n_0,NLW_voltage2_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[15:12]),
        .O(voltage2__91[15:12]),
        .S({voltage2_carry__2_i_1__4_n_0,voltage2_carry__2_i_2__4_n_0,voltage2_carry__2_i_3__4_n_0,voltage2_carry__2_i_4__4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_1__4
       (.I0(voltage_reg[15]),
        .I1(sum[15]),
        .O(voltage2_carry__2_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_2__4
       (.I0(voltage_reg[14]),
        .I1(sum[14]),
        .O(voltage2_carry__2_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_3__4
       (.I0(voltage_reg[13]),
        .I1(sum[13]),
        .O(voltage2_carry__2_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_4__4
       (.I0(voltage_reg[12]),
        .I1(sum[12]),
        .O(voltage2_carry__2_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__3
       (.CI(voltage2_carry__2_n_0),
        .CO({voltage2_carry__3_n_0,NLW_voltage2_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[19:16]),
        .O(voltage2__91[19:16]),
        .S({voltage2_carry__3_i_1__4_n_0,voltage2_carry__3_i_2__4_n_0,voltage2_carry__3_i_3__4_n_0,voltage2_carry__3_i_4__4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_1__4
       (.I0(voltage_reg[19]),
        .I1(sum[19]),
        .O(voltage2_carry__3_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_2__4
       (.I0(voltage_reg[18]),
        .I1(sum[18]),
        .O(voltage2_carry__3_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_3__4
       (.I0(voltage_reg[17]),
        .I1(sum[17]),
        .O(voltage2_carry__3_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_4__4
       (.I0(voltage_reg[16]),
        .I1(sum[16]),
        .O(voltage2_carry__3_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__4
       (.CI(voltage2_carry__3_n_0),
        .CO({voltage2_carry__4_n_0,NLW_voltage2_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[23:20]),
        .O(voltage2__91[23:20]),
        .S({voltage2_carry__4_i_1__4_n_0,voltage2_carry__4_i_2__4_n_0,voltage2_carry__4_i_3__4_n_0,voltage2_carry__4_i_4__4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_1__4
       (.I0(voltage_reg[23]),
        .I1(sum[23]),
        .O(voltage2_carry__4_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_2__4
       (.I0(voltage_reg[22]),
        .I1(sum[22]),
        .O(voltage2_carry__4_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_3__4
       (.I0(voltage_reg[21]),
        .I1(sum[21]),
        .O(voltage2_carry__4_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_4__4
       (.I0(voltage_reg[20]),
        .I1(sum[20]),
        .O(voltage2_carry__4_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__5
       (.CI(voltage2_carry__4_n_0),
        .CO({voltage2_carry__5_n_0,NLW_voltage2_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[27:24]),
        .O(voltage2__91[27:24]),
        .S({voltage2_carry__5_i_1__4_n_0,voltage2_carry__5_i_2__4_n_0,voltage2_carry__5_i_3__4_n_0,voltage2_carry__5_i_4__4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_1__4
       (.I0(voltage_reg[27]),
        .I1(sum[27]),
        .O(voltage2_carry__5_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_2__4
       (.I0(voltage_reg[26]),
        .I1(sum[26]),
        .O(voltage2_carry__5_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_3__4
       (.I0(voltage_reg[25]),
        .I1(sum[25]),
        .O(voltage2_carry__5_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_4__4
       (.I0(voltage_reg[24]),
        .I1(sum[24]),
        .O(voltage2_carry__5_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__6
       (.CI(voltage2_carry__5_n_0),
        .CO(NLW_voltage2_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,voltage_reg[30:28]}),
        .O(voltage2__91[31:28]),
        .S({voltage2_carry__6_i_1__4_n_0,voltage2_carry__6_i_2__4_n_0,voltage2_carry__6_i_3__4_n_0,voltage2_carry__6_i_4__4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_1__4
       (.I0(voltage_reg[31]),
        .I1(sum[31]),
        .O(voltage2_carry__6_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_2__4
       (.I0(voltage_reg[30]),
        .I1(sum[30]),
        .O(voltage2_carry__6_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_3__4
       (.I0(voltage_reg[29]),
        .I1(sum[29]),
        .O(voltage2_carry__6_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_4__4
       (.I0(voltage_reg[28]),
        .I1(sum[28]),
        .O(voltage2_carry__6_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_1__4
       (.I0(voltage_reg[3]),
        .I1(\sum_reg[6]_0 ),
        .O(voltage2_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_2__4
       (.I0(voltage_reg[2]),
        .I1(sum[2]),
        .O(voltage2_carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_3__4
       (.I0(voltage_reg[0]),
        .I1(sum[5]),
        .O(voltage2_carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_2__7 
       (.I0(\sum_reg[6]_0 ),
        .I1(load),
        .O(\voltage[0]_i_2__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_3__1 
       (.I0(\sum_reg[6]_0 ),
        .I1(\voltage_reg[3]_0 ),
        .O(\sum_reg[6]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_3__5 
       (.I0(sum[2]),
        .I1(load),
        .O(\voltage[0]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_4__7 
       (.I0(sum[5]),
        .I1(load),
        .O(\voltage[0]_i_4__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_5 
       (.I0(\sum_reg[6]_0 ),
        .I1(voltage_reg[3]),
        .I2(load),
        .I3(voltage2__91[3]),
        .O(\voltage[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_6__5 
       (.I0(sum[2]),
        .I1(voltage_reg[2]),
        .I2(load),
        .I3(voltage2__91[2]),
        .O(\voltage[0]_i_6__5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[0]_i_7 
       (.I0(voltage2__91[1]),
        .I1(load),
        .I2(voltage_reg[1]),
        .O(\voltage[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_8__5 
       (.I0(sum[5]),
        .I1(voltage_reg[0]),
        .I2(load),
        .I3(voltage2__91[0]),
        .O(\voltage[0]_i_8__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_2__5 
       (.I0(sum[15]),
        .I1(load),
        .O(\voltage[12]_i_2__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_3__5 
       (.I0(sum[14]),
        .I1(load),
        .O(\voltage[12]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_4__5 
       (.I0(sum[13]),
        .I1(load),
        .O(\voltage[12]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_5__5 
       (.I0(sum[12]),
        .I1(load),
        .O(\voltage[12]_i_5__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_6__4 
       (.I0(sum[15]),
        .I1(voltage_reg[15]),
        .I2(load),
        .I3(C[15]),
        .O(\voltage[12]_i_6__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_7__4 
       (.I0(sum[14]),
        .I1(voltage_reg[14]),
        .I2(load),
        .I3(C[14]),
        .O(\voltage[12]_i_7__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_8__4 
       (.I0(sum[13]),
        .I1(voltage_reg[13]),
        .I2(load),
        .I3(C[13]),
        .O(\voltage[12]_i_8__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_9__4 
       (.I0(sum[12]),
        .I1(voltage_reg[12]),
        .I2(load),
        .I3(C[12]),
        .O(\voltage[12]_i_9__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_2__5 
       (.I0(sum[19]),
        .I1(load),
        .O(\voltage[16]_i_2__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_3__5 
       (.I0(sum[18]),
        .I1(load),
        .O(\voltage[16]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_4__5 
       (.I0(sum[17]),
        .I1(load),
        .O(\voltage[16]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_5__5 
       (.I0(sum[16]),
        .I1(load),
        .O(\voltage[16]_i_5__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_6__4 
       (.I0(sum[19]),
        .I1(voltage_reg[19]),
        .I2(load),
        .I3(C[19]),
        .O(\voltage[16]_i_6__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_7__4 
       (.I0(sum[18]),
        .I1(voltage_reg[18]),
        .I2(load),
        .I3(C[18]),
        .O(\voltage[16]_i_7__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_8__4 
       (.I0(sum[17]),
        .I1(voltage_reg[17]),
        .I2(load),
        .I3(C[17]),
        .O(\voltage[16]_i_8__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_9__4 
       (.I0(sum[16]),
        .I1(voltage_reg[16]),
        .I2(load),
        .I3(C[16]),
        .O(\voltage[16]_i_9__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_2__5 
       (.I0(sum[23]),
        .I1(load),
        .O(\voltage[20]_i_2__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_3__5 
       (.I0(sum[22]),
        .I1(load),
        .O(\voltage[20]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_4__5 
       (.I0(sum[21]),
        .I1(load),
        .O(\voltage[20]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_5__5 
       (.I0(sum[20]),
        .I1(load),
        .O(\voltage[20]_i_5__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_6__4 
       (.I0(sum[23]),
        .I1(voltage_reg[23]),
        .I2(load),
        .I3(C[23]),
        .O(\voltage[20]_i_6__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_7__4 
       (.I0(sum[22]),
        .I1(voltage_reg[22]),
        .I2(load),
        .I3(C[22]),
        .O(\voltage[20]_i_7__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_8__4 
       (.I0(sum[21]),
        .I1(voltage_reg[21]),
        .I2(load),
        .I3(C[21]),
        .O(\voltage[20]_i_8__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_9__4 
       (.I0(sum[20]),
        .I1(voltage_reg[20]),
        .I2(load),
        .I3(C[20]),
        .O(\voltage[20]_i_9__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_2__5 
       (.I0(sum[27]),
        .I1(load),
        .O(\voltage[24]_i_2__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_3__5 
       (.I0(sum[26]),
        .I1(load),
        .O(\voltage[24]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_4__5 
       (.I0(sum[25]),
        .I1(load),
        .O(\voltage[24]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_5__5 
       (.I0(sum[24]),
        .I1(load),
        .O(\voltage[24]_i_5__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_6__4 
       (.I0(sum[27]),
        .I1(voltage_reg[27]),
        .I2(load),
        .I3(C[27]),
        .O(\voltage[24]_i_6__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_7__4 
       (.I0(sum[26]),
        .I1(voltage_reg[26]),
        .I2(load),
        .I3(C[26]),
        .O(\voltage[24]_i_7__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_8__4 
       (.I0(sum[25]),
        .I1(voltage_reg[25]),
        .I2(load),
        .I3(C[25]),
        .O(\voltage[24]_i_8__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_9__4 
       (.I0(sum[24]),
        .I1(voltage_reg[24]),
        .I2(load),
        .I3(C[24]),
        .O(\voltage[24]_i_9__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_2__5 
       (.I0(sum[30]),
        .I1(load),
        .O(\voltage[28]_i_2__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_3__5 
       (.I0(sum[29]),
        .I1(load),
        .O(\voltage[28]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_4__5 
       (.I0(sum[28]),
        .I1(load),
        .O(\voltage[28]_i_4__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_5__5 
       (.I0(sum[31]),
        .I1(voltage_reg[31]),
        .I2(load),
        .I3(C[31]),
        .O(\voltage[28]_i_5__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_6__4 
       (.I0(sum[30]),
        .I1(voltage_reg[30]),
        .I2(load),
        .I3(C[30]),
        .O(\voltage[28]_i_6__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_7__4 
       (.I0(sum[29]),
        .I1(voltage_reg[29]),
        .I2(load),
        .I3(C[29]),
        .O(\voltage[28]_i_7__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_8__4 
       (.I0(sum[28]),
        .I1(voltage_reg[28]),
        .I2(load),
        .I3(C[28]),
        .O(\voltage[28]_i_8__4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_2__5 
       (.I0(sum[7]),
        .I1(load),
        .O(\voltage[4]_i_2__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_3__5 
       (.I0(\sum_reg[6]_0 ),
        .I1(load),
        .O(\voltage[4]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_4__5 
       (.I0(sum[5]),
        .I1(load),
        .O(\voltage[4]_i_4__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_5 
       (.I0(sum[7]),
        .I1(voltage_reg[7]),
        .I2(load),
        .I3(C[7]),
        .O(\voltage[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_6__5 
       (.I0(\sum_reg[6]_0 ),
        .I1(voltage_reg[6]),
        .I2(load),
        .I3(voltage2__91[6]),
        .O(\voltage[4]_i_6__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_7__5 
       (.I0(sum[5]),
        .I1(voltage_reg[5]),
        .I2(load),
        .I3(voltage2__91[5]),
        .O(\voltage[4]_i_7__5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \voltage[4]_i_8 
       (.I0(voltage2__91[4]),
        .I1(load),
        .I2(voltage_reg[4]),
        .O(\voltage[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_2__5 
       (.I0(sum[11]),
        .I1(load),
        .O(\voltage[8]_i_2__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_3__5 
       (.I0(sum[10]),
        .I1(load),
        .O(\voltage[8]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_4__5 
       (.I0(sum[9]),
        .I1(load),
        .O(\voltage[8]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_5__5 
       (.I0(sum[8]),
        .I1(load),
        .O(\voltage[8]_i_5__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_6__5 
       (.I0(sum[11]),
        .I1(voltage_reg[11]),
        .I2(load),
        .I3(C[11]),
        .O(\voltage[8]_i_6__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_7__4 
       (.I0(sum[10]),
        .I1(voltage_reg[10]),
        .I2(load),
        .I3(C[10]),
        .O(\voltage[8]_i_7__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_8__4 
       (.I0(sum[9]),
        .I1(voltage_reg[9]),
        .I2(load),
        .I3(C[9]),
        .O(\voltage[8]_i_8__4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_9__4 
       (.I0(sum[8]),
        .I1(voltage_reg[8]),
        .I2(load),
        .I3(C[8]),
        .O(\voltage[8]_i_9__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__5_n_7 ),
        .Q(voltage_reg[0]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[0]_i_1__5 
       (.CI(1'b0),
        .CO({\voltage_reg[0]_i_1__5_n_0 ,\NLW_voltage_reg[0]_i_1__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[0]_i_2__7_n_0 ,\voltage[0]_i_3__5_n_0 ,1'b0,\voltage[0]_i_4__7_n_0 }),
        .O({\voltage_reg[0]_i_1__5_n_4 ,\voltage_reg[0]_i_1__5_n_5 ,\voltage_reg[0]_i_1__5_n_6 ,\voltage_reg[0]_i_1__5_n_7 }),
        .S({\voltage[0]_i_5_n_0 ,\voltage[0]_i_6__5_n_0 ,\voltage[0]_i_7_n_0 ,\voltage[0]_i_8__5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__5_n_5 ),
        .Q(voltage_reg[10]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__5_n_4 ),
        .Q(voltage_reg[11]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__5_n_7 ),
        .Q(voltage_reg[12]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[12]_i_1__5 
       (.CI(\voltage_reg[8]_i_1__5_n_0 ),
        .CO({\voltage_reg[12]_i_1__5_n_0 ,\NLW_voltage_reg[12]_i_1__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[12]_i_2__5_n_0 ,\voltage[12]_i_3__5_n_0 ,\voltage[12]_i_4__5_n_0 ,\voltage[12]_i_5__5_n_0 }),
        .O({\voltage_reg[12]_i_1__5_n_4 ,\voltage_reg[12]_i_1__5_n_5 ,\voltage_reg[12]_i_1__5_n_6 ,\voltage_reg[12]_i_1__5_n_7 }),
        .S({\voltage[12]_i_6__4_n_0 ,\voltage[12]_i_7__4_n_0 ,\voltage[12]_i_8__4_n_0 ,\voltage[12]_i_9__4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__5_n_6 ),
        .Q(voltage_reg[13]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__5_n_5 ),
        .Q(voltage_reg[14]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__5_n_4 ),
        .Q(voltage_reg[15]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__5_n_7 ),
        .Q(voltage_reg[16]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[16]_i_1__5 
       (.CI(\voltage_reg[12]_i_1__5_n_0 ),
        .CO({\voltage_reg[16]_i_1__5_n_0 ,\NLW_voltage_reg[16]_i_1__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[16]_i_2__5_n_0 ,\voltage[16]_i_3__5_n_0 ,\voltage[16]_i_4__5_n_0 ,\voltage[16]_i_5__5_n_0 }),
        .O({\voltage_reg[16]_i_1__5_n_4 ,\voltage_reg[16]_i_1__5_n_5 ,\voltage_reg[16]_i_1__5_n_6 ,\voltage_reg[16]_i_1__5_n_7 }),
        .S({\voltage[16]_i_6__4_n_0 ,\voltage[16]_i_7__4_n_0 ,\voltage[16]_i_8__4_n_0 ,\voltage[16]_i_9__4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__5_n_6 ),
        .Q(voltage_reg[17]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__5_n_5 ),
        .Q(voltage_reg[18]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__5_n_4 ),
        .Q(voltage_reg[19]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__5_n_6 ),
        .Q(voltage_reg[1]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__5_n_7 ),
        .Q(voltage_reg[20]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[20]_i_1__5 
       (.CI(\voltage_reg[16]_i_1__5_n_0 ),
        .CO({\voltage_reg[20]_i_1__5_n_0 ,\NLW_voltage_reg[20]_i_1__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[20]_i_2__5_n_0 ,\voltage[20]_i_3__5_n_0 ,\voltage[20]_i_4__5_n_0 ,\voltage[20]_i_5__5_n_0 }),
        .O({\voltage_reg[20]_i_1__5_n_4 ,\voltage_reg[20]_i_1__5_n_5 ,\voltage_reg[20]_i_1__5_n_6 ,\voltage_reg[20]_i_1__5_n_7 }),
        .S({\voltage[20]_i_6__4_n_0 ,\voltage[20]_i_7__4_n_0 ,\voltage[20]_i_8__4_n_0 ,\voltage[20]_i_9__4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__5_n_6 ),
        .Q(voltage_reg[21]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__5_n_5 ),
        .Q(voltage_reg[22]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__5_n_4 ),
        .Q(voltage_reg[23]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__5_n_7 ),
        .Q(voltage_reg[24]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[24]_i_1__5 
       (.CI(\voltage_reg[20]_i_1__5_n_0 ),
        .CO({\voltage_reg[24]_i_1__5_n_0 ,\NLW_voltage_reg[24]_i_1__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[24]_i_2__5_n_0 ,\voltage[24]_i_3__5_n_0 ,\voltage[24]_i_4__5_n_0 ,\voltage[24]_i_5__5_n_0 }),
        .O({\voltage_reg[24]_i_1__5_n_4 ,\voltage_reg[24]_i_1__5_n_5 ,\voltage_reg[24]_i_1__5_n_6 ,\voltage_reg[24]_i_1__5_n_7 }),
        .S({\voltage[24]_i_6__4_n_0 ,\voltage[24]_i_7__4_n_0 ,\voltage[24]_i_8__4_n_0 ,\voltage[24]_i_9__4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__5_n_6 ),
        .Q(voltage_reg[25]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__5_n_5 ),
        .Q(voltage_reg[26]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__5_n_4 ),
        .Q(voltage_reg[27]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__5_n_7 ),
        .Q(voltage_reg[28]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[28]_i_1__5 
       (.CI(\voltage_reg[24]_i_1__5_n_0 ),
        .CO(\NLW_voltage_reg[28]_i_1__5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\voltage[28]_i_2__5_n_0 ,\voltage[28]_i_3__5_n_0 ,\voltage[28]_i_4__5_n_0 }),
        .O({\voltage_reg[28]_i_1__5_n_4 ,\voltage_reg[28]_i_1__5_n_5 ,\voltage_reg[28]_i_1__5_n_6 ,\voltage_reg[28]_i_1__5_n_7 }),
        .S({\voltage[28]_i_5__5_n_0 ,\voltage[28]_i_6__4_n_0 ,\voltage[28]_i_7__4_n_0 ,\voltage[28]_i_8__4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__5_n_6 ),
        .Q(voltage_reg[29]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__5_n_5 ),
        .Q(voltage_reg[2]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__5_n_5 ),
        .Q(voltage_reg[30]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__5_n_4 ),
        .Q(voltage_reg[31]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__5_n_4 ),
        .Q(voltage_reg[3]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__5_n_7 ),
        .Q(voltage_reg[4]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[4]_i_1__5 
       (.CI(\voltage_reg[0]_i_1__5_n_0 ),
        .CO({\voltage_reg[4]_i_1__5_n_0 ,\NLW_voltage_reg[4]_i_1__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[4]_i_2__5_n_0 ,\voltage[4]_i_3__5_n_0 ,\voltage[4]_i_4__5_n_0 ,1'b0}),
        .O({\voltage_reg[4]_i_1__5_n_4 ,\voltage_reg[4]_i_1__5_n_5 ,\voltage_reg[4]_i_1__5_n_6 ,\voltage_reg[4]_i_1__5_n_7 }),
        .S({\voltage[4]_i_5_n_0 ,\voltage[4]_i_6__5_n_0 ,\voltage[4]_i_7__5_n_0 ,\voltage[4]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__5_n_6 ),
        .Q(voltage_reg[5]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__5_n_5 ),
        .Q(voltage_reg[6]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__5_n_4 ),
        .Q(voltage_reg[7]),
        .R(ly2_delay));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__5_n_7 ),
        .Q(voltage_reg[8]),
        .R(ly2_delay));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[8]_i_1__5 
       (.CI(\voltage_reg[4]_i_1__5_n_0 ),
        .CO({\voltage_reg[8]_i_1__5_n_0 ,\NLW_voltage_reg[8]_i_1__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[8]_i_2__5_n_0 ,\voltage[8]_i_3__5_n_0 ,\voltage[8]_i_4__5_n_0 ,\voltage[8]_i_5__5_n_0 }),
        .O({\voltage_reg[8]_i_1__5_n_4 ,\voltage_reg[8]_i_1__5_n_5 ,\voltage_reg[8]_i_1__5_n_6 ,\voltage_reg[8]_i_1__5_n_7 }),
        .S({\voltage[8]_i_6__5_n_0 ,\voltage[8]_i_7__4_n_0 ,\voltage[8]_i_8__4_n_0 ,\voltage[8]_i_9__4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__5_n_6 ),
        .Q(voltage_reg[9]),
        .R(ly2_delay));
endmodule

(* ORIG_REF_NAME = "neuron" *) 
module neuron__parameterized6
   (E,
    tmp_sum_4,
    tmp_sum_3,
    tmp_sum_5,
    tmp_sum_6,
    tmp_sum_b_0,
    \tmp_sum_5_6_reg[1]_0 ,
    DI,
    S,
    \tmp_sum_b_0_reg[5]_0 ,
    \tmp_sum_b_0_reg[5]_1 ,
    \tmp_sum_b_0_reg[5]_2 ,
    \tmp_sum_b_0_reg[5]_3 ,
    \tmp_sum_b_0_reg[5]_4 ,
    \tmp_sum_b_0_reg[7]_0 ,
    \tmp_sum_b_0_reg[5]_5 ,
    \tmp_sum_5_reg[8]_0 ,
    \tmp_sum_6_reg[8]_0 ,
    \tmp_sum_6_reg[8]_1 ,
    \tmp_sum_6_reg[8]_2 ,
    \tmp_sum_3_reg[9]_0 ,
    \tmp_sum_3_4_reg[1]_0 ,
    \tmp_sum_3_4_reg[1]_1 ,
    \tmp_sum_2_reg[6]_0 ,
    clk_o_OBUF_BUFG,
    h_2,
    h_1,
    h_4,
    h_3,
    h_5,
    h_6,
    SR,
    D,
    CO,
    tmp_sum_b_0_0,
    \tmp_sum_b_0_1_2_reg[3]_0 ,
    \tmp_sum_b_0_1_2_reg[7]_0 ,
    \tmp_sum_b_0_1_2_reg[5]_0 ,
    \tmp_sum_b_0_1_2_reg[5]_1 ,
    \tmp_sum_b_0_1_2_reg[5]_2 ,
    \tmp_sum_b_0_1_2_reg[7]_1 ,
    \tmp_sum_b_0_1_2_reg[7]_2 ,
    \tmp_sum_b_0_1_2_reg[11]_0 ,
    \tmp_sum_b_0_1_2_reg[15]_0 ,
    \tmp_sum_b_0_1_2_reg[19]_0 ,
    \tmp_sum_b_0_1_2_reg[23]_0 ,
    \tmp_sum_b_0_1_2_reg[27]_0 ,
    \tmp_sum_b_0_1_2_reg[31]_0 ,
    \tmp_sum_b_0_1_2_reg[3]_1 ,
    \tmp_sum_b_0_1_2_reg[7]_3 ,
    \tmp_sum_b_0_1_2_reg[11]_1 ,
    \tmp_sum_b_0_1_2_reg[15]_1 ,
    \tmp_sum_b_0_1_2_reg[19]_1 ,
    \tmp_sum_b_0_1_2_reg[23]_1 ,
    \tmp_sum_b_0_1_2_reg[27]_1 ,
    \tmp_sum_b_0_1_2_reg[31]_1 ,
    \tmp_sum_b_0_1_2_reg[6]_0 ,
    \tmp_sum_3_4_reg[28]_0 ,
    \tmp_sum_3_4_reg[28]_1 ,
    \tmp_sum_3_4_5_6_reg[3]_0 );
  output [0:0]E;
  output [0:0]tmp_sum_4;
  output [0:0]tmp_sum_3;
  output [0:0]tmp_sum_5;
  output [0:0]tmp_sum_6;
  output [1:0]tmp_sum_b_0;
  output [1:0]\tmp_sum_5_6_reg[1]_0 ;
  output [2:0]DI;
  output [0:0]S;
  output [8:0]\tmp_sum_b_0_reg[5]_0 ;
  output [0:0]\tmp_sum_b_0_reg[5]_1 ;
  output [3:0]\tmp_sum_b_0_reg[5]_2 ;
  output [1:0]\tmp_sum_b_0_reg[5]_3 ;
  output [27:0]\tmp_sum_b_0_reg[5]_4 ;
  output [31:0]\tmp_sum_b_0_reg[7]_0 ;
  output [0:0]\tmp_sum_b_0_reg[5]_5 ;
  output [0:0]\tmp_sum_5_reg[8]_0 ;
  output [0:0]\tmp_sum_6_reg[8]_0 ;
  output [1:0]\tmp_sum_6_reg[8]_1 ;
  output [0:0]\tmp_sum_6_reg[8]_2 ;
  output [5:0]\tmp_sum_3_reg[9]_0 ;
  output [0:0]\tmp_sum_3_4_reg[1]_0 ;
  output [3:0]\tmp_sum_3_4_reg[1]_1 ;
  output [6:0]\tmp_sum_2_reg[6]_0 ;
  input clk_o_OBUF_BUFG;
  input h_2;
  input h_1;
  input h_4;
  input h_3;
  input h_5;
  input h_6;
  input [0:0]SR;
  input [0:0]D;
  input [0:0]CO;
  input [1:0]tmp_sum_b_0_0;
  input [1:0]\tmp_sum_b_0_1_2_reg[3]_0 ;
  input [2:0]\tmp_sum_b_0_1_2_reg[7]_0 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[5]_0 ;
  input [0:0]\tmp_sum_b_0_1_2_reg[5]_1 ;
  input [0:0]\tmp_sum_b_0_1_2_reg[5]_2 ;
  input [0:0]\tmp_sum_b_0_1_2_reg[7]_1 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[7]_2 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[11]_0 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[15]_0 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[19]_0 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[23]_0 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[27]_0 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[31]_0 ;
  input [2:0]\tmp_sum_b_0_1_2_reg[3]_1 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[7]_3 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[11]_1 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[15]_1 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[19]_1 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[23]_1 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[27]_1 ;
  input [3:0]\tmp_sum_b_0_1_2_reg[31]_1 ;
  input [0:0]\tmp_sum_b_0_1_2_reg[6]_0 ;
  input [0:0]\tmp_sum_3_4_reg[28]_0 ;
  input [0:0]\tmp_sum_3_4_reg[28]_1 ;
  input [2:0]\tmp_sum_3_4_5_6_reg[3]_0 ;

  wire [31:7]C;
  wire [0:0]CO;
  wire [0:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [0:0]S;
  wire [0:0]SR;
  wire clk_o_OBUF_BUFG;
  wire h_1;
  wire h_2;
  wire h_3;
  wire h_4;
  wire h_5;
  wire h_6;
  wire load;
  wire [28:3]p_0_in;
  wire [31:0]sum;
  wire \sum[11]_i_2_n_0 ;
  wire \sum[11]_i_3_n_0 ;
  wire \sum[11]_i_4_n_0 ;
  wire \sum[11]_i_5_n_0 ;
  wire \sum[15]_i_2_n_0 ;
  wire \sum[15]_i_3_n_0 ;
  wire \sum[15]_i_4_n_0 ;
  wire \sum[15]_i_5_n_0 ;
  wire \sum[19]_i_2_n_0 ;
  wire \sum[19]_i_3_n_0 ;
  wire \sum[19]_i_4_n_0 ;
  wire \sum[19]_i_5_n_0 ;
  wire \sum[23]_i_2_n_0 ;
  wire \sum[23]_i_3_n_0 ;
  wire \sum[23]_i_4_n_0 ;
  wire \sum[23]_i_5_n_0 ;
  wire \sum[27]_i_2_n_0 ;
  wire \sum[27]_i_3_n_0 ;
  wire \sum[27]_i_4_n_0 ;
  wire \sum[27]_i_5_n_0 ;
  wire \sum[31]_i_2_n_0 ;
  wire \sum[31]_i_3_n_0 ;
  wire \sum[31]_i_4_n_0 ;
  wire \sum[31]_i_5_n_0 ;
  wire \sum[3]_i_2_n_0 ;
  wire \sum[3]_i_3_n_0 ;
  wire \sum[3]_i_4_n_0 ;
  wire \sum[3]_i_5_n_0 ;
  wire \sum[7]_i_2_n_0 ;
  wire \sum[7]_i_3_n_0 ;
  wire \sum[7]_i_4_n_0 ;
  wire \sum[7]_i_5_n_0 ;
  wire \sum_reg[11]_i_1_n_0 ;
  wire \sum_reg[11]_i_1_n_4 ;
  wire \sum_reg[11]_i_1_n_5 ;
  wire \sum_reg[11]_i_1_n_6 ;
  wire \sum_reg[11]_i_1_n_7 ;
  wire \sum_reg[15]_i_1_n_0 ;
  wire \sum_reg[15]_i_1_n_4 ;
  wire \sum_reg[15]_i_1_n_5 ;
  wire \sum_reg[15]_i_1_n_6 ;
  wire \sum_reg[15]_i_1_n_7 ;
  wire \sum_reg[19]_i_1_n_0 ;
  wire \sum_reg[19]_i_1_n_4 ;
  wire \sum_reg[19]_i_1_n_5 ;
  wire \sum_reg[19]_i_1_n_6 ;
  wire \sum_reg[19]_i_1_n_7 ;
  wire \sum_reg[23]_i_1_n_0 ;
  wire \sum_reg[23]_i_1_n_4 ;
  wire \sum_reg[23]_i_1_n_5 ;
  wire \sum_reg[23]_i_1_n_6 ;
  wire \sum_reg[23]_i_1_n_7 ;
  wire \sum_reg[27]_i_1_n_0 ;
  wire \sum_reg[27]_i_1_n_4 ;
  wire \sum_reg[27]_i_1_n_5 ;
  wire \sum_reg[27]_i_1_n_6 ;
  wire \sum_reg[27]_i_1_n_7 ;
  wire \sum_reg[31]_i_1_n_4 ;
  wire \sum_reg[31]_i_1_n_5 ;
  wire \sum_reg[31]_i_1_n_6 ;
  wire \sum_reg[31]_i_1_n_7 ;
  wire \sum_reg[3]_i_1_n_0 ;
  wire \sum_reg[3]_i_1_n_4 ;
  wire \sum_reg[3]_i_1_n_5 ;
  wire \sum_reg[3]_i_1_n_6 ;
  wire \sum_reg[3]_i_1_n_7 ;
  wire \sum_reg[7]_i_1_n_0 ;
  wire \sum_reg[7]_i_1_n_4 ;
  wire \sum_reg[7]_i_1_n_5 ;
  wire \sum_reg[7]_i_1_n_6 ;
  wire \sum_reg[7]_i_1_n_7 ;
  wire \tmp_sum_0_reg[2]_srl2_n_0 ;
  wire [9:9]tmp_sum_1;
  wire [28:3]tmp_sum_1_2;
  wire \tmp_sum_1_2[28]_i_2_n_0 ;
  wire \tmp_sum_1_2[3]_i_2_n_0 ;
  wire \tmp_sum_1_2[3]_i_3_n_0 ;
  wire \tmp_sum_1_2[3]_i_4_n_0 ;
  wire \tmp_sum_1_2[6]_i_2_n_0 ;
  wire \tmp_sum_1_2[8]_i_2_n_0 ;
  wire \tmp_sum_1_2_reg[3]_i_1_n_0 ;
  wire \tmp_sum_1_2_reg[3]_i_1_n_7 ;
  wire \tmp_sum_1_2_reg[6]_i_1_n_1 ;
  wire \tmp_sum_1_2_reg[6]_i_1_n_6 ;
  wire \tmp_sum_1_2_reg[6]_i_1_n_7 ;
  wire \tmp_sum_1_2_reg[8]_i_1_n_1 ;
  wire \tmp_sum_1_2_reg[8]_i_1_n_6 ;
  wire [6:6]tmp_sum_2;
  wire [6:0]\tmp_sum_2_reg[6]_0 ;
  wire [0:0]tmp_sum_3;
  wire [8:3]tmp_sum_3_4;
  wire \tmp_sum_3_4[28]_i_4_n_0 ;
  wire \tmp_sum_3_4[2]_i_1_n_0 ;
  wire \tmp_sum_3_4[5]_i_2_n_0 ;
  wire \tmp_sum_3_4[5]_i_3_n_0 ;
  wire \tmp_sum_3_4[7]_i_2_n_0 ;
  wire \tmp_sum_3_4[7]_i_3_n_0 ;
  wire \tmp_sum_3_4[8]_i_2_n_0 ;
  wire \tmp_sum_3_4[8]_i_3_n_0 ;
  wire [31:0]tmp_sum_3_4_5_6;
  wire \tmp_sum_3_4_5_6[11]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[11]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[11]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[11]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6[15]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[15]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[15]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[15]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6[19]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[19]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[19]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[19]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6[23]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[23]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[23]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[23]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6[27]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[27]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[27]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[27]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6[31]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[31]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[31]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[31]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6[3]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[3]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[3]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[3]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6[7]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[7]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[7]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[7]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[11]_i_1_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[11]_i_1_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[11]_i_1_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[11]_i_1_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[11]_i_1_n_7 ;
  wire \tmp_sum_3_4_5_6_reg[15]_i_1_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[15]_i_1_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[15]_i_1_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[15]_i_1_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[15]_i_1_n_7 ;
  wire \tmp_sum_3_4_5_6_reg[19]_i_1_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[19]_i_1_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[19]_i_1_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[19]_i_1_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[19]_i_1_n_7 ;
  wire \tmp_sum_3_4_5_6_reg[23]_i_1_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[23]_i_1_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[23]_i_1_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[23]_i_1_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[23]_i_1_n_7 ;
  wire \tmp_sum_3_4_5_6_reg[27]_i_1_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[27]_i_1_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[27]_i_1_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[27]_i_1_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[27]_i_1_n_7 ;
  wire \tmp_sum_3_4_5_6_reg[31]_i_1_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[31]_i_1_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[31]_i_1_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[31]_i_1_n_7 ;
  wire [2:0]\tmp_sum_3_4_5_6_reg[3]_0 ;
  wire \tmp_sum_3_4_5_6_reg[3]_i_1_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[3]_i_1_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[3]_i_1_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[3]_i_1_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[3]_i_1_n_7 ;
  wire \tmp_sum_3_4_5_6_reg[7]_i_1_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[7]_i_1_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[7]_i_1_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[7]_i_1_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[7]_i_1_n_7 ;
  wire [0:0]\tmp_sum_3_4_reg[1]_0 ;
  wire [3:0]\tmp_sum_3_4_reg[1]_1 ;
  wire [0:0]\tmp_sum_3_4_reg[28]_0 ;
  wire [0:0]\tmp_sum_3_4_reg[28]_1 ;
  wire \tmp_sum_3_4_reg[5]_i_1_n_1 ;
  wire \tmp_sum_3_4_reg[5]_i_1_n_6 ;
  wire \tmp_sum_3_4_reg[5]_i_1_n_7 ;
  wire \tmp_sum_3_4_reg[7]_i_1_n_0 ;
  wire \tmp_sum_3_4_reg[8]_i_1_n_0 ;
  wire \tmp_sum_3_4_reg[8]_i_1_n_5 ;
  wire \tmp_sum_3_4_reg[8]_i_1_n_6 ;
  wire [5:0]\tmp_sum_3_reg[9]_0 ;
  wire [0:0]tmp_sum_4;
  wire [0:0]tmp_sum_5;
  wire [28:2]tmp_sum_5_6;
  wire tmp_sum_5_60__0_carry_i_1_n_0;
  wire tmp_sum_5_60__0_carry_i_2_n_0;
  wire tmp_sum_5_60__8_carry_i_1_n_0;
  wire tmp_sum_5_60__8_carry_i_2_n_0;
  wire tmp_sum_5_60__8_carry_i_3_n_0;
  wire \tmp_sum_5_6[7]_i_1_n_0 ;
  wire [1:0]\tmp_sum_5_6_reg[1]_0 ;
  wire [0:0]\tmp_sum_5_reg[8]_0 ;
  wire [0:0]tmp_sum_6;
  wire [0:0]\tmp_sum_6_reg[8]_0 ;
  wire [1:0]\tmp_sum_6_reg[8]_1 ;
  wire [0:0]\tmp_sum_6_reg[8]_2 ;
  wire [1:0]tmp_sum_b_0;
  wire [1:0]tmp_sum_b_0_0;
  wire [31:0]tmp_sum_b_0_1_2;
  wire \tmp_sum_b_0_1_2[3]_i_2__0_n_0 ;
  wire \tmp_sum_b_0_1_2[3]_i_2_n_0 ;
  wire \tmp_sum_b_0_1_2[3]_i_3__0_n_0 ;
  wire \tmp_sum_b_0_1_2[3]_i_3_n_0 ;
  wire \tmp_sum_b_0_1_2[3]_i_4_n_0 ;
  wire \tmp_sum_b_0_1_2[7]_i_2_n_0 ;
  wire \tmp_sum_b_0_1_2[7]_i_3_n_0 ;
  wire \tmp_sum_b_0_1_2[7]_i_4_n_0 ;
  wire \tmp_sum_b_0_1_2[7]_i_5_n_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[11]_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[11]_1 ;
  wire \tmp_sum_b_0_1_2_reg[11]_i_1__1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[11]_i_1__1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[11]_i_1__1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[11]_i_1__1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[11]_i_1__1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[11]_i_1__2_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[11]_i_1_n_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[15]_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[15]_1 ;
  wire \tmp_sum_b_0_1_2_reg[15]_i_1__1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[15]_i_1__1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[15]_i_1__1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[15]_i_1__1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[15]_i_1__1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[15]_i_1__2_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[15]_i_1_n_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[19]_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[19]_1 ;
  wire \tmp_sum_b_0_1_2_reg[19]_i_1__1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[19]_i_1__1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[19]_i_1__1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[19]_i_1__1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[19]_i_1__1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[19]_i_1__2_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[19]_i_1_n_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[23]_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[23]_1 ;
  wire \tmp_sum_b_0_1_2_reg[23]_i_1__1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[23]_i_1__1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[23]_i_1__1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[23]_i_1__1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[23]_i_1__1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[23]_i_1__2_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[23]_i_1_n_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[27]_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[27]_1 ;
  wire \tmp_sum_b_0_1_2_reg[27]_i_1__1_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[27]_i_1__1_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[27]_i_1__1_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[27]_i_1__1_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[27]_i_1__1_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[27]_i_1__2_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[27]_i_1_n_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[31]_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[31]_1 ;
  wire \tmp_sum_b_0_1_2_reg[31]_i_1__5_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[31]_i_1__5_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[31]_i_1__5_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[31]_i_1__5_n_7 ;
  wire [1:0]\tmp_sum_b_0_1_2_reg[3]_0 ;
  wire [2:0]\tmp_sum_b_0_1_2_reg[3]_1 ;
  wire \tmp_sum_b_0_1_2_reg[3]_i_1__3_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[3]_i_1__3_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[3]_i_1__3_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[3]_i_1__3_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[3]_i_1__3_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[3]_i_1__4_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[3]_i_1_n_0 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[5]_0 ;
  wire [0:0]\tmp_sum_b_0_1_2_reg[5]_1 ;
  wire [0:0]\tmp_sum_b_0_1_2_reg[5]_2 ;
  wire [0:0]\tmp_sum_b_0_1_2_reg[6]_0 ;
  wire [2:0]\tmp_sum_b_0_1_2_reg[7]_0 ;
  wire [0:0]\tmp_sum_b_0_1_2_reg[7]_1 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[7]_2 ;
  wire [3:0]\tmp_sum_b_0_1_2_reg[7]_3 ;
  wire \tmp_sum_b_0_1_2_reg[7]_i_1__0_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[7]_i_1__2_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[7]_i_1__2_n_4 ;
  wire \tmp_sum_b_0_1_2_reg[7]_i_1__2_n_5 ;
  wire \tmp_sum_b_0_1_2_reg[7]_i_1__2_n_6 ;
  wire \tmp_sum_b_0_1_2_reg[7]_i_1__2_n_7 ;
  wire \tmp_sum_b_0_1_2_reg[7]_i_1__3_n_0 ;
  wire \tmp_sum_b_0_1_2_reg[7]_i_1_n_0 ;
  wire [8:0]\tmp_sum_b_0_reg[5]_0 ;
  wire [0:0]\tmp_sum_b_0_reg[5]_1 ;
  wire [3:0]\tmp_sum_b_0_reg[5]_2 ;
  wire [1:0]\tmp_sum_b_0_reg[5]_3 ;
  wire [27:0]\tmp_sum_b_0_reg[5]_4 ;
  wire [0:0]\tmp_sum_b_0_reg[5]_5 ;
  wire [31:0]\tmp_sum_b_0_reg[7]_0 ;
  wire voltage0_carry__0_i_1_n_0;
  wire voltage0_carry__0_i_2_n_0;
  wire voltage0_carry__0_i_3_n_0;
  wire voltage0_carry__0_i_4_n_0;
  wire voltage0_carry__0_n_0;
  wire voltage0_carry__1_i_1_n_0;
  wire voltage0_carry__1_i_2_n_0;
  wire voltage0_carry__1_i_3_n_0;
  wire voltage0_carry__1_i_4_n_0;
  wire voltage0_carry__1_n_0;
  wire voltage0_carry__2_i_1_n_0;
  wire voltage0_carry__2_i_2_n_0;
  wire voltage0_carry__2_i_3_n_0;
  wire voltage0_carry__2_i_4_n_0;
  wire voltage0_carry__2_n_0;
  wire voltage0_carry__3_i_1_n_0;
  wire voltage0_carry__3_i_2_n_0;
  wire voltage0_carry__3_i_3_n_0;
  wire voltage0_carry__3_i_4_n_0;
  wire voltage0_carry__3_n_0;
  wire voltage0_carry__4_i_1_n_0;
  wire voltage0_carry__4_i_2_n_0;
  wire voltage0_carry__4_i_3_n_0;
  wire voltage0_carry__4_i_4_n_0;
  wire voltage0_carry__4_n_0;
  wire voltage0_carry__5_i_1_n_0;
  wire voltage0_carry_i_1_n_0;
  wire voltage0_carry_i_2_n_0;
  wire voltage0_carry_i_3__5_n_0;
  wire voltage0_carry_n_0;
  wire voltage1_carry__0_i_1__6_n_0;
  wire voltage1_carry__0_i_2__6_n_0;
  wire voltage1_carry__0_i_3__6_n_0;
  wire voltage1_carry__0_i_4_n_0;
  wire voltage1_carry__0_i_5_n_0;
  wire voltage1_carry__0_i_6_n_0;
  wire voltage1_carry__0_i_7_n_0;
  wire voltage1_carry__0_n_0;
  wire voltage1_carry__1_i_1__6_n_0;
  wire voltage1_carry__1_i_2__6_n_0;
  wire voltage1_carry__1_i_3__6_n_0;
  wire voltage1_carry__1_i_4__6_n_0;
  wire voltage1_carry__1_i_5_n_0;
  wire voltage1_carry__1_i_6_n_0;
  wire voltage1_carry__1_i_7_n_0;
  wire voltage1_carry__1_i_8_n_0;
  wire voltage1_carry__1_n_0;
  wire voltage1_carry__2_i_1_n_0;
  wire voltage1_carry__2_i_2__6_n_0;
  wire voltage1_carry__2_i_3__6_n_0;
  wire voltage1_carry__2_i_4__6_n_0;
  wire voltage1_carry__2_i_5_n_0;
  wire voltage1_carry__2_i_6_n_0;
  wire voltage1_carry__2_i_7_n_0;
  wire voltage1_carry__2_i_8_n_0;
  wire voltage1_carry_i_1__6_n_0;
  wire voltage1_carry_i_2__6_n_0;
  wire voltage1_carry_i_3__6_n_0;
  wire voltage1_carry_i_4__6_n_0;
  wire voltage1_carry_i_5__6_n_0;
  wire voltage1_carry_i_6__6_n_0;
  wire voltage1_carry_i_7__6_n_0;
  wire voltage1_carry_i_8__6_n_0;
  wire voltage1_carry_n_0;
  wire [31:0]voltage2__93;
  wire voltage2_carry__0_i_1__5_n_0;
  wire voltage2_carry__0_i_2__5_n_0;
  wire voltage2_carry__0_i_3__5_n_0;
  wire voltage2_carry__0_i_4__4_n_0;
  wire voltage2_carry__0_n_0;
  wire voltage2_carry__1_i_1__5_n_0;
  wire voltage2_carry__1_i_2__5_n_0;
  wire voltage2_carry__1_i_3__5_n_0;
  wire voltage2_carry__1_i_4__5_n_0;
  wire voltage2_carry__1_n_0;
  wire voltage2_carry__2_i_1__5_n_0;
  wire voltage2_carry__2_i_2__5_n_0;
  wire voltage2_carry__2_i_3__5_n_0;
  wire voltage2_carry__2_i_4__5_n_0;
  wire voltage2_carry__2_n_0;
  wire voltage2_carry__3_i_1__5_n_0;
  wire voltage2_carry__3_i_2__5_n_0;
  wire voltage2_carry__3_i_3__5_n_0;
  wire voltage2_carry__3_i_4__5_n_0;
  wire voltage2_carry__3_n_0;
  wire voltage2_carry__4_i_1__5_n_0;
  wire voltage2_carry__4_i_2__5_n_0;
  wire voltage2_carry__4_i_3__5_n_0;
  wire voltage2_carry__4_i_4__5_n_0;
  wire voltage2_carry__4_n_0;
  wire voltage2_carry__5_i_1__5_n_0;
  wire voltage2_carry__5_i_2__5_n_0;
  wire voltage2_carry__5_i_3__5_n_0;
  wire voltage2_carry__5_i_4__5_n_0;
  wire voltage2_carry__5_n_0;
  wire voltage2_carry__6_i_1__5_n_0;
  wire voltage2_carry__6_i_2__5_n_0;
  wire voltage2_carry__6_i_3__5_n_0;
  wire voltage2_carry__6_i_4__5_n_0;
  wire voltage2_carry_i_1__5_n_0;
  wire voltage2_carry_i_2__5_n_0;
  wire voltage2_carry_i_3__5_n_0;
  wire voltage2_carry_i_4__4_n_0;
  wire voltage2_carry_n_0;
  wire \voltage[0]_i_2__5_n_0 ;
  wire \voltage[0]_i_3__6_n_0 ;
  wire \voltage[0]_i_4__5_n_0 ;
  wire \voltage[0]_i_5__5_n_0 ;
  wire \voltage[0]_i_6__6_n_0 ;
  wire \voltage[0]_i_7__6_n_0 ;
  wire \voltage[0]_i_8__6_n_0 ;
  wire \voltage[0]_i_9__5_n_0 ;
  wire \voltage[12]_i_2__6_n_0 ;
  wire \voltage[12]_i_3__6_n_0 ;
  wire \voltage[12]_i_4__6_n_0 ;
  wire \voltage[12]_i_5__6_n_0 ;
  wire \voltage[12]_i_6__5_n_0 ;
  wire \voltage[12]_i_7__5_n_0 ;
  wire \voltage[12]_i_8__5_n_0 ;
  wire \voltage[12]_i_9__5_n_0 ;
  wire \voltage[16]_i_2__6_n_0 ;
  wire \voltage[16]_i_3__6_n_0 ;
  wire \voltage[16]_i_4__6_n_0 ;
  wire \voltage[16]_i_5__6_n_0 ;
  wire \voltage[16]_i_6__5_n_0 ;
  wire \voltage[16]_i_7__5_n_0 ;
  wire \voltage[16]_i_8__5_n_0 ;
  wire \voltage[16]_i_9__5_n_0 ;
  wire \voltage[20]_i_2__6_n_0 ;
  wire \voltage[20]_i_3__6_n_0 ;
  wire \voltage[20]_i_4__6_n_0 ;
  wire \voltage[20]_i_5__6_n_0 ;
  wire \voltage[20]_i_6__5_n_0 ;
  wire \voltage[20]_i_7__5_n_0 ;
  wire \voltage[20]_i_8__5_n_0 ;
  wire \voltage[20]_i_9__5_n_0 ;
  wire \voltage[24]_i_2__6_n_0 ;
  wire \voltage[24]_i_3__6_n_0 ;
  wire \voltage[24]_i_4__6_n_0 ;
  wire \voltage[24]_i_5__6_n_0 ;
  wire \voltage[24]_i_6__5_n_0 ;
  wire \voltage[24]_i_7__5_n_0 ;
  wire \voltage[24]_i_8__5_n_0 ;
  wire \voltage[24]_i_9__5_n_0 ;
  wire \voltage[28]_i_2__6_n_0 ;
  wire \voltage[28]_i_3__6_n_0 ;
  wire \voltage[28]_i_4__6_n_0 ;
  wire \voltage[28]_i_5__6_n_0 ;
  wire \voltage[28]_i_6__5_n_0 ;
  wire \voltage[28]_i_7__5_n_0 ;
  wire \voltage[28]_i_8__5_n_0 ;
  wire \voltage[4]_i_2__6_n_0 ;
  wire \voltage[4]_i_3__6_n_0 ;
  wire \voltage[4]_i_4__6_n_0 ;
  wire \voltage[4]_i_5__6_n_0 ;
  wire \voltage[4]_i_6__6_n_0 ;
  wire \voltage[4]_i_7__6_n_0 ;
  wire \voltage[4]_i_8__6_n_0 ;
  wire \voltage[4]_i_9__5_n_0 ;
  wire \voltage[8]_i_2__6_n_0 ;
  wire \voltage[8]_i_3__6_n_0 ;
  wire \voltage[8]_i_4__6_n_0 ;
  wire \voltage[8]_i_5__6_n_0 ;
  wire \voltage[8]_i_6__6_n_0 ;
  wire \voltage[8]_i_7__5_n_0 ;
  wire \voltage[8]_i_8__5_n_0 ;
  wire \voltage[8]_i_9__5_n_0 ;
  wire [31:0]voltage_reg;
  wire \voltage_reg[0]_i_1__6_n_0 ;
  wire \voltage_reg[0]_i_1__6_n_4 ;
  wire \voltage_reg[0]_i_1__6_n_5 ;
  wire \voltage_reg[0]_i_1__6_n_6 ;
  wire \voltage_reg[0]_i_1__6_n_7 ;
  wire \voltage_reg[12]_i_1__6_n_0 ;
  wire \voltage_reg[12]_i_1__6_n_4 ;
  wire \voltage_reg[12]_i_1__6_n_5 ;
  wire \voltage_reg[12]_i_1__6_n_6 ;
  wire \voltage_reg[12]_i_1__6_n_7 ;
  wire \voltage_reg[16]_i_1__6_n_0 ;
  wire \voltage_reg[16]_i_1__6_n_4 ;
  wire \voltage_reg[16]_i_1__6_n_5 ;
  wire \voltage_reg[16]_i_1__6_n_6 ;
  wire \voltage_reg[16]_i_1__6_n_7 ;
  wire \voltage_reg[20]_i_1__6_n_0 ;
  wire \voltage_reg[20]_i_1__6_n_4 ;
  wire \voltage_reg[20]_i_1__6_n_5 ;
  wire \voltage_reg[20]_i_1__6_n_6 ;
  wire \voltage_reg[20]_i_1__6_n_7 ;
  wire \voltage_reg[24]_i_1__6_n_0 ;
  wire \voltage_reg[24]_i_1__6_n_4 ;
  wire \voltage_reg[24]_i_1__6_n_5 ;
  wire \voltage_reg[24]_i_1__6_n_6 ;
  wire \voltage_reg[24]_i_1__6_n_7 ;
  wire \voltage_reg[28]_i_1__6_n_4 ;
  wire \voltage_reg[28]_i_1__6_n_5 ;
  wire \voltage_reg[28]_i_1__6_n_6 ;
  wire \voltage_reg[28]_i_1__6_n_7 ;
  wire \voltage_reg[4]_i_1__6_n_0 ;
  wire \voltage_reg[4]_i_1__6_n_4 ;
  wire \voltage_reg[4]_i_1__6_n_5 ;
  wire \voltage_reg[4]_i_1__6_n_6 ;
  wire \voltage_reg[4]_i_1__6_n_7 ;
  wire \voltage_reg[8]_i_1__6_n_0 ;
  wire \voltage_reg[8]_i_1__6_n_4 ;
  wire \voltage_reg[8]_i_1__6_n_5 ;
  wire \voltage_reg[8]_i_1__6_n_6 ;
  wire \voltage_reg[8]_i_1__6_n_7 ;
  wire [2:0]\NLW_sum_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sum_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sum_reg[19]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sum_reg[23]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sum_reg[27]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_sum_reg[31]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sum_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sum_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_1_2_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp_sum_1_2_reg[28]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_1_2_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_1_2_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp_sum_1_2_reg[6]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_1_2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_1_2_reg[8]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[19]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[23]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[27]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_3_4_5_6_reg[31]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[3]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_3_4_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp_sum_3_4_reg[28]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_3_4_reg[5]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp_sum_3_4_reg[5]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_reg[7]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_tmp_sum_3_4_reg[7]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_3_4_reg[8]_i_1_O_UNCONNECTED ;
  wire [2:0]NLW_tmp_sum_5_60__0_carry_CO_UNCONNECTED;
  wire [3:3]NLW_tmp_sum_5_60__0_carry_O_UNCONNECTED;
  wire [3:0]NLW_tmp_sum_5_60__8_carry_CO_UNCONNECTED;
  wire [3:3]NLW_tmp_sum_5_60__8_carry_O_UNCONNECTED;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[11]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[11]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[15]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[15]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[19]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[19]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[19]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[23]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[23]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[23]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[27]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[27]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[27]_i_1__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__5_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__6_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[3]_i_1__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[3]_i_1__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[5]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_b_0_1_2_reg[5]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmp_sum_b_0_1_2_reg[5]_i_1__0_O_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[7]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[7]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_b_0_1_2_reg[7]_i_1__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmp_sum_b_0_1_2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_b_0_1_2_reg[8]_i_1_O_UNCONNECTED ;
  wire [2:0]NLW_voltage0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_voltage0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_voltage0_carry__5_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_voltage2_carry__6_CO_UNCONNECTED;
  wire [2:0]\NLW_voltage_reg[0]_i_1__6_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[12]_i_1__6_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[16]_i_1__6_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[20]_i_1__6_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[24]_i_1__6_CO_UNCONNECTED ;
  wire [3:0]\NLW_voltage_reg[28]_i_1__6_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[4]_i_1__6_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[8]_i_1__6_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    spike_out_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(load),
        .Q(E),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_2 
       (.I0(tmp_sum_b_0_1_2[11]),
        .I1(tmp_sum_3_4_5_6[11]),
        .O(\sum[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_3 
       (.I0(tmp_sum_b_0_1_2[10]),
        .I1(tmp_sum_3_4_5_6[10]),
        .O(\sum[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_4 
       (.I0(tmp_sum_b_0_1_2[9]),
        .I1(tmp_sum_3_4_5_6[9]),
        .O(\sum[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_5 
       (.I0(tmp_sum_b_0_1_2[8]),
        .I1(tmp_sum_3_4_5_6[8]),
        .O(\sum[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_2 
       (.I0(tmp_sum_b_0_1_2[15]),
        .I1(tmp_sum_3_4_5_6[15]),
        .O(\sum[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_3 
       (.I0(tmp_sum_b_0_1_2[14]),
        .I1(tmp_sum_3_4_5_6[14]),
        .O(\sum[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_4 
       (.I0(tmp_sum_b_0_1_2[13]),
        .I1(tmp_sum_3_4_5_6[13]),
        .O(\sum[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_5 
       (.I0(tmp_sum_b_0_1_2[12]),
        .I1(tmp_sum_3_4_5_6[12]),
        .O(\sum[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_2 
       (.I0(tmp_sum_b_0_1_2[19]),
        .I1(tmp_sum_3_4_5_6[19]),
        .O(\sum[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_3 
       (.I0(tmp_sum_b_0_1_2[18]),
        .I1(tmp_sum_3_4_5_6[18]),
        .O(\sum[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_4 
       (.I0(tmp_sum_b_0_1_2[17]),
        .I1(tmp_sum_3_4_5_6[17]),
        .O(\sum[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_5 
       (.I0(tmp_sum_b_0_1_2[16]),
        .I1(tmp_sum_3_4_5_6[16]),
        .O(\sum[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_2 
       (.I0(tmp_sum_b_0_1_2[23]),
        .I1(tmp_sum_3_4_5_6[23]),
        .O(\sum[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_3 
       (.I0(tmp_sum_b_0_1_2[22]),
        .I1(tmp_sum_3_4_5_6[22]),
        .O(\sum[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_4 
       (.I0(tmp_sum_b_0_1_2[21]),
        .I1(tmp_sum_3_4_5_6[21]),
        .O(\sum[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_5 
       (.I0(tmp_sum_b_0_1_2[20]),
        .I1(tmp_sum_3_4_5_6[20]),
        .O(\sum[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_2 
       (.I0(tmp_sum_b_0_1_2[27]),
        .I1(tmp_sum_3_4_5_6[27]),
        .O(\sum[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_3 
       (.I0(tmp_sum_b_0_1_2[26]),
        .I1(tmp_sum_3_4_5_6[26]),
        .O(\sum[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_4 
       (.I0(tmp_sum_b_0_1_2[25]),
        .I1(tmp_sum_3_4_5_6[25]),
        .O(\sum[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_5 
       (.I0(tmp_sum_b_0_1_2[24]),
        .I1(tmp_sum_3_4_5_6[24]),
        .O(\sum[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[31]_i_2 
       (.I0(tmp_sum_b_0_1_2[31]),
        .I1(tmp_sum_3_4_5_6[31]),
        .O(\sum[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[31]_i_3 
       (.I0(tmp_sum_b_0_1_2[30]),
        .I1(tmp_sum_3_4_5_6[30]),
        .O(\sum[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[31]_i_4 
       (.I0(tmp_sum_b_0_1_2[29]),
        .I1(tmp_sum_3_4_5_6[29]),
        .O(\sum[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[31]_i_5 
       (.I0(tmp_sum_b_0_1_2[28]),
        .I1(tmp_sum_3_4_5_6[28]),
        .O(\sum[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_2 
       (.I0(tmp_sum_b_0_1_2[3]),
        .I1(tmp_sum_3_4_5_6[3]),
        .O(\sum[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_3 
       (.I0(tmp_sum_b_0_1_2[2]),
        .I1(tmp_sum_3_4_5_6[2]),
        .O(\sum[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_4 
       (.I0(tmp_sum_b_0_1_2[1]),
        .I1(tmp_sum_3_4_5_6[1]),
        .O(\sum[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_5 
       (.I0(tmp_sum_b_0_1_2[0]),
        .I1(tmp_sum_3_4_5_6[0]),
        .O(\sum[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_2 
       (.I0(tmp_sum_b_0_1_2[7]),
        .I1(tmp_sum_3_4_5_6[7]),
        .O(\sum[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_3 
       (.I0(tmp_sum_b_0_1_2[6]),
        .I1(tmp_sum_3_4_5_6[6]),
        .O(\sum[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_4 
       (.I0(tmp_sum_b_0_1_2[5]),
        .I1(tmp_sum_3_4_5_6[5]),
        .O(\sum[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_5 
       (.I0(tmp_sum_b_0_1_2[4]),
        .I1(tmp_sum_3_4_5_6[4]),
        .O(\sum[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[3]_i_1_n_7 ),
        .Q(sum[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[11]_i_1_n_5 ),
        .Q(sum[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[11]_i_1_n_4 ),
        .Q(sum[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[11]_i_1 
       (.CI(\sum_reg[7]_i_1_n_0 ),
        .CO({\sum_reg[11]_i_1_n_0 ,\NLW_sum_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[11:8]),
        .O({\sum_reg[11]_i_1_n_4 ,\sum_reg[11]_i_1_n_5 ,\sum_reg[11]_i_1_n_6 ,\sum_reg[11]_i_1_n_7 }),
        .S({\sum[11]_i_2_n_0 ,\sum[11]_i_3_n_0 ,\sum[11]_i_4_n_0 ,\sum[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[15]_i_1_n_7 ),
        .Q(sum[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[15]_i_1_n_6 ),
        .Q(sum[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[15]_i_1_n_5 ),
        .Q(sum[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[15]_i_1_n_4 ),
        .Q(sum[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[15]_i_1 
       (.CI(\sum_reg[11]_i_1_n_0 ),
        .CO({\sum_reg[15]_i_1_n_0 ,\NLW_sum_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[15:12]),
        .O({\sum_reg[15]_i_1_n_4 ,\sum_reg[15]_i_1_n_5 ,\sum_reg[15]_i_1_n_6 ,\sum_reg[15]_i_1_n_7 }),
        .S({\sum[15]_i_2_n_0 ,\sum[15]_i_3_n_0 ,\sum[15]_i_4_n_0 ,\sum[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[19]_i_1_n_7 ),
        .Q(sum[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[19]_i_1_n_6 ),
        .Q(sum[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[19]_i_1_n_5 ),
        .Q(sum[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[19]_i_1_n_4 ),
        .Q(sum[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[19]_i_1 
       (.CI(\sum_reg[15]_i_1_n_0 ),
        .CO({\sum_reg[19]_i_1_n_0 ,\NLW_sum_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[19:16]),
        .O({\sum_reg[19]_i_1_n_4 ,\sum_reg[19]_i_1_n_5 ,\sum_reg[19]_i_1_n_6 ,\sum_reg[19]_i_1_n_7 }),
        .S({\sum[19]_i_2_n_0 ,\sum[19]_i_3_n_0 ,\sum[19]_i_4_n_0 ,\sum[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[3]_i_1_n_6 ),
        .Q(sum[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[23]_i_1_n_7 ),
        .Q(sum[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[23]_i_1_n_6 ),
        .Q(sum[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[23]_i_1_n_5 ),
        .Q(sum[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[23]_i_1_n_4 ),
        .Q(sum[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[23]_i_1 
       (.CI(\sum_reg[19]_i_1_n_0 ),
        .CO({\sum_reg[23]_i_1_n_0 ,\NLW_sum_reg[23]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[23:20]),
        .O({\sum_reg[23]_i_1_n_4 ,\sum_reg[23]_i_1_n_5 ,\sum_reg[23]_i_1_n_6 ,\sum_reg[23]_i_1_n_7 }),
        .S({\sum[23]_i_2_n_0 ,\sum[23]_i_3_n_0 ,\sum[23]_i_4_n_0 ,\sum[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[27]_i_1_n_7 ),
        .Q(sum[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[27]_i_1_n_6 ),
        .Q(sum[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[27]_i_1_n_5 ),
        .Q(sum[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[27]_i_1_n_4 ),
        .Q(sum[27]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[27]_i_1 
       (.CI(\sum_reg[23]_i_1_n_0 ),
        .CO({\sum_reg[27]_i_1_n_0 ,\NLW_sum_reg[27]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[27:24]),
        .O({\sum_reg[27]_i_1_n_4 ,\sum_reg[27]_i_1_n_5 ,\sum_reg[27]_i_1_n_6 ,\sum_reg[27]_i_1_n_7 }),
        .S({\sum[27]_i_2_n_0 ,\sum[27]_i_3_n_0 ,\sum[27]_i_4_n_0 ,\sum[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[31]_i_1_n_7 ),
        .Q(sum[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[31]_i_1_n_6 ),
        .Q(sum[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[3]_i_1_n_5 ),
        .Q(sum[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[31]_i_1_n_5 ),
        .Q(sum[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[31]_i_1_n_4 ),
        .Q(sum[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[31]_i_1 
       (.CI(\sum_reg[27]_i_1_n_0 ),
        .CO(\NLW_sum_reg[31]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_sum_b_0_1_2[30:28]}),
        .O({\sum_reg[31]_i_1_n_4 ,\sum_reg[31]_i_1_n_5 ,\sum_reg[31]_i_1_n_6 ,\sum_reg[31]_i_1_n_7 }),
        .S({\sum[31]_i_2_n_0 ,\sum[31]_i_3_n_0 ,\sum[31]_i_4_n_0 ,\sum[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[3]_i_1_n_4 ),
        .Q(sum[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sum_reg[3]_i_1_n_0 ,\NLW_sum_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[3:0]),
        .O({\sum_reg[3]_i_1_n_4 ,\sum_reg[3]_i_1_n_5 ,\sum_reg[3]_i_1_n_6 ,\sum_reg[3]_i_1_n_7 }),
        .S({\sum[3]_i_2_n_0 ,\sum[3]_i_3_n_0 ,\sum[3]_i_4_n_0 ,\sum[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[7]_i_1_n_7 ),
        .Q(sum[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[7]_i_1_n_6 ),
        .Q(sum[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[7]_i_1_n_5 ),
        .Q(sum[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[7]_i_1_n_4 ),
        .Q(sum[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[7]_i_1 
       (.CI(\sum_reg[3]_i_1_n_0 ),
        .CO({\sum_reg[7]_i_1_n_0 ,\NLW_sum_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[7:4]),
        .O({\sum_reg[7]_i_1_n_4 ,\sum_reg[7]_i_1_n_5 ,\sum_reg[7]_i_1_n_6 ,\sum_reg[7]_i_1_n_7 }),
        .S({\sum[7]_i_2_n_0 ,\sum[7]_i_3_n_0 ,\sum[7]_i_4_n_0 ,\sum[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[11]_i_1_n_7 ),
        .Q(sum[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[11]_i_1_n_6 ),
        .Q(sum[9]),
        .R(1'b0));
  (* srl_bus_name = "\\output0/tmp_sum_0_reg " *) 
  (* srl_name = "\\output0/tmp_sum_0_reg[2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \tmp_sum_0_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_o_OBUF_BUFG),
        .D(CO),
        .Q(\tmp_sum_0_reg[2]_srl2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_sum_1_2[1]_i_1 
       (.I0(tmp_sum_2),
        .I1(tmp_sum_1),
        .O(\tmp_sum_2_reg[6]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_sum_1_2[28]_i_2 
       (.I0(tmp_sum_2),
        .O(\tmp_sum_1_2[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_sum_1_2[3]_i_2 
       (.I0(tmp_sum_2),
        .O(\tmp_sum_1_2[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_sum_1_2[3]_i_3 
       (.I0(tmp_sum_2),
        .O(\tmp_sum_1_2[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_1_2[3]_i_4 
       (.I0(tmp_sum_1),
        .I1(tmp_sum_2),
        .O(\tmp_sum_1_2[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_1_2[4]_i_1 
       (.I0(tmp_sum_1),
        .I1(tmp_sum_2),
        .O(\tmp_sum_2_reg[6]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_1_2[6]_i_2 
       (.I0(tmp_sum_1),
        .I1(tmp_sum_2),
        .O(\tmp_sum_1_2[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_1_2[8]_i_2 
       (.I0(tmp_sum_1),
        .I1(tmp_sum_2),
        .O(\tmp_sum_1_2[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_2),
        .Q(S),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_1),
        .Q(tmp_sum_1_2[28]),
        .R(1'b0));
  CARRY4 \tmp_sum_1_2_reg[28]_i_1 
       (.CI(\tmp_sum_1_2_reg[3]_i_1_n_0 ),
        .CO(\NLW_tmp_sum_1_2_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_sum_1_2_reg[28]_i_1_O_UNCONNECTED [3:2],\tmp_sum_2_reg[6]_0 [6:5]}),
        .S({1'b0,1'b0,1'b1,\tmp_sum_1_2[28]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[3]_i_1_n_7 ),
        .Q(tmp_sum_1_2[3]),
        .R(1'b0));
  CARRY4 \tmp_sum_1_2_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\tmp_sum_1_2_reg[3]_i_1_n_0 ,\NLW_tmp_sum_1_2_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_2,\tmp_sum_1_2[3]_i_2_n_0 ,tmp_sum_1,tmp_sum_1}),
        .O({\tmp_sum_2_reg[6]_0 [4:2],\tmp_sum_1_2_reg[3]_i_1_n_7 }),
        .S({\tmp_sum_1_2[3]_i_3_n_0 ,tmp_sum_2,tmp_sum_1,\tmp_sum_1_2[3]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[6]_i_1_n_6 ),
        .Q(tmp_sum_1_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[6]_i_1_n_1 ),
        .Q(tmp_sum_1_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[6]_i_1_n_7 ),
        .Q(tmp_sum_1_2[6]),
        .R(1'b0));
  CARRY4 \tmp_sum_1_2_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\NLW_tmp_sum_1_2_reg[6]_i_1_CO_UNCONNECTED [3],\tmp_sum_1_2_reg[6]_i_1_n_1 ,\NLW_tmp_sum_1_2_reg[6]_i_1_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tmp_sum_1,tmp_sum_1}),
        .O({\NLW_tmp_sum_1_2_reg[6]_i_1_O_UNCONNECTED [3:2],\tmp_sum_1_2_reg[6]_i_1_n_6 ,\tmp_sum_1_2_reg[6]_i_1_n_7 }),
        .S({1'b0,1'b1,tmp_sum_1,\tmp_sum_1_2[6]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[8]_i_1_n_6 ),
        .Q(tmp_sum_1_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[8]_i_1_n_1 ),
        .Q(tmp_sum_1_2[8]),
        .R(1'b0));
  CARRY4 \tmp_sum_1_2_reg[8]_i_1 
       (.CI(1'b0),
        .CO({\NLW_tmp_sum_1_2_reg[8]_i_1_CO_UNCONNECTED [3],\tmp_sum_1_2_reg[8]_i_1_n_1 ,\NLW_tmp_sum_1_2_reg[8]_i_1_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,tmp_sum_1}),
        .O({\NLW_tmp_sum_1_2_reg[8]_i_1_O_UNCONNECTED [3:2],\tmp_sum_1_2_reg[8]_i_1_n_6 ,\NLW_tmp_sum_1_2_reg[8]_i_1_O_UNCONNECTED [0]}),
        .S({1'b0,1'b1,tmp_sum_1,\tmp_sum_1_2[8]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(h_1),
        .Q(tmp_sum_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(h_2),
        .Q(tmp_sum_2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4[28]_i_4 
       (.I0(tmp_sum_4),
        .I1(tmp_sum_3),
        .O(\tmp_sum_3_4[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4[2]_i_1 
       (.I0(tmp_sum_3),
        .I1(tmp_sum_4),
        .O(\tmp_sum_3_4[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4[5]_i_2 
       (.I0(tmp_sum_3),
        .I1(tmp_sum_4),
        .O(\tmp_sum_3_4[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4[5]_i_3 
       (.I0(tmp_sum_3),
        .I1(tmp_sum_4),
        .O(\tmp_sum_3_4[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4[7]_i_2 
       (.I0(tmp_sum_4),
        .I1(tmp_sum_3),
        .O(\tmp_sum_3_4[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4[7]_i_3 
       (.I0(tmp_sum_3),
        .I1(tmp_sum_4),
        .O(\tmp_sum_3_4[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4[8]_i_2 
       (.I0(tmp_sum_3),
        .I1(tmp_sum_4),
        .O(\tmp_sum_3_4[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4[8]_i_3 
       (.I0(tmp_sum_3),
        .I1(tmp_sum_4),
        .O(\tmp_sum_3_4[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[11]_i_2 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[11]_i_3 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[11]_i_4 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[9]),
        .O(\tmp_sum_3_4_5_6[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[11]_i_5 
       (.I0(tmp_sum_3_4[8]),
        .I1(tmp_sum_5_6[8]),
        .O(\tmp_sum_3_4_5_6[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[15]_i_2 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[15]_i_3 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[15]_i_4 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[15]_i_5 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[19]_i_2 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[19]_i_3 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[19]_i_4 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[19]_i_5 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[23]_i_2 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[23]_i_3 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[23]_i_4 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[23]_i_5 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[27]_i_2 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[27]_i_3 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[27]_i_4 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[27]_i_5 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[31]_i_2 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[31]_i_3 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[31]_i_4 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[31]_i_5 
       (.I0(DI[0]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[3]_i_2 
       (.I0(tmp_sum_3_4[3]),
        .I1(tmp_sum_5_6[3]),
        .O(\tmp_sum_3_4_5_6[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[3]_i_3 
       (.I0(DI[2]),
        .I1(tmp_sum_5_6[2]),
        .O(\tmp_sum_3_4_5_6[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[3]_i_4 
       (.I0(DI[1]),
        .I1(\tmp_sum_5_6_reg[1]_0 [1]),
        .O(\tmp_sum_3_4_5_6[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[3]_i_5 
       (.I0(DI[0]),
        .I1(\tmp_sum_5_6_reg[1]_0 [0]),
        .O(\tmp_sum_3_4_5_6[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[7]_i_2 
       (.I0(tmp_sum_3_4[7]),
        .I1(tmp_sum_5_6[7]),
        .O(\tmp_sum_3_4_5_6[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[7]_i_3 
       (.I0(tmp_sum_3_4[6]),
        .I1(tmp_sum_5_6[6]),
        .O(\tmp_sum_3_4_5_6[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[7]_i_4 
       (.I0(tmp_sum_3_4[5]),
        .I1(tmp_sum_5_6[5]),
        .O(\tmp_sum_3_4_5_6[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[7]_i_5 
       (.I0(tmp_sum_3_4[4]),
        .I1(tmp_sum_5_6[4]),
        .O(\tmp_sum_3_4_5_6[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[3]_i_1_n_7 ),
        .Q(tmp_sum_3_4_5_6[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[11]_i_1_n_5 ),
        .Q(tmp_sum_3_4_5_6[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[11]_i_1_n_4 ),
        .Q(tmp_sum_3_4_5_6[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[11]_i_1 
       (.CI(\tmp_sum_3_4_5_6_reg[7]_i_1_n_0 ),
        .CO({\tmp_sum_3_4_5_6_reg[11]_i_1_n_0 ,\NLW_tmp_sum_3_4_5_6_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({DI[0],DI[0],DI[0],tmp_sum_3_4[8]}),
        .O({\tmp_sum_3_4_5_6_reg[11]_i_1_n_4 ,\tmp_sum_3_4_5_6_reg[11]_i_1_n_5 ,\tmp_sum_3_4_5_6_reg[11]_i_1_n_6 ,\tmp_sum_3_4_5_6_reg[11]_i_1_n_7 }),
        .S({\tmp_sum_3_4_5_6[11]_i_2_n_0 ,\tmp_sum_3_4_5_6[11]_i_3_n_0 ,\tmp_sum_3_4_5_6[11]_i_4_n_0 ,\tmp_sum_3_4_5_6[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[15]_i_1_n_7 ),
        .Q(tmp_sum_3_4_5_6[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[15]_i_1_n_6 ),
        .Q(tmp_sum_3_4_5_6[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[15]_i_1_n_5 ),
        .Q(tmp_sum_3_4_5_6[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[15]_i_1_n_4 ),
        .Q(tmp_sum_3_4_5_6[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[15]_i_1 
       (.CI(\tmp_sum_3_4_5_6_reg[11]_i_1_n_0 ),
        .CO({\tmp_sum_3_4_5_6_reg[15]_i_1_n_0 ,\NLW_tmp_sum_3_4_5_6_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({DI[0],DI[0],DI[0],DI[0]}),
        .O({\tmp_sum_3_4_5_6_reg[15]_i_1_n_4 ,\tmp_sum_3_4_5_6_reg[15]_i_1_n_5 ,\tmp_sum_3_4_5_6_reg[15]_i_1_n_6 ,\tmp_sum_3_4_5_6_reg[15]_i_1_n_7 }),
        .S({\tmp_sum_3_4_5_6[15]_i_2_n_0 ,\tmp_sum_3_4_5_6[15]_i_3_n_0 ,\tmp_sum_3_4_5_6[15]_i_4_n_0 ,\tmp_sum_3_4_5_6[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[19]_i_1_n_7 ),
        .Q(tmp_sum_3_4_5_6[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[19]_i_1_n_6 ),
        .Q(tmp_sum_3_4_5_6[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[19]_i_1_n_5 ),
        .Q(tmp_sum_3_4_5_6[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[19]_i_1_n_4 ),
        .Q(tmp_sum_3_4_5_6[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[19]_i_1 
       (.CI(\tmp_sum_3_4_5_6_reg[15]_i_1_n_0 ),
        .CO({\tmp_sum_3_4_5_6_reg[19]_i_1_n_0 ,\NLW_tmp_sum_3_4_5_6_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({DI[0],DI[0],DI[0],DI[0]}),
        .O({\tmp_sum_3_4_5_6_reg[19]_i_1_n_4 ,\tmp_sum_3_4_5_6_reg[19]_i_1_n_5 ,\tmp_sum_3_4_5_6_reg[19]_i_1_n_6 ,\tmp_sum_3_4_5_6_reg[19]_i_1_n_7 }),
        .S({\tmp_sum_3_4_5_6[19]_i_2_n_0 ,\tmp_sum_3_4_5_6[19]_i_3_n_0 ,\tmp_sum_3_4_5_6[19]_i_4_n_0 ,\tmp_sum_3_4_5_6[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[3]_i_1_n_6 ),
        .Q(tmp_sum_3_4_5_6[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[23]_i_1_n_7 ),
        .Q(tmp_sum_3_4_5_6[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[23]_i_1_n_6 ),
        .Q(tmp_sum_3_4_5_6[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[23]_i_1_n_5 ),
        .Q(tmp_sum_3_4_5_6[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[23]_i_1_n_4 ),
        .Q(tmp_sum_3_4_5_6[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[23]_i_1 
       (.CI(\tmp_sum_3_4_5_6_reg[19]_i_1_n_0 ),
        .CO({\tmp_sum_3_4_5_6_reg[23]_i_1_n_0 ,\NLW_tmp_sum_3_4_5_6_reg[23]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({DI[0],DI[0],DI[0],DI[0]}),
        .O({\tmp_sum_3_4_5_6_reg[23]_i_1_n_4 ,\tmp_sum_3_4_5_6_reg[23]_i_1_n_5 ,\tmp_sum_3_4_5_6_reg[23]_i_1_n_6 ,\tmp_sum_3_4_5_6_reg[23]_i_1_n_7 }),
        .S({\tmp_sum_3_4_5_6[23]_i_2_n_0 ,\tmp_sum_3_4_5_6[23]_i_3_n_0 ,\tmp_sum_3_4_5_6[23]_i_4_n_0 ,\tmp_sum_3_4_5_6[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[27]_i_1_n_7 ),
        .Q(tmp_sum_3_4_5_6[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[27]_i_1_n_6 ),
        .Q(tmp_sum_3_4_5_6[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[27]_i_1_n_5 ),
        .Q(tmp_sum_3_4_5_6[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[27]_i_1_n_4 ),
        .Q(tmp_sum_3_4_5_6[27]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[27]_i_1 
       (.CI(\tmp_sum_3_4_5_6_reg[23]_i_1_n_0 ),
        .CO({\tmp_sum_3_4_5_6_reg[27]_i_1_n_0 ,\NLW_tmp_sum_3_4_5_6_reg[27]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({DI[0],DI[0],DI[0],DI[0]}),
        .O({\tmp_sum_3_4_5_6_reg[27]_i_1_n_4 ,\tmp_sum_3_4_5_6_reg[27]_i_1_n_5 ,\tmp_sum_3_4_5_6_reg[27]_i_1_n_6 ,\tmp_sum_3_4_5_6_reg[27]_i_1_n_7 }),
        .S({\tmp_sum_3_4_5_6[27]_i_2_n_0 ,\tmp_sum_3_4_5_6[27]_i_3_n_0 ,\tmp_sum_3_4_5_6[27]_i_4_n_0 ,\tmp_sum_3_4_5_6[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[31]_i_1_n_7 ),
        .Q(tmp_sum_3_4_5_6[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[31]_i_1_n_6 ),
        .Q(tmp_sum_3_4_5_6[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[3]_i_1_n_5 ),
        .Q(tmp_sum_3_4_5_6[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[31]_i_1_n_5 ),
        .Q(tmp_sum_3_4_5_6[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[31]_i_1_n_4 ),
        .Q(tmp_sum_3_4_5_6[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[31]_i_1 
       (.CI(\tmp_sum_3_4_5_6_reg[27]_i_1_n_0 ),
        .CO(\NLW_tmp_sum_3_4_5_6_reg[31]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,DI[0],DI[0],DI[0]}),
        .O({\tmp_sum_3_4_5_6_reg[31]_i_1_n_4 ,\tmp_sum_3_4_5_6_reg[31]_i_1_n_5 ,\tmp_sum_3_4_5_6_reg[31]_i_1_n_6 ,\tmp_sum_3_4_5_6_reg[31]_i_1_n_7 }),
        .S({\tmp_sum_3_4_5_6[31]_i_2_n_0 ,\tmp_sum_3_4_5_6[31]_i_3_n_0 ,\tmp_sum_3_4_5_6[31]_i_4_n_0 ,\tmp_sum_3_4_5_6[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[3]_i_1_n_4 ),
        .Q(tmp_sum_3_4_5_6[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\tmp_sum_3_4_5_6_reg[3]_i_1_n_0 ,\NLW_tmp_sum_3_4_5_6_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_3_4[3],DI}),
        .O({\tmp_sum_3_4_5_6_reg[3]_i_1_n_4 ,\tmp_sum_3_4_5_6_reg[3]_i_1_n_5 ,\tmp_sum_3_4_5_6_reg[3]_i_1_n_6 ,\tmp_sum_3_4_5_6_reg[3]_i_1_n_7 }),
        .S({\tmp_sum_3_4_5_6[3]_i_2_n_0 ,\tmp_sum_3_4_5_6[3]_i_3_n_0 ,\tmp_sum_3_4_5_6[3]_i_4_n_0 ,\tmp_sum_3_4_5_6[3]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\tmp_sum_3_4_reg[1]_0 ,\NLW_tmp_sum_3_4_5_6_reg[3]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,DI[1],1'b0,DI[0]}),
        .O(\tmp_sum_3_4_reg[1]_1 ),
        .S({\tmp_sum_3_4_5_6_reg[3]_0 [2:1],\tmp_sum_5_6_reg[1]_0 [0],\tmp_sum_3_4_5_6_reg[3]_0 [0]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[7]_i_1_n_7 ),
        .Q(tmp_sum_3_4_5_6[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[7]_i_1_n_6 ),
        .Q(tmp_sum_3_4_5_6[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[7]_i_1_n_5 ),
        .Q(tmp_sum_3_4_5_6[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[7]_i_1_n_4 ),
        .Q(tmp_sum_3_4_5_6[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[7]_i_1 
       (.CI(\tmp_sum_3_4_5_6_reg[3]_i_1_n_0 ),
        .CO({\tmp_sum_3_4_5_6_reg[7]_i_1_n_0 ,\NLW_tmp_sum_3_4_5_6_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_3_4[7:4]),
        .O({\tmp_sum_3_4_5_6_reg[7]_i_1_n_4 ,\tmp_sum_3_4_5_6_reg[7]_i_1_n_5 ,\tmp_sum_3_4_5_6_reg[7]_i_1_n_6 ,\tmp_sum_3_4_5_6_reg[7]_i_1_n_7 }),
        .S({\tmp_sum_3_4_5_6[7]_i_2_n_0 ,\tmp_sum_3_4_5_6[7]_i_3_n_0 ,\tmp_sum_3_4_5_6[7]_i_4_n_0 ,\tmp_sum_3_4_5_6[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[11]_i_1_n_7 ),
        .Q(tmp_sum_3_4_5_6[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[11]_i_1_n_6 ),
        .Q(tmp_sum_3_4_5_6[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_4),
        .Q(DI[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_3),
        .Q(DI[0]),
        .R(1'b0));
  CARRY4 \tmp_sum_3_4_reg[28]_i_1 
       (.CI(\tmp_sum_3_4_reg[7]_i_1_n_0 ),
        .CO(\NLW_tmp_sum_3_4_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tmp_sum_3,\tmp_sum_3_4_reg[28]_0 }),
        .O({\NLW_tmp_sum_3_4_reg[28]_i_1_O_UNCONNECTED [3],\tmp_sum_3_reg[9]_0 [5:3]}),
        .S({1'b0,1'b1,\tmp_sum_3_4_reg[28]_1 ,\tmp_sum_3_4[28]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4[2]_i_1_n_0 ),
        .Q(DI[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_reg[5]_i_1_n_6 ),
        .Q(tmp_sum_3_4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_reg[5]_i_1_n_1 ),
        .Q(tmp_sum_3_4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_reg[5]_i_1_n_7 ),
        .Q(tmp_sum_3_4[5]),
        .R(1'b0));
  CARRY4 \tmp_sum_3_4_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\NLW_tmp_sum_3_4_reg[5]_i_1_CO_UNCONNECTED [3],\tmp_sum_3_4_reg[5]_i_1_n_1 ,\NLW_tmp_sum_3_4_reg[5]_i_1_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tmp_sum_3,tmp_sum_3}),
        .O({\NLW_tmp_sum_3_4_reg[5]_i_1_O_UNCONNECTED [3:2],\tmp_sum_3_4_reg[5]_i_1_n_6 ,\tmp_sum_3_4_reg[5]_i_1_n_7 }),
        .S({1'b0,1'b1,\tmp_sum_3_4[5]_i_2_n_0 ,\tmp_sum_3_4[5]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_reg[8]_i_1_n_6 ),
        .Q(tmp_sum_3_4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_reg[8]_i_1_n_5 ),
        .Q(tmp_sum_3_4[7]),
        .R(1'b0));
  CARRY4 \tmp_sum_3_4_reg[7]_i_1 
       (.CI(1'b0),
        .CO({\tmp_sum_3_4_reg[7]_i_1_n_0 ,\NLW_tmp_sum_3_4_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_4,tmp_sum_3,tmp_sum_3,tmp_sum_3}),
        .O({\tmp_sum_3_reg[9]_0 [2:0],\NLW_tmp_sum_3_4_reg[7]_i_1_O_UNCONNECTED [0]}),
        .S({\tmp_sum_3_4[7]_i_2_n_0 ,tmp_sum_3,tmp_sum_3,\tmp_sum_3_4[7]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_reg[8]_i_1_n_0 ),
        .Q(tmp_sum_3_4[8]),
        .R(1'b0));
  CARRY4 \tmp_sum_3_4_reg[8]_i_1 
       (.CI(1'b0),
        .CO({\tmp_sum_3_4_reg[8]_i_1_n_0 ,\NLW_tmp_sum_3_4_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tmp_sum_3,tmp_sum_3}),
        .O({\NLW_tmp_sum_3_4_reg[8]_i_1_O_UNCONNECTED [3],\tmp_sum_3_4_reg[8]_i_1_n_5 ,\tmp_sum_3_4_reg[8]_i_1_n_6 ,\NLW_tmp_sum_3_4_reg[8]_i_1_O_UNCONNECTED [0]}),
        .S({1'b1,tmp_sum_3,\tmp_sum_3_4[8]_i_2_n_0 ,\tmp_sum_3_4[8]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(h_3),
        .Q(tmp_sum_3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_4_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(h_4),
        .Q(tmp_sum_4),
        .R(1'b0));
  CARRY4 tmp_sum_5_60__0_carry
       (.CI(1'b0),
        .CO({p_0_in[5],NLW_tmp_sum_5_60__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tmp_sum_5,tmp_sum_5}),
        .O({NLW_tmp_sum_5_60__0_carry_O_UNCONNECTED[3],p_0_in[4:3],p_0_in[6]}),
        .S({1'b1,tmp_sum_6,tmp_sum_5_60__0_carry_i_1_n_0,tmp_sum_5_60__0_carry_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_sum_5_60__0_carry_i_1
       (.I0(tmp_sum_5),
        .I1(tmp_sum_6),
        .O(tmp_sum_5_60__0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_sum_5_60__0_carry_i_2
       (.I0(tmp_sum_5),
        .I1(tmp_sum_6),
        .O(tmp_sum_5_60__0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_sum_5_60__1_carry__0_i_1
       (.I0(tmp_sum_6),
        .O(\tmp_sum_6_reg[8]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_sum_5_60__1_carry_i_1
       (.I0(tmp_sum_6),
        .O(\tmp_sum_6_reg[8]_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_sum_5_60__1_carry_i_2
       (.I0(tmp_sum_6),
        .O(\tmp_sum_6_reg[8]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_sum_5_60__1_carry_i_3
       (.I0(tmp_sum_5),
        .I1(tmp_sum_6),
        .O(\tmp_sum_6_reg[8]_1 [0]));
  CARRY4 tmp_sum_5_60__8_carry
       (.CI(1'b0),
        .CO(NLW_tmp_sum_5_60__8_carry_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tmp_sum_6,tmp_sum_5_60__8_carry_i_1_n_0}),
        .O({NLW_tmp_sum_5_60__8_carry_O_UNCONNECTED[3],p_0_in[28],p_0_in[9:8]}),
        .S({1'b0,1'b1,tmp_sum_5_60__8_carry_i_2_n_0,tmp_sum_5_60__8_carry_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_sum_5_60__8_carry_i_1
       (.I0(tmp_sum_6),
        .O(tmp_sum_5_60__8_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_sum_5_60__8_carry_i_2
       (.I0(tmp_sum_6),
        .O(tmp_sum_5_60__8_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_sum_5_60__8_carry_i_3
       (.I0(tmp_sum_6),
        .I1(tmp_sum_5),
        .O(tmp_sum_5_60__8_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_5_6[3]_i_1 
       (.I0(tmp_sum_5),
        .I1(tmp_sum_6),
        .O(\tmp_sum_5_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_sum_5_6[7]_i_1 
       (.I0(tmp_sum_6),
        .I1(tmp_sum_5),
        .O(\tmp_sum_5_6[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_6),
        .Q(\tmp_sum_5_6_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(tmp_sum_5),
        .Q(\tmp_sum_5_6_reg[1]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[28]),
        .Q(tmp_sum_5_6[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(tmp_sum_5_6[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(tmp_sum_5_6[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(tmp_sum_5_6[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(tmp_sum_5_6[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(tmp_sum_5_6[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_5_6[7]_i_1_n_0 ),
        .Q(tmp_sum_5_6[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(tmp_sum_5_6[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(tmp_sum_5_6[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(h_5),
        .Q(tmp_sum_5),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_6_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(h_6),
        .Q(tmp_sum_6),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_2 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2[3]),
        .O(\tmp_sum_b_0_1_2[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_2__0 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_1_2[3]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_3 
       (.I0(tmp_sum_b_0[0]),
        .I1(\tmp_sum_b_0_1_2_reg[6]_0 ),
        .O(\tmp_sum_b_0_1_2[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_3__0 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_1_2[3]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_4 
       (.I0(tmp_sum_b_0[0]),
        .I1(\tmp_sum_b_0_1_2_reg[6]_0 ),
        .O(\tmp_sum_b_0_1_2[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[6]_i_3 
       (.I0(tmp_sum_b_0[0]),
        .I1(\tmp_sum_b_0_1_2_reg[6]_0 ),
        .O(\tmp_sum_b_0_reg[5]_5 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[7]_i_2 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[7]),
        .O(\tmp_sum_b_0_1_2[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[7]_i_3 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[6]),
        .O(\tmp_sum_b_0_1_2[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[7]_i_4 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2[5]),
        .O(\tmp_sum_b_0_1_2[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[7]_i_5 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2[4]),
        .O(\tmp_sum_b_0_1_2[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[3]_i_1__3_n_7 ),
        .Q(tmp_sum_b_0_1_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[11]_i_1__1_n_5 ),
        .Q(tmp_sum_b_0_1_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[11]_i_1__1_n_4 ),
        .Q(tmp_sum_b_0_1_2[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[11]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[7]_i_1__0_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[11]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_4 [7:4]),
        .S(\tmp_sum_b_0_1_2_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[11]_i_1__1 
       (.CI(\tmp_sum_b_0_1_2_reg[7]_i_1__2_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[11]_i_1__1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[11]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[11]_i_1__1_n_4 ,\tmp_sum_b_0_1_2_reg[11]_i_1__1_n_5 ,\tmp_sum_b_0_1_2_reg[11]_i_1__1_n_6 ,\tmp_sum_b_0_1_2_reg[11]_i_1__1_n_7 }),
        .S({tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[8]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[11]_i_1__2 
       (.CI(\tmp_sum_b_0_1_2_reg[7]_i_1__3_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[11]_i_1__2_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[11]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}),
        .O(\tmp_sum_b_0_reg[7]_0 [11:8]),
        .S(\tmp_sum_b_0_1_2_reg[11]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[15]_i_1__1_n_7 ),
        .Q(tmp_sum_b_0_1_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[15]_i_1__1_n_6 ),
        .Q(tmp_sum_b_0_1_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[15]_i_1__1_n_5 ),
        .Q(tmp_sum_b_0_1_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[15]_i_1__1_n_4 ),
        .Q(tmp_sum_b_0_1_2[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[15]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[11]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[15]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_4 [11:8]),
        .S(\tmp_sum_b_0_1_2_reg[15]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[15]_i_1__1 
       (.CI(\tmp_sum_b_0_1_2_reg[11]_i_1__1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[15]_i_1__1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[15]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[15]_i_1__1_n_4 ,\tmp_sum_b_0_1_2_reg[15]_i_1__1_n_5 ,\tmp_sum_b_0_1_2_reg[15]_i_1__1_n_6 ,\tmp_sum_b_0_1_2_reg[15]_i_1__1_n_7 }),
        .S({tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[15]_i_1__2 
       (.CI(\tmp_sum_b_0_1_2_reg[11]_i_1__2_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[15]_i_1__2_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[15]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}),
        .O(\tmp_sum_b_0_reg[7]_0 [15:12]),
        .S(\tmp_sum_b_0_1_2_reg[15]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[19]_i_1__1_n_7 ),
        .Q(tmp_sum_b_0_1_2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[19]_i_1__1_n_6 ),
        .Q(tmp_sum_b_0_1_2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[19]_i_1__1_n_5 ),
        .Q(tmp_sum_b_0_1_2[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[19]_i_1__1_n_4 ),
        .Q(tmp_sum_b_0_1_2[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[19]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[15]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[19]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_4 [15:12]),
        .S(\tmp_sum_b_0_1_2_reg[19]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[19]_i_1__1 
       (.CI(\tmp_sum_b_0_1_2_reg[15]_i_1__1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[19]_i_1__1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[19]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[19]_i_1__1_n_4 ,\tmp_sum_b_0_1_2_reg[19]_i_1__1_n_5 ,\tmp_sum_b_0_1_2_reg[19]_i_1__1_n_6 ,\tmp_sum_b_0_1_2_reg[19]_i_1__1_n_7 }),
        .S({tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[19]_i_1__2 
       (.CI(\tmp_sum_b_0_1_2_reg[15]_i_1__2_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[19]_i_1__2_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[19]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}),
        .O(\tmp_sum_b_0_reg[7]_0 [19:16]),
        .S(\tmp_sum_b_0_1_2_reg[19]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[3]_i_1__3_n_6 ),
        .Q(tmp_sum_b_0_1_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[23]_i_1__1_n_7 ),
        .Q(tmp_sum_b_0_1_2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[23]_i_1__1_n_6 ),
        .Q(tmp_sum_b_0_1_2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[23]_i_1__1_n_5 ),
        .Q(tmp_sum_b_0_1_2[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[23]_i_1__1_n_4 ),
        .Q(tmp_sum_b_0_1_2[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[23]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[19]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[23]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[23]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_4 [19:16]),
        .S(\tmp_sum_b_0_1_2_reg[23]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[23]_i_1__1 
       (.CI(\tmp_sum_b_0_1_2_reg[19]_i_1__1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[23]_i_1__1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[23]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[23]_i_1__1_n_4 ,\tmp_sum_b_0_1_2_reg[23]_i_1__1_n_5 ,\tmp_sum_b_0_1_2_reg[23]_i_1__1_n_6 ,\tmp_sum_b_0_1_2_reg[23]_i_1__1_n_7 }),
        .S({tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[23]_i_1__2 
       (.CI(\tmp_sum_b_0_1_2_reg[19]_i_1__2_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[23]_i_1__2_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[23]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}),
        .O(\tmp_sum_b_0_reg[7]_0 [23:20]),
        .S(\tmp_sum_b_0_1_2_reg[23]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[27]_i_1__1_n_7 ),
        .Q(tmp_sum_b_0_1_2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[27]_i_1__1_n_6 ),
        .Q(tmp_sum_b_0_1_2[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[27]_i_1__1_n_5 ),
        .Q(tmp_sum_b_0_1_2[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[27]_i_1__1_n_4 ),
        .Q(tmp_sum_b_0_1_2[27]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[27]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[23]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[27]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[27]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_4 [23:20]),
        .S(\tmp_sum_b_0_1_2_reg[27]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[27]_i_1__1 
       (.CI(\tmp_sum_b_0_1_2_reg[23]_i_1__1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[27]_i_1__1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[27]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[27]_i_1__1_n_4 ,\tmp_sum_b_0_1_2_reg[27]_i_1__1_n_5 ,\tmp_sum_b_0_1_2_reg[27]_i_1__1_n_6 ,\tmp_sum_b_0_1_2_reg[27]_i_1__1_n_7 }),
        .S({tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[27]_i_1__2 
       (.CI(\tmp_sum_b_0_1_2_reg[23]_i_1__2_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[27]_i_1__2_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[27]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}),
        .O(\tmp_sum_b_0_reg[7]_0 [27:24]),
        .S(\tmp_sum_b_0_1_2_reg[27]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_i_1__5_n_7 ),
        .Q(tmp_sum_b_0_1_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_i_1__5_n_6 ),
        .Q(tmp_sum_b_0_1_2[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[3]_i_1__3_n_5 ),
        .Q(tmp_sum_b_0_1_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_i_1__5_n_5 ),
        .Q(tmp_sum_b_0_1_2[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_i_1__5_n_4 ),
        .Q(tmp_sum_b_0_1_2[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[31]_i_1__2 
       (.CI(\tmp_sum_b_0_1_2_reg[27]_i_1_n_0 ),
        .CO(\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_4 [27:24]),
        .S(\tmp_sum_b_0_1_2_reg[31]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[31]_i_1__5 
       (.CI(\tmp_sum_b_0_1_2_reg[27]_i_1__1_n_0 ),
        .CO(\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmp_sum_b_0_1_2_reg[31]_i_1__5_n_4 ,\tmp_sum_b_0_1_2_reg[31]_i_1__5_n_5 ,\tmp_sum_b_0_1_2_reg[31]_i_1__5_n_6 ,\tmp_sum_b_0_1_2_reg[31]_i_1__5_n_7 }),
        .S({tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28],tmp_sum_1_2[28]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[31]_i_1__6 
       (.CI(\tmp_sum_b_0_1_2_reg[27]_i_1__2_n_0 ),
        .CO(\NLW_tmp_sum_b_0_1_2_reg[31]_i_1__6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_sum_b_0[1],tmp_sum_b_0[1],tmp_sum_b_0[1]}),
        .O(\tmp_sum_b_0_reg[7]_0 [31:28]),
        .S(\tmp_sum_b_0_1_2_reg[31]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[3]_i_1__3_n_4 ),
        .Q(tmp_sum_b_0_1_2[3]),
        .R(1'b0));
  CARRY4 \tmp_sum_b_0_1_2_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\tmp_sum_b_0_1_2_reg[3]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0_0[1],tmp_sum_b_0[0],1'b0,tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_0 [3:0]),
        .S({\tmp_sum_b_0_1_2_reg[3]_0 [1],\tmp_sum_b_0_1_2[3]_i_3_n_0 ,\tmp_sum_b_0_1_2_reg[3]_0 [0],\tmp_sum_b_0_1_2[3]_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[3]_i_1__3 
       (.CI(1'b0),
        .CO({\tmp_sum_b_0_1_2_reg[3]_i_1__3_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[3]_i_1__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[1],1'b0,tmp_sum_b_0[0]}),
        .O({\tmp_sum_b_0_1_2_reg[3]_i_1__3_n_4 ,\tmp_sum_b_0_1_2_reg[3]_i_1__3_n_5 ,\tmp_sum_b_0_1_2_reg[3]_i_1__3_n_6 ,\tmp_sum_b_0_1_2_reg[3]_i_1__3_n_7 }),
        .S({\tmp_sum_b_0_1_2[3]_i_2_n_0 ,tmp_sum_b_0[1],S,\tmp_sum_b_0_1_2[3]_i_3__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[3]_i_1__4 
       (.CI(1'b0),
        .CO({\tmp_sum_b_0_1_2_reg[3]_i_1__4_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[3]_i_1__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[0],1'b0,tmp_sum_b_0[1]}),
        .O(\tmp_sum_b_0_reg[7]_0 [3:0]),
        .S({\tmp_sum_b_0_1_2[3]_i_2__0_n_0 ,\tmp_sum_b_0_1_2_reg[3]_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[7]_i_1__2_n_7 ),
        .Q(tmp_sum_b_0_1_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[7]_i_1__2_n_6 ),
        .Q(tmp_sum_b_0_1_2[5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\tmp_sum_b_0_reg[5]_1 ,\NLW_tmp_sum_b_0_1_2_reg[5]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0_0[0],tmp_sum_b_0[0],tmp_sum_b_0_0[0]}),
        .O(\tmp_sum_b_0_reg[5]_2 ),
        .S(\tmp_sum_b_0_1_2_reg[5]_0 ));
  CARRY4 \tmp_sum_b_0_1_2_reg[5]_i_1__0 
       (.CI(\tmp_sum_b_0_1_2_reg[5]_1 ),
        .CO({\NLW_tmp_sum_b_0_1_2_reg[5]_i_1__0_CO_UNCONNECTED [3:2],\tmp_sum_b_0_reg[5]_3 [1],\NLW_tmp_sum_b_0_1_2_reg[5]_i_1__0_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,tmp_sum_b_0[0]}),
        .O({\NLW_tmp_sum_b_0_1_2_reg[5]_i_1__0_O_UNCONNECTED [3:1],\tmp_sum_b_0_reg[5]_3 [0]}),
        .S({1'b0,1'b0,1'b1,\tmp_sum_b_0_1_2_reg[5]_2 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[7]_i_1__2_n_5 ),
        .Q(tmp_sum_b_0_1_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[7]_i_1__2_n_4 ),
        .Q(tmp_sum_b_0_1_2[7]),
        .R(1'b0));
  CARRY4 \tmp_sum_b_0_1_2_reg[7]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[3]_i_1_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[7]_i_1_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_sum_b_0[0],1'b0,1'b0}),
        .O(\tmp_sum_b_0_reg[5]_0 [7:4]),
        .S({\tmp_sum_b_0_1_2_reg[7]_0 [2],tmp_sum_b_0[0],\tmp_sum_b_0_1_2_reg[7]_0 [1:0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[7]_i_1__0 
       (.CI(\tmp_sum_b_0_1_2_reg[7]_1 ),
        .CO({\tmp_sum_b_0_1_2_reg[7]_i_1__0_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[7]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[0],tmp_sum_b_0[0],tmp_sum_b_0[0],1'b0}),
        .O(\tmp_sum_b_0_reg[5]_4 [3:0]),
        .S(\tmp_sum_b_0_1_2_reg[7]_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[7]_i_1__2 
       (.CI(\tmp_sum_b_0_1_2_reg[3]_i_1__3_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[7]_i_1__2_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[7]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_b_0[1],tmp_sum_b_0,tmp_sum_b_0[0]}),
        .O({\tmp_sum_b_0_1_2_reg[7]_i_1__2_n_4 ,\tmp_sum_b_0_1_2_reg[7]_i_1__2_n_5 ,\tmp_sum_b_0_1_2_reg[7]_i_1__2_n_6 ,\tmp_sum_b_0_1_2_reg[7]_i_1__2_n_7 }),
        .S({\tmp_sum_b_0_1_2[7]_i_2_n_0 ,\tmp_sum_b_0_1_2[7]_i_3_n_0 ,\tmp_sum_b_0_1_2[7]_i_4_n_0 ,\tmp_sum_b_0_1_2[7]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_b_0_1_2_reg[7]_i_1__3 
       (.CI(\tmp_sum_b_0_1_2_reg[3]_i_1__4_n_0 ),
        .CO({\tmp_sum_b_0_1_2_reg[7]_i_1__3_n_0 ,\NLW_tmp_sum_b_0_1_2_reg[7]_i_1__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_sum_b_0[0],1'b0,tmp_sum_b_0[0]}),
        .O(\tmp_sum_b_0_reg[7]_0 [7:4]),
        .S(\tmp_sum_b_0_1_2_reg[7]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[11]_i_1__1_n_7 ),
        .Q(tmp_sum_b_0_1_2[8]),
        .R(1'b0));
  CARRY4 \tmp_sum_b_0_1_2_reg[8]_i_1 
       (.CI(\tmp_sum_b_0_1_2_reg[7]_i_1_n_0 ),
        .CO({\NLW_tmp_sum_b_0_1_2_reg[8]_i_1_CO_UNCONNECTED [3:1],\tmp_sum_b_0_reg[5]_0 [8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_sum_b_0_1_2_reg[8]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[11]_i_1__1_n_6 ),
        .Q(tmp_sum_b_0_1_2[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(1'b1),
        .Q(tmp_sum_b_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_0_reg[2]_srl2_n_0 ),
        .Q(tmp_sum_b_0[1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 voltage0_carry
       (.CI(1'b0),
        .CO({voltage0_carry_n_0,NLW_voltage0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage2__93[10:8],1'b0}),
        .O(C[10:7]),
        .S({voltage0_carry_i_1_n_0,voltage0_carry_i_2_n_0,voltage0_carry_i_3__5_n_0,voltage2__93[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__0
       (.CI(voltage0_carry_n_0),
        .CO({voltage0_carry__0_n_0,NLW_voltage0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[14:11]),
        .O(C[14:11]),
        .S({voltage0_carry__0_i_1_n_0,voltage0_carry__0_i_2_n_0,voltage0_carry__0_i_3_n_0,voltage0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_1
       (.I0(voltage2__93[14]),
        .O(voltage0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_2
       (.I0(voltage2__93[13]),
        .O(voltage0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_3
       (.I0(voltage2__93[12]),
        .O(voltage0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_4
       (.I0(voltage2__93[11]),
        .O(voltage0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__1
       (.CI(voltage0_carry__0_n_0),
        .CO({voltage0_carry__1_n_0,NLW_voltage0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[18:15]),
        .O(C[18:15]),
        .S({voltage0_carry__1_i_1_n_0,voltage0_carry__1_i_2_n_0,voltage0_carry__1_i_3_n_0,voltage0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_1
       (.I0(voltage2__93[18]),
        .O(voltage0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_2
       (.I0(voltage2__93[17]),
        .O(voltage0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_3
       (.I0(voltage2__93[16]),
        .O(voltage0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_4
       (.I0(voltage2__93[15]),
        .O(voltage0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__2
       (.CI(voltage0_carry__1_n_0),
        .CO({voltage0_carry__2_n_0,NLW_voltage0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[22:19]),
        .O(C[22:19]),
        .S({voltage0_carry__2_i_1_n_0,voltage0_carry__2_i_2_n_0,voltage0_carry__2_i_3_n_0,voltage0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_1
       (.I0(voltage2__93[22]),
        .O(voltage0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_2
       (.I0(voltage2__93[21]),
        .O(voltage0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_3
       (.I0(voltage2__93[20]),
        .O(voltage0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_4
       (.I0(voltage2__93[19]),
        .O(voltage0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__3
       (.CI(voltage0_carry__2_n_0),
        .CO({voltage0_carry__3_n_0,NLW_voltage0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[26:23]),
        .O(C[26:23]),
        .S({voltage0_carry__3_i_1_n_0,voltage0_carry__3_i_2_n_0,voltage0_carry__3_i_3_n_0,voltage0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_1
       (.I0(voltage2__93[26]),
        .O(voltage0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_2
       (.I0(voltage2__93[25]),
        .O(voltage0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_3
       (.I0(voltage2__93[24]),
        .O(voltage0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_4
       (.I0(voltage2__93[23]),
        .O(voltage0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__4
       (.CI(voltage0_carry__3_n_0),
        .CO({voltage0_carry__4_n_0,NLW_voltage0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[30:27]),
        .O(C[30:27]),
        .S({voltage0_carry__4_i_1_n_0,voltage0_carry__4_i_2_n_0,voltage0_carry__4_i_3_n_0,voltage0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_1
       (.I0(voltage2__93[30]),
        .O(voltage0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_2
       (.I0(voltage2__93[29]),
        .O(voltage0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_3
       (.I0(voltage2__93[28]),
        .O(voltage0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_4
       (.I0(voltage2__93[27]),
        .O(voltage0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__5
       (.CI(voltage0_carry__4_n_0),
        .CO(NLW_voltage0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_voltage0_carry__5_O_UNCONNECTED[3:1],C[31]}),
        .S({1'b0,1'b0,1'b0,voltage0_carry__5_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__5_i_1
       (.I0(voltage2__93[31]),
        .O(voltage0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_1
       (.I0(voltage2__93[10]),
        .O(voltage0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_2
       (.I0(voltage2__93[9]),
        .O(voltage0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_3__5
       (.I0(voltage2__93[8]),
        .O(voltage0_carry_i_3__5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry
       (.CI(1'b0),
        .CO({voltage1_carry_n_0,NLW_voltage1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry_i_1__6_n_0,voltage1_carry_i_2__6_n_0,voltage1_carry_i_3__6_n_0,voltage1_carry_i_4__6_n_0}),
        .O(NLW_voltage1_carry_O_UNCONNECTED[3:0]),
        .S({voltage1_carry_i_5__6_n_0,voltage1_carry_i_6__6_n_0,voltage1_carry_i_7__6_n_0,voltage1_carry_i_8__6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__0
       (.CI(voltage1_carry_n_0),
        .CO({voltage1_carry__0_n_0,NLW_voltage1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__0_i_1__6_n_0,voltage1_carry__0_i_2__6_n_0,voltage1_carry__0_i_3__6_n_0,voltage2__93[9]}),
        .O(NLW_voltage1_carry__0_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__0_i_4_n_0,voltage1_carry__0_i_5_n_0,voltage1_carry__0_i_6_n_0,voltage1_carry__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_1__6
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_1__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_2__6
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_2__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_3__6
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_4
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_5
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_6
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__0_i_7
       (.I0(voltage2__93[8]),
        .I1(voltage2__93[9]),
        .O(voltage1_carry__0_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__1
       (.CI(voltage1_carry__0_n_0),
        .CO({voltage1_carry__1_n_0,NLW_voltage1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__1_i_1__6_n_0,voltage1_carry__1_i_2__6_n_0,voltage1_carry__1_i_3__6_n_0,voltage1_carry__1_i_4__6_n_0}),
        .O(NLW_voltage1_carry__1_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__1_i_5_n_0,voltage1_carry__1_i_6_n_0,voltage1_carry__1_i_7_n_0,voltage1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_1__6
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_1__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_2__6
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_2__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_3__6
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_3__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_4__6
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_5
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_6
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_7
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_8
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__2
       (.CI(voltage1_carry__1_n_0),
        .CO({load,NLW_voltage1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__2_i_1_n_0,voltage1_carry__2_i_2__6_n_0,voltage1_carry__2_i_3__6_n_0,voltage1_carry__2_i_4__6_n_0}),
        .O(NLW_voltage1_carry__2_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__2_i_5_n_0,voltage1_carry__2_i_6_n_0,voltage1_carry__2_i_7_n_0,voltage1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__2_i_1
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_2__6
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_2__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_3__6
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_3__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_4__6
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_5
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_6
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_7
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_8
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_1__6
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_2__6
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_2__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_3__6
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_4__6
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_5__6
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_6__6
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_6__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_7__6
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_7__6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_8__6
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_8__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry
       (.CI(1'b0),
        .CO({voltage2_carry_n_0,NLW_voltage2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[3:0]),
        .O(voltage2__93[3:0]),
        .S({voltage2_carry_i_1__5_n_0,voltage2_carry_i_2__5_n_0,voltage2_carry_i_3__5_n_0,voltage2_carry_i_4__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__0
       (.CI(voltage2_carry_n_0),
        .CO({voltage2_carry__0_n_0,NLW_voltage2_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[7:4]),
        .O(voltage2__93[7:4]),
        .S({voltage2_carry__0_i_1__5_n_0,voltage2_carry__0_i_2__5_n_0,voltage2_carry__0_i_3__5_n_0,voltage2_carry__0_i_4__4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_1__5
       (.I0(voltage_reg[7]),
        .I1(sum[7]),
        .O(voltage2_carry__0_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_2__5
       (.I0(voltage_reg[6]),
        .I1(sum[6]),
        .O(voltage2_carry__0_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_3__5
       (.I0(voltage_reg[5]),
        .I1(sum[5]),
        .O(voltage2_carry__0_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_4__4
       (.I0(voltage_reg[4]),
        .I1(sum[4]),
        .O(voltage2_carry__0_i_4__4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__1
       (.CI(voltage2_carry__0_n_0),
        .CO({voltage2_carry__1_n_0,NLW_voltage2_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[11:8]),
        .O(voltage2__93[11:8]),
        .S({voltage2_carry__1_i_1__5_n_0,voltage2_carry__1_i_2__5_n_0,voltage2_carry__1_i_3__5_n_0,voltage2_carry__1_i_4__5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_1__5
       (.I0(voltage_reg[11]),
        .I1(sum[11]),
        .O(voltage2_carry__1_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_2__5
       (.I0(voltage_reg[10]),
        .I1(sum[10]),
        .O(voltage2_carry__1_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_3__5
       (.I0(voltage_reg[9]),
        .I1(sum[9]),
        .O(voltage2_carry__1_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_4__5
       (.I0(voltage_reg[8]),
        .I1(sum[8]),
        .O(voltage2_carry__1_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__2
       (.CI(voltage2_carry__1_n_0),
        .CO({voltage2_carry__2_n_0,NLW_voltage2_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[15:12]),
        .O(voltage2__93[15:12]),
        .S({voltage2_carry__2_i_1__5_n_0,voltage2_carry__2_i_2__5_n_0,voltage2_carry__2_i_3__5_n_0,voltage2_carry__2_i_4__5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_1__5
       (.I0(voltage_reg[15]),
        .I1(sum[15]),
        .O(voltage2_carry__2_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_2__5
       (.I0(voltage_reg[14]),
        .I1(sum[14]),
        .O(voltage2_carry__2_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_3__5
       (.I0(voltage_reg[13]),
        .I1(sum[13]),
        .O(voltage2_carry__2_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_4__5
       (.I0(voltage_reg[12]),
        .I1(sum[12]),
        .O(voltage2_carry__2_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__3
       (.CI(voltage2_carry__2_n_0),
        .CO({voltage2_carry__3_n_0,NLW_voltage2_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[19:16]),
        .O(voltage2__93[19:16]),
        .S({voltage2_carry__3_i_1__5_n_0,voltage2_carry__3_i_2__5_n_0,voltage2_carry__3_i_3__5_n_0,voltage2_carry__3_i_4__5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_1__5
       (.I0(voltage_reg[19]),
        .I1(sum[19]),
        .O(voltage2_carry__3_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_2__5
       (.I0(voltage_reg[18]),
        .I1(sum[18]),
        .O(voltage2_carry__3_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_3__5
       (.I0(voltage_reg[17]),
        .I1(sum[17]),
        .O(voltage2_carry__3_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_4__5
       (.I0(voltage_reg[16]),
        .I1(sum[16]),
        .O(voltage2_carry__3_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__4
       (.CI(voltage2_carry__3_n_0),
        .CO({voltage2_carry__4_n_0,NLW_voltage2_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[23:20]),
        .O(voltage2__93[23:20]),
        .S({voltage2_carry__4_i_1__5_n_0,voltage2_carry__4_i_2__5_n_0,voltage2_carry__4_i_3__5_n_0,voltage2_carry__4_i_4__5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_1__5
       (.I0(voltage_reg[23]),
        .I1(sum[23]),
        .O(voltage2_carry__4_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_2__5
       (.I0(voltage_reg[22]),
        .I1(sum[22]),
        .O(voltage2_carry__4_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_3__5
       (.I0(voltage_reg[21]),
        .I1(sum[21]),
        .O(voltage2_carry__4_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_4__5
       (.I0(voltage_reg[20]),
        .I1(sum[20]),
        .O(voltage2_carry__4_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__5
       (.CI(voltage2_carry__4_n_0),
        .CO({voltage2_carry__5_n_0,NLW_voltage2_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[27:24]),
        .O(voltage2__93[27:24]),
        .S({voltage2_carry__5_i_1__5_n_0,voltage2_carry__5_i_2__5_n_0,voltage2_carry__5_i_3__5_n_0,voltage2_carry__5_i_4__5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_1__5
       (.I0(voltage_reg[27]),
        .I1(sum[27]),
        .O(voltage2_carry__5_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_2__5
       (.I0(voltage_reg[26]),
        .I1(sum[26]),
        .O(voltage2_carry__5_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_3__5
       (.I0(voltage_reg[25]),
        .I1(sum[25]),
        .O(voltage2_carry__5_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_4__5
       (.I0(voltage_reg[24]),
        .I1(sum[24]),
        .O(voltage2_carry__5_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__6
       (.CI(voltage2_carry__5_n_0),
        .CO(NLW_voltage2_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,voltage_reg[30:28]}),
        .O(voltage2__93[31:28]),
        .S({voltage2_carry__6_i_1__5_n_0,voltage2_carry__6_i_2__5_n_0,voltage2_carry__6_i_3__5_n_0,voltage2_carry__6_i_4__5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_1__5
       (.I0(voltage_reg[31]),
        .I1(sum[31]),
        .O(voltage2_carry__6_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_2__5
       (.I0(voltage_reg[30]),
        .I1(sum[30]),
        .O(voltage2_carry__6_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_3__5
       (.I0(voltage_reg[29]),
        .I1(sum[29]),
        .O(voltage2_carry__6_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_4__5
       (.I0(voltage_reg[28]),
        .I1(sum[28]),
        .O(voltage2_carry__6_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_1__5
       (.I0(voltage_reg[3]),
        .I1(sum[3]),
        .O(voltage2_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_2__5
       (.I0(voltage_reg[2]),
        .I1(sum[2]),
        .O(voltage2_carry_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_3__5
       (.I0(voltage_reg[1]),
        .I1(sum[1]),
        .O(voltage2_carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_4__4
       (.I0(voltage_reg[0]),
        .I1(sum[0]),
        .O(voltage2_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_2__5 
       (.I0(sum[3]),
        .I1(load),
        .O(\voltage[0]_i_2__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_3__6 
       (.I0(sum[2]),
        .I1(load),
        .O(\voltage[0]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_4__5 
       (.I0(sum[1]),
        .I1(load),
        .O(\voltage[0]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_5__5 
       (.I0(sum[0]),
        .I1(load),
        .O(\voltage[0]_i_5__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_6__6 
       (.I0(sum[3]),
        .I1(voltage_reg[3]),
        .I2(load),
        .I3(voltage2__93[3]),
        .O(\voltage[0]_i_6__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_7__6 
       (.I0(sum[2]),
        .I1(voltage_reg[2]),
        .I2(load),
        .I3(voltage2__93[2]),
        .O(\voltage[0]_i_7__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_8__6 
       (.I0(sum[1]),
        .I1(voltage_reg[1]),
        .I2(load),
        .I3(voltage2__93[1]),
        .O(\voltage[0]_i_8__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_9__5 
       (.I0(sum[0]),
        .I1(voltage_reg[0]),
        .I2(load),
        .I3(voltage2__93[0]),
        .O(\voltage[0]_i_9__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_2__6 
       (.I0(sum[15]),
        .I1(load),
        .O(\voltage[12]_i_2__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_3__6 
       (.I0(sum[14]),
        .I1(load),
        .O(\voltage[12]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_4__6 
       (.I0(sum[13]),
        .I1(load),
        .O(\voltage[12]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_5__6 
       (.I0(sum[12]),
        .I1(load),
        .O(\voltage[12]_i_5__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_6__5 
       (.I0(sum[15]),
        .I1(voltage_reg[15]),
        .I2(load),
        .I3(C[15]),
        .O(\voltage[12]_i_6__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_7__5 
       (.I0(sum[14]),
        .I1(voltage_reg[14]),
        .I2(load),
        .I3(C[14]),
        .O(\voltage[12]_i_7__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_8__5 
       (.I0(sum[13]),
        .I1(voltage_reg[13]),
        .I2(load),
        .I3(C[13]),
        .O(\voltage[12]_i_8__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_9__5 
       (.I0(sum[12]),
        .I1(voltage_reg[12]),
        .I2(load),
        .I3(C[12]),
        .O(\voltage[12]_i_9__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_2__6 
       (.I0(sum[19]),
        .I1(load),
        .O(\voltage[16]_i_2__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_3__6 
       (.I0(sum[18]),
        .I1(load),
        .O(\voltage[16]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_4__6 
       (.I0(sum[17]),
        .I1(load),
        .O(\voltage[16]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_5__6 
       (.I0(sum[16]),
        .I1(load),
        .O(\voltage[16]_i_5__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_6__5 
       (.I0(sum[19]),
        .I1(voltage_reg[19]),
        .I2(load),
        .I3(C[19]),
        .O(\voltage[16]_i_6__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_7__5 
       (.I0(sum[18]),
        .I1(voltage_reg[18]),
        .I2(load),
        .I3(C[18]),
        .O(\voltage[16]_i_7__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_8__5 
       (.I0(sum[17]),
        .I1(voltage_reg[17]),
        .I2(load),
        .I3(C[17]),
        .O(\voltage[16]_i_8__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_9__5 
       (.I0(sum[16]),
        .I1(voltage_reg[16]),
        .I2(load),
        .I3(C[16]),
        .O(\voltage[16]_i_9__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_2__6 
       (.I0(sum[23]),
        .I1(load),
        .O(\voltage[20]_i_2__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_3__6 
       (.I0(sum[22]),
        .I1(load),
        .O(\voltage[20]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_4__6 
       (.I0(sum[21]),
        .I1(load),
        .O(\voltage[20]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_5__6 
       (.I0(sum[20]),
        .I1(load),
        .O(\voltage[20]_i_5__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_6__5 
       (.I0(sum[23]),
        .I1(voltage_reg[23]),
        .I2(load),
        .I3(C[23]),
        .O(\voltage[20]_i_6__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_7__5 
       (.I0(sum[22]),
        .I1(voltage_reg[22]),
        .I2(load),
        .I3(C[22]),
        .O(\voltage[20]_i_7__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_8__5 
       (.I0(sum[21]),
        .I1(voltage_reg[21]),
        .I2(load),
        .I3(C[21]),
        .O(\voltage[20]_i_8__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_9__5 
       (.I0(sum[20]),
        .I1(voltage_reg[20]),
        .I2(load),
        .I3(C[20]),
        .O(\voltage[20]_i_9__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_2__6 
       (.I0(sum[27]),
        .I1(load),
        .O(\voltage[24]_i_2__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_3__6 
       (.I0(sum[26]),
        .I1(load),
        .O(\voltage[24]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_4__6 
       (.I0(sum[25]),
        .I1(load),
        .O(\voltage[24]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_5__6 
       (.I0(sum[24]),
        .I1(load),
        .O(\voltage[24]_i_5__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_6__5 
       (.I0(sum[27]),
        .I1(voltage_reg[27]),
        .I2(load),
        .I3(C[27]),
        .O(\voltage[24]_i_6__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_7__5 
       (.I0(sum[26]),
        .I1(voltage_reg[26]),
        .I2(load),
        .I3(C[26]),
        .O(\voltage[24]_i_7__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_8__5 
       (.I0(sum[25]),
        .I1(voltage_reg[25]),
        .I2(load),
        .I3(C[25]),
        .O(\voltage[24]_i_8__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_9__5 
       (.I0(sum[24]),
        .I1(voltage_reg[24]),
        .I2(load),
        .I3(C[24]),
        .O(\voltage[24]_i_9__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_2__6 
       (.I0(sum[30]),
        .I1(load),
        .O(\voltage[28]_i_2__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_3__6 
       (.I0(sum[29]),
        .I1(load),
        .O(\voltage[28]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_4__6 
       (.I0(sum[28]),
        .I1(load),
        .O(\voltage[28]_i_4__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_5__6 
       (.I0(sum[31]),
        .I1(voltage_reg[31]),
        .I2(load),
        .I3(C[31]),
        .O(\voltage[28]_i_5__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_6__5 
       (.I0(sum[30]),
        .I1(voltage_reg[30]),
        .I2(load),
        .I3(C[30]),
        .O(\voltage[28]_i_6__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_7__5 
       (.I0(sum[29]),
        .I1(voltage_reg[29]),
        .I2(load),
        .I3(C[29]),
        .O(\voltage[28]_i_7__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_8__5 
       (.I0(sum[28]),
        .I1(voltage_reg[28]),
        .I2(load),
        .I3(C[28]),
        .O(\voltage[28]_i_8__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_2__6 
       (.I0(sum[7]),
        .I1(load),
        .O(\voltage[4]_i_2__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_3__6 
       (.I0(sum[6]),
        .I1(load),
        .O(\voltage[4]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_4__6 
       (.I0(sum[5]),
        .I1(load),
        .O(\voltage[4]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_5__6 
       (.I0(sum[4]),
        .I1(load),
        .O(\voltage[4]_i_5__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_6__6 
       (.I0(sum[7]),
        .I1(voltage_reg[7]),
        .I2(load),
        .I3(C[7]),
        .O(\voltage[4]_i_6__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_7__6 
       (.I0(sum[6]),
        .I1(voltage_reg[6]),
        .I2(load),
        .I3(voltage2__93[6]),
        .O(\voltage[4]_i_7__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_8__6 
       (.I0(sum[5]),
        .I1(voltage_reg[5]),
        .I2(load),
        .I3(voltage2__93[5]),
        .O(\voltage[4]_i_8__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_9__5 
       (.I0(sum[4]),
        .I1(voltage_reg[4]),
        .I2(load),
        .I3(voltage2__93[4]),
        .O(\voltage[4]_i_9__5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_2__6 
       (.I0(sum[11]),
        .I1(load),
        .O(\voltage[8]_i_2__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_3__6 
       (.I0(sum[10]),
        .I1(load),
        .O(\voltage[8]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_4__6 
       (.I0(sum[9]),
        .I1(load),
        .O(\voltage[8]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_5__6 
       (.I0(sum[8]),
        .I1(load),
        .O(\voltage[8]_i_5__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_6__6 
       (.I0(sum[11]),
        .I1(voltage_reg[11]),
        .I2(load),
        .I3(C[11]),
        .O(\voltage[8]_i_6__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_7__5 
       (.I0(sum[10]),
        .I1(voltage_reg[10]),
        .I2(load),
        .I3(C[10]),
        .O(\voltage[8]_i_7__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_8__5 
       (.I0(sum[9]),
        .I1(voltage_reg[9]),
        .I2(load),
        .I3(C[9]),
        .O(\voltage[8]_i_8__5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_9__5 
       (.I0(sum[8]),
        .I1(voltage_reg[8]),
        .I2(load),
        .I3(C[8]),
        .O(\voltage[8]_i_9__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__6_n_7 ),
        .Q(voltage_reg[0]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[0]_i_1__6 
       (.CI(1'b0),
        .CO({\voltage_reg[0]_i_1__6_n_0 ,\NLW_voltage_reg[0]_i_1__6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[0]_i_2__5_n_0 ,\voltage[0]_i_3__6_n_0 ,\voltage[0]_i_4__5_n_0 ,\voltage[0]_i_5__5_n_0 }),
        .O({\voltage_reg[0]_i_1__6_n_4 ,\voltage_reg[0]_i_1__6_n_5 ,\voltage_reg[0]_i_1__6_n_6 ,\voltage_reg[0]_i_1__6_n_7 }),
        .S({\voltage[0]_i_6__6_n_0 ,\voltage[0]_i_7__6_n_0 ,\voltage[0]_i_8__6_n_0 ,\voltage[0]_i_9__5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__6_n_5 ),
        .Q(voltage_reg[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__6_n_4 ),
        .Q(voltage_reg[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__6_n_7 ),
        .Q(voltage_reg[12]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[12]_i_1__6 
       (.CI(\voltage_reg[8]_i_1__6_n_0 ),
        .CO({\voltage_reg[12]_i_1__6_n_0 ,\NLW_voltage_reg[12]_i_1__6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[12]_i_2__6_n_0 ,\voltage[12]_i_3__6_n_0 ,\voltage[12]_i_4__6_n_0 ,\voltage[12]_i_5__6_n_0 }),
        .O({\voltage_reg[12]_i_1__6_n_4 ,\voltage_reg[12]_i_1__6_n_5 ,\voltage_reg[12]_i_1__6_n_6 ,\voltage_reg[12]_i_1__6_n_7 }),
        .S({\voltage[12]_i_6__5_n_0 ,\voltage[12]_i_7__5_n_0 ,\voltage[12]_i_8__5_n_0 ,\voltage[12]_i_9__5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__6_n_6 ),
        .Q(voltage_reg[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__6_n_5 ),
        .Q(voltage_reg[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__6_n_4 ),
        .Q(voltage_reg[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__6_n_7 ),
        .Q(voltage_reg[16]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[16]_i_1__6 
       (.CI(\voltage_reg[12]_i_1__6_n_0 ),
        .CO({\voltage_reg[16]_i_1__6_n_0 ,\NLW_voltage_reg[16]_i_1__6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[16]_i_2__6_n_0 ,\voltage[16]_i_3__6_n_0 ,\voltage[16]_i_4__6_n_0 ,\voltage[16]_i_5__6_n_0 }),
        .O({\voltage_reg[16]_i_1__6_n_4 ,\voltage_reg[16]_i_1__6_n_5 ,\voltage_reg[16]_i_1__6_n_6 ,\voltage_reg[16]_i_1__6_n_7 }),
        .S({\voltage[16]_i_6__5_n_0 ,\voltage[16]_i_7__5_n_0 ,\voltage[16]_i_8__5_n_0 ,\voltage[16]_i_9__5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__6_n_6 ),
        .Q(voltage_reg[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__6_n_5 ),
        .Q(voltage_reg[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__6_n_4 ),
        .Q(voltage_reg[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__6_n_6 ),
        .Q(voltage_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__6_n_7 ),
        .Q(voltage_reg[20]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[20]_i_1__6 
       (.CI(\voltage_reg[16]_i_1__6_n_0 ),
        .CO({\voltage_reg[20]_i_1__6_n_0 ,\NLW_voltage_reg[20]_i_1__6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[20]_i_2__6_n_0 ,\voltage[20]_i_3__6_n_0 ,\voltage[20]_i_4__6_n_0 ,\voltage[20]_i_5__6_n_0 }),
        .O({\voltage_reg[20]_i_1__6_n_4 ,\voltage_reg[20]_i_1__6_n_5 ,\voltage_reg[20]_i_1__6_n_6 ,\voltage_reg[20]_i_1__6_n_7 }),
        .S({\voltage[20]_i_6__5_n_0 ,\voltage[20]_i_7__5_n_0 ,\voltage[20]_i_8__5_n_0 ,\voltage[20]_i_9__5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__6_n_6 ),
        .Q(voltage_reg[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__6_n_5 ),
        .Q(voltage_reg[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__6_n_4 ),
        .Q(voltage_reg[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__6_n_7 ),
        .Q(voltage_reg[24]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[24]_i_1__6 
       (.CI(\voltage_reg[20]_i_1__6_n_0 ),
        .CO({\voltage_reg[24]_i_1__6_n_0 ,\NLW_voltage_reg[24]_i_1__6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[24]_i_2__6_n_0 ,\voltage[24]_i_3__6_n_0 ,\voltage[24]_i_4__6_n_0 ,\voltage[24]_i_5__6_n_0 }),
        .O({\voltage_reg[24]_i_1__6_n_4 ,\voltage_reg[24]_i_1__6_n_5 ,\voltage_reg[24]_i_1__6_n_6 ,\voltage_reg[24]_i_1__6_n_7 }),
        .S({\voltage[24]_i_6__5_n_0 ,\voltage[24]_i_7__5_n_0 ,\voltage[24]_i_8__5_n_0 ,\voltage[24]_i_9__5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__6_n_6 ),
        .Q(voltage_reg[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__6_n_5 ),
        .Q(voltage_reg[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__6_n_4 ),
        .Q(voltage_reg[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__6_n_7 ),
        .Q(voltage_reg[28]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[28]_i_1__6 
       (.CI(\voltage_reg[24]_i_1__6_n_0 ),
        .CO(\NLW_voltage_reg[28]_i_1__6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\voltage[28]_i_2__6_n_0 ,\voltage[28]_i_3__6_n_0 ,\voltage[28]_i_4__6_n_0 }),
        .O({\voltage_reg[28]_i_1__6_n_4 ,\voltage_reg[28]_i_1__6_n_5 ,\voltage_reg[28]_i_1__6_n_6 ,\voltage_reg[28]_i_1__6_n_7 }),
        .S({\voltage[28]_i_5__6_n_0 ,\voltage[28]_i_6__5_n_0 ,\voltage[28]_i_7__5_n_0 ,\voltage[28]_i_8__5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__6_n_6 ),
        .Q(voltage_reg[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__6_n_5 ),
        .Q(voltage_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__6_n_5 ),
        .Q(voltage_reg[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__6_n_4 ),
        .Q(voltage_reg[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__6_n_4 ),
        .Q(voltage_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__6_n_7 ),
        .Q(voltage_reg[4]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[4]_i_1__6 
       (.CI(\voltage_reg[0]_i_1__6_n_0 ),
        .CO({\voltage_reg[4]_i_1__6_n_0 ,\NLW_voltage_reg[4]_i_1__6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[4]_i_2__6_n_0 ,\voltage[4]_i_3__6_n_0 ,\voltage[4]_i_4__6_n_0 ,\voltage[4]_i_5__6_n_0 }),
        .O({\voltage_reg[4]_i_1__6_n_4 ,\voltage_reg[4]_i_1__6_n_5 ,\voltage_reg[4]_i_1__6_n_6 ,\voltage_reg[4]_i_1__6_n_7 }),
        .S({\voltage[4]_i_6__6_n_0 ,\voltage[4]_i_7__6_n_0 ,\voltage[4]_i_8__6_n_0 ,\voltage[4]_i_9__5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__6_n_6 ),
        .Q(voltage_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__6_n_5 ),
        .Q(voltage_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__6_n_4 ),
        .Q(voltage_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__6_n_7 ),
        .Q(voltage_reg[8]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[8]_i_1__6 
       (.CI(\voltage_reg[4]_i_1__6_n_0 ),
        .CO({\voltage_reg[8]_i_1__6_n_0 ,\NLW_voltage_reg[8]_i_1__6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[8]_i_2__6_n_0 ,\voltage[8]_i_3__6_n_0 ,\voltage[8]_i_4__6_n_0 ,\voltage[8]_i_5__6_n_0 }),
        .O({\voltage_reg[8]_i_1__6_n_4 ,\voltage_reg[8]_i_1__6_n_5 ,\voltage_reg[8]_i_1__6_n_6 ,\voltage_reg[8]_i_1__6_n_7 }),
        .S({\voltage[8]_i_6__6_n_0 ,\voltage[8]_i_7__5_n_0 ,\voltage[8]_i_8__5_n_0 ,\voltage[8]_i_9__5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__6_n_6 ),
        .Q(voltage_reg[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "neuron" *) 
module neuron__parameterized7
   (E,
    \tmp_sum_6_reg[8] ,
    \tmp_sum_5_6_reg[3]_0 ,
    \tmp_sum_1_2_reg[7]_0 ,
    \tmp_sum_b_0_reg[5] ,
    \tmp_sum_b_0_reg[7] ,
    \tmp_sum_b_0_reg[7]_0 ,
    \tmp_sum_b_0_reg[7]_1 ,
    \tmp_sum_b_0_reg[7]_2 ,
    \tmp_sum_b_0_reg[7]_3 ,
    \tmp_sum_b_0_reg[7]_4 ,
    \tmp_sum_4_reg[6] ,
    \tmp_sum_3_reg[9] ,
    clk_o_OBUF_BUFG,
    SR,
    D,
    S,
    DI,
    \tmp_sum_5_6_reg[28]_0 ,
    \tmp_sum_3_4_5_6_reg[7]_0 ,
    \tmp_sum_3_4_5_6_reg[7]_1 ,
    \tmp_sum_3_4_reg[28]_0 ,
    \tmp_sum_3_4_5_6_reg[3]_0 ,
    \tmp_sum_1_2_reg[28]_0 ,
    \tmp_sum_b_0_1_2_reg[31]_0 ,
    tmp_sum_b_0,
    \tmp_sum_b_0_1_2_reg[3]_0 ,
    tmp_sum_4,
    tmp_sum_3,
    \tmp_sum_3_4_5_6_reg[3]_1 );
  output [0:0]E;
  output [0:0]\tmp_sum_6_reg[8] ;
  output [2:0]\tmp_sum_5_6_reg[3]_0 ;
  output [3:0]\tmp_sum_1_2_reg[7]_0 ;
  output [2:0]\tmp_sum_b_0_reg[5] ;
  output [3:0]\tmp_sum_b_0_reg[7] ;
  output [3:0]\tmp_sum_b_0_reg[7]_0 ;
  output [3:0]\tmp_sum_b_0_reg[7]_1 ;
  output [3:0]\tmp_sum_b_0_reg[7]_2 ;
  output [3:0]\tmp_sum_b_0_reg[7]_3 ;
  output [3:0]\tmp_sum_b_0_reg[7]_4 ;
  output [0:0]\tmp_sum_4_reg[6] ;
  output [0:0]\tmp_sum_3_reg[9] ;
  input clk_o_OBUF_BUFG;
  input [0:0]SR;
  input [0:0]D;
  input [2:0]S;
  input [1:0]DI;
  input [0:0]\tmp_sum_5_6_reg[28]_0 ;
  input [0:0]\tmp_sum_3_4_5_6_reg[7]_0 ;
  input [2:0]\tmp_sum_3_4_5_6_reg[7]_1 ;
  input [5:0]\tmp_sum_3_4_reg[28]_0 ;
  input [3:0]\tmp_sum_3_4_5_6_reg[3]_0 ;
  input [6:0]\tmp_sum_1_2_reg[28]_0 ;
  input [31:0]\tmp_sum_b_0_1_2_reg[31]_0 ;
  input [1:0]tmp_sum_b_0;
  input [0:0]\tmp_sum_b_0_1_2_reg[3]_0 ;
  input [0:0]tmp_sum_4;
  input [0:0]tmp_sum_3;
  input [1:0]\tmp_sum_3_4_5_6_reg[3]_1 ;

  wire [31:7]C;
  wire [0:0]D;
  wire [1:0]DI;
  wire [0:0]E;
  wire [2:0]S;
  wire [0:0]SR;
  wire clk_o_OBUF_BUFG;
  wire load;
  wire [28:4]p_0_in;
  wire [31:0]sum;
  wire \sum[11]_i_2_n_0 ;
  wire \sum[11]_i_3_n_0 ;
  wire \sum[11]_i_4_n_0 ;
  wire \sum[11]_i_5_n_0 ;
  wire \sum[15]_i_2_n_0 ;
  wire \sum[15]_i_3_n_0 ;
  wire \sum[15]_i_4_n_0 ;
  wire \sum[15]_i_5_n_0 ;
  wire \sum[19]_i_2_n_0 ;
  wire \sum[19]_i_3_n_0 ;
  wire \sum[19]_i_4_n_0 ;
  wire \sum[19]_i_5_n_0 ;
  wire \sum[23]_i_2_n_0 ;
  wire \sum[23]_i_3_n_0 ;
  wire \sum[23]_i_4_n_0 ;
  wire \sum[23]_i_5_n_0 ;
  wire \sum[27]_i_2_n_0 ;
  wire \sum[27]_i_3_n_0 ;
  wire \sum[27]_i_4_n_0 ;
  wire \sum[27]_i_5_n_0 ;
  wire \sum[31]_i_2_n_0 ;
  wire \sum[31]_i_3_n_0 ;
  wire \sum[31]_i_4_n_0 ;
  wire \sum[31]_i_5_n_0 ;
  wire \sum[3]_i_2_n_0 ;
  wire \sum[3]_i_3_n_0 ;
  wire \sum[3]_i_4_n_0 ;
  wire \sum[3]_i_5_n_0 ;
  wire \sum[7]_i_2_n_0 ;
  wire \sum[7]_i_3_n_0 ;
  wire \sum[7]_i_4_n_0 ;
  wire \sum[7]_i_5_n_0 ;
  wire \sum_reg[11]_i_1_n_0 ;
  wire \sum_reg[11]_i_1_n_4 ;
  wire \sum_reg[11]_i_1_n_5 ;
  wire \sum_reg[11]_i_1_n_6 ;
  wire \sum_reg[11]_i_1_n_7 ;
  wire \sum_reg[15]_i_1_n_0 ;
  wire \sum_reg[15]_i_1_n_4 ;
  wire \sum_reg[15]_i_1_n_5 ;
  wire \sum_reg[15]_i_1_n_6 ;
  wire \sum_reg[15]_i_1_n_7 ;
  wire \sum_reg[19]_i_1_n_0 ;
  wire \sum_reg[19]_i_1_n_4 ;
  wire \sum_reg[19]_i_1_n_5 ;
  wire \sum_reg[19]_i_1_n_6 ;
  wire \sum_reg[19]_i_1_n_7 ;
  wire \sum_reg[23]_i_1_n_0 ;
  wire \sum_reg[23]_i_1_n_4 ;
  wire \sum_reg[23]_i_1_n_5 ;
  wire \sum_reg[23]_i_1_n_6 ;
  wire \sum_reg[23]_i_1_n_7 ;
  wire \sum_reg[27]_i_1_n_0 ;
  wire \sum_reg[27]_i_1_n_4 ;
  wire \sum_reg[27]_i_1_n_5 ;
  wire \sum_reg[27]_i_1_n_6 ;
  wire \sum_reg[27]_i_1_n_7 ;
  wire \sum_reg[31]_i_1_n_4 ;
  wire \sum_reg[31]_i_1_n_5 ;
  wire \sum_reg[31]_i_1_n_6 ;
  wire \sum_reg[31]_i_1_n_7 ;
  wire \sum_reg[3]_i_1_n_0 ;
  wire \sum_reg[3]_i_1_n_4 ;
  wire \sum_reg[3]_i_1_n_5 ;
  wire \sum_reg[3]_i_1_n_6 ;
  wire \sum_reg[3]_i_1_n_7 ;
  wire \sum_reg[7]_i_1_n_0 ;
  wire \sum_reg[7]_i_1_n_4 ;
  wire \sum_reg[7]_i_1_n_5 ;
  wire \sum_reg[7]_i_1_n_6 ;
  wire \sum_reg[7]_i_1_n_7 ;
  wire [28:4]tmp_sum_1_2;
  wire [6:0]\tmp_sum_1_2_reg[28]_0 ;
  wire [3:0]\tmp_sum_1_2_reg[7]_0 ;
  wire [0:0]tmp_sum_3;
  wire [28:5]tmp_sum_3_4;
  wire [31:0]tmp_sum_3_4_5_6;
  wire \tmp_sum_3_4_5_6[11]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[11]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[11]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[11]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6[15]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[15]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[15]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[15]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6[19]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[19]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[19]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[19]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6[23]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[23]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[23]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[23]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6[27]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[27]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[27]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[27]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6[31]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[31]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[31]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[31]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6[7]_i_2_n_0 ;
  wire \tmp_sum_3_4_5_6[7]_i_3_n_0 ;
  wire \tmp_sum_3_4_5_6[7]_i_4_n_0 ;
  wire \tmp_sum_3_4_5_6[7]_i_5_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[11]_i_1__0_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[11]_i_1__0_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[11]_i_1__0_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[11]_i_1__0_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[11]_i_1__0_n_7 ;
  wire \tmp_sum_3_4_5_6_reg[15]_i_1__0_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[15]_i_1__0_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[15]_i_1__0_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[15]_i_1__0_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[15]_i_1__0_n_7 ;
  wire \tmp_sum_3_4_5_6_reg[19]_i_1__0_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[19]_i_1__0_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[19]_i_1__0_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[19]_i_1__0_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[19]_i_1__0_n_7 ;
  wire \tmp_sum_3_4_5_6_reg[23]_i_1__0_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[23]_i_1__0_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[23]_i_1__0_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[23]_i_1__0_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[23]_i_1__0_n_7 ;
  wire \tmp_sum_3_4_5_6_reg[27]_i_1__0_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[27]_i_1__0_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[27]_i_1__0_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[27]_i_1__0_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[27]_i_1__0_n_7 ;
  wire \tmp_sum_3_4_5_6_reg[31]_i_1__0_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[31]_i_1__0_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[31]_i_1__0_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[31]_i_1__0_n_7 ;
  wire [3:0]\tmp_sum_3_4_5_6_reg[3]_0 ;
  wire [1:0]\tmp_sum_3_4_5_6_reg[3]_1 ;
  wire [0:0]\tmp_sum_3_4_5_6_reg[7]_0 ;
  wire [2:0]\tmp_sum_3_4_5_6_reg[7]_1 ;
  wire \tmp_sum_3_4_5_6_reg[7]_i_1__0_n_0 ;
  wire \tmp_sum_3_4_5_6_reg[7]_i_1__0_n_4 ;
  wire \tmp_sum_3_4_5_6_reg[7]_i_1__0_n_5 ;
  wire \tmp_sum_3_4_5_6_reg[7]_i_1__0_n_6 ;
  wire \tmp_sum_3_4_5_6_reg[7]_i_1__0_n_7 ;
  wire [5:0]\tmp_sum_3_4_reg[28]_0 ;
  wire [0:0]\tmp_sum_3_reg[9] ;
  wire [0:0]tmp_sum_4;
  wire [0:0]\tmp_sum_4_reg[6] ;
  wire [28:4]tmp_sum_5_6;
  wire tmp_sum_5_60__1_carry_n_0;
  wire [0:0]\tmp_sum_5_6_reg[28]_0 ;
  wire [2:0]\tmp_sum_5_6_reg[3]_0 ;
  wire [0:0]\tmp_sum_6_reg[8] ;
  wire [1:0]tmp_sum_b_0;
  wire [31:0]tmp_sum_b_0_1_2;
  wire [31:0]\tmp_sum_b_0_1_2_reg[31]_0 ;
  wire [0:0]\tmp_sum_b_0_1_2_reg[3]_0 ;
  wire [2:0]\tmp_sum_b_0_reg[5] ;
  wire [3:0]\tmp_sum_b_0_reg[7] ;
  wire [3:0]\tmp_sum_b_0_reg[7]_0 ;
  wire [3:0]\tmp_sum_b_0_reg[7]_1 ;
  wire [3:0]\tmp_sum_b_0_reg[7]_2 ;
  wire [3:0]\tmp_sum_b_0_reg[7]_3 ;
  wire [3:0]\tmp_sum_b_0_reg[7]_4 ;
  wire voltage0_carry__0_i_1__0_n_0;
  wire voltage0_carry__0_i_2__0_n_0;
  wire voltage0_carry__0_i_3__0_n_0;
  wire voltage0_carry__0_i_4__0_n_0;
  wire voltage0_carry__0_n_0;
  wire voltage0_carry__1_i_1__0_n_0;
  wire voltage0_carry__1_i_2__0_n_0;
  wire voltage0_carry__1_i_3__0_n_0;
  wire voltage0_carry__1_i_4__0_n_0;
  wire voltage0_carry__1_n_0;
  wire voltage0_carry__2_i_1__0_n_0;
  wire voltage0_carry__2_i_2__0_n_0;
  wire voltage0_carry__2_i_3__0_n_0;
  wire voltage0_carry__2_i_4__0_n_0;
  wire voltage0_carry__2_n_0;
  wire voltage0_carry__3_i_1__0_n_0;
  wire voltage0_carry__3_i_2__0_n_0;
  wire voltage0_carry__3_i_3__0_n_0;
  wire voltage0_carry__3_i_4__0_n_0;
  wire voltage0_carry__3_n_0;
  wire voltage0_carry__4_i_1__0_n_0;
  wire voltage0_carry__4_i_2__0_n_0;
  wire voltage0_carry__4_i_3__0_n_0;
  wire voltage0_carry__4_i_4__0_n_0;
  wire voltage0_carry__4_n_0;
  wire voltage0_carry__5_i_1__0_n_0;
  wire voltage0_carry_i_1__0_n_0;
  wire voltage0_carry_i_2__0_n_0;
  wire voltage0_carry_i_3__6_n_0;
  wire voltage0_carry_n_0;
  wire voltage1_carry__0_i_1__7_n_0;
  wire voltage1_carry__0_i_2__7_n_0;
  wire voltage1_carry__0_i_3__7_n_0;
  wire voltage1_carry__0_i_4__0_n_0;
  wire voltage1_carry__0_i_5__0_n_0;
  wire voltage1_carry__0_i_6__0_n_0;
  wire voltage1_carry__0_i_7__0_n_0;
  wire voltage1_carry__0_n_0;
  wire voltage1_carry__1_i_1__7_n_0;
  wire voltage1_carry__1_i_2__7_n_0;
  wire voltage1_carry__1_i_3__7_n_0;
  wire voltage1_carry__1_i_4__7_n_0;
  wire voltage1_carry__1_i_5__0_n_0;
  wire voltage1_carry__1_i_6__0_n_0;
  wire voltage1_carry__1_i_7__0_n_0;
  wire voltage1_carry__1_i_8__0_n_0;
  wire voltage1_carry__1_n_0;
  wire voltage1_carry__2_i_1__0_n_0;
  wire voltage1_carry__2_i_2__7_n_0;
  wire voltage1_carry__2_i_3__7_n_0;
  wire voltage1_carry__2_i_4__7_n_0;
  wire voltage1_carry__2_i_5__0_n_0;
  wire voltage1_carry__2_i_6__0_n_0;
  wire voltage1_carry__2_i_7__0_n_0;
  wire voltage1_carry__2_i_8__0_n_0;
  wire voltage1_carry_i_1__7_n_0;
  wire voltage1_carry_i_2__7_n_0;
  wire voltage1_carry_i_3__7_n_0;
  wire voltage1_carry_i_4__7_n_0;
  wire voltage1_carry_i_5__7_n_0;
  wire voltage1_carry_i_6__7_n_0;
  wire voltage1_carry_i_7__7_n_0;
  wire voltage1_carry_i_8__7_n_0;
  wire voltage1_carry_n_0;
  wire [31:0]voltage2__93;
  wire voltage2_carry__0_i_1__6_n_0;
  wire voltage2_carry__0_i_2__6_n_0;
  wire voltage2_carry__0_i_3__6_n_0;
  wire voltage2_carry__0_i_4__5_n_0;
  wire voltage2_carry__0_n_0;
  wire voltage2_carry__1_i_1__6_n_0;
  wire voltage2_carry__1_i_2__6_n_0;
  wire voltage2_carry__1_i_3__6_n_0;
  wire voltage2_carry__1_i_4__6_n_0;
  wire voltage2_carry__1_n_0;
  wire voltage2_carry__2_i_1__6_n_0;
  wire voltage2_carry__2_i_2__6_n_0;
  wire voltage2_carry__2_i_3__6_n_0;
  wire voltage2_carry__2_i_4__6_n_0;
  wire voltage2_carry__2_n_0;
  wire voltage2_carry__3_i_1__6_n_0;
  wire voltage2_carry__3_i_2__6_n_0;
  wire voltage2_carry__3_i_3__6_n_0;
  wire voltage2_carry__3_i_4__6_n_0;
  wire voltage2_carry__3_n_0;
  wire voltage2_carry__4_i_1__6_n_0;
  wire voltage2_carry__4_i_2__6_n_0;
  wire voltage2_carry__4_i_3__6_n_0;
  wire voltage2_carry__4_i_4__6_n_0;
  wire voltage2_carry__4_n_0;
  wire voltage2_carry__5_i_1__6_n_0;
  wire voltage2_carry__5_i_2__6_n_0;
  wire voltage2_carry__5_i_3__6_n_0;
  wire voltage2_carry__5_i_4__6_n_0;
  wire voltage2_carry__5_n_0;
  wire voltage2_carry__6_i_1__6_n_0;
  wire voltage2_carry__6_i_2__6_n_0;
  wire voltage2_carry__6_i_3__6_n_0;
  wire voltage2_carry__6_i_4__6_n_0;
  wire voltage2_carry_i_1__6_n_0;
  wire voltage2_carry_i_2__6_n_0;
  wire voltage2_carry_i_3__6_n_0;
  wire voltage2_carry_i_4__5_n_0;
  wire voltage2_carry_n_0;
  wire \voltage[0]_i_2__6_n_0 ;
  wire \voltage[0]_i_3__7_n_0 ;
  wire \voltage[0]_i_4__6_n_0 ;
  wire \voltage[0]_i_5__6_n_0 ;
  wire \voltage[0]_i_6__7_n_0 ;
  wire \voltage[0]_i_7__7_n_0 ;
  wire \voltage[0]_i_8__7_n_0 ;
  wire \voltage[0]_i_9__6_n_0 ;
  wire \voltage[12]_i_2__7_n_0 ;
  wire \voltage[12]_i_3__7_n_0 ;
  wire \voltage[12]_i_4__7_n_0 ;
  wire \voltage[12]_i_5__7_n_0 ;
  wire \voltage[12]_i_6__6_n_0 ;
  wire \voltage[12]_i_7__6_n_0 ;
  wire \voltage[12]_i_8__6_n_0 ;
  wire \voltage[12]_i_9__6_n_0 ;
  wire \voltage[16]_i_2__7_n_0 ;
  wire \voltage[16]_i_3__7_n_0 ;
  wire \voltage[16]_i_4__7_n_0 ;
  wire \voltage[16]_i_5__7_n_0 ;
  wire \voltage[16]_i_6__6_n_0 ;
  wire \voltage[16]_i_7__6_n_0 ;
  wire \voltage[16]_i_8__6_n_0 ;
  wire \voltage[16]_i_9__6_n_0 ;
  wire \voltage[20]_i_2__7_n_0 ;
  wire \voltage[20]_i_3__7_n_0 ;
  wire \voltage[20]_i_4__7_n_0 ;
  wire \voltage[20]_i_5__7_n_0 ;
  wire \voltage[20]_i_6__6_n_0 ;
  wire \voltage[20]_i_7__6_n_0 ;
  wire \voltage[20]_i_8__6_n_0 ;
  wire \voltage[20]_i_9__6_n_0 ;
  wire \voltage[24]_i_2__7_n_0 ;
  wire \voltage[24]_i_3__7_n_0 ;
  wire \voltage[24]_i_4__7_n_0 ;
  wire \voltage[24]_i_5__7_n_0 ;
  wire \voltage[24]_i_6__6_n_0 ;
  wire \voltage[24]_i_7__6_n_0 ;
  wire \voltage[24]_i_8__6_n_0 ;
  wire \voltage[24]_i_9__6_n_0 ;
  wire \voltage[28]_i_2__7_n_0 ;
  wire \voltage[28]_i_3__7_n_0 ;
  wire \voltage[28]_i_4__7_n_0 ;
  wire \voltage[28]_i_5__7_n_0 ;
  wire \voltage[28]_i_6__6_n_0 ;
  wire \voltage[28]_i_7__6_n_0 ;
  wire \voltage[28]_i_8__6_n_0 ;
  wire \voltage[4]_i_2__7_n_0 ;
  wire \voltage[4]_i_3__7_n_0 ;
  wire \voltage[4]_i_4__7_n_0 ;
  wire \voltage[4]_i_5__7_n_0 ;
  wire \voltage[4]_i_6__7_n_0 ;
  wire \voltage[4]_i_7__7_n_0 ;
  wire \voltage[4]_i_8__7_n_0 ;
  wire \voltage[4]_i_9__6_n_0 ;
  wire \voltage[8]_i_2__7_n_0 ;
  wire \voltage[8]_i_3__7_n_0 ;
  wire \voltage[8]_i_4__7_n_0 ;
  wire \voltage[8]_i_5__7_n_0 ;
  wire \voltage[8]_i_6__7_n_0 ;
  wire \voltage[8]_i_7__6_n_0 ;
  wire \voltage[8]_i_8__6_n_0 ;
  wire \voltage[8]_i_9__6_n_0 ;
  wire [31:0]voltage_reg;
  wire \voltage_reg[0]_i_1__7_n_0 ;
  wire \voltage_reg[0]_i_1__7_n_4 ;
  wire \voltage_reg[0]_i_1__7_n_5 ;
  wire \voltage_reg[0]_i_1__7_n_6 ;
  wire \voltage_reg[0]_i_1__7_n_7 ;
  wire \voltage_reg[12]_i_1__7_n_0 ;
  wire \voltage_reg[12]_i_1__7_n_4 ;
  wire \voltage_reg[12]_i_1__7_n_5 ;
  wire \voltage_reg[12]_i_1__7_n_6 ;
  wire \voltage_reg[12]_i_1__7_n_7 ;
  wire \voltage_reg[16]_i_1__7_n_0 ;
  wire \voltage_reg[16]_i_1__7_n_4 ;
  wire \voltage_reg[16]_i_1__7_n_5 ;
  wire \voltage_reg[16]_i_1__7_n_6 ;
  wire \voltage_reg[16]_i_1__7_n_7 ;
  wire \voltage_reg[20]_i_1__7_n_0 ;
  wire \voltage_reg[20]_i_1__7_n_4 ;
  wire \voltage_reg[20]_i_1__7_n_5 ;
  wire \voltage_reg[20]_i_1__7_n_6 ;
  wire \voltage_reg[20]_i_1__7_n_7 ;
  wire \voltage_reg[24]_i_1__7_n_0 ;
  wire \voltage_reg[24]_i_1__7_n_4 ;
  wire \voltage_reg[24]_i_1__7_n_5 ;
  wire \voltage_reg[24]_i_1__7_n_6 ;
  wire \voltage_reg[24]_i_1__7_n_7 ;
  wire \voltage_reg[28]_i_1__7_n_4 ;
  wire \voltage_reg[28]_i_1__7_n_5 ;
  wire \voltage_reg[28]_i_1__7_n_6 ;
  wire \voltage_reg[28]_i_1__7_n_7 ;
  wire \voltage_reg[4]_i_1__7_n_0 ;
  wire \voltage_reg[4]_i_1__7_n_4 ;
  wire \voltage_reg[4]_i_1__7_n_5 ;
  wire \voltage_reg[4]_i_1__7_n_6 ;
  wire \voltage_reg[4]_i_1__7_n_7 ;
  wire \voltage_reg[8]_i_1__7_n_0 ;
  wire \voltage_reg[8]_i_1__7_n_4 ;
  wire \voltage_reg[8]_i_1__7_n_5 ;
  wire \voltage_reg[8]_i_1__7_n_6 ;
  wire \voltage_reg[8]_i_1__7_n_7 ;
  wire [2:0]\NLW_sum_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sum_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sum_reg[19]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sum_reg[23]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sum_reg[27]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_sum_reg[31]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sum_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_sum_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[11]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[15]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[19]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[23]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[27]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_sum_3_4_5_6_reg[31]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmp_sum_3_4_5_6_reg[7]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]NLW_tmp_sum_5_60__1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_tmp_sum_5_60__1_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_tmp_sum_5_60__1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_voltage0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_voltage0_carry__5_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_voltage1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_voltage1_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_voltage2_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_voltage2_carry__6_CO_UNCONNECTED;
  wire [2:0]\NLW_voltage_reg[0]_i_1__7_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[12]_i_1__7_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[16]_i_1__7_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[20]_i_1__7_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[24]_i_1__7_CO_UNCONNECTED ;
  wire [3:0]\NLW_voltage_reg[28]_i_1__7_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[4]_i_1__7_CO_UNCONNECTED ;
  wire [2:0]\NLW_voltage_reg[8]_i_1__7_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    spike_out_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(load),
        .Q(E),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_2 
       (.I0(tmp_sum_b_0_1_2[11]),
        .I1(tmp_sum_3_4_5_6[11]),
        .O(\sum[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_3 
       (.I0(tmp_sum_b_0_1_2[10]),
        .I1(tmp_sum_3_4_5_6[10]),
        .O(\sum[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_4 
       (.I0(tmp_sum_b_0_1_2[9]),
        .I1(tmp_sum_3_4_5_6[9]),
        .O(\sum[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[11]_i_5 
       (.I0(tmp_sum_b_0_1_2[8]),
        .I1(tmp_sum_3_4_5_6[8]),
        .O(\sum[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_2 
       (.I0(tmp_sum_b_0_1_2[15]),
        .I1(tmp_sum_3_4_5_6[15]),
        .O(\sum[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_3 
       (.I0(tmp_sum_b_0_1_2[14]),
        .I1(tmp_sum_3_4_5_6[14]),
        .O(\sum[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_4 
       (.I0(tmp_sum_b_0_1_2[13]),
        .I1(tmp_sum_3_4_5_6[13]),
        .O(\sum[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[15]_i_5 
       (.I0(tmp_sum_b_0_1_2[12]),
        .I1(tmp_sum_3_4_5_6[12]),
        .O(\sum[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_2 
       (.I0(tmp_sum_b_0_1_2[19]),
        .I1(tmp_sum_3_4_5_6[19]),
        .O(\sum[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_3 
       (.I0(tmp_sum_b_0_1_2[18]),
        .I1(tmp_sum_3_4_5_6[18]),
        .O(\sum[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_4 
       (.I0(tmp_sum_b_0_1_2[17]),
        .I1(tmp_sum_3_4_5_6[17]),
        .O(\sum[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[19]_i_5 
       (.I0(tmp_sum_b_0_1_2[16]),
        .I1(tmp_sum_3_4_5_6[16]),
        .O(\sum[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_2 
       (.I0(tmp_sum_b_0_1_2[23]),
        .I1(tmp_sum_3_4_5_6[23]),
        .O(\sum[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_3 
       (.I0(tmp_sum_b_0_1_2[22]),
        .I1(tmp_sum_3_4_5_6[22]),
        .O(\sum[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_4 
       (.I0(tmp_sum_b_0_1_2[21]),
        .I1(tmp_sum_3_4_5_6[21]),
        .O(\sum[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[23]_i_5 
       (.I0(tmp_sum_b_0_1_2[20]),
        .I1(tmp_sum_3_4_5_6[20]),
        .O(\sum[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_2 
       (.I0(tmp_sum_b_0_1_2[27]),
        .I1(tmp_sum_3_4_5_6[27]),
        .O(\sum[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_3 
       (.I0(tmp_sum_b_0_1_2[26]),
        .I1(tmp_sum_3_4_5_6[26]),
        .O(\sum[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_4 
       (.I0(tmp_sum_b_0_1_2[25]),
        .I1(tmp_sum_3_4_5_6[25]),
        .O(\sum[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[27]_i_5 
       (.I0(tmp_sum_b_0_1_2[24]),
        .I1(tmp_sum_3_4_5_6[24]),
        .O(\sum[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[31]_i_2 
       (.I0(tmp_sum_b_0_1_2[31]),
        .I1(tmp_sum_3_4_5_6[31]),
        .O(\sum[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[31]_i_3 
       (.I0(tmp_sum_b_0_1_2[30]),
        .I1(tmp_sum_3_4_5_6[30]),
        .O(\sum[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[31]_i_4 
       (.I0(tmp_sum_b_0_1_2[29]),
        .I1(tmp_sum_3_4_5_6[29]),
        .O(\sum[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[31]_i_5 
       (.I0(tmp_sum_b_0_1_2[28]),
        .I1(tmp_sum_3_4_5_6[28]),
        .O(\sum[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_2 
       (.I0(tmp_sum_b_0_1_2[3]),
        .I1(tmp_sum_3_4_5_6[3]),
        .O(\sum[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_3 
       (.I0(tmp_sum_b_0_1_2[2]),
        .I1(tmp_sum_3_4_5_6[2]),
        .O(\sum[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_4 
       (.I0(tmp_sum_b_0_1_2[1]),
        .I1(tmp_sum_3_4_5_6[1]),
        .O(\sum[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_5 
       (.I0(tmp_sum_b_0_1_2[0]),
        .I1(tmp_sum_3_4_5_6[0]),
        .O(\sum[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_2 
       (.I0(tmp_sum_b_0_1_2[7]),
        .I1(tmp_sum_3_4_5_6[7]),
        .O(\sum[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_3 
       (.I0(tmp_sum_b_0_1_2[6]),
        .I1(tmp_sum_3_4_5_6[6]),
        .O(\sum[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_4 
       (.I0(tmp_sum_b_0_1_2[5]),
        .I1(tmp_sum_3_4_5_6[5]),
        .O(\sum[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_5 
       (.I0(tmp_sum_b_0_1_2[4]),
        .I1(tmp_sum_3_4_5_6[4]),
        .O(\sum[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[3]_i_1_n_7 ),
        .Q(sum[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[11]_i_1_n_5 ),
        .Q(sum[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[11]_i_1_n_4 ),
        .Q(sum[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[11]_i_1 
       (.CI(\sum_reg[7]_i_1_n_0 ),
        .CO({\sum_reg[11]_i_1_n_0 ,\NLW_sum_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[11:8]),
        .O({\sum_reg[11]_i_1_n_4 ,\sum_reg[11]_i_1_n_5 ,\sum_reg[11]_i_1_n_6 ,\sum_reg[11]_i_1_n_7 }),
        .S({\sum[11]_i_2_n_0 ,\sum[11]_i_3_n_0 ,\sum[11]_i_4_n_0 ,\sum[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[15]_i_1_n_7 ),
        .Q(sum[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[15]_i_1_n_6 ),
        .Q(sum[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[15]_i_1_n_5 ),
        .Q(sum[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[15]_i_1_n_4 ),
        .Q(sum[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[15]_i_1 
       (.CI(\sum_reg[11]_i_1_n_0 ),
        .CO({\sum_reg[15]_i_1_n_0 ,\NLW_sum_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[15:12]),
        .O({\sum_reg[15]_i_1_n_4 ,\sum_reg[15]_i_1_n_5 ,\sum_reg[15]_i_1_n_6 ,\sum_reg[15]_i_1_n_7 }),
        .S({\sum[15]_i_2_n_0 ,\sum[15]_i_3_n_0 ,\sum[15]_i_4_n_0 ,\sum[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[19]_i_1_n_7 ),
        .Q(sum[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[19]_i_1_n_6 ),
        .Q(sum[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[19]_i_1_n_5 ),
        .Q(sum[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[19]_i_1_n_4 ),
        .Q(sum[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[19]_i_1 
       (.CI(\sum_reg[15]_i_1_n_0 ),
        .CO({\sum_reg[19]_i_1_n_0 ,\NLW_sum_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[19:16]),
        .O({\sum_reg[19]_i_1_n_4 ,\sum_reg[19]_i_1_n_5 ,\sum_reg[19]_i_1_n_6 ,\sum_reg[19]_i_1_n_7 }),
        .S({\sum[19]_i_2_n_0 ,\sum[19]_i_3_n_0 ,\sum[19]_i_4_n_0 ,\sum[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[3]_i_1_n_6 ),
        .Q(sum[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[23]_i_1_n_7 ),
        .Q(sum[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[23]_i_1_n_6 ),
        .Q(sum[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[23]_i_1_n_5 ),
        .Q(sum[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[23]_i_1_n_4 ),
        .Q(sum[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[23]_i_1 
       (.CI(\sum_reg[19]_i_1_n_0 ),
        .CO({\sum_reg[23]_i_1_n_0 ,\NLW_sum_reg[23]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[23:20]),
        .O({\sum_reg[23]_i_1_n_4 ,\sum_reg[23]_i_1_n_5 ,\sum_reg[23]_i_1_n_6 ,\sum_reg[23]_i_1_n_7 }),
        .S({\sum[23]_i_2_n_0 ,\sum[23]_i_3_n_0 ,\sum[23]_i_4_n_0 ,\sum[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[27]_i_1_n_7 ),
        .Q(sum[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[27]_i_1_n_6 ),
        .Q(sum[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[27]_i_1_n_5 ),
        .Q(sum[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[27]_i_1_n_4 ),
        .Q(sum[27]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[27]_i_1 
       (.CI(\sum_reg[23]_i_1_n_0 ),
        .CO({\sum_reg[27]_i_1_n_0 ,\NLW_sum_reg[27]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[27:24]),
        .O({\sum_reg[27]_i_1_n_4 ,\sum_reg[27]_i_1_n_5 ,\sum_reg[27]_i_1_n_6 ,\sum_reg[27]_i_1_n_7 }),
        .S({\sum[27]_i_2_n_0 ,\sum[27]_i_3_n_0 ,\sum[27]_i_4_n_0 ,\sum[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[31]_i_1_n_7 ),
        .Q(sum[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[31]_i_1_n_6 ),
        .Q(sum[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[3]_i_1_n_5 ),
        .Q(sum[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[31]_i_1_n_5 ),
        .Q(sum[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[31]_i_1_n_4 ),
        .Q(sum[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[31]_i_1 
       (.CI(\sum_reg[27]_i_1_n_0 ),
        .CO(\NLW_sum_reg[31]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_sum_b_0_1_2[30:28]}),
        .O({\sum_reg[31]_i_1_n_4 ,\sum_reg[31]_i_1_n_5 ,\sum_reg[31]_i_1_n_6 ,\sum_reg[31]_i_1_n_7 }),
        .S({\sum[31]_i_2_n_0 ,\sum[31]_i_3_n_0 ,\sum[31]_i_4_n_0 ,\sum[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[3]_i_1_n_4 ),
        .Q(sum[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sum_reg[3]_i_1_n_0 ,\NLW_sum_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[3:0]),
        .O({\sum_reg[3]_i_1_n_4 ,\sum_reg[3]_i_1_n_5 ,\sum_reg[3]_i_1_n_6 ,\sum_reg[3]_i_1_n_7 }),
        .S({\sum[3]_i_2_n_0 ,\sum[3]_i_3_n_0 ,\sum[3]_i_4_n_0 ,\sum[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[7]_i_1_n_7 ),
        .Q(sum[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[7]_i_1_n_6 ),
        .Q(sum[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[7]_i_1_n_5 ),
        .Q(sum[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[7]_i_1_n_4 ),
        .Q(sum[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[7]_i_1 
       (.CI(\sum_reg[3]_i_1_n_0 ),
        .CO({\sum_reg[7]_i_1_n_0 ,\NLW_sum_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(tmp_sum_b_0_1_2[7:4]),
        .O({\sum_reg[7]_i_1_n_4 ,\sum_reg[7]_i_1_n_5 ,\sum_reg[7]_i_1_n_6 ,\sum_reg[7]_i_1_n_7 }),
        .S({\sum[7]_i_2_n_0 ,\sum[7]_i_3_n_0 ,\sum[7]_i_4_n_0 ,\sum[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[11]_i_1_n_7 ),
        .Q(sum[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\sum_reg[11]_i_1_n_6 ),
        .Q(sum[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[28]_0 [0]),
        .Q(\tmp_sum_b_0_reg[5] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[28]_0 [6]),
        .Q(tmp_sum_1_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[28]_0 [1]),
        .Q(tmp_sum_1_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[28]_0 [2]),
        .Q(\tmp_sum_1_2_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[28]_0 [3]),
        .Q(tmp_sum_1_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[28]_0 [4]),
        .Q(\tmp_sum_1_2_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_1_2_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_1_2_reg[28]_0 [5]),
        .Q(tmp_sum_1_2[8]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_sum_3_4[28]_i_2 
       (.I0(tmp_sum_4),
        .O(\tmp_sum_4_reg[6] ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_sum_3_4[28]_i_3 
       (.I0(tmp_sum_3),
        .O(\tmp_sum_3_reg[9] ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[11]_i_2 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[11]_i_3 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[11]_i_4 
       (.I0(tmp_sum_3_4[9]),
        .I1(tmp_sum_5_6[9]),
        .O(\tmp_sum_3_4_5_6[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[11]_i_5 
       (.I0(tmp_sum_3_4[8]),
        .I1(tmp_sum_5_6[8]),
        .O(\tmp_sum_3_4_5_6[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[15]_i_2 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[15]_i_3 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[15]_i_4 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[15]_i_5 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[19]_i_2 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[19]_i_3 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[19]_i_4 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[19]_i_5 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[23]_i_2 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[23]_i_3 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[23]_i_4 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[23]_i_5 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[27]_i_2 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[27]_i_3 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[27]_i_4 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[27]_i_5 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[31]_i_2 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[31]_i_3 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[31]_i_4 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[31]_i_5 
       (.I0(tmp_sum_3_4[28]),
        .I1(tmp_sum_5_6[28]),
        .O(\tmp_sum_3_4_5_6[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[3]_i_2 
       (.I0(\tmp_sum_3_4_5_6_reg[7]_1 [1]),
        .I1(\tmp_sum_3_4_5_6_reg[3]_1 [0]),
        .O(\tmp_sum_5_6_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[3]_i_3 
       (.I0(\tmp_sum_3_4_5_6_reg[7]_1 [0]),
        .I1(\tmp_sum_3_4_5_6_reg[3]_1 [1]),
        .O(\tmp_sum_5_6_reg[3]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[7]_i_2 
       (.I0(tmp_sum_3_4[7]),
        .I1(tmp_sum_5_6[7]),
        .O(\tmp_sum_3_4_5_6[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[7]_i_3 
       (.I0(tmp_sum_3_4[6]),
        .I1(tmp_sum_5_6[6]),
        .O(\tmp_sum_3_4_5_6[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[7]_i_4 
       (.I0(tmp_sum_3_4[5]),
        .I1(tmp_sum_5_6[6]),
        .O(\tmp_sum_3_4_5_6[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_3_4_5_6[7]_i_5 
       (.I0(\tmp_sum_3_4_5_6_reg[7]_1 [2]),
        .I1(tmp_sum_5_6[4]),
        .O(\tmp_sum_3_4_5_6[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[3]_0 [0]),
        .Q(tmp_sum_3_4_5_6[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[11]_i_1__0_n_5 ),
        .Q(tmp_sum_3_4_5_6[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[11]_i_1__0_n_4 ),
        .Q(tmp_sum_3_4_5_6[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[11]_i_1__0 
       (.CI(\tmp_sum_3_4_5_6_reg[7]_i_1__0_n_0 ),
        .CO({\tmp_sum_3_4_5_6_reg[11]_i_1__0_n_0 ,\NLW_tmp_sum_3_4_5_6_reg[11]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_3_4[28],tmp_sum_3_4[28],tmp_sum_3_4[9:8]}),
        .O({\tmp_sum_3_4_5_6_reg[11]_i_1__0_n_4 ,\tmp_sum_3_4_5_6_reg[11]_i_1__0_n_5 ,\tmp_sum_3_4_5_6_reg[11]_i_1__0_n_6 ,\tmp_sum_3_4_5_6_reg[11]_i_1__0_n_7 }),
        .S({\tmp_sum_3_4_5_6[11]_i_2_n_0 ,\tmp_sum_3_4_5_6[11]_i_3_n_0 ,\tmp_sum_3_4_5_6[11]_i_4_n_0 ,\tmp_sum_3_4_5_6[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[15]_i_1__0_n_7 ),
        .Q(tmp_sum_3_4_5_6[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[15]_i_1__0_n_6 ),
        .Q(tmp_sum_3_4_5_6[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[15]_i_1__0_n_5 ),
        .Q(tmp_sum_3_4_5_6[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[15]_i_1__0_n_4 ),
        .Q(tmp_sum_3_4_5_6[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[15]_i_1__0 
       (.CI(\tmp_sum_3_4_5_6_reg[11]_i_1__0_n_0 ),
        .CO({\tmp_sum_3_4_5_6_reg[15]_i_1__0_n_0 ,\NLW_tmp_sum_3_4_5_6_reg[15]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_3_4[28],tmp_sum_3_4[28],tmp_sum_3_4[28],tmp_sum_3_4[28]}),
        .O({\tmp_sum_3_4_5_6_reg[15]_i_1__0_n_4 ,\tmp_sum_3_4_5_6_reg[15]_i_1__0_n_5 ,\tmp_sum_3_4_5_6_reg[15]_i_1__0_n_6 ,\tmp_sum_3_4_5_6_reg[15]_i_1__0_n_7 }),
        .S({\tmp_sum_3_4_5_6[15]_i_2_n_0 ,\tmp_sum_3_4_5_6[15]_i_3_n_0 ,\tmp_sum_3_4_5_6[15]_i_4_n_0 ,\tmp_sum_3_4_5_6[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[19]_i_1__0_n_7 ),
        .Q(tmp_sum_3_4_5_6[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[19]_i_1__0_n_6 ),
        .Q(tmp_sum_3_4_5_6[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[19]_i_1__0_n_5 ),
        .Q(tmp_sum_3_4_5_6[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[19]_i_1__0_n_4 ),
        .Q(tmp_sum_3_4_5_6[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[19]_i_1__0 
       (.CI(\tmp_sum_3_4_5_6_reg[15]_i_1__0_n_0 ),
        .CO({\tmp_sum_3_4_5_6_reg[19]_i_1__0_n_0 ,\NLW_tmp_sum_3_4_5_6_reg[19]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_3_4[28],tmp_sum_3_4[28],tmp_sum_3_4[28],tmp_sum_3_4[28]}),
        .O({\tmp_sum_3_4_5_6_reg[19]_i_1__0_n_4 ,\tmp_sum_3_4_5_6_reg[19]_i_1__0_n_5 ,\tmp_sum_3_4_5_6_reg[19]_i_1__0_n_6 ,\tmp_sum_3_4_5_6_reg[19]_i_1__0_n_7 }),
        .S({\tmp_sum_3_4_5_6[19]_i_2_n_0 ,\tmp_sum_3_4_5_6[19]_i_3_n_0 ,\tmp_sum_3_4_5_6[19]_i_4_n_0 ,\tmp_sum_3_4_5_6[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[3]_0 [1]),
        .Q(tmp_sum_3_4_5_6[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[23]_i_1__0_n_7 ),
        .Q(tmp_sum_3_4_5_6[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[23]_i_1__0_n_6 ),
        .Q(tmp_sum_3_4_5_6[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[23]_i_1__0_n_5 ),
        .Q(tmp_sum_3_4_5_6[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[23]_i_1__0_n_4 ),
        .Q(tmp_sum_3_4_5_6[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[23]_i_1__0 
       (.CI(\tmp_sum_3_4_5_6_reg[19]_i_1__0_n_0 ),
        .CO({\tmp_sum_3_4_5_6_reg[23]_i_1__0_n_0 ,\NLW_tmp_sum_3_4_5_6_reg[23]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_3_4[28],tmp_sum_3_4[28],tmp_sum_3_4[28],tmp_sum_3_4[28]}),
        .O({\tmp_sum_3_4_5_6_reg[23]_i_1__0_n_4 ,\tmp_sum_3_4_5_6_reg[23]_i_1__0_n_5 ,\tmp_sum_3_4_5_6_reg[23]_i_1__0_n_6 ,\tmp_sum_3_4_5_6_reg[23]_i_1__0_n_7 }),
        .S({\tmp_sum_3_4_5_6[23]_i_2_n_0 ,\tmp_sum_3_4_5_6[23]_i_3_n_0 ,\tmp_sum_3_4_5_6[23]_i_4_n_0 ,\tmp_sum_3_4_5_6[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[27]_i_1__0_n_7 ),
        .Q(tmp_sum_3_4_5_6[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[27]_i_1__0_n_6 ),
        .Q(tmp_sum_3_4_5_6[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[27]_i_1__0_n_5 ),
        .Q(tmp_sum_3_4_5_6[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[27]_i_1__0_n_4 ),
        .Q(tmp_sum_3_4_5_6[27]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[27]_i_1__0 
       (.CI(\tmp_sum_3_4_5_6_reg[23]_i_1__0_n_0 ),
        .CO({\tmp_sum_3_4_5_6_reg[27]_i_1__0_n_0 ,\NLW_tmp_sum_3_4_5_6_reg[27]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_3_4[28],tmp_sum_3_4[28],tmp_sum_3_4[28],tmp_sum_3_4[28]}),
        .O({\tmp_sum_3_4_5_6_reg[27]_i_1__0_n_4 ,\tmp_sum_3_4_5_6_reg[27]_i_1__0_n_5 ,\tmp_sum_3_4_5_6_reg[27]_i_1__0_n_6 ,\tmp_sum_3_4_5_6_reg[27]_i_1__0_n_7 }),
        .S({\tmp_sum_3_4_5_6[27]_i_2_n_0 ,\tmp_sum_3_4_5_6[27]_i_3_n_0 ,\tmp_sum_3_4_5_6[27]_i_4_n_0 ,\tmp_sum_3_4_5_6[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[31]_i_1__0_n_7 ),
        .Q(tmp_sum_3_4_5_6[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[31]_i_1__0_n_6 ),
        .Q(tmp_sum_3_4_5_6[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[3]_0 [2]),
        .Q(tmp_sum_3_4_5_6[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[31]_i_1__0_n_5 ),
        .Q(tmp_sum_3_4_5_6[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[31]_i_1__0_n_4 ),
        .Q(tmp_sum_3_4_5_6[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[31]_i_1__0 
       (.CI(\tmp_sum_3_4_5_6_reg[27]_i_1__0_n_0 ),
        .CO(\NLW_tmp_sum_3_4_5_6_reg[31]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_sum_3_4[28],tmp_sum_3_4[28],tmp_sum_3_4[28]}),
        .O({\tmp_sum_3_4_5_6_reg[31]_i_1__0_n_4 ,\tmp_sum_3_4_5_6_reg[31]_i_1__0_n_5 ,\tmp_sum_3_4_5_6_reg[31]_i_1__0_n_6 ,\tmp_sum_3_4_5_6_reg[31]_i_1__0_n_7 }),
        .S({\tmp_sum_3_4_5_6[31]_i_2_n_0 ,\tmp_sum_3_4_5_6[31]_i_3_n_0 ,\tmp_sum_3_4_5_6[31]_i_4_n_0 ,\tmp_sum_3_4_5_6[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[3]_0 [3]),
        .Q(tmp_sum_3_4_5_6[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[7]_i_1__0_n_7 ),
        .Q(tmp_sum_3_4_5_6[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[7]_i_1__0_n_6 ),
        .Q(tmp_sum_3_4_5_6[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[7]_i_1__0_n_5 ),
        .Q(tmp_sum_3_4_5_6[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[7]_i_1__0_n_4 ),
        .Q(tmp_sum_3_4_5_6[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_sum_3_4_5_6_reg[7]_i_1__0 
       (.CI(\tmp_sum_3_4_5_6_reg[7]_0 ),
        .CO({\tmp_sum_3_4_5_6_reg[7]_i_1__0_n_0 ,\NLW_tmp_sum_3_4_5_6_reg[7]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({tmp_sum_3_4[7:5],\tmp_sum_3_4_5_6_reg[7]_1 [2]}),
        .O({\tmp_sum_3_4_5_6_reg[7]_i_1__0_n_4 ,\tmp_sum_3_4_5_6_reg[7]_i_1__0_n_5 ,\tmp_sum_3_4_5_6_reg[7]_i_1__0_n_6 ,\tmp_sum_3_4_5_6_reg[7]_i_1__0_n_7 }),
        .S({\tmp_sum_3_4_5_6[7]_i_2_n_0 ,\tmp_sum_3_4_5_6[7]_i_3_n_0 ,\tmp_sum_3_4_5_6[7]_i_4_n_0 ,\tmp_sum_3_4_5_6[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[11]_i_1__0_n_7 ),
        .Q(tmp_sum_3_4_5_6[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_5_6_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_5_6_reg[11]_i_1__0_n_6 ),
        .Q(tmp_sum_3_4_5_6[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_reg[28]_0 [5]),
        .Q(tmp_sum_3_4[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_reg[28]_0 [0]),
        .Q(tmp_sum_3_4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_reg[28]_0 [1]),
        .Q(tmp_sum_3_4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_reg[28]_0 [2]),
        .Q(tmp_sum_3_4[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_reg[28]_0 [3]),
        .Q(tmp_sum_3_4[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_3_4_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_3_4_reg[28]_0 [4]),
        .Q(tmp_sum_3_4[9]),
        .R(1'b0));
  CARRY4 tmp_sum_5_60__1_carry
       (.CI(1'b0),
        .CO({tmp_sum_5_60__1_carry_n_0,NLW_tmp_sum_5_60__1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({S[1],1'b0,DI}),
        .O({p_0_in[7:6],p_0_in[4],\tmp_sum_6_reg[8] }),
        .S({S[2],1'b1,S[1:0]}));
  CARRY4 tmp_sum_5_60__1_carry__0
       (.CI(tmp_sum_5_60__1_carry_n_0),
        .CO(NLW_tmp_sum_5_60__1_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tmp_sum_5_60__1_carry__0_O_UNCONNECTED[3],p_0_in[28],p_0_in[9:8]}),
        .S({1'b0,1'b1,\tmp_sum_5_6_reg[28]_0 ,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[28]),
        .Q(tmp_sum_5_6[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(\tmp_sum_5_6_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(tmp_sum_5_6[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(tmp_sum_5_6[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(tmp_sum_5_6[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(tmp_sum_5_6[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_5_6_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(tmp_sum_5_6[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[11]_i_2 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[11]_i_3 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[11]_i_4 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[11]_i_5 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[8]),
        .O(\tmp_sum_b_0_reg[7] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[15]_i_2 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[15]_i_3 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[15]_i_4 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[15]_i_5 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[19]_i_2 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[19]_i_3 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[19]_i_4 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[19]_i_5 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_2 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[23]_i_2 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_3 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[23]_i_3 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_3 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[23]_i_4 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_3 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[23]_i_5 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_3 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[27]_i_2 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_4 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[27]_i_3 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_4 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[27]_i_4 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_4 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[27]_i_5 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_4 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[31]_i_2 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[31]_i_3 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[31]_i_4 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[31]_i_5 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[28]),
        .O(\tmp_sum_b_0_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_3 
       (.I0(tmp_sum_b_0[0]),
        .I1(\tmp_sum_b_0_1_2_reg[3]_0 ),
        .O(\tmp_sum_b_0_reg[5] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[3]_i_4 
       (.I0(tmp_sum_b_0[1]),
        .I1(tmp_sum_1_2[4]),
        .O(\tmp_sum_b_0_reg[5] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[7]_i_2 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2[6]),
        .O(\tmp_sum_1_2_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_sum_b_0_1_2[7]_i_3 
       (.I0(tmp_sum_b_0[0]),
        .I1(tmp_sum_1_2[4]),
        .O(\tmp_sum_1_2_reg[7]_0 [0]));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [0]),
        .Q(tmp_sum_b_0_1_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [10]),
        .Q(tmp_sum_b_0_1_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [11]),
        .Q(tmp_sum_b_0_1_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [12]),
        .Q(tmp_sum_b_0_1_2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [13]),
        .Q(tmp_sum_b_0_1_2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [14]),
        .Q(tmp_sum_b_0_1_2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [15]),
        .Q(tmp_sum_b_0_1_2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [16]),
        .Q(tmp_sum_b_0_1_2[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [17]),
        .Q(tmp_sum_b_0_1_2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [18]),
        .Q(tmp_sum_b_0_1_2[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [19]),
        .Q(tmp_sum_b_0_1_2[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [1]),
        .Q(tmp_sum_b_0_1_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [20]),
        .Q(tmp_sum_b_0_1_2[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [21]),
        .Q(tmp_sum_b_0_1_2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [22]),
        .Q(tmp_sum_b_0_1_2[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [23]),
        .Q(tmp_sum_b_0_1_2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [24]),
        .Q(tmp_sum_b_0_1_2[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [25]),
        .Q(tmp_sum_b_0_1_2[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [26]),
        .Q(tmp_sum_b_0_1_2[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [27]),
        .Q(tmp_sum_b_0_1_2[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [28]),
        .Q(tmp_sum_b_0_1_2[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [29]),
        .Q(tmp_sum_b_0_1_2[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [2]),
        .Q(tmp_sum_b_0_1_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [30]),
        .Q(tmp_sum_b_0_1_2[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [31]),
        .Q(tmp_sum_b_0_1_2[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [3]),
        .Q(tmp_sum_b_0_1_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [4]),
        .Q(tmp_sum_b_0_1_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [5]),
        .Q(tmp_sum_b_0_1_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [6]),
        .Q(tmp_sum_b_0_1_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [7]),
        .Q(tmp_sum_b_0_1_2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [8]),
        .Q(tmp_sum_b_0_1_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_sum_b_0_1_2_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\tmp_sum_b_0_1_2_reg[31]_0 [9]),
        .Q(tmp_sum_b_0_1_2[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 voltage0_carry
       (.CI(1'b0),
        .CO({voltage0_carry_n_0,NLW_voltage0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage2__93[10:8],1'b0}),
        .O(C[10:7]),
        .S({voltage0_carry_i_1__0_n_0,voltage0_carry_i_2__0_n_0,voltage0_carry_i_3__6_n_0,voltage2__93[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__0
       (.CI(voltage0_carry_n_0),
        .CO({voltage0_carry__0_n_0,NLW_voltage0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[14:11]),
        .O(C[14:11]),
        .S({voltage0_carry__0_i_1__0_n_0,voltage0_carry__0_i_2__0_n_0,voltage0_carry__0_i_3__0_n_0,voltage0_carry__0_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_1__0
       (.I0(voltage2__93[14]),
        .O(voltage0_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_2__0
       (.I0(voltage2__93[13]),
        .O(voltage0_carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_3__0
       (.I0(voltage2__93[12]),
        .O(voltage0_carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__0_i_4__0
       (.I0(voltage2__93[11]),
        .O(voltage0_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__1
       (.CI(voltage0_carry__0_n_0),
        .CO({voltage0_carry__1_n_0,NLW_voltage0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[18:15]),
        .O(C[18:15]),
        .S({voltage0_carry__1_i_1__0_n_0,voltage0_carry__1_i_2__0_n_0,voltage0_carry__1_i_3__0_n_0,voltage0_carry__1_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_1__0
       (.I0(voltage2__93[18]),
        .O(voltage0_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_2__0
       (.I0(voltage2__93[17]),
        .O(voltage0_carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_3__0
       (.I0(voltage2__93[16]),
        .O(voltage0_carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__1_i_4__0
       (.I0(voltage2__93[15]),
        .O(voltage0_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__2
       (.CI(voltage0_carry__1_n_0),
        .CO({voltage0_carry__2_n_0,NLW_voltage0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[22:19]),
        .O(C[22:19]),
        .S({voltage0_carry__2_i_1__0_n_0,voltage0_carry__2_i_2__0_n_0,voltage0_carry__2_i_3__0_n_0,voltage0_carry__2_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_1__0
       (.I0(voltage2__93[22]),
        .O(voltage0_carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_2__0
       (.I0(voltage2__93[21]),
        .O(voltage0_carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_3__0
       (.I0(voltage2__93[20]),
        .O(voltage0_carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__2_i_4__0
       (.I0(voltage2__93[19]),
        .O(voltage0_carry__2_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__3
       (.CI(voltage0_carry__2_n_0),
        .CO({voltage0_carry__3_n_0,NLW_voltage0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[26:23]),
        .O(C[26:23]),
        .S({voltage0_carry__3_i_1__0_n_0,voltage0_carry__3_i_2__0_n_0,voltage0_carry__3_i_3__0_n_0,voltage0_carry__3_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_1__0
       (.I0(voltage2__93[26]),
        .O(voltage0_carry__3_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_2__0
       (.I0(voltage2__93[25]),
        .O(voltage0_carry__3_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_3__0
       (.I0(voltage2__93[24]),
        .O(voltage0_carry__3_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__3_i_4__0
       (.I0(voltage2__93[23]),
        .O(voltage0_carry__3_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__4
       (.CI(voltage0_carry__3_n_0),
        .CO({voltage0_carry__4_n_0,NLW_voltage0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage2__93[30:27]),
        .O(C[30:27]),
        .S({voltage0_carry__4_i_1__0_n_0,voltage0_carry__4_i_2__0_n_0,voltage0_carry__4_i_3__0_n_0,voltage0_carry__4_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_1__0
       (.I0(voltage2__93[30]),
        .O(voltage0_carry__4_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_2__0
       (.I0(voltage2__93[29]),
        .O(voltage0_carry__4_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_3__0
       (.I0(voltage2__93[28]),
        .O(voltage0_carry__4_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__4_i_4__0
       (.I0(voltage2__93[27]),
        .O(voltage0_carry__4_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage0_carry__5
       (.CI(voltage0_carry__4_n_0),
        .CO(NLW_voltage0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_voltage0_carry__5_O_UNCONNECTED[3:1],C[31]}),
        .S({1'b0,1'b0,1'b0,voltage0_carry__5_i_1__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry__5_i_1__0
       (.I0(voltage2__93[31]),
        .O(voltage0_carry__5_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_1__0
       (.I0(voltage2__93[10]),
        .O(voltage0_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_2__0
       (.I0(voltage2__93[9]),
        .O(voltage0_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    voltage0_carry_i_3__6
       (.I0(voltage2__93[8]),
        .O(voltage0_carry_i_3__6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry
       (.CI(1'b0),
        .CO({voltage1_carry_n_0,NLW_voltage1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry_i_1__7_n_0,voltage1_carry_i_2__7_n_0,voltage1_carry_i_3__7_n_0,voltage1_carry_i_4__7_n_0}),
        .O(NLW_voltage1_carry_O_UNCONNECTED[3:0]),
        .S({voltage1_carry_i_5__7_n_0,voltage1_carry_i_6__7_n_0,voltage1_carry_i_7__7_n_0,voltage1_carry_i_8__7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__0
       (.CI(voltage1_carry_n_0),
        .CO({voltage1_carry__0_n_0,NLW_voltage1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__0_i_1__7_n_0,voltage1_carry__0_i_2__7_n_0,voltage1_carry__0_i_3__7_n_0,voltage2__93[9]}),
        .O(NLW_voltage1_carry__0_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__0_i_4__0_n_0,voltage1_carry__0_i_5__0_n_0,voltage1_carry__0_i_6__0_n_0,voltage1_carry__0_i_7__0_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_1__7
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_1__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_2__7
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_2__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__0_i_3__7
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_4__0
       (.I0(voltage2__93[14]),
        .I1(voltage2__93[15]),
        .O(voltage1_carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_5__0
       (.I0(voltage2__93[12]),
        .I1(voltage2__93[13]),
        .O(voltage1_carry__0_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__0_i_6__0
       (.I0(voltage2__93[10]),
        .I1(voltage2__93[11]),
        .O(voltage1_carry__0_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__0_i_7__0
       (.I0(voltage2__93[8]),
        .I1(voltage2__93[9]),
        .O(voltage1_carry__0_i_7__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__1
       (.CI(voltage1_carry__0_n_0),
        .CO({voltage1_carry__1_n_0,NLW_voltage1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__1_i_1__7_n_0,voltage1_carry__1_i_2__7_n_0,voltage1_carry__1_i_3__7_n_0,voltage1_carry__1_i_4__7_n_0}),
        .O(NLW_voltage1_carry__1_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__1_i_5__0_n_0,voltage1_carry__1_i_6__0_n_0,voltage1_carry__1_i_7__0_n_0,voltage1_carry__1_i_8__0_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_1__7
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_1__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_2__7
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_2__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_3__7
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_3__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__1_i_4__7
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_5__0
       (.I0(voltage2__93[22]),
        .I1(voltage2__93[23]),
        .O(voltage1_carry__1_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_6__0
       (.I0(voltage2__93[20]),
        .I1(voltage2__93[21]),
        .O(voltage1_carry__1_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_7__0
       (.I0(voltage2__93[18]),
        .I1(voltage2__93[19]),
        .O(voltage1_carry__1_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__1_i_8__0
       (.I0(voltage2__93[16]),
        .I1(voltage2__93[17]),
        .O(voltage1_carry__1_i_8__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 voltage1_carry__2
       (.CI(voltage1_carry__1_n_0),
        .CO({load,NLW_voltage1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({voltage1_carry__2_i_1__0_n_0,voltage1_carry__2_i_2__7_n_0,voltage1_carry__2_i_3__7_n_0,voltage1_carry__2_i_4__7_n_0}),
        .O(NLW_voltage1_carry__2_O_UNCONNECTED[3:0]),
        .S({voltage1_carry__2_i_5__0_n_0,voltage1_carry__2_i_6__0_n_0,voltage1_carry__2_i_7__0_n_0,voltage1_carry__2_i_8__0_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    voltage1_carry__2_i_1__0
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_2__7
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_2__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_3__7
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_3__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry__2_i_4__7
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_5__0
       (.I0(voltage2__93[30]),
        .I1(voltage2__93[31]),
        .O(voltage1_carry__2_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_6__0
       (.I0(voltage2__93[28]),
        .I1(voltage2__93[29]),
        .O(voltage1_carry__2_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_7__0
       (.I0(voltage2__93[26]),
        .I1(voltage2__93[27]),
        .O(voltage1_carry__2_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry__2_i_8__0
       (.I0(voltage2__93[24]),
        .I1(voltage2__93[25]),
        .O(voltage1_carry__2_i_8__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_1__7
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_1__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_2__7
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_2__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_3__7
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_3__7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    voltage1_carry_i_4__7
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_5__7
       (.I0(voltage2__93[6]),
        .I1(voltage2__93[7]),
        .O(voltage1_carry_i_5__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_6__7
       (.I0(voltage2__93[4]),
        .I1(voltage2__93[5]),
        .O(voltage1_carry_i_6__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_7__7
       (.I0(voltage2__93[2]),
        .I1(voltage2__93[3]),
        .O(voltage1_carry_i_7__7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    voltage1_carry_i_8__7
       (.I0(voltage2__93[0]),
        .I1(voltage2__93[1]),
        .O(voltage1_carry_i_8__7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry
       (.CI(1'b0),
        .CO({voltage2_carry_n_0,NLW_voltage2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[3:0]),
        .O(voltage2__93[3:0]),
        .S({voltage2_carry_i_1__6_n_0,voltage2_carry_i_2__6_n_0,voltage2_carry_i_3__6_n_0,voltage2_carry_i_4__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__0
       (.CI(voltage2_carry_n_0),
        .CO({voltage2_carry__0_n_0,NLW_voltage2_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[7:4]),
        .O(voltage2__93[7:4]),
        .S({voltage2_carry__0_i_1__6_n_0,voltage2_carry__0_i_2__6_n_0,voltage2_carry__0_i_3__6_n_0,voltage2_carry__0_i_4__5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_1__6
       (.I0(voltage_reg[7]),
        .I1(sum[7]),
        .O(voltage2_carry__0_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_2__6
       (.I0(voltage_reg[6]),
        .I1(sum[6]),
        .O(voltage2_carry__0_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_3__6
       (.I0(voltage_reg[5]),
        .I1(sum[5]),
        .O(voltage2_carry__0_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__0_i_4__5
       (.I0(voltage_reg[4]),
        .I1(sum[4]),
        .O(voltage2_carry__0_i_4__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__1
       (.CI(voltage2_carry__0_n_0),
        .CO({voltage2_carry__1_n_0,NLW_voltage2_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[11:8]),
        .O(voltage2__93[11:8]),
        .S({voltage2_carry__1_i_1__6_n_0,voltage2_carry__1_i_2__6_n_0,voltage2_carry__1_i_3__6_n_0,voltage2_carry__1_i_4__6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_1__6
       (.I0(voltage_reg[11]),
        .I1(sum[11]),
        .O(voltage2_carry__1_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_2__6
       (.I0(voltage_reg[10]),
        .I1(sum[10]),
        .O(voltage2_carry__1_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_3__6
       (.I0(voltage_reg[9]),
        .I1(sum[9]),
        .O(voltage2_carry__1_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__1_i_4__6
       (.I0(voltage_reg[8]),
        .I1(sum[8]),
        .O(voltage2_carry__1_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__2
       (.CI(voltage2_carry__1_n_0),
        .CO({voltage2_carry__2_n_0,NLW_voltage2_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[15:12]),
        .O(voltage2__93[15:12]),
        .S({voltage2_carry__2_i_1__6_n_0,voltage2_carry__2_i_2__6_n_0,voltage2_carry__2_i_3__6_n_0,voltage2_carry__2_i_4__6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_1__6
       (.I0(voltage_reg[15]),
        .I1(sum[15]),
        .O(voltage2_carry__2_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_2__6
       (.I0(voltage_reg[14]),
        .I1(sum[14]),
        .O(voltage2_carry__2_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_3__6
       (.I0(voltage_reg[13]),
        .I1(sum[13]),
        .O(voltage2_carry__2_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__2_i_4__6
       (.I0(voltage_reg[12]),
        .I1(sum[12]),
        .O(voltage2_carry__2_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__3
       (.CI(voltage2_carry__2_n_0),
        .CO({voltage2_carry__3_n_0,NLW_voltage2_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[19:16]),
        .O(voltage2__93[19:16]),
        .S({voltage2_carry__3_i_1__6_n_0,voltage2_carry__3_i_2__6_n_0,voltage2_carry__3_i_3__6_n_0,voltage2_carry__3_i_4__6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_1__6
       (.I0(voltage_reg[19]),
        .I1(sum[19]),
        .O(voltage2_carry__3_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_2__6
       (.I0(voltage_reg[18]),
        .I1(sum[18]),
        .O(voltage2_carry__3_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_3__6
       (.I0(voltage_reg[17]),
        .I1(sum[17]),
        .O(voltage2_carry__3_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__3_i_4__6
       (.I0(voltage_reg[16]),
        .I1(sum[16]),
        .O(voltage2_carry__3_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__4
       (.CI(voltage2_carry__3_n_0),
        .CO({voltage2_carry__4_n_0,NLW_voltage2_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[23:20]),
        .O(voltage2__93[23:20]),
        .S({voltage2_carry__4_i_1__6_n_0,voltage2_carry__4_i_2__6_n_0,voltage2_carry__4_i_3__6_n_0,voltage2_carry__4_i_4__6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_1__6
       (.I0(voltage_reg[23]),
        .I1(sum[23]),
        .O(voltage2_carry__4_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_2__6
       (.I0(voltage_reg[22]),
        .I1(sum[22]),
        .O(voltage2_carry__4_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_3__6
       (.I0(voltage_reg[21]),
        .I1(sum[21]),
        .O(voltage2_carry__4_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__4_i_4__6
       (.I0(voltage_reg[20]),
        .I1(sum[20]),
        .O(voltage2_carry__4_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__5
       (.CI(voltage2_carry__4_n_0),
        .CO({voltage2_carry__5_n_0,NLW_voltage2_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(voltage_reg[27:24]),
        .O(voltage2__93[27:24]),
        .S({voltage2_carry__5_i_1__6_n_0,voltage2_carry__5_i_2__6_n_0,voltage2_carry__5_i_3__6_n_0,voltage2_carry__5_i_4__6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_1__6
       (.I0(voltage_reg[27]),
        .I1(sum[27]),
        .O(voltage2_carry__5_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_2__6
       (.I0(voltage_reg[26]),
        .I1(sum[26]),
        .O(voltage2_carry__5_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_3__6
       (.I0(voltage_reg[25]),
        .I1(sum[25]),
        .O(voltage2_carry__5_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__5_i_4__6
       (.I0(voltage_reg[24]),
        .I1(sum[24]),
        .O(voltage2_carry__5_i_4__6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 voltage2_carry__6
       (.CI(voltage2_carry__5_n_0),
        .CO(NLW_voltage2_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,voltage_reg[30:28]}),
        .O(voltage2__93[31:28]),
        .S({voltage2_carry__6_i_1__6_n_0,voltage2_carry__6_i_2__6_n_0,voltage2_carry__6_i_3__6_n_0,voltage2_carry__6_i_4__6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_1__6
       (.I0(voltage_reg[31]),
        .I1(sum[31]),
        .O(voltage2_carry__6_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_2__6
       (.I0(voltage_reg[30]),
        .I1(sum[30]),
        .O(voltage2_carry__6_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_3__6
       (.I0(voltage_reg[29]),
        .I1(sum[29]),
        .O(voltage2_carry__6_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry__6_i_4__6
       (.I0(voltage_reg[28]),
        .I1(sum[28]),
        .O(voltage2_carry__6_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_1__6
       (.I0(voltage_reg[3]),
        .I1(sum[3]),
        .O(voltage2_carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_2__6
       (.I0(voltage_reg[2]),
        .I1(sum[2]),
        .O(voltage2_carry_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_3__6
       (.I0(voltage_reg[1]),
        .I1(sum[1]),
        .O(voltage2_carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    voltage2_carry_i_4__5
       (.I0(voltage_reg[0]),
        .I1(sum[0]),
        .O(voltage2_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_2__6 
       (.I0(sum[3]),
        .I1(load),
        .O(\voltage[0]_i_2__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_3__7 
       (.I0(sum[2]),
        .I1(load),
        .O(\voltage[0]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_4__6 
       (.I0(sum[1]),
        .I1(load),
        .O(\voltage[0]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[0]_i_5__6 
       (.I0(sum[0]),
        .I1(load),
        .O(\voltage[0]_i_5__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_6__7 
       (.I0(sum[3]),
        .I1(voltage_reg[3]),
        .I2(load),
        .I3(voltage2__93[3]),
        .O(\voltage[0]_i_6__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_7__7 
       (.I0(sum[2]),
        .I1(voltage_reg[2]),
        .I2(load),
        .I3(voltage2__93[2]),
        .O(\voltage[0]_i_7__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_8__7 
       (.I0(sum[1]),
        .I1(voltage_reg[1]),
        .I2(load),
        .I3(voltage2__93[1]),
        .O(\voltage[0]_i_8__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[0]_i_9__6 
       (.I0(sum[0]),
        .I1(voltage_reg[0]),
        .I2(load),
        .I3(voltage2__93[0]),
        .O(\voltage[0]_i_9__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_2__7 
       (.I0(sum[15]),
        .I1(load),
        .O(\voltage[12]_i_2__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_3__7 
       (.I0(sum[14]),
        .I1(load),
        .O(\voltage[12]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_4__7 
       (.I0(sum[13]),
        .I1(load),
        .O(\voltage[12]_i_4__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[12]_i_5__7 
       (.I0(sum[12]),
        .I1(load),
        .O(\voltage[12]_i_5__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_6__6 
       (.I0(sum[15]),
        .I1(voltage_reg[15]),
        .I2(load),
        .I3(C[15]),
        .O(\voltage[12]_i_6__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_7__6 
       (.I0(sum[14]),
        .I1(voltage_reg[14]),
        .I2(load),
        .I3(C[14]),
        .O(\voltage[12]_i_7__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_8__6 
       (.I0(sum[13]),
        .I1(voltage_reg[13]),
        .I2(load),
        .I3(C[13]),
        .O(\voltage[12]_i_8__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[12]_i_9__6 
       (.I0(sum[12]),
        .I1(voltage_reg[12]),
        .I2(load),
        .I3(C[12]),
        .O(\voltage[12]_i_9__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_2__7 
       (.I0(sum[19]),
        .I1(load),
        .O(\voltage[16]_i_2__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_3__7 
       (.I0(sum[18]),
        .I1(load),
        .O(\voltage[16]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_4__7 
       (.I0(sum[17]),
        .I1(load),
        .O(\voltage[16]_i_4__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[16]_i_5__7 
       (.I0(sum[16]),
        .I1(load),
        .O(\voltage[16]_i_5__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_6__6 
       (.I0(sum[19]),
        .I1(voltage_reg[19]),
        .I2(load),
        .I3(C[19]),
        .O(\voltage[16]_i_6__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_7__6 
       (.I0(sum[18]),
        .I1(voltage_reg[18]),
        .I2(load),
        .I3(C[18]),
        .O(\voltage[16]_i_7__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_8__6 
       (.I0(sum[17]),
        .I1(voltage_reg[17]),
        .I2(load),
        .I3(C[17]),
        .O(\voltage[16]_i_8__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[16]_i_9__6 
       (.I0(sum[16]),
        .I1(voltage_reg[16]),
        .I2(load),
        .I3(C[16]),
        .O(\voltage[16]_i_9__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_2__7 
       (.I0(sum[23]),
        .I1(load),
        .O(\voltage[20]_i_2__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_3__7 
       (.I0(sum[22]),
        .I1(load),
        .O(\voltage[20]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_4__7 
       (.I0(sum[21]),
        .I1(load),
        .O(\voltage[20]_i_4__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[20]_i_5__7 
       (.I0(sum[20]),
        .I1(load),
        .O(\voltage[20]_i_5__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_6__6 
       (.I0(sum[23]),
        .I1(voltage_reg[23]),
        .I2(load),
        .I3(C[23]),
        .O(\voltage[20]_i_6__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_7__6 
       (.I0(sum[22]),
        .I1(voltage_reg[22]),
        .I2(load),
        .I3(C[22]),
        .O(\voltage[20]_i_7__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_8__6 
       (.I0(sum[21]),
        .I1(voltage_reg[21]),
        .I2(load),
        .I3(C[21]),
        .O(\voltage[20]_i_8__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[20]_i_9__6 
       (.I0(sum[20]),
        .I1(voltage_reg[20]),
        .I2(load),
        .I3(C[20]),
        .O(\voltage[20]_i_9__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_2__7 
       (.I0(sum[27]),
        .I1(load),
        .O(\voltage[24]_i_2__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_3__7 
       (.I0(sum[26]),
        .I1(load),
        .O(\voltage[24]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_4__7 
       (.I0(sum[25]),
        .I1(load),
        .O(\voltage[24]_i_4__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[24]_i_5__7 
       (.I0(sum[24]),
        .I1(load),
        .O(\voltage[24]_i_5__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_6__6 
       (.I0(sum[27]),
        .I1(voltage_reg[27]),
        .I2(load),
        .I3(C[27]),
        .O(\voltage[24]_i_6__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_7__6 
       (.I0(sum[26]),
        .I1(voltage_reg[26]),
        .I2(load),
        .I3(C[26]),
        .O(\voltage[24]_i_7__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_8__6 
       (.I0(sum[25]),
        .I1(voltage_reg[25]),
        .I2(load),
        .I3(C[25]),
        .O(\voltage[24]_i_8__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[24]_i_9__6 
       (.I0(sum[24]),
        .I1(voltage_reg[24]),
        .I2(load),
        .I3(C[24]),
        .O(\voltage[24]_i_9__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_2__7 
       (.I0(sum[30]),
        .I1(load),
        .O(\voltage[28]_i_2__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_3__7 
       (.I0(sum[29]),
        .I1(load),
        .O(\voltage[28]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[28]_i_4__7 
       (.I0(sum[28]),
        .I1(load),
        .O(\voltage[28]_i_4__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_5__7 
       (.I0(sum[31]),
        .I1(voltage_reg[31]),
        .I2(load),
        .I3(C[31]),
        .O(\voltage[28]_i_5__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_6__6 
       (.I0(sum[30]),
        .I1(voltage_reg[30]),
        .I2(load),
        .I3(C[30]),
        .O(\voltage[28]_i_6__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_7__6 
       (.I0(sum[29]),
        .I1(voltage_reg[29]),
        .I2(load),
        .I3(C[29]),
        .O(\voltage[28]_i_7__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[28]_i_8__6 
       (.I0(sum[28]),
        .I1(voltage_reg[28]),
        .I2(load),
        .I3(C[28]),
        .O(\voltage[28]_i_8__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_2__7 
       (.I0(sum[7]),
        .I1(load),
        .O(\voltage[4]_i_2__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_3__7 
       (.I0(sum[6]),
        .I1(load),
        .O(\voltage[4]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_4__7 
       (.I0(sum[5]),
        .I1(load),
        .O(\voltage[4]_i_4__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[4]_i_5__7 
       (.I0(sum[4]),
        .I1(load),
        .O(\voltage[4]_i_5__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_6__7 
       (.I0(sum[7]),
        .I1(voltage_reg[7]),
        .I2(load),
        .I3(C[7]),
        .O(\voltage[4]_i_6__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_7__7 
       (.I0(sum[6]),
        .I1(voltage_reg[6]),
        .I2(load),
        .I3(voltage2__93[6]),
        .O(\voltage[4]_i_7__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_8__7 
       (.I0(sum[5]),
        .I1(voltage_reg[5]),
        .I2(load),
        .I3(voltage2__93[5]),
        .O(\voltage[4]_i_8__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[4]_i_9__6 
       (.I0(sum[4]),
        .I1(voltage_reg[4]),
        .I2(load),
        .I3(voltage2__93[4]),
        .O(\voltage[4]_i_9__6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_2__7 
       (.I0(sum[11]),
        .I1(load),
        .O(\voltage[8]_i_2__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_3__7 
       (.I0(sum[10]),
        .I1(load),
        .O(\voltage[8]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_4__7 
       (.I0(sum[9]),
        .I1(load),
        .O(\voltage[8]_i_4__7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \voltage[8]_i_5__7 
       (.I0(sum[8]),
        .I1(load),
        .O(\voltage[8]_i_5__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_6__7 
       (.I0(sum[11]),
        .I1(voltage_reg[11]),
        .I2(load),
        .I3(C[11]),
        .O(\voltage[8]_i_6__7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_7__6 
       (.I0(sum[10]),
        .I1(voltage_reg[10]),
        .I2(load),
        .I3(C[10]),
        .O(\voltage[8]_i_7__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_8__6 
       (.I0(sum[9]),
        .I1(voltage_reg[9]),
        .I2(load),
        .I3(C[9]),
        .O(\voltage[8]_i_8__6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \voltage[8]_i_9__6 
       (.I0(sum[8]),
        .I1(voltage_reg[8]),
        .I2(load),
        .I3(C[8]),
        .O(\voltage[8]_i_9__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__7_n_7 ),
        .Q(voltage_reg[0]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[0]_i_1__7 
       (.CI(1'b0),
        .CO({\voltage_reg[0]_i_1__7_n_0 ,\NLW_voltage_reg[0]_i_1__7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[0]_i_2__6_n_0 ,\voltage[0]_i_3__7_n_0 ,\voltage[0]_i_4__6_n_0 ,\voltage[0]_i_5__6_n_0 }),
        .O({\voltage_reg[0]_i_1__7_n_4 ,\voltage_reg[0]_i_1__7_n_5 ,\voltage_reg[0]_i_1__7_n_6 ,\voltage_reg[0]_i_1__7_n_7 }),
        .S({\voltage[0]_i_6__7_n_0 ,\voltage[0]_i_7__7_n_0 ,\voltage[0]_i_8__7_n_0 ,\voltage[0]_i_9__6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[10] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__7_n_5 ),
        .Q(voltage_reg[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[11] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__7_n_4 ),
        .Q(voltage_reg[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[12] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__7_n_7 ),
        .Q(voltage_reg[12]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[12]_i_1__7 
       (.CI(\voltage_reg[8]_i_1__7_n_0 ),
        .CO({\voltage_reg[12]_i_1__7_n_0 ,\NLW_voltage_reg[12]_i_1__7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[12]_i_2__7_n_0 ,\voltage[12]_i_3__7_n_0 ,\voltage[12]_i_4__7_n_0 ,\voltage[12]_i_5__7_n_0 }),
        .O({\voltage_reg[12]_i_1__7_n_4 ,\voltage_reg[12]_i_1__7_n_5 ,\voltage_reg[12]_i_1__7_n_6 ,\voltage_reg[12]_i_1__7_n_7 }),
        .S({\voltage[12]_i_6__6_n_0 ,\voltage[12]_i_7__6_n_0 ,\voltage[12]_i_8__6_n_0 ,\voltage[12]_i_9__6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[13] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__7_n_6 ),
        .Q(voltage_reg[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[14] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__7_n_5 ),
        .Q(voltage_reg[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[15] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[12]_i_1__7_n_4 ),
        .Q(voltage_reg[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[16] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__7_n_7 ),
        .Q(voltage_reg[16]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[16]_i_1__7 
       (.CI(\voltage_reg[12]_i_1__7_n_0 ),
        .CO({\voltage_reg[16]_i_1__7_n_0 ,\NLW_voltage_reg[16]_i_1__7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[16]_i_2__7_n_0 ,\voltage[16]_i_3__7_n_0 ,\voltage[16]_i_4__7_n_0 ,\voltage[16]_i_5__7_n_0 }),
        .O({\voltage_reg[16]_i_1__7_n_4 ,\voltage_reg[16]_i_1__7_n_5 ,\voltage_reg[16]_i_1__7_n_6 ,\voltage_reg[16]_i_1__7_n_7 }),
        .S({\voltage[16]_i_6__6_n_0 ,\voltage[16]_i_7__6_n_0 ,\voltage[16]_i_8__6_n_0 ,\voltage[16]_i_9__6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[17] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__7_n_6 ),
        .Q(voltage_reg[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[18] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__7_n_5 ),
        .Q(voltage_reg[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[19] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[16]_i_1__7_n_4 ),
        .Q(voltage_reg[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__7_n_6 ),
        .Q(voltage_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[20] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__7_n_7 ),
        .Q(voltage_reg[20]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[20]_i_1__7 
       (.CI(\voltage_reg[16]_i_1__7_n_0 ),
        .CO({\voltage_reg[20]_i_1__7_n_0 ,\NLW_voltage_reg[20]_i_1__7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[20]_i_2__7_n_0 ,\voltage[20]_i_3__7_n_0 ,\voltage[20]_i_4__7_n_0 ,\voltage[20]_i_5__7_n_0 }),
        .O({\voltage_reg[20]_i_1__7_n_4 ,\voltage_reg[20]_i_1__7_n_5 ,\voltage_reg[20]_i_1__7_n_6 ,\voltage_reg[20]_i_1__7_n_7 }),
        .S({\voltage[20]_i_6__6_n_0 ,\voltage[20]_i_7__6_n_0 ,\voltage[20]_i_8__6_n_0 ,\voltage[20]_i_9__6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[21] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__7_n_6 ),
        .Q(voltage_reg[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[22] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__7_n_5 ),
        .Q(voltage_reg[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[23] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[20]_i_1__7_n_4 ),
        .Q(voltage_reg[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[24] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__7_n_7 ),
        .Q(voltage_reg[24]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[24]_i_1__7 
       (.CI(\voltage_reg[20]_i_1__7_n_0 ),
        .CO({\voltage_reg[24]_i_1__7_n_0 ,\NLW_voltage_reg[24]_i_1__7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[24]_i_2__7_n_0 ,\voltage[24]_i_3__7_n_0 ,\voltage[24]_i_4__7_n_0 ,\voltage[24]_i_5__7_n_0 }),
        .O({\voltage_reg[24]_i_1__7_n_4 ,\voltage_reg[24]_i_1__7_n_5 ,\voltage_reg[24]_i_1__7_n_6 ,\voltage_reg[24]_i_1__7_n_7 }),
        .S({\voltage[24]_i_6__6_n_0 ,\voltage[24]_i_7__6_n_0 ,\voltage[24]_i_8__6_n_0 ,\voltage[24]_i_9__6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[25] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__7_n_6 ),
        .Q(voltage_reg[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[26] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__7_n_5 ),
        .Q(voltage_reg[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[27] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[24]_i_1__7_n_4 ),
        .Q(voltage_reg[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[28] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__7_n_7 ),
        .Q(voltage_reg[28]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[28]_i_1__7 
       (.CI(\voltage_reg[24]_i_1__7_n_0 ),
        .CO(\NLW_voltage_reg[28]_i_1__7_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\voltage[28]_i_2__7_n_0 ,\voltage[28]_i_3__7_n_0 ,\voltage[28]_i_4__7_n_0 }),
        .O({\voltage_reg[28]_i_1__7_n_4 ,\voltage_reg[28]_i_1__7_n_5 ,\voltage_reg[28]_i_1__7_n_6 ,\voltage_reg[28]_i_1__7_n_7 }),
        .S({\voltage[28]_i_5__7_n_0 ,\voltage[28]_i_6__6_n_0 ,\voltage[28]_i_7__6_n_0 ,\voltage[28]_i_8__6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[29] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__7_n_6 ),
        .Q(voltage_reg[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__7_n_5 ),
        .Q(voltage_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[30] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__7_n_5 ),
        .Q(voltage_reg[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[31] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[28]_i_1__7_n_4 ),
        .Q(voltage_reg[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[0]_i_1__7_n_4 ),
        .Q(voltage_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__7_n_7 ),
        .Q(voltage_reg[4]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[4]_i_1__7 
       (.CI(\voltage_reg[0]_i_1__7_n_0 ),
        .CO({\voltage_reg[4]_i_1__7_n_0 ,\NLW_voltage_reg[4]_i_1__7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[4]_i_2__7_n_0 ,\voltage[4]_i_3__7_n_0 ,\voltage[4]_i_4__7_n_0 ,\voltage[4]_i_5__7_n_0 }),
        .O({\voltage_reg[4]_i_1__7_n_4 ,\voltage_reg[4]_i_1__7_n_5 ,\voltage_reg[4]_i_1__7_n_6 ,\voltage_reg[4]_i_1__7_n_7 }),
        .S({\voltage[4]_i_6__7_n_0 ,\voltage[4]_i_7__7_n_0 ,\voltage[4]_i_8__7_n_0 ,\voltage[4]_i_9__6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__7_n_6 ),
        .Q(voltage_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__7_n_5 ),
        .Q(voltage_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[4]_i_1__7_n_4 ),
        .Q(voltage_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[8] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__7_n_7 ),
        .Q(voltage_reg[8]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \voltage_reg[8]_i_1__7 
       (.CI(\voltage_reg[4]_i_1__7_n_0 ),
        .CO({\voltage_reg[8]_i_1__7_n_0 ,\NLW_voltage_reg[8]_i_1__7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\voltage[8]_i_2__7_n_0 ,\voltage[8]_i_3__7_n_0 ,\voltage[8]_i_4__7_n_0 ,\voltage[8]_i_5__7_n_0 }),
        .O({\voltage_reg[8]_i_1__7_n_4 ,\voltage_reg[8]_i_1__7_n_5 ,\voltage_reg[8]_i_1__7_n_6 ,\voltage_reg[8]_i_1__7_n_7 }),
        .S({\voltage[8]_i_6__7_n_0 ,\voltage[8]_i_7__6_n_0 ,\voltage[8]_i_8__6_n_0 ,\voltage[8]_i_9__6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \voltage_reg[9] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(\voltage_reg[8]_i_1__7_n_6 ),
        .Q(voltage_reg[9]),
        .R(SR));
endmodule

(* ECO_CHECKSUM = "73129476" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module snn_rgb
   (clk,
    reset_n,
    enable_in,
    vs_in,
    hs_in,
    de_in,
    r_in,
    g_in,
    b_in,
    vs_out,
    hs_out,
    de_out,
    r_out,
    g_out,
    b_out,
    clk_o,
    led);
  input clk;
  input reset_n;
  input [2:0]enable_in;
  input vs_in;
  input hs_in;
  input de_in;
  input [7:0]r_in;
  input [7:0]g_in;
  input [7:0]b_in;
  output vs_out;
  output hs_out;
  output de_out;
  output [7:0]r_out;
  output [7:0]g_out;
  output [7:0]b_out;
  output clk_o;
  output [2:0]led;

  wire [7:0]b_0;
  wire [7:0]b_in;
  wire [7:0]b_in_IBUF;
  wire [7:0]b_out;
  wire b_out_1;
  wire [0:0]b_out_OBUF;
  wire \b_out_reg[0]_lopt_replica_1 ;
  wire \b_out_reg[0]_lopt_replica_2_1 ;
  wire \b_out_reg[0]_lopt_replica_3_1 ;
  wire \b_out_reg[0]_lopt_replica_4_1 ;
  wire \b_out_reg[0]_lopt_replica_5_1 ;
  wire \b_out_reg[0]_lopt_replica_6_1 ;
  wire \b_out_reg[0]_lopt_replica_7_1 ;
  wire b_sp;
  wire clk;
  wire clk_o;
  wire clk_o_OBUF;
  wire clk_o_OBUF_BUFG;
  wire control_n_0;
  wire control_n_1;
  wire control_n_5;
  wire control_n_6;
  wire control_n_7;
  wire de_0;
  wire de_1;
  wire de_in;
  wire de_in_IBUF;
  wire de_out;
  wire de_out_OBUF;
  wire de_q;
  wire frame_reset;
  wire frame_reset0;
  wire [7:0]g_0;
  wire [7:0]g_in;
  wire [7:0]g_in_IBUF;
  wire [7:0]g_out;
  wire g_out_1;
  wire [0:0]g_out_OBUF;
  wire g_sp;
  wire h_1;
  wire h_2;
  wire h_3;
  wire h_4;
  wire h_5;
  wire h_6;
  wire hidden1_n_3;
  wire hidden1_n_4;
  wire hidden1_n_5;
  wire hidden1_n_6;
  wire hidden1_n_7;
  wire hidden1_n_8;
  wire hidden2_n_2;
  wire hidden2_n_3;
  wire hidden2_n_4;
  wire hidden2_n_5;
  wire hidden3_n_3;
  wire hidden3_n_4;
  wire hidden3_n_5;
  wire hidden4_n_1;
  wire hidden4_n_10;
  wire hidden4_n_11;
  wire hidden4_n_12;
  wire hidden4_n_13;
  wire hidden4_n_14;
  wire hidden4_n_15;
  wire hidden4_n_16;
  wire hidden4_n_17;
  wire hidden4_n_18;
  wire hidden4_n_19;
  wire hidden4_n_2;
  wire hidden4_n_20;
  wire hidden4_n_21;
  wire hidden4_n_22;
  wire hidden4_n_23;
  wire hidden4_n_24;
  wire hidden4_n_25;
  wire hidden4_n_26;
  wire hidden4_n_27;
  wire hidden4_n_28;
  wire hidden4_n_29;
  wire hidden4_n_3;
  wire hidden4_n_30;
  wire hidden4_n_31;
  wire hidden4_n_32;
  wire hidden4_n_33;
  wire hidden4_n_4;
  wire hidden4_n_6;
  wire hidden4_n_7;
  wire hidden4_n_8;
  wire hidden4_n_9;
  wire hidden5_n_10;
  wire hidden5_n_11;
  wire hidden5_n_12;
  wire hidden5_n_13;
  wire hidden5_n_14;
  wire hidden5_n_15;
  wire hidden5_n_2;
  wire hidden5_n_3;
  wire hidden5_n_4;
  wire hidden5_n_5;
  wire hidden5_n_6;
  wire hidden5_n_7;
  wire hidden5_n_8;
  wire hidden5_n_9;
  wire hidden6_n_1;
  wire hidden6_n_10;
  wire hidden6_n_11;
  wire hidden6_n_12;
  wire hidden6_n_13;
  wire hidden6_n_14;
  wire hidden6_n_15;
  wire hidden6_n_16;
  wire hidden6_n_17;
  wire hidden6_n_18;
  wire hidden6_n_19;
  wire hidden6_n_20;
  wire hidden6_n_21;
  wire hidden6_n_22;
  wire hidden6_n_23;
  wire hidden6_n_24;
  wire hidden6_n_25;
  wire hidden6_n_26;
  wire hidden6_n_27;
  wire hidden6_n_28;
  wire hidden6_n_29;
  wire hidden6_n_30;
  wire hidden6_n_31;
  wire hidden6_n_32;
  wire hidden6_n_33;
  wire hidden6_n_34;
  wire hidden6_n_35;
  wire hidden6_n_36;
  wire hidden6_n_37;
  wire hidden6_n_38;
  wire hidden6_n_39;
  wire hidden6_n_40;
  wire hidden6_n_41;
  wire hidden6_n_42;
  wire hidden6_n_43;
  wire hidden6_n_44;
  wire hidden6_n_45;
  wire hidden6_n_46;
  wire hidden6_n_47;
  wire hidden6_n_48;
  wire hidden6_n_49;
  wire hidden6_n_50;
  wire hidden6_n_51;
  wire hidden6_n_52;
  wire hidden6_n_53;
  wire hidden6_n_54;
  wire hidden6_n_55;
  wire hidden6_n_56;
  wire hidden6_n_57;
  wire hidden6_n_58;
  wire hidden6_n_59;
  wire hidden6_n_60;
  wire hidden6_n_61;
  wire hidden6_n_62;
  wire hidden6_n_63;
  wire hidden6_n_64;
  wire hidden6_n_65;
  wire hidden6_n_66;
  wire hidden6_n_67;
  wire hidden6_n_68;
  wire hidden6_n_69;
  wire hidden6_n_7;
  wire hidden6_n_70;
  wire hidden6_n_71;
  wire hidden6_n_72;
  wire hidden6_n_73;
  wire hidden6_n_74;
  wire hidden6_n_75;
  wire hidden6_n_76;
  wire hidden6_n_77;
  wire hidden6_n_78;
  wire hidden6_n_79;
  wire hidden6_n_8;
  wire hidden6_n_80;
  wire hidden6_n_81;
  wire hidden6_n_82;
  wire hidden6_n_83;
  wire hidden6_n_84;
  wire hidden6_n_85;
  wire hidden6_n_86;
  wire hidden6_n_87;
  wire hidden6_n_88;
  wire hidden6_n_89;
  wire hidden6_n_9;
  wire hs_0_reg_n_0;
  wire hs_in;
  wire hs_in_IBUF;
  wire hs_out;
  wire hs_out_OBUF;
  wire [2:0]led;
  wire load;
  wire load_2;
  wire [5:5]ly2_delay;
  wire \num_out0_sp[7]_i_2_n_0 ;
  wire [7:0]num_out0_sp_reg;
  wire \num_out1_sp[7]_i_2_n_0 ;
  wire [7:0]num_out1_sp_reg;
  wire out_0;
  wire out_1;
  wire output0_n_100;
  wire output0_n_101;
  wire output0_n_102;
  wire output0_n_103;
  wire output0_n_104;
  wire output0_n_105;
  wire output0_n_106;
  wire output0_n_107;
  wire output0_n_108;
  wire output0_n_109;
  wire output0_n_110;
  wire output0_n_111;
  wire output0_n_112;
  wire output0_n_13;
  wire output0_n_14;
  wire output0_n_15;
  wire output0_n_16;
  wire output0_n_17;
  wire output0_n_18;
  wire output0_n_19;
  wire output0_n_20;
  wire output0_n_21;
  wire output0_n_22;
  wire output0_n_23;
  wire output0_n_24;
  wire output0_n_25;
  wire output0_n_26;
  wire output0_n_27;
  wire output0_n_28;
  wire output0_n_29;
  wire output0_n_30;
  wire output0_n_31;
  wire output0_n_32;
  wire output0_n_33;
  wire output0_n_34;
  wire output0_n_35;
  wire output0_n_36;
  wire output0_n_37;
  wire output0_n_38;
  wire output0_n_39;
  wire output0_n_40;
  wire output0_n_41;
  wire output0_n_42;
  wire output0_n_43;
  wire output0_n_44;
  wire output0_n_45;
  wire output0_n_46;
  wire output0_n_47;
  wire output0_n_48;
  wire output0_n_49;
  wire output0_n_50;
  wire output0_n_51;
  wire output0_n_52;
  wire output0_n_53;
  wire output0_n_54;
  wire output0_n_55;
  wire output0_n_56;
  wire output0_n_57;
  wire output0_n_58;
  wire output0_n_59;
  wire output0_n_60;
  wire output0_n_61;
  wire output0_n_62;
  wire output0_n_63;
  wire output0_n_64;
  wire output0_n_65;
  wire output0_n_66;
  wire output0_n_67;
  wire output0_n_68;
  wire output0_n_69;
  wire output0_n_70;
  wire output0_n_71;
  wire output0_n_72;
  wire output0_n_73;
  wire output0_n_74;
  wire output0_n_75;
  wire output0_n_76;
  wire output0_n_77;
  wire output0_n_78;
  wire output0_n_79;
  wire output0_n_80;
  wire output0_n_81;
  wire output0_n_82;
  wire output0_n_83;
  wire output0_n_84;
  wire output0_n_85;
  wire output0_n_86;
  wire output0_n_87;
  wire output0_n_88;
  wire output0_n_89;
  wire output0_n_91;
  wire output0_n_92;
  wire output0_n_93;
  wire output0_n_94;
  wire output0_n_95;
  wire output0_n_96;
  wire output0_n_97;
  wire output0_n_98;
  wire output0_n_99;
  wire output1_n_11;
  wire output1_n_12;
  wire output1_n_13;
  wire output1_n_14;
  wire output1_n_15;
  wire output1_n_16;
  wire output1_n_17;
  wire output1_n_18;
  wire output1_n_19;
  wire output1_n_20;
  wire output1_n_21;
  wire output1_n_22;
  wire output1_n_23;
  wire output1_n_24;
  wire output1_n_25;
  wire output1_n_26;
  wire output1_n_27;
  wire output1_n_28;
  wire output1_n_29;
  wire output1_n_3;
  wire output1_n_30;
  wire output1_n_31;
  wire output1_n_32;
  wire output1_n_33;
  wire output1_n_34;
  wire output1_n_35;
  wire output1_n_36;
  wire output1_n_37;
  wire output1_n_4;
  wire output1_n_6;
  wire output1_n_8;
  wire output1_n_9;
  wire [7:0]p_0_in;
  wire [2:2]p_0_in_11;
  wire [3:3]p_0_in_6;
  wire [7:0]p_0_in__0;
  wire [6:0]p_0_in__1;
  wire [7:0]r_0;
  wire [7:0]r_in;
  wire [7:0]r_in_IBUF;
  wire [7:0]r_out;
  wire \r_out_reg[0]_lopt_replica_1 ;
  wire \r_out_reg[0]_lopt_replica_10_1 ;
  wire \r_out_reg[0]_lopt_replica_11_1 ;
  wire \r_out_reg[0]_lopt_replica_12_1 ;
  wire \r_out_reg[0]_lopt_replica_13_1 ;
  wire \r_out_reg[0]_lopt_replica_14_1 ;
  wire \r_out_reg[0]_lopt_replica_15_1 ;
  wire \r_out_reg[0]_lopt_replica_2_1 ;
  wire \r_out_reg[0]_lopt_replica_3_1 ;
  wire \r_out_reg[0]_lopt_replica_4_1 ;
  wire \r_out_reg[0]_lopt_replica_5_1 ;
  wire \r_out_reg[0]_lopt_replica_6_1 ;
  wire \r_out_reg[0]_lopt_replica_7_1 ;
  wire \r_out_reg[0]_lopt_replica_8_1 ;
  wire \r_out_reg[0]_lopt_replica_9_1 ;
  wire r_sp;
  wire res_ly_2;
  wire [6:6]step_reg;
  wire \step_reg_n_0_[0] ;
  wire \step_reg_n_0_[1] ;
  wire \step_reg_n_0_[2] ;
  wire \step_reg_n_0_[3] ;
  wire \step_reg_n_0_[4] ;
  wire \step_reg_n_0_[5] ;
  wire [6:6]sum;
  wire [5:5]tmp_sum_1;
  wire [4:3]tmp_sum_1_2;
  wire [8:0]tmp_sum_1_2_0;
  wire [6:4]tmp_sum_1_2_1;
  wire [6:4]tmp_sum_1_2_3;
  wire [4:4]tmp_sum_1_2_4;
  wire [7:7]tmp_sum_1_2_5;
  wire [1:1]tmp_sum_1_2_7;
  wire [7:1]tmp_sum_1_2_9;
  wire [7:7]tmp_sum_2;
  wire [9:9]tmp_sum_3;
  wire [28:1]tmp_sum_3_4;
  wire [6:6]tmp_sum_4;
  wire [8:8]tmp_sum_5;
  wire [1:0]tmp_sum_5_6;
  wire [3:3]tmp_sum_5_6_10;
  wire [8:8]tmp_sum_6;
  wire [28:5]tmp_sum_b_0;
  wire [7:5]tmp_sum_b_0_8;
  wire vs_0;
  wire vs_in;
  wire vs_in_IBUF;
  wire vs_out;
  wire vs_out_OBUF;
  wire vs_q;

initial begin
 $sdf_annotate("sim_snn_rgb_time_impl.sdf",,,,"tool_control");
end
  FDRE #(
    .INIT(1'b0)) 
    \b_0_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_in_IBUF[0]),
        .Q(b_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_0_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_in_IBUF[1]),
        .Q(b_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_0_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_in_IBUF[2]),
        .Q(b_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_0_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_in_IBUF[3]),
        .Q(b_0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_0_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_in_IBUF[4]),
        .Q(b_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_0_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_in_IBUF[5]),
        .Q(b_0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_0_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_in_IBUF[6]),
        .Q(b_0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_0_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_in_IBUF[7]),
        .Q(b_0[7]),
        .R(1'b0));
  IBUF \b_in_IBUF[0]_inst 
       (.I(b_in[0]),
        .O(b_in_IBUF[0]));
  IBUF \b_in_IBUF[1]_inst 
       (.I(b_in[1]),
        .O(b_in_IBUF[1]));
  IBUF \b_in_IBUF[2]_inst 
       (.I(b_in[2]),
        .O(b_in_IBUF[2]));
  IBUF \b_in_IBUF[3]_inst 
       (.I(b_in[3]),
        .O(b_in_IBUF[3]));
  IBUF \b_in_IBUF[4]_inst 
       (.I(b_in[4]),
        .O(b_in_IBUF[4]));
  IBUF \b_in_IBUF[5]_inst 
       (.I(b_in[5]),
        .O(b_in_IBUF[5]));
  IBUF \b_in_IBUF[6]_inst 
       (.I(b_in[6]),
        .O(b_in_IBUF[6]));
  IBUF \b_in_IBUF[7]_inst 
       (.I(b_in[7]),
        .O(b_in_IBUF[7]));
  FDRE #(
    .INIT(1'b0)) 
    b_out_1_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(control_n_6),
        .Q(b_out_1),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \b_out_OBUF[0]_inst 
       (.I(\b_out_reg[0]_lopt_replica_1 ),
        .O(b_out[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \b_out_OBUF[1]_inst 
       (.I(\b_out_reg[0]_lopt_replica_2_1 ),
        .O(b_out[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \b_out_OBUF[2]_inst 
       (.I(\b_out_reg[0]_lopt_replica_3_1 ),
        .O(b_out[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \b_out_OBUF[3]_inst 
       (.I(\b_out_reg[0]_lopt_replica_4_1 ),
        .O(b_out[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \b_out_OBUF[4]_inst 
       (.I(\b_out_reg[0]_lopt_replica_5_1 ),
        .O(b_out[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \b_out_OBUF[5]_inst 
       (.I(\b_out_reg[0]_lopt_replica_6_1 ),
        .O(b_out[5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \b_out_OBUF[6]_inst 
       (.I(\b_out_reg[0]_lopt_replica_7_1 ),
        .O(b_out[6]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \b_out_OBUF[7]_inst 
       (.I(b_out_OBUF),
        .O(b_out[7]));
  FDRE #(
    .INIT(1'b0)) 
    \b_out_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_out_1),
        .Q(b_out_OBUF),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \b_out_reg[0]_lopt_replica 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_out_1),
        .Q(\b_out_reg[0]_lopt_replica_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \b_out_reg[0]_lopt_replica_2 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_out_1),
        .Q(\b_out_reg[0]_lopt_replica_2_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \b_out_reg[0]_lopt_replica_3 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_out_1),
        .Q(\b_out_reg[0]_lopt_replica_3_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \b_out_reg[0]_lopt_replica_4 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_out_1),
        .Q(\b_out_reg[0]_lopt_replica_4_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \b_out_reg[0]_lopt_replica_5 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_out_1),
        .Q(\b_out_reg[0]_lopt_replica_5_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \b_out_reg[0]_lopt_replica_6 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_out_1),
        .Q(\b_out_reg[0]_lopt_replica_6_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \b_out_reg[0]_lopt_replica_7 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(b_out_1),
        .Q(\b_out_reg[0]_lopt_replica_7_1 ),
        .R(1'b0));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_o_OBUF));
  BUFG clk_o_OBUF_BUFG_inst
       (.I(clk_o_OBUF),
        .O(clk_o_OBUF_BUFG));
  OBUF clk_o_OBUF_inst
       (.I(clk_o_OBUF_BUFG),
        .O(clk_o));
  control control
       (.Q(num_out0_sp_reg),
        .SR(res_ly_2),
        .SS(control_n_7),
        .b_out_1(b_out_1),
        .clk_o_OBUF_BUFG(clk_o_OBUF_BUFG),
        .clk_o_OBUF_BUFG_inst(control_n_0),
        .clk_o_OBUF_BUFG_inst_0(control_n_1),
        .de_0(de_0),
        .de_1(de_1),
        .de_q(de_q),
        .g_out_1(g_out_1),
        .\hs_delay_reg[64]_srl32_0 (hs_0_reg_n_0),
        .ly2_delay(ly2_delay),
        .\num_out0_sp_reg[6] (control_n_6),
        .\num_out1_sp_reg[7] (control_n_5),
        .r_out_1_reg(num_out1_sp_reg),
        .\step_reg[0] (step_reg),
        .vs_q(vs_q));
  FDRE #(
    .INIT(1'b0)) 
    de_0_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(de_in_IBUF),
        .Q(de_0),
        .R(1'b0));
  IBUF de_in_IBUF_inst
       (.I(de_in),
        .O(de_in_IBUF));
  OBUF de_out_OBUF_inst
       (.I(de_out_OBUF),
        .O(de_out));
  FDRE #(
    .INIT(1'b0)) 
    de_out_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(de_1),
        .Q(de_out_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    de_q_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(de_0),
        .Q(de_q),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    frame_reset_i_1
       (.I0(vs_0),
        .I1(vs_q),
        .O(frame_reset0));
  FDRE #(
    .INIT(1'b1)) 
    frame_reset_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(frame_reset0),
        .Q(frame_reset),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_0_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_in_IBUF[0]),
        .Q(g_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_0_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_in_IBUF[1]),
        .Q(g_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_0_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_in_IBUF[2]),
        .Q(g_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_0_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_in_IBUF[3]),
        .Q(g_0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_0_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_in_IBUF[4]),
        .Q(g_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_0_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_in_IBUF[5]),
        .Q(g_0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_0_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_in_IBUF[6]),
        .Q(g_0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_0_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_in_IBUF[7]),
        .Q(g_0[7]),
        .R(1'b0));
  IBUF \g_in_IBUF[0]_inst 
       (.I(g_in[0]),
        .O(g_in_IBUF[0]));
  IBUF \g_in_IBUF[1]_inst 
       (.I(g_in[1]),
        .O(g_in_IBUF[1]));
  IBUF \g_in_IBUF[2]_inst 
       (.I(g_in[2]),
        .O(g_in_IBUF[2]));
  IBUF \g_in_IBUF[3]_inst 
       (.I(g_in[3]),
        .O(g_in_IBUF[3]));
  IBUF \g_in_IBUF[4]_inst 
       (.I(g_in[4]),
        .O(g_in_IBUF[4]));
  IBUF \g_in_IBUF[5]_inst 
       (.I(g_in[5]),
        .O(g_in_IBUF[5]));
  IBUF \g_in_IBUF[6]_inst 
       (.I(g_in[6]),
        .O(g_in_IBUF[6]));
  IBUF \g_in_IBUF[7]_inst 
       (.I(g_in[7]),
        .O(g_in_IBUF[7]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \g_out_OBUF[0]_inst 
       (.I(\r_out_reg[0]_lopt_replica_1 ),
        .O(g_out[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \g_out_OBUF[1]_inst 
       (.I(\r_out_reg[0]_lopt_replica_2_1 ),
        .O(g_out[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \g_out_OBUF[2]_inst 
       (.I(\r_out_reg[0]_lopt_replica_3_1 ),
        .O(g_out[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \g_out_OBUF[3]_inst 
       (.I(\r_out_reg[0]_lopt_replica_4_1 ),
        .O(g_out[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \g_out_OBUF[4]_inst 
       (.I(\r_out_reg[0]_lopt_replica_5_1 ),
        .O(g_out[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \g_out_OBUF[5]_inst 
       (.I(\r_out_reg[0]_lopt_replica_6_1 ),
        .O(g_out[5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \g_out_OBUF[6]_inst 
       (.I(\r_out_reg[0]_lopt_replica_7_1 ),
        .O(g_out[6]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \g_out_OBUF[7]_inst 
       (.I(\r_out_reg[0]_lopt_replica_8_1 ),
        .O(g_out[7]));
  neuron hidden0
       (.CO(load),
        .D({hidden5_n_2,hidden5_n_3}),
        .Q(tmp_sum_1_2),
        .clk_o_OBUF_BUFG(clk_o_OBUF_BUFG),
        .ly2_delay(ly2_delay),
        .\tmp_sum_b_0_1_2_reg[8]_0 ({output0_n_13,output0_n_14,output0_n_15,output0_n_16,output0_n_17,output0_n_18,output0_n_19,output0_n_20,output0_n_21}));
  neuron__parameterized0 hidden1
       (.CO(hidden6_n_10),
        .D({hidden6_n_11,hidden6_n_12,hidden6_n_13,hidden6_n_14,output0_n_23,output0_n_24,output0_n_25,output0_n_26}),
        .DI(hidden6_n_7),
        .S(hidden5_n_5),
        .clk_o_OBUF_BUFG(clk_o_OBUF_BUFG),
        .h_1(h_1),
        .ly2_delay(ly2_delay),
        .tmp_sum_1(tmp_sum_1),
        .\tmp_sum_1_2_reg[0]_0 (hidden5_n_4),
        .\tmp_sum_1_2_reg[7]_0 ({hidden6_n_8,hidden6_n_9,hidden5_n_6}),
        .\tmp_sum_1_2_reg[8]_0 ({tmp_sum_1_2_0[8],tmp_sum_1_2_0[0]}),
        .tmp_sum_2(tmp_sum_2),
        .tmp_sum_b_0({tmp_sum_b_0[28],tmp_sum_b_0[5]}),
        .tmp_sum_b_0_0(tmp_sum_b_0_8[5]),
        .\tmp_sum_b_0_reg[28] ({hidden1_n_7,hidden1_n_8}),
        .\tmp_sum_b_0_reg[5] ({hidden1_n_3,hidden1_n_4,hidden1_n_5,hidden1_n_6}));
  neuron__parameterized1 hidden2
       (.CO(load_2),
        .D(hidden2_n_2),
        .DI({hidden6_n_1,tmp_sum_2,tmp_sum_1}),
        .Q(tmp_sum_1_2_1),
        .S({hidden6_n_88,hidden5_n_7}),
        .clk_o_OBUF_BUFG(clk_o_OBUF_BUFG),
        .h_2(h_2),
        .ly2_delay(ly2_delay),
        .sum(sum),
        .\tmp_sum_1_2_reg[0]_0 (hidden4_n_1),
        .\tmp_sum_1_2_reg[3] (hidden5_n_10),
        .\tmp_sum_1_reg[5] ({hidden2_n_3,hidden2_n_4,hidden2_n_5}),
        .\tmp_sum_b_0_1_2_reg[10]_0 (hidden6_n_15),
        .\tmp_sum_b_0_1_2_reg[6]_0 ({hidden6_n_16,hidden6_n_17,hidden6_n_18,hidden6_n_19,tmp_sum_1_2_3[4]}),
        .\voltage_reg[3]_0 (hidden6_n_89));
  neuron__parameterized2 hidden3
       (.D({hidden6_n_21,hidden6_n_22,hidden6_n_23,hidden6_n_24,hidden6_n_25,hidden6_n_26,hidden6_n_27,hidden6_n_28,hidden6_n_29,hidden6_n_30,hidden6_n_31,hidden6_n_32,hidden6_n_33,hidden6_n_34,hidden6_n_35,hidden6_n_36,hidden6_n_37,hidden6_n_38,hidden6_n_39,hidden6_n_40,hidden6_n_41,hidden6_n_42,hidden6_n_43,hidden6_n_44,hidden6_n_45,output0_n_27,output0_n_28,hidden6_n_46,hidden6_n_47,hidden6_n_48}),
        .DI(tmp_sum_1),
        .S({hidden3_n_3,hidden3_n_4}),
        .clk_o_OBUF_BUFG(clk_o_OBUF_BUFG),
        .h_3(h_3),
        .ly2_delay(ly2_delay),
        .tmp_sum_1_2({tmp_sum_1_2_3[6],tmp_sum_1_2_3[4]}),
        .tmp_sum_1_2_0(tmp_sum_1_2_5),
        .\tmp_sum_1_2_reg[4]_0 (hidden6_n_87),
        .tmp_sum_b_0(tmp_sum_b_0_8[5]),
        .tmp_sum_b_0_1(tmp_sum_b_0[28]),
        .\tmp_sum_b_0_1_2_reg[3]_0 (tmp_sum_1_2_0[0]),
        .\tmp_sum_b_0_reg[5] (hidden3_n_5));
  neuron__parameterized3 hidden4
       (.D(hidden2_n_2),
        .DI({tmp_sum_2,tmp_sum_1}),
        .S({hidden5_n_8,hidden5_n_9}),
        .clk_o_OBUF_BUFG(clk_o_OBUF_BUFG),
        .h_4(h_4),
        .ly2_delay(ly2_delay),
        .\tmp_sum_1_reg[5] (hidden4_n_1),
        .tmp_sum_b_0({tmp_sum_b_0[28],tmp_sum_b_0[5]}),
        .tmp_sum_b_0_0(tmp_sum_b_0_8[5]),
        .\tmp_sum_b_0_1_2_reg[31]_0 ({output0_n_29,output0_n_30,output0_n_31,output0_n_32,output0_n_33,output0_n_34,output0_n_35,output0_n_36,output0_n_37,output0_n_38,output0_n_39,output0_n_40,output0_n_41,output0_n_42,output0_n_43,output0_n_44,output0_n_45,output0_n_46,output0_n_47,output0_n_48,output0_n_49,output0_n_50,output0_n_51,output0_n_52,output0_n_53,output0_n_54,output0_n_55,output0_n_56,hidden6_n_50,hidden6_n_51,hidden6_n_52,hidden6_n_53}),
        .\tmp_sum_b_0_reg[28] ({hidden4_n_6,hidden4_n_7,hidden4_n_8,hidden4_n_9}),
        .\tmp_sum_b_0_reg[5] ({hidden4_n_2,hidden4_n_3,hidden4_n_4,tmp_sum_1_2_4}),
        .\tmp_sum_b_0_reg[5]_0 ({hidden4_n_10,hidden4_n_11,hidden4_n_12,hidden4_n_13}),
        .\tmp_sum_b_0_reg[5]_1 ({hidden4_n_14,hidden4_n_15,hidden4_n_16,hidden4_n_17}),
        .\tmp_sum_b_0_reg[5]_2 ({hidden4_n_18,hidden4_n_19,hidden4_n_20,hidden4_n_21}),
        .\tmp_sum_b_0_reg[5]_3 ({hidden4_n_22,hidden4_n_23,hidden4_n_24,hidden4_n_25}),
        .\tmp_sum_b_0_reg[5]_4 ({hidden4_n_26,hidden4_n_27,hidden4_n_28,hidden4_n_29}),
        .\tmp_sum_b_0_reg[5]_5 ({hidden4_n_30,hidden4_n_31,hidden4_n_32,hidden4_n_33}));
  neuron__parameterized4 hidden5
       (.D({hidden5_n_2,hidden5_n_3}),
        .DI(tmp_sum_1),
        .S(hidden5_n_5),
        .clk_o_OBUF_BUFG(clk_o_OBUF_BUFG),
        .g_sp(g_sp),
        .h_5(h_5),
        .ly2_delay(ly2_delay),
        .tmp_sum_1_2(tmp_sum_1_2_3[4]),
        .\tmp_sum_1_2_reg[3]_0 ({hidden2_n_3,hidden2_n_4,hidden2_n_5}),
        .\tmp_sum_1_2_reg[4] (tmp_sum_2),
        .\tmp_sum_1_reg[5]_0 (hidden5_n_4),
        .\tmp_sum_1_reg[5]_1 (hidden5_n_6),
        .\tmp_sum_1_reg[5]_2 (hidden5_n_7),
        .\tmp_sum_1_reg[5]_3 ({hidden5_n_8,hidden5_n_9}),
        .\tmp_sum_1_reg[5]_4 (hidden5_n_10),
        .tmp_sum_b_0({tmp_sum_b_0[28],tmp_sum_b_0[5]}),
        .\tmp_sum_b_0_1_2_reg[31]_0 ({hidden6_n_54,hidden6_n_55,hidden6_n_56,hidden6_n_57,hidden6_n_58,hidden6_n_59,hidden6_n_60,hidden6_n_61,hidden6_n_62,hidden6_n_63,hidden6_n_64,hidden6_n_65,hidden6_n_66,hidden6_n_67,hidden6_n_68,hidden6_n_69,hidden6_n_70,hidden6_n_71,hidden6_n_72,hidden6_n_73,hidden6_n_74,hidden6_n_75,hidden6_n_76,hidden6_n_77,hidden6_n_78,hidden6_n_79,hidden6_n_80,hidden6_n_81,hidden6_n_82,hidden6_n_83,hidden6_n_84,hidden6_n_85}),
        .\tmp_sum_b_0_reg[28] ({hidden5_n_11,hidden5_n_12,hidden5_n_13,hidden5_n_14}),
        .\tmp_sum_b_0_reg[5] (hidden5_n_15));
  neuron__parameterized5 hidden6
       (.CO(hidden6_n_10),
        .D({hidden6_n_11,hidden6_n_12,hidden6_n_13,hidden6_n_14}),
        .DI({hidden6_n_1,tmp_sum_2}),
        .Q(tmp_sum_1_2_1),
        .S({tmp_sum_1_2_0[8],hidden1_n_7,hidden1_n_8}),
        .b_sp(b_sp),
        .clk_o_OBUF_BUFG(clk_o_OBUF_BUFG),
        .h_6(h_6),
        .ly2_delay(ly2_delay),
        .r_sp(r_sp),
        .\sum_reg[6]_0 (sum),
        .\sum_reg[6]_1 (hidden6_n_89),
        .tmp_sum_1_2(tmp_sum_1_2_5),
        .\tmp_sum_1_2_reg[4] (tmp_sum_1),
        .\tmp_sum_1_2_reg[7]_0 ({hidden6_n_21,hidden6_n_22,hidden6_n_23,hidden6_n_24,hidden6_n_25,hidden6_n_26,hidden6_n_27,hidden6_n_28,hidden6_n_29,hidden6_n_30,hidden6_n_31,hidden6_n_32,hidden6_n_33,hidden6_n_34,hidden6_n_35,hidden6_n_36,hidden6_n_37,hidden6_n_38,hidden6_n_39,hidden6_n_40,hidden6_n_41,hidden6_n_42,hidden6_n_43,hidden6_n_44,hidden6_n_45,hidden6_n_46,hidden6_n_47,hidden6_n_48}),
        .\tmp_sum_2_reg[7]_0 (hidden6_n_7),
        .\tmp_sum_2_reg[7]_1 ({hidden6_n_8,hidden6_n_9}),
        .\tmp_sum_2_reg[7]_2 (hidden6_n_87),
        .\tmp_sum_2_reg[7]_3 (hidden6_n_88),
        .tmp_sum_b_0({tmp_sum_b_0[28],tmp_sum_b_0[5]}),
        .tmp_sum_b_0_0(tmp_sum_b_0_8[5]),
        .\tmp_sum_b_0_1_2_reg[3] ({hidden3_n_3,hidden3_n_4}),
        .\tmp_sum_b_0_1_2_reg[3]_0 ({hidden4_n_6,hidden4_n_7,hidden4_n_8,hidden4_n_9}),
        .\tmp_sum_b_0_1_2_reg[3]_1 ({hidden5_n_11,hidden5_n_12,hidden5_n_13,hidden5_n_14}),
        .\tmp_sum_b_0_1_2_reg[3]_2 (tmp_sum_1_2[3]),
        .\tmp_sum_b_0_1_2_reg[6]_0 (output0_n_89),
        .\tmp_sum_b_0_1_2_reg[7]_0 ({hidden5_n_15,tmp_sum_1_2_0[0]}),
        .\tmp_sum_b_0_1_2_reg[9]_0 (output0_n_22),
        .\tmp_sum_b_0_reg[28]_0 (hidden6_n_15),
        .\tmp_sum_b_0_reg[28]_1 ({hidden6_n_16,hidden6_n_17,hidden6_n_18,hidden6_n_19}),
        .\tmp_sum_b_0_reg[28]_2 (hidden6_n_20),
        .\tmp_sum_b_0_reg[28]_3 (hidden6_n_49),
        .\tmp_sum_b_0_reg[28]_4 ({hidden6_n_50,hidden6_n_51,hidden6_n_52,hidden6_n_53}),
        .\tmp_sum_b_0_reg[28]_5 (hidden6_n_86),
        .\tmp_sum_b_0_reg[5]_0 ({hidden6_n_54,hidden6_n_55,hidden6_n_56,hidden6_n_57,hidden6_n_58,hidden6_n_59,hidden6_n_60,hidden6_n_61,hidden6_n_62,hidden6_n_63,hidden6_n_64,hidden6_n_65,hidden6_n_66,hidden6_n_67,hidden6_n_68,hidden6_n_69,hidden6_n_70,hidden6_n_71,hidden6_n_72,hidden6_n_73,hidden6_n_74,hidden6_n_75,hidden6_n_76,hidden6_n_77,hidden6_n_78,hidden6_n_79,hidden6_n_80,hidden6_n_81,hidden6_n_82,hidden6_n_83,hidden6_n_84,hidden6_n_85}),
        .\voltage_reg[3]_0 (load_2));
  FDRE #(
    .INIT(1'b0)) 
    hs_0_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(hs_in_IBUF),
        .Q(hs_0_reg_n_0),
        .R(1'b0));
  IBUF hs_in_IBUF_inst
       (.I(hs_in),
        .O(hs_in_IBUF));
  OBUF hs_out_OBUF_inst
       (.I(hs_out_OBUF),
        .O(hs_out));
  FDRE #(
    .INIT(1'b0)) 
    hs_out_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(control_n_1),
        .Q(hs_out_OBUF),
        .R(1'b0));
  OBUF \led_OBUF[0]_inst 
       (.I(1'b0),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(1'b0),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(1'b0),
        .O(led[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \num_out0_sp[0]_i_1 
       (.I0(num_out0_sp_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \num_out0_sp[1]_i_1 
       (.I0(num_out0_sp_reg[0]),
        .I1(num_out0_sp_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \num_out0_sp[2]_i_1 
       (.I0(num_out0_sp_reg[0]),
        .I1(num_out0_sp_reg[1]),
        .I2(num_out0_sp_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \num_out0_sp[3]_i_1 
       (.I0(num_out0_sp_reg[1]),
        .I1(num_out0_sp_reg[0]),
        .I2(num_out0_sp_reg[2]),
        .I3(num_out0_sp_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \num_out0_sp[4]_i_1 
       (.I0(num_out0_sp_reg[2]),
        .I1(num_out0_sp_reg[0]),
        .I2(num_out0_sp_reg[1]),
        .I3(num_out0_sp_reg[3]),
        .I4(num_out0_sp_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \num_out0_sp[5]_i_1 
       (.I0(num_out0_sp_reg[3]),
        .I1(num_out0_sp_reg[1]),
        .I2(num_out0_sp_reg[0]),
        .I3(num_out0_sp_reg[2]),
        .I4(num_out0_sp_reg[4]),
        .I5(num_out0_sp_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \num_out0_sp[6]_i_1 
       (.I0(\num_out0_sp[7]_i_2_n_0 ),
        .I1(num_out0_sp_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \num_out0_sp[7]_i_1 
       (.I0(\num_out0_sp[7]_i_2_n_0 ),
        .I1(num_out0_sp_reg[6]),
        .I2(num_out0_sp_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \num_out0_sp[7]_i_2 
       (.I0(num_out0_sp_reg[5]),
        .I1(num_out0_sp_reg[3]),
        .I2(num_out0_sp_reg[1]),
        .I3(num_out0_sp_reg[0]),
        .I4(num_out0_sp_reg[2]),
        .I5(num_out0_sp_reg[4]),
        .O(\num_out0_sp[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_out0_sp_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_0),
        .D(p_0_in[0]),
        .Q(num_out0_sp_reg[0]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out0_sp_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_0),
        .D(p_0_in[1]),
        .Q(num_out0_sp_reg[1]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out0_sp_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_0),
        .D(p_0_in[2]),
        .Q(num_out0_sp_reg[2]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out0_sp_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_0),
        .D(p_0_in[3]),
        .Q(num_out0_sp_reg[3]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out0_sp_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_0),
        .D(p_0_in[4]),
        .Q(num_out0_sp_reg[4]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out0_sp_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_0),
        .D(p_0_in[5]),
        .Q(num_out0_sp_reg[5]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out0_sp_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_0),
        .D(p_0_in[6]),
        .Q(num_out0_sp_reg[6]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out0_sp_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_0),
        .D(p_0_in[7]),
        .Q(num_out0_sp_reg[7]),
        .R(res_ly_2));
  LUT1 #(
    .INIT(2'h1)) 
    \num_out1_sp[0]_i_1 
       (.I0(num_out1_sp_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \num_out1_sp[1]_i_1 
       (.I0(num_out1_sp_reg[0]),
        .I1(num_out1_sp_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \num_out1_sp[2]_i_1 
       (.I0(num_out1_sp_reg[0]),
        .I1(num_out1_sp_reg[1]),
        .I2(num_out1_sp_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \num_out1_sp[3]_i_1 
       (.I0(num_out1_sp_reg[1]),
        .I1(num_out1_sp_reg[0]),
        .I2(num_out1_sp_reg[2]),
        .I3(num_out1_sp_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \num_out1_sp[4]_i_1 
       (.I0(num_out1_sp_reg[2]),
        .I1(num_out1_sp_reg[0]),
        .I2(num_out1_sp_reg[1]),
        .I3(num_out1_sp_reg[3]),
        .I4(num_out1_sp_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \num_out1_sp[5]_i_1 
       (.I0(num_out1_sp_reg[3]),
        .I1(num_out1_sp_reg[1]),
        .I2(num_out1_sp_reg[0]),
        .I3(num_out1_sp_reg[2]),
        .I4(num_out1_sp_reg[4]),
        .I5(num_out1_sp_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \num_out1_sp[6]_i_1 
       (.I0(\num_out1_sp[7]_i_2_n_0 ),
        .I1(num_out1_sp_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \num_out1_sp[7]_i_1 
       (.I0(\num_out1_sp[7]_i_2_n_0 ),
        .I1(num_out1_sp_reg[6]),
        .I2(num_out1_sp_reg[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \num_out1_sp[7]_i_2 
       (.I0(num_out1_sp_reg[5]),
        .I1(num_out1_sp_reg[3]),
        .I2(num_out1_sp_reg[1]),
        .I3(num_out1_sp_reg[0]),
        .I4(num_out1_sp_reg[2]),
        .I5(num_out1_sp_reg[4]),
        .O(\num_out1_sp[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_out1_sp_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_1),
        .D(p_0_in__0[0]),
        .Q(num_out1_sp_reg[0]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out1_sp_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_1),
        .D(p_0_in__0[1]),
        .Q(num_out1_sp_reg[1]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out1_sp_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_1),
        .D(p_0_in__0[2]),
        .Q(num_out1_sp_reg[2]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out1_sp_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_1),
        .D(p_0_in__0[3]),
        .Q(num_out1_sp_reg[3]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out1_sp_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_1),
        .D(p_0_in__0[4]),
        .Q(num_out1_sp_reg[4]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out1_sp_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_1),
        .D(p_0_in__0[5]),
        .Q(num_out1_sp_reg[5]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out1_sp_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_1),
        .D(p_0_in__0[6]),
        .Q(num_out1_sp_reg[6]),
        .R(res_ly_2));
  FDRE #(
    .INIT(1'b0)) 
    \num_out1_sp_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(out_1),
        .D(p_0_in__0[7]),
        .Q(num_out1_sp_reg[7]),
        .R(res_ly_2));
  neuron__parameterized6 output0
       (.CO(load),
        .D(p_0_in_11),
        .DI({tmp_sum_3_4[2:1],tmp_sum_3_4[28]}),
        .E(out_0),
        .S(tmp_sum_1_2_7),
        .SR(res_ly_2),
        .clk_o_OBUF_BUFG(clk_o_OBUF_BUFG),
        .h_1(h_1),
        .h_2(h_2),
        .h_3(h_3),
        .h_4(h_4),
        .h_5(h_5),
        .h_6(h_6),
        .\tmp_sum_2_reg[6]_0 ({output0_n_106,output0_n_107,output0_n_108,output0_n_109,output0_n_110,output0_n_111,output0_n_112}),
        .tmp_sum_3(tmp_sum_3),
        .\tmp_sum_3_4_5_6_reg[3]_0 ({tmp_sum_5_6_10,output1_n_3,output1_n_4}),
        .\tmp_sum_3_4_reg[1]_0 (output0_n_101),
        .\tmp_sum_3_4_reg[1]_1 ({output0_n_102,output0_n_103,output0_n_104,output0_n_105}),
        .\tmp_sum_3_4_reg[28]_0 (output1_n_36),
        .\tmp_sum_3_4_reg[28]_1 (output1_n_37),
        .\tmp_sum_3_reg[9]_0 ({output0_n_95,output0_n_96,output0_n_97,output0_n_98,output0_n_99,output0_n_100}),
        .tmp_sum_4(tmp_sum_4),
        .tmp_sum_5(tmp_sum_5),
        .\tmp_sum_5_6_reg[1]_0 (tmp_sum_5_6),
        .\tmp_sum_5_reg[8]_0 (p_0_in_6),
        .tmp_sum_6(tmp_sum_6),
        .\tmp_sum_6_reg[8]_0 (output0_n_91),
        .\tmp_sum_6_reg[8]_1 ({output0_n_92,output0_n_93}),
        .\tmp_sum_6_reg[8]_2 (output0_n_94),
        .tmp_sum_b_0({tmp_sum_b_0_8[7],tmp_sum_b_0_8[5]}),
        .tmp_sum_b_0_0({tmp_sum_b_0[28],tmp_sum_b_0[5]}),
        .\tmp_sum_b_0_1_2_reg[11]_0 ({hidden4_n_14,hidden4_n_15,hidden4_n_16,hidden4_n_17}),
        .\tmp_sum_b_0_1_2_reg[11]_1 ({output1_n_12,output1_n_13,output1_n_14,output1_n_15}),
        .\tmp_sum_b_0_1_2_reg[15]_0 ({hidden4_n_18,hidden4_n_19,hidden4_n_20,hidden4_n_21}),
        .\tmp_sum_b_0_1_2_reg[15]_1 ({output1_n_20,output1_n_21,output1_n_22,output1_n_23}),
        .\tmp_sum_b_0_1_2_reg[19]_0 ({hidden4_n_22,hidden4_n_23,hidden4_n_24,hidden4_n_25}),
        .\tmp_sum_b_0_1_2_reg[19]_1 ({output1_n_24,output1_n_25,output1_n_26,output1_n_27}),
        .\tmp_sum_b_0_1_2_reg[23]_0 ({hidden4_n_26,hidden4_n_27,hidden4_n_28,hidden4_n_29}),
        .\tmp_sum_b_0_1_2_reg[23]_1 ({output1_n_28,output1_n_29,output1_n_30,output1_n_31}),
        .\tmp_sum_b_0_1_2_reg[27]_0 ({hidden4_n_30,hidden4_n_31,hidden4_n_32,hidden4_n_33}),
        .\tmp_sum_b_0_1_2_reg[27]_1 ({output1_n_32,output1_n_33,output1_n_34,output1_n_35}),
        .\tmp_sum_b_0_1_2_reg[31]_0 ({hidden4_n_10,hidden4_n_11,hidden4_n_12,hidden4_n_13}),
        .\tmp_sum_b_0_1_2_reg[31]_1 ({output1_n_16,output1_n_17,output1_n_18,output1_n_19}),
        .\tmp_sum_b_0_1_2_reg[3]_0 ({hidden6_n_86,tmp_sum_1_2_3[4]}),
        .\tmp_sum_b_0_1_2_reg[3]_1 ({output1_n_9,tmp_sum_1_2_9[1],output1_n_11}),
        .\tmp_sum_b_0_1_2_reg[5]_0 ({hidden1_n_3,hidden1_n_4,hidden1_n_5,hidden1_n_6}),
        .\tmp_sum_b_0_1_2_reg[5]_1 (hidden6_n_20),
        .\tmp_sum_b_0_1_2_reg[5]_2 (hidden3_n_5),
        .\tmp_sum_b_0_1_2_reg[6]_0 (tmp_sum_1_2_0[0]),
        .\tmp_sum_b_0_1_2_reg[7]_0 ({tmp_sum_1_2_5,tmp_sum_1_2_3[6],tmp_sum_1_2[4]}),
        .\tmp_sum_b_0_1_2_reg[7]_1 (hidden6_n_49),
        .\tmp_sum_b_0_1_2_reg[7]_2 ({hidden4_n_2,hidden4_n_3,hidden4_n_4,tmp_sum_1_2_4}),
        .\tmp_sum_b_0_1_2_reg[7]_3 ({tmp_sum_1_2_9[7],output1_n_6,tmp_sum_1_2_9[5],output1_n_8}),
        .\tmp_sum_b_0_reg[5]_0 ({output0_n_13,output0_n_14,output0_n_15,output0_n_16,output0_n_17,output0_n_18,output0_n_19,output0_n_20,output0_n_21}),
        .\tmp_sum_b_0_reg[5]_1 (output0_n_22),
        .\tmp_sum_b_0_reg[5]_2 ({output0_n_23,output0_n_24,output0_n_25,output0_n_26}),
        .\tmp_sum_b_0_reg[5]_3 ({output0_n_27,output0_n_28}),
        .\tmp_sum_b_0_reg[5]_4 ({output0_n_29,output0_n_30,output0_n_31,output0_n_32,output0_n_33,output0_n_34,output0_n_35,output0_n_36,output0_n_37,output0_n_38,output0_n_39,output0_n_40,output0_n_41,output0_n_42,output0_n_43,output0_n_44,output0_n_45,output0_n_46,output0_n_47,output0_n_48,output0_n_49,output0_n_50,output0_n_51,output0_n_52,output0_n_53,output0_n_54,output0_n_55,output0_n_56}),
        .\tmp_sum_b_0_reg[5]_5 (output0_n_89),
        .\tmp_sum_b_0_reg[7]_0 ({output0_n_57,output0_n_58,output0_n_59,output0_n_60,output0_n_61,output0_n_62,output0_n_63,output0_n_64,output0_n_65,output0_n_66,output0_n_67,output0_n_68,output0_n_69,output0_n_70,output0_n_71,output0_n_72,output0_n_73,output0_n_74,output0_n_75,output0_n_76,output0_n_77,output0_n_78,output0_n_79,output0_n_80,output0_n_81,output0_n_82,output0_n_83,output0_n_84,output0_n_85,output0_n_86,output0_n_87,output0_n_88}));
  neuron__parameterized7 output1
       (.D(p_0_in_6),
        .DI({output0_n_94,tmp_sum_5}),
        .E(out_1),
        .S({output0_n_92,tmp_sum_6,output0_n_93}),
        .SR(res_ly_2),
        .clk_o_OBUF_BUFG(clk_o_OBUF_BUFG),
        .\tmp_sum_1_2_reg[28]_0 ({output0_n_106,output0_n_107,output0_n_108,output0_n_109,output0_n_110,output0_n_111,output0_n_112}),
        .\tmp_sum_1_2_reg[7]_0 ({tmp_sum_1_2_9[7],output1_n_6,tmp_sum_1_2_9[5],output1_n_8}),
        .tmp_sum_3(tmp_sum_3),
        .\tmp_sum_3_4_5_6_reg[3]_0 ({output0_n_102,output0_n_103,output0_n_104,output0_n_105}),
        .\tmp_sum_3_4_5_6_reg[3]_1 (tmp_sum_5_6),
        .\tmp_sum_3_4_5_6_reg[7]_0 (output0_n_101),
        .\tmp_sum_3_4_5_6_reg[7]_1 ({tmp_sum_3_4[2:1],tmp_sum_3_4[28]}),
        .\tmp_sum_3_4_reg[28]_0 ({output0_n_95,output0_n_96,output0_n_97,output0_n_98,output0_n_99,output0_n_100}),
        .\tmp_sum_3_reg[9] (output1_n_37),
        .tmp_sum_4(tmp_sum_4),
        .\tmp_sum_4_reg[6] (output1_n_36),
        .\tmp_sum_5_6_reg[28]_0 (output0_n_91),
        .\tmp_sum_5_6_reg[3]_0 ({tmp_sum_5_6_10,output1_n_3,output1_n_4}),
        .\tmp_sum_6_reg[8] (p_0_in_11),
        .tmp_sum_b_0({tmp_sum_b_0_8[7],tmp_sum_b_0_8[5]}),
        .\tmp_sum_b_0_1_2_reg[31]_0 ({output0_n_57,output0_n_58,output0_n_59,output0_n_60,output0_n_61,output0_n_62,output0_n_63,output0_n_64,output0_n_65,output0_n_66,output0_n_67,output0_n_68,output0_n_69,output0_n_70,output0_n_71,output0_n_72,output0_n_73,output0_n_74,output0_n_75,output0_n_76,output0_n_77,output0_n_78,output0_n_79,output0_n_80,output0_n_81,output0_n_82,output0_n_83,output0_n_84,output0_n_85,output0_n_86,output0_n_87,output0_n_88}),
        .\tmp_sum_b_0_1_2_reg[3]_0 (tmp_sum_1_2_7),
        .\tmp_sum_b_0_reg[5] ({output1_n_9,tmp_sum_1_2_9[1],output1_n_11}),
        .\tmp_sum_b_0_reg[7] ({output1_n_12,output1_n_13,output1_n_14,output1_n_15}),
        .\tmp_sum_b_0_reg[7]_0 ({output1_n_16,output1_n_17,output1_n_18,output1_n_19}),
        .\tmp_sum_b_0_reg[7]_1 ({output1_n_20,output1_n_21,output1_n_22,output1_n_23}),
        .\tmp_sum_b_0_reg[7]_2 ({output1_n_24,output1_n_25,output1_n_26,output1_n_27}),
        .\tmp_sum_b_0_reg[7]_3 ({output1_n_28,output1_n_29,output1_n_30,output1_n_31}),
        .\tmp_sum_b_0_reg[7]_4 ({output1_n_32,output1_n_33,output1_n_34,output1_n_35}));
  gen_input pseudo_random
       (.Q(r_0),
        .SR(frame_reset),
        .b_sp(b_sp),
        .b_sp_reg_0(b_0),
        .clk_o_OBUF_BUFG(clk_o_OBUF_BUFG),
        .g_sp(g_sp),
        .g_sp_reg_0(g_0),
        .r_sp(r_sp));
  FDRE #(
    .INIT(1'b0)) 
    \r_0_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(r_in_IBUF[0]),
        .Q(r_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_0_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(r_in_IBUF[1]),
        .Q(r_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_0_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(r_in_IBUF[2]),
        .Q(r_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_0_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(r_in_IBUF[3]),
        .Q(r_0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_0_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(r_in_IBUF[4]),
        .Q(r_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_0_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(r_in_IBUF[5]),
        .Q(r_0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_0_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(r_in_IBUF[6]),
        .Q(r_0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_0_reg[7] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(r_in_IBUF[7]),
        .Q(r_0[7]),
        .R(1'b0));
  IBUF \r_in_IBUF[0]_inst 
       (.I(r_in[0]),
        .O(r_in_IBUF[0]));
  IBUF \r_in_IBUF[1]_inst 
       (.I(r_in[1]),
        .O(r_in_IBUF[1]));
  IBUF \r_in_IBUF[2]_inst 
       (.I(r_in[2]),
        .O(r_in_IBUF[2]));
  IBUF \r_in_IBUF[3]_inst 
       (.I(r_in[3]),
        .O(r_in_IBUF[3]));
  IBUF \r_in_IBUF[4]_inst 
       (.I(r_in[4]),
        .O(r_in_IBUF[4]));
  IBUF \r_in_IBUF[5]_inst 
       (.I(r_in[5]),
        .O(r_in_IBUF[5]));
  IBUF \r_in_IBUF[6]_inst 
       (.I(r_in[6]),
        .O(r_in_IBUF[6]));
  IBUF \r_in_IBUF[7]_inst 
       (.I(r_in[7]),
        .O(r_in_IBUF[7]));
  FDRE #(
    .INIT(1'b0)) 
    r_out_1_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(control_n_5),
        .Q(g_out_1),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \r_out_OBUF[0]_inst 
       (.I(\r_out_reg[0]_lopt_replica_9_1 ),
        .O(r_out[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \r_out_OBUF[1]_inst 
       (.I(\r_out_reg[0]_lopt_replica_10_1 ),
        .O(r_out[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \r_out_OBUF[2]_inst 
       (.I(\r_out_reg[0]_lopt_replica_11_1 ),
        .O(r_out[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \r_out_OBUF[3]_inst 
       (.I(\r_out_reg[0]_lopt_replica_12_1 ),
        .O(r_out[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \r_out_OBUF[4]_inst 
       (.I(\r_out_reg[0]_lopt_replica_13_1 ),
        .O(r_out[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \r_out_OBUF[5]_inst 
       (.I(\r_out_reg[0]_lopt_replica_14_1 ),
        .O(r_out[5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \r_out_OBUF[6]_inst 
       (.I(\r_out_reg[0]_lopt_replica_15_1 ),
        .O(r_out[6]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \r_out_OBUF[7]_inst 
       (.I(g_out_OBUF),
        .O(r_out[7]));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(g_out_OBUF),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_10 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_10_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_11 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_11_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_12 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_12_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_13 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_13_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_14 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_14_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_15 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_15_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_2 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_2_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_3 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_3_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_4 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_4_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_5 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_5_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_6 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_6_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_7 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_7_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_8 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_8_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \r_out_reg[0]_lopt_replica_9 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(g_out_1),
        .Q(\r_out_reg[0]_lopt_replica_9_1 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \step[0]_i_1 
       (.I0(\step_reg_n_0_[0] ),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \step[1]_i_1 
       (.I0(\step_reg_n_0_[0] ),
        .I1(\step_reg_n_0_[1] ),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \step[2]_i_1 
       (.I0(\step_reg_n_0_[0] ),
        .I1(\step_reg_n_0_[1] ),
        .I2(\step_reg_n_0_[2] ),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \step[3]_i_1 
       (.I0(\step_reg_n_0_[1] ),
        .I1(\step_reg_n_0_[0] ),
        .I2(\step_reg_n_0_[2] ),
        .I3(\step_reg_n_0_[3] ),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \step[4]_i_1 
       (.I0(\step_reg_n_0_[2] ),
        .I1(\step_reg_n_0_[0] ),
        .I2(\step_reg_n_0_[1] ),
        .I3(\step_reg_n_0_[3] ),
        .I4(\step_reg_n_0_[4] ),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \step[5]_i_1 
       (.I0(\step_reg_n_0_[3] ),
        .I1(\step_reg_n_0_[1] ),
        .I2(\step_reg_n_0_[0] ),
        .I3(\step_reg_n_0_[2] ),
        .I4(\step_reg_n_0_[4] ),
        .I5(\step_reg_n_0_[5] ),
        .O(p_0_in__1[5]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \step[6]_i_2 
       (.I0(\step_reg_n_0_[5] ),
        .I1(\step_reg_n_0_[3] ),
        .I2(\step_reg_n_0_[1] ),
        .I3(\step_reg_n_0_[0] ),
        .I4(\step_reg_n_0_[2] ),
        .I5(\step_reg_n_0_[4] ),
        .O(p_0_in__1[6]));
  FDSE #(
    .INIT(1'b1)) 
    \step_reg[0] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[0]),
        .Q(\step_reg_n_0_[0] ),
        .S(control_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[1] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(\step_reg_n_0_[1] ),
        .R(control_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[2] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(\step_reg_n_0_[2] ),
        .R(control_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[3] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(\step_reg_n_0_[3] ),
        .R(control_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[4] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(\step_reg_n_0_[4] ),
        .R(control_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[5] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[5]),
        .Q(\step_reg_n_0_[5] ),
        .R(control_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[6] 
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[6]),
        .Q(step_reg),
        .R(control_n_7));
  FDRE #(
    .INIT(1'b0)) 
    vs_0_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(vs_in_IBUF),
        .Q(vs_0),
        .R(1'b0));
  IBUF vs_in_IBUF_inst
       (.I(vs_in),
        .O(vs_in_IBUF));
  OBUF vs_out_OBUF_inst
       (.I(vs_out_OBUF),
        .O(vs_out));
  FDRE #(
    .INIT(1'b0)) 
    vs_out_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(control_n_0),
        .Q(vs_out_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vs_q_reg
       (.C(clk_o_OBUF_BUFG),
        .CE(1'b1),
        .D(vs_0),
        .Q(vs_q),
        .R(1'b0));
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

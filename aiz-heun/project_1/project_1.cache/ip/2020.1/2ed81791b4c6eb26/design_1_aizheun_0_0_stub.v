// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Apr 20 12:14:32 2023
// Host        : EEE-R448-21 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_aizheun_0_0_stub.v
// Design      : design_1_aizheun_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "aizheun,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, aizheun_aresetn, aizheun_s_axi_awaddr, 
  aizheun_s_axi_awvalid, aizheun_s_axi_wdata, aizheun_s_axi_wstrb, aizheun_s_axi_wvalid, 
  aizheun_s_axi_bready, aizheun_s_axi_araddr, aizheun_s_axi_arvalid, 
  aizheun_s_axi_rready, aizheun_s_axi_awready, aizheun_s_axi_wready, aizheun_s_axi_bresp, 
  aizheun_s_axi_bvalid, aizheun_s_axi_arready, aizheun_s_axi_rdata, aizheun_s_axi_rresp, 
  aizheun_s_axi_rvalid)
/* synthesis syn_black_box black_box_pad_pin="clk,aizheun_aresetn,aizheun_s_axi_awaddr[4:0],aizheun_s_axi_awvalid,aizheun_s_axi_wdata[31:0],aizheun_s_axi_wstrb[3:0],aizheun_s_axi_wvalid,aizheun_s_axi_bready,aizheun_s_axi_araddr[4:0],aizheun_s_axi_arvalid,aizheun_s_axi_rready,aizheun_s_axi_awready,aizheun_s_axi_wready,aizheun_s_axi_bresp[1:0],aizheun_s_axi_bvalid,aizheun_s_axi_arready,aizheun_s_axi_rdata[31:0],aizheun_s_axi_rresp[1:0],aizheun_s_axi_rvalid" */;
  input clk;
  input aizheun_aresetn;
  input [4:0]aizheun_s_axi_awaddr;
  input aizheun_s_axi_awvalid;
  input [31:0]aizheun_s_axi_wdata;
  input [3:0]aizheun_s_axi_wstrb;
  input aizheun_s_axi_wvalid;
  input aizheun_s_axi_bready;
  input [4:0]aizheun_s_axi_araddr;
  input aizheun_s_axi_arvalid;
  input aizheun_s_axi_rready;
  output aizheun_s_axi_awready;
  output aizheun_s_axi_wready;
  output [1:0]aizheun_s_axi_bresp;
  output aizheun_s_axi_bvalid;
  output aizheun_s_axi_arready;
  output [31:0]aizheun_s_axi_rdata;
  output [1:0]aizheun_s_axi_rresp;
  output aizheun_s_axi_rvalid;
endmodule

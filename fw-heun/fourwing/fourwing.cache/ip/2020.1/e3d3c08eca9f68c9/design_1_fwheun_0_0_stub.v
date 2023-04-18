// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Apr 13 16:59:56 2023
// Host        : Laptopiszcze running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fwheun_0_0_stub.v
// Design      : design_1_fwheun_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fwheun,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, fwheun_aresetn, fwheun_s_axi_awaddr, 
  fwheun_s_axi_awvalid, fwheun_s_axi_wdata, fwheun_s_axi_wstrb, fwheun_s_axi_wvalid, 
  fwheun_s_axi_bready, fwheun_s_axi_araddr, fwheun_s_axi_arvalid, fwheun_s_axi_rready, 
  fwheun_s_axi_awready, fwheun_s_axi_wready, fwheun_s_axi_bresp, fwheun_s_axi_bvalid, 
  fwheun_s_axi_arready, fwheun_s_axi_rdata, fwheun_s_axi_rresp, fwheun_s_axi_rvalid)
/* synthesis syn_black_box black_box_pad_pin="clk,fwheun_aresetn,fwheun_s_axi_awaddr[4:0],fwheun_s_axi_awvalid,fwheun_s_axi_wdata[31:0],fwheun_s_axi_wstrb[3:0],fwheun_s_axi_wvalid,fwheun_s_axi_bready,fwheun_s_axi_araddr[4:0],fwheun_s_axi_arvalid,fwheun_s_axi_rready,fwheun_s_axi_awready,fwheun_s_axi_wready,fwheun_s_axi_bresp[1:0],fwheun_s_axi_bvalid,fwheun_s_axi_arready,fwheun_s_axi_rdata[31:0],fwheun_s_axi_rresp[1:0],fwheun_s_axi_rvalid" */;
  input clk;
  input fwheun_aresetn;
  input [4:0]fwheun_s_axi_awaddr;
  input fwheun_s_axi_awvalid;
  input [31:0]fwheun_s_axi_wdata;
  input [3:0]fwheun_s_axi_wstrb;
  input fwheun_s_axi_wvalid;
  input fwheun_s_axi_bready;
  input [4:0]fwheun_s_axi_araddr;
  input fwheun_s_axi_arvalid;
  input fwheun_s_axi_rready;
  output fwheun_s_axi_awready;
  output fwheun_s_axi_wready;
  output [1:0]fwheun_s_axi_bresp;
  output fwheun_s_axi_bvalid;
  output fwheun_s_axi_arready;
  output [31:0]fwheun_s_axi_rdata;
  output [1:0]fwheun_s_axi_rresp;
  output fwheun_s_axi_rvalid;
endmodule

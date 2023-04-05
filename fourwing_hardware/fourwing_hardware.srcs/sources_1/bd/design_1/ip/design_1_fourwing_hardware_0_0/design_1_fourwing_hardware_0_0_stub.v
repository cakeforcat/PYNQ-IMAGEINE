// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Apr  4 22:21:18 2023
// Host        : HALALSUCCESOR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/cakef/Documents/GitHub/pynq-math-visualisations/fourwing_hardware/fourwing_hardware.srcs/sources_1/bd/design_1/ip/design_1_fourwing_hardware_0_0/design_1_fourwing_hardware_0_0_stub.v
// Design      : design_1_fourwing_hardware_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fourwing_hardware,Vivado 2020.1" *)
module design_1_fourwing_hardware_0_0(clk, fourwing_hardware_aresetn, 
  fourwing_hardware_s_axi_awaddr, fourwing_hardware_s_axi_awvalid, 
  fourwing_hardware_s_axi_wdata, fourwing_hardware_s_axi_wstrb, 
  fourwing_hardware_s_axi_wvalid, fourwing_hardware_s_axi_bready, 
  fourwing_hardware_s_axi_araddr, fourwing_hardware_s_axi_arvalid, 
  fourwing_hardware_s_axi_rready, fourwing_hardware_s_axi_awready, 
  fourwing_hardware_s_axi_wready, fourwing_hardware_s_axi_bresp, 
  fourwing_hardware_s_axi_bvalid, fourwing_hardware_s_axi_arready, 
  fourwing_hardware_s_axi_rdata, fourwing_hardware_s_axi_rresp, 
  fourwing_hardware_s_axi_rvalid)
/* synthesis syn_black_box black_box_pad_pin="clk,fourwing_hardware_aresetn,fourwing_hardware_s_axi_awaddr[4:0],fourwing_hardware_s_axi_awvalid,fourwing_hardware_s_axi_wdata[31:0],fourwing_hardware_s_axi_wstrb[3:0],fourwing_hardware_s_axi_wvalid,fourwing_hardware_s_axi_bready,fourwing_hardware_s_axi_araddr[4:0],fourwing_hardware_s_axi_arvalid,fourwing_hardware_s_axi_rready,fourwing_hardware_s_axi_awready,fourwing_hardware_s_axi_wready,fourwing_hardware_s_axi_bresp[1:0],fourwing_hardware_s_axi_bvalid,fourwing_hardware_s_axi_arready,fourwing_hardware_s_axi_rdata[31:0],fourwing_hardware_s_axi_rresp[1:0],fourwing_hardware_s_axi_rvalid" */;
  input clk;
  input fourwing_hardware_aresetn;
  input [4:0]fourwing_hardware_s_axi_awaddr;
  input fourwing_hardware_s_axi_awvalid;
  input [31:0]fourwing_hardware_s_axi_wdata;
  input [3:0]fourwing_hardware_s_axi_wstrb;
  input fourwing_hardware_s_axi_wvalid;
  input fourwing_hardware_s_axi_bready;
  input [4:0]fourwing_hardware_s_axi_araddr;
  input fourwing_hardware_s_axi_arvalid;
  input fourwing_hardware_s_axi_rready;
  output fourwing_hardware_s_axi_awready;
  output fourwing_hardware_s_axi_wready;
  output [1:0]fourwing_hardware_s_axi_bresp;
  output fourwing_hardware_s_axi_bvalid;
  output fourwing_hardware_s_axi_arready;
  output [31:0]fourwing_hardware_s_axi_rdata;
  output [1:0]fourwing_hardware_s_axi_rresp;
  output fourwing_hardware_s_axi_rvalid;
endmodule

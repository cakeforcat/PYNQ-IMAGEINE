// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Apr 11 17:00:39 2023
// Host        : HALALSUCCESOR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/cakef/Documents/GitHub/pynq-math-visualisations/lorenz/lorenz/lorenz.srcs/sources_1/bd/design_1/ip/design_1_lorenz_hardware_0_1/design_1_lorenz_hardware_0_1_stub.v
// Design      : design_1_lorenz_hardware_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "lorenz_hardware,Vivado 2020.1" *)
module design_1_lorenz_hardware_0_1(clk, lorenz_hardware_aresetn, 
  lorenz_hardware_s_axi_awaddr, lorenz_hardware_s_axi_awvalid, 
  lorenz_hardware_s_axi_wdata, lorenz_hardware_s_axi_wstrb, 
  lorenz_hardware_s_axi_wvalid, lorenz_hardware_s_axi_bready, 
  lorenz_hardware_s_axi_araddr, lorenz_hardware_s_axi_arvalid, 
  lorenz_hardware_s_axi_rready, lorenz_hardware_s_axi_awready, 
  lorenz_hardware_s_axi_wready, lorenz_hardware_s_axi_bresp, 
  lorenz_hardware_s_axi_bvalid, lorenz_hardware_s_axi_arready, 
  lorenz_hardware_s_axi_rdata, lorenz_hardware_s_axi_rresp, 
  lorenz_hardware_s_axi_rvalid)
/* synthesis syn_black_box black_box_pad_pin="clk,lorenz_hardware_aresetn,lorenz_hardware_s_axi_awaddr[4:0],lorenz_hardware_s_axi_awvalid,lorenz_hardware_s_axi_wdata[31:0],lorenz_hardware_s_axi_wstrb[3:0],lorenz_hardware_s_axi_wvalid,lorenz_hardware_s_axi_bready,lorenz_hardware_s_axi_araddr[4:0],lorenz_hardware_s_axi_arvalid,lorenz_hardware_s_axi_rready,lorenz_hardware_s_axi_awready,lorenz_hardware_s_axi_wready,lorenz_hardware_s_axi_bresp[1:0],lorenz_hardware_s_axi_bvalid,lorenz_hardware_s_axi_arready,lorenz_hardware_s_axi_rdata[31:0],lorenz_hardware_s_axi_rresp[1:0],lorenz_hardware_s_axi_rvalid" */;
  input clk;
  input lorenz_hardware_aresetn;
  input [4:0]lorenz_hardware_s_axi_awaddr;
  input lorenz_hardware_s_axi_awvalid;
  input [31:0]lorenz_hardware_s_axi_wdata;
  input [3:0]lorenz_hardware_s_axi_wstrb;
  input lorenz_hardware_s_axi_wvalid;
  input lorenz_hardware_s_axi_bready;
  input [4:0]lorenz_hardware_s_axi_araddr;
  input lorenz_hardware_s_axi_arvalid;
  input lorenz_hardware_s_axi_rready;
  output lorenz_hardware_s_axi_awready;
  output lorenz_hardware_s_axi_wready;
  output [1:0]lorenz_hardware_s_axi_bresp;
  output lorenz_hardware_s_axi_bvalid;
  output lorenz_hardware_s_axi_arready;
  output [31:0]lorenz_hardware_s_axi_rdata;
  output [1:0]lorenz_hardware_s_axi_rresp;
  output lorenz_hardware_s_axi_rvalid;
endmodule

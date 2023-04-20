-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Apr 20 13:36:44 2023
-- Host        : EEE-R448-21 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               h:/MyDocuments/Year3/pynq-math-visualisations/aiz-heun/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_aizheun_0_0/design_1_aizheun_0_0_stub.vhdl
-- Design      : design_1_aizheun_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_aizheun_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    aizheun_aresetn : in STD_LOGIC;
    aizheun_s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    aizheun_s_axi_awvalid : in STD_LOGIC;
    aizheun_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aizheun_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aizheun_s_axi_wvalid : in STD_LOGIC;
    aizheun_s_axi_bready : in STD_LOGIC;
    aizheun_s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    aizheun_s_axi_arvalid : in STD_LOGIC;
    aizheun_s_axi_rready : in STD_LOGIC;
    aizheun_s_axi_awready : out STD_LOGIC;
    aizheun_s_axi_wready : out STD_LOGIC;
    aizheun_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aizheun_s_axi_bvalid : out STD_LOGIC;
    aizheun_s_axi_arready : out STD_LOGIC;
    aizheun_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aizheun_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aizheun_s_axi_rvalid : out STD_LOGIC
  );

end design_1_aizheun_0_0;

architecture stub of design_1_aizheun_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,aizheun_aresetn,aizheun_s_axi_awaddr[4:0],aizheun_s_axi_awvalid,aizheun_s_axi_wdata[31:0],aizheun_s_axi_wstrb[3:0],aizheun_s_axi_wvalid,aizheun_s_axi_bready,aizheun_s_axi_araddr[4:0],aizheun_s_axi_arvalid,aizheun_s_axi_rready,aizheun_s_axi_awready,aizheun_s_axi_wready,aizheun_s_axi_bresp[1:0],aizheun_s_axi_bvalid,aizheun_s_axi_arready,aizheun_s_axi_rdata[31:0],aizheun_s_axi_rresp[1:0],aizheun_s_axi_rvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "aizheun,Vivado 2020.1";
begin
end;

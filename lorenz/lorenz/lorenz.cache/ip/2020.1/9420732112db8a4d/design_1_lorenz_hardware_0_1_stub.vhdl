-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Apr 11 17:00:34 2023
-- Host        : HALALSUCCESOR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_lorenz_hardware_0_1_stub.vhdl
-- Design      : design_1_lorenz_hardware_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    lorenz_hardware_aresetn : in STD_LOGIC;
    lorenz_hardware_s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    lorenz_hardware_s_axi_awvalid : in STD_LOGIC;
    lorenz_hardware_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lorenz_hardware_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lorenz_hardware_s_axi_wvalid : in STD_LOGIC;
    lorenz_hardware_s_axi_bready : in STD_LOGIC;
    lorenz_hardware_s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    lorenz_hardware_s_axi_arvalid : in STD_LOGIC;
    lorenz_hardware_s_axi_rready : in STD_LOGIC;
    lorenz_hardware_s_axi_awready : out STD_LOGIC;
    lorenz_hardware_s_axi_wready : out STD_LOGIC;
    lorenz_hardware_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    lorenz_hardware_s_axi_bvalid : out STD_LOGIC;
    lorenz_hardware_s_axi_arready : out STD_LOGIC;
    lorenz_hardware_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lorenz_hardware_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    lorenz_hardware_s_axi_rvalid : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,lorenz_hardware_aresetn,lorenz_hardware_s_axi_awaddr[4:0],lorenz_hardware_s_axi_awvalid,lorenz_hardware_s_axi_wdata[31:0],lorenz_hardware_s_axi_wstrb[3:0],lorenz_hardware_s_axi_wvalid,lorenz_hardware_s_axi_bready,lorenz_hardware_s_axi_araddr[4:0],lorenz_hardware_s_axi_arvalid,lorenz_hardware_s_axi_rready,lorenz_hardware_s_axi_awready,lorenz_hardware_s_axi_wready,lorenz_hardware_s_axi_bresp[1:0],lorenz_hardware_s_axi_bvalid,lorenz_hardware_s_axi_arready,lorenz_hardware_s_axi_rdata[31:0],lorenz_hardware_s_axi_rresp[1:0],lorenz_hardware_s_axi_rvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "lorenz_hardware,Vivado 2020.1";
begin
end;

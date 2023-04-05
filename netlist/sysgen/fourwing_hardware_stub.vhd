-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity fourwing_hardware_stub is
  port (
    clk : in std_logic;
    fourwing_hardware_aresetn : in std_logic;
    fourwing_hardware_s_axi_awaddr : in std_logic_vector( 5-1 downto 0 );
    fourwing_hardware_s_axi_awvalid : in std_logic;
    fourwing_hardware_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    fourwing_hardware_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    fourwing_hardware_s_axi_wvalid : in std_logic;
    fourwing_hardware_s_axi_bready : in std_logic;
    fourwing_hardware_s_axi_araddr : in std_logic_vector( 5-1 downto 0 );
    fourwing_hardware_s_axi_arvalid : in std_logic;
    fourwing_hardware_s_axi_rready : in std_logic;
    fourwing_hardware_s_axi_awready : out std_logic;
    fourwing_hardware_s_axi_wready : out std_logic;
    fourwing_hardware_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    fourwing_hardware_s_axi_bvalid : out std_logic;
    fourwing_hardware_s_axi_arready : out std_logic;
    fourwing_hardware_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    fourwing_hardware_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    fourwing_hardware_s_axi_rvalid : out std_logic
  );
end fourwing_hardware_stub;
architecture structural of fourwing_hardware_stub is 
begin
  sysgen_dut : entity xil_defaultlib.fourwing_hardware 
  port map (
    clk => clk,
    fourwing_hardware_aresetn => fourwing_hardware_aresetn,
    fourwing_hardware_s_axi_awaddr => fourwing_hardware_s_axi_awaddr,
    fourwing_hardware_s_axi_awvalid => fourwing_hardware_s_axi_awvalid,
    fourwing_hardware_s_axi_wdata => fourwing_hardware_s_axi_wdata,
    fourwing_hardware_s_axi_wstrb => fourwing_hardware_s_axi_wstrb,
    fourwing_hardware_s_axi_wvalid => fourwing_hardware_s_axi_wvalid,
    fourwing_hardware_s_axi_bready => fourwing_hardware_s_axi_bready,
    fourwing_hardware_s_axi_araddr => fourwing_hardware_s_axi_araddr,
    fourwing_hardware_s_axi_arvalid => fourwing_hardware_s_axi_arvalid,
    fourwing_hardware_s_axi_rready => fourwing_hardware_s_axi_rready,
    fourwing_hardware_s_axi_awready => fourwing_hardware_s_axi_awready,
    fourwing_hardware_s_axi_wready => fourwing_hardware_s_axi_wready,
    fourwing_hardware_s_axi_bresp => fourwing_hardware_s_axi_bresp,
    fourwing_hardware_s_axi_bvalid => fourwing_hardware_s_axi_bvalid,
    fourwing_hardware_s_axi_arready => fourwing_hardware_s_axi_arready,
    fourwing_hardware_s_axi_rdata => fourwing_hardware_s_axi_rdata,
    fourwing_hardware_s_axi_rresp => fourwing_hardware_s_axi_rresp,
    fourwing_hardware_s_axi_rvalid => fourwing_hardware_s_axi_rvalid
  );
end structural;

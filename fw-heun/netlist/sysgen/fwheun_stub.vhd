-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity fwheun_stub is
  port (
    clk : in std_logic;
    fwheun_aresetn : in std_logic;
    fwheun_s_axi_awaddr : in std_logic_vector( 5-1 downto 0 );
    fwheun_s_axi_awvalid : in std_logic;
    fwheun_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    fwheun_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    fwheun_s_axi_wvalid : in std_logic;
    fwheun_s_axi_bready : in std_logic;
    fwheun_s_axi_araddr : in std_logic_vector( 5-1 downto 0 );
    fwheun_s_axi_arvalid : in std_logic;
    fwheun_s_axi_rready : in std_logic;
    fwheun_s_axi_awready : out std_logic;
    fwheun_s_axi_wready : out std_logic;
    fwheun_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    fwheun_s_axi_bvalid : out std_logic;
    fwheun_s_axi_arready : out std_logic;
    fwheun_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    fwheun_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    fwheun_s_axi_rvalid : out std_logic
  );
end fwheun_stub;
architecture structural of fwheun_stub is 
begin
  sysgen_dut : entity xil_defaultlib.fwheun 
  port map (
    clk => clk,
    fwheun_aresetn => fwheun_aresetn,
    fwheun_s_axi_awaddr => fwheun_s_axi_awaddr,
    fwheun_s_axi_awvalid => fwheun_s_axi_awvalid,
    fwheun_s_axi_wdata => fwheun_s_axi_wdata,
    fwheun_s_axi_wstrb => fwheun_s_axi_wstrb,
    fwheun_s_axi_wvalid => fwheun_s_axi_wvalid,
    fwheun_s_axi_bready => fwheun_s_axi_bready,
    fwheun_s_axi_araddr => fwheun_s_axi_araddr,
    fwheun_s_axi_arvalid => fwheun_s_axi_arvalid,
    fwheun_s_axi_rready => fwheun_s_axi_rready,
    fwheun_s_axi_awready => fwheun_s_axi_awready,
    fwheun_s_axi_wready => fwheun_s_axi_wready,
    fwheun_s_axi_bresp => fwheun_s_axi_bresp,
    fwheun_s_axi_bvalid => fwheun_s_axi_bvalid,
    fwheun_s_axi_arready => fwheun_s_axi_arready,
    fwheun_s_axi_rdata => fwheun_s_axi_rdata,
    fwheun_s_axi_rresp => fwheun_s_axi_rresp,
    fwheun_s_axi_rvalid => fwheun_s_axi_rvalid
  );
end structural;

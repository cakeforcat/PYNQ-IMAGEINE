-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity aizheun_stub is
  port (
    clk : in std_logic;
    aizheun_aresetn : in std_logic;
    aizheun_s_axi_awaddr : in std_logic_vector( 5-1 downto 0 );
    aizheun_s_axi_awvalid : in std_logic;
    aizheun_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    aizheun_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    aizheun_s_axi_wvalid : in std_logic;
    aizheun_s_axi_bready : in std_logic;
    aizheun_s_axi_araddr : in std_logic_vector( 5-1 downto 0 );
    aizheun_s_axi_arvalid : in std_logic;
    aizheun_s_axi_rready : in std_logic;
    aizheun_s_axi_awready : out std_logic;
    aizheun_s_axi_wready : out std_logic;
    aizheun_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    aizheun_s_axi_bvalid : out std_logic;
    aizheun_s_axi_arready : out std_logic;
    aizheun_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    aizheun_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    aizheun_s_axi_rvalid : out std_logic
  );
end aizheun_stub;
architecture structural of aizheun_stub is 
begin
  sysgen_dut : entity xil_defaultlib.aizheun 
  port map (
    clk => clk,
    aizheun_aresetn => aizheun_aresetn,
    aizheun_s_axi_awaddr => aizheun_s_axi_awaddr,
    aizheun_s_axi_awvalid => aizheun_s_axi_awvalid,
    aizheun_s_axi_wdata => aizheun_s_axi_wdata,
    aizheun_s_axi_wstrb => aizheun_s_axi_wstrb,
    aizheun_s_axi_wvalid => aizheun_s_axi_wvalid,
    aizheun_s_axi_bready => aizheun_s_axi_bready,
    aizheun_s_axi_araddr => aizheun_s_axi_araddr,
    aizheun_s_axi_arvalid => aizheun_s_axi_arvalid,
    aizheun_s_axi_rready => aizheun_s_axi_rready,
    aizheun_s_axi_awready => aizheun_s_axi_awready,
    aizheun_s_axi_wready => aizheun_s_axi_wready,
    aizheun_s_axi_bresp => aizheun_s_axi_bresp,
    aizheun_s_axi_bvalid => aizheun_s_axi_bvalid,
    aizheun_s_axi_arready => aizheun_s_axi_arready,
    aizheun_s_axi_rdata => aizheun_s_axi_rdata,
    aizheun_s_axi_rresp => aizheun_s_axi_rresp,
    aizheun_s_axi_rvalid => aizheun_s_axi_rvalid
  );
end structural;

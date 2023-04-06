-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity lorenz_hardware_stub is
  port (
    clk : in std_logic;
    lorenz_hardware_aresetn : in std_logic;
    lorenz_hardware_s_axi_awaddr : in std_logic_vector( 5-1 downto 0 );
    lorenz_hardware_s_axi_awvalid : in std_logic;
    lorenz_hardware_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    lorenz_hardware_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    lorenz_hardware_s_axi_wvalid : in std_logic;
    lorenz_hardware_s_axi_bready : in std_logic;
    lorenz_hardware_s_axi_araddr : in std_logic_vector( 5-1 downto 0 );
    lorenz_hardware_s_axi_arvalid : in std_logic;
    lorenz_hardware_s_axi_rready : in std_logic;
    test1 : out std_logic_vector( 32-1 downto 0 );
    lorenz_hardware_s_axi_awready : out std_logic;
    lorenz_hardware_s_axi_wready : out std_logic;
    lorenz_hardware_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    lorenz_hardware_s_axi_bvalid : out std_logic;
    lorenz_hardware_s_axi_arready : out std_logic;
    lorenz_hardware_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    lorenz_hardware_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    lorenz_hardware_s_axi_rvalid : out std_logic
  );
end lorenz_hardware_stub;
architecture structural of lorenz_hardware_stub is 
begin
  sysgen_dut : entity xil_defaultlib.lorenz_hardware 
  port map (
    clk => clk,
    lorenz_hardware_aresetn => lorenz_hardware_aresetn,
    lorenz_hardware_s_axi_awaddr => lorenz_hardware_s_axi_awaddr,
    lorenz_hardware_s_axi_awvalid => lorenz_hardware_s_axi_awvalid,
    lorenz_hardware_s_axi_wdata => lorenz_hardware_s_axi_wdata,
    lorenz_hardware_s_axi_wstrb => lorenz_hardware_s_axi_wstrb,
    lorenz_hardware_s_axi_wvalid => lorenz_hardware_s_axi_wvalid,
    lorenz_hardware_s_axi_bready => lorenz_hardware_s_axi_bready,
    lorenz_hardware_s_axi_araddr => lorenz_hardware_s_axi_araddr,
    lorenz_hardware_s_axi_arvalid => lorenz_hardware_s_axi_arvalid,
    lorenz_hardware_s_axi_rready => lorenz_hardware_s_axi_rready,
    test1 => test1,
    lorenz_hardware_s_axi_awready => lorenz_hardware_s_axi_awready,
    lorenz_hardware_s_axi_wready => lorenz_hardware_s_axi_wready,
    lorenz_hardware_s_axi_bresp => lorenz_hardware_s_axi_bresp,
    lorenz_hardware_s_axi_bvalid => lorenz_hardware_s_axi_bvalid,
    lorenz_hardware_s_axi_arready => lorenz_hardware_s_axi_arready,
    lorenz_hardware_s_axi_rdata => lorenz_hardware_s_axi_rdata,
    lorenz_hardware_s_axi_rresp => lorenz_hardware_s_axi_rresp,
    lorenz_hardware_s_axi_rvalid => lorenz_hardware_s_axi_rvalid
  );
end structural;

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

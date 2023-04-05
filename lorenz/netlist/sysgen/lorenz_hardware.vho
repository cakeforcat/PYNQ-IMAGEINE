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
    lorenz_hardware_s_axi_awready => lorenz_hardware_s_axi_awready,
    lorenz_hardware_s_axi_wready => lorenz_hardware_s_axi_wready,
    lorenz_hardware_s_axi_bresp => lorenz_hardware_s_axi_bresp,
    lorenz_hardware_s_axi_bvalid => lorenz_hardware_s_axi_bvalid,
    lorenz_hardware_s_axi_arready => lorenz_hardware_s_axi_arready,
    lorenz_hardware_s_axi_rdata => lorenz_hardware_s_axi_rdata,
    lorenz_hardware_s_axi_rresp => lorenz_hardware_s_axi_rresp,
    lorenz_hardware_s_axi_rvalid => lorenz_hardware_s_axi_rvalid
  );

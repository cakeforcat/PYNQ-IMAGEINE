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

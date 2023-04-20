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

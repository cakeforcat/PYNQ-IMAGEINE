proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "fwheun" "NUM_INSTANCES" "DEVICE_ID" "C_FWHEUN_S_AXI_BASEADDR" "C_FWHEUN_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "fwheun_g.c" "fwheun" "DEVICE_ID" "C_FWHEUN_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "fwheun" "DEVICE_ID" "C_FWHEUN_S_AXI_BASEADDR" "C_FWHEUN_S_AXI_HIGHADDR" 

}
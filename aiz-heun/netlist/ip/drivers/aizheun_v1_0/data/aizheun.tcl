proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "aizheun" "NUM_INSTANCES" "DEVICE_ID" "C_AIZHEUN_S_AXI_BASEADDR" "C_AIZHEUN_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "aizheun_g.c" "aizheun" "DEVICE_ID" "C_AIZHEUN_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "aizheun" "DEVICE_ID" "C_AIZHEUN_S_AXI_BASEADDR" "C_AIZHEUN_S_AXI_HIGHADDR" 

}
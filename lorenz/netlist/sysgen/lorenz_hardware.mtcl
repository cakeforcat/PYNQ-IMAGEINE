proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "lorenz_hardware" "NUM_INSTANCES" "DEVICE_ID" "C_LORENZ_HARDWARE_S_AXI_BASEADDR" "C_LORENZ_HARDWARE_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "lorenz_hardware_g.c" "lorenz_hardware" "DEVICE_ID" "C_LORENZ_HARDWARE_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "lorenz_hardware" "DEVICE_ID" "C_LORENZ_HARDWARE_S_AXI_BASEADDR" "C_LORENZ_HARDWARE_S_AXI_HIGHADDR" 

}
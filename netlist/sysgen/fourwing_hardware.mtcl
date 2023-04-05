proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "fourwing_hardware" "NUM_INSTANCES" "DEVICE_ID" "C_FOURWING_HARDWARE_S_AXI_BASEADDR" "C_FOURWING_HARDWARE_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "fourwing_hardware_g.c" "fourwing_hardware" "DEVICE_ID" "C_FOURWING_HARDWARE_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "fourwing_hardware" "DEVICE_ID" "C_FOURWING_HARDWARE_S_AXI_BASEADDR" "C_FOURWING_HARDWARE_S_AXI_HIGHADDR" 

}
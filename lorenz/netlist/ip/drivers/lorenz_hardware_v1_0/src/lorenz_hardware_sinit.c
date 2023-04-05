/**
* @file lorenz_hardware_sinit.c
*
* The implementation of the lorenz_hardware driver's static initialzation
* functionality.
*
* @note
*
* None
*
*/
#ifndef __linux__
#include "xstatus.h"
#include "xparameters.h"
#include "lorenz_hardware.h"
extern lorenz_hardware_Config lorenz_hardware_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type lorenz_hardware_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
lorenz_hardware_Config *lorenz_hardware_LookupConfig(u16 DeviceId) {
    lorenz_hardware_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_LORENZ_HARDWARE_NUM_INSTANCES; Index++) {
        if (lorenz_hardware_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &lorenz_hardware_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int lorenz_hardware_Initialize(lorenz_hardware *InstancePtr, u16 DeviceId) {
    lorenz_hardware_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = lorenz_hardware_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return lorenz_hardware_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

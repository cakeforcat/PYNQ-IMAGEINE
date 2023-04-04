/**
* @file fourwing_hardware_sinit.c
*
* The implementation of the fourwing_hardware driver's static initialzation
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
#include "fourwing_hardware.h"
extern fourwing_hardware_Config fourwing_hardware_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type fourwing_hardware_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
fourwing_hardware_Config *fourwing_hardware_LookupConfig(u16 DeviceId) {
    fourwing_hardware_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_FOURWING_HARDWARE_NUM_INSTANCES; Index++) {
        if (fourwing_hardware_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &fourwing_hardware_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int fourwing_hardware_Initialize(fourwing_hardware *InstancePtr, u16 DeviceId) {
    fourwing_hardware_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = fourwing_hardware_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return fourwing_hardware_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

/**
* @file fwheun_sinit.c
*
* The implementation of the fwheun driver's static initialzation
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
#include "fwheun.h"
extern fwheun_Config fwheun_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type fwheun_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
fwheun_Config *fwheun_LookupConfig(u16 DeviceId) {
    fwheun_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_FWHEUN_NUM_INSTANCES; Index++) {
        if (fwheun_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &fwheun_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int fwheun_Initialize(fwheun *InstancePtr, u16 DeviceId) {
    fwheun_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = fwheun_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return fwheun_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

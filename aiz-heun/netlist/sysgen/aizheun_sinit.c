/**
* @file aizheun_sinit.c
*
* The implementation of the aizheun driver's static initialzation
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
#include "aizheun.h"
extern aizheun_Config aizheun_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type aizheun_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
aizheun_Config *aizheun_LookupConfig(u16 DeviceId) {
    aizheun_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_AIZHEUN_NUM_INSTANCES; Index++) {
        if (aizheun_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &aizheun_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int aizheun_Initialize(aizheun *InstancePtr, u16 DeviceId) {
    aizheun_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = aizheun_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return aizheun_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

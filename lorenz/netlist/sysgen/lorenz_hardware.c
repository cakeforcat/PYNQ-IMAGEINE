#include "lorenz_hardware.h"
#ifndef __linux__
int lorenz_hardware_CfgInitialize(lorenz_hardware *InstancePtr, lorenz_hardware_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->lorenz_hardware_BaseAddress = ConfigPtr->lorenz_hardware_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void lorenz_hardware_z_write(lorenz_hardware *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    lorenz_hardware_WriteReg(InstancePtr->lorenz_hardware_BaseAddress, 0, Data);
}
int lorenz_hardware_z_read(lorenz_hardware *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = lorenz_hardware_ReadReg(InstancePtr->lorenz_hardware_BaseAddress, 0);
    return Data;
}
void lorenz_hardware_y_write(lorenz_hardware *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    lorenz_hardware_WriteReg(InstancePtr->lorenz_hardware_BaseAddress, 4, Data);
}
int lorenz_hardware_y_read(lorenz_hardware *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = lorenz_hardware_ReadReg(InstancePtr->lorenz_hardware_BaseAddress, 4);
    return Data;
}
void lorenz_hardware_x_write(lorenz_hardware *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    lorenz_hardware_WriteReg(InstancePtr->lorenz_hardware_BaseAddress, 8, Data);
}
int lorenz_hardware_x_read(lorenz_hardware *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = lorenz_hardware_ReadReg(InstancePtr->lorenz_hardware_BaseAddress, 8);
    return Data;
}
int lorenz_hardware_xnew_read(lorenz_hardware *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = lorenz_hardware_ReadReg(InstancePtr->lorenz_hardware_BaseAddress, 12);
    return Data;
}
int lorenz_hardware_ynew_read(lorenz_hardware *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = lorenz_hardware_ReadReg(InstancePtr->lorenz_hardware_BaseAddress, 16);
    return Data;
}
int lorenz_hardware_znew_read(lorenz_hardware *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = lorenz_hardware_ReadReg(InstancePtr->lorenz_hardware_BaseAddress, 20);
    return Data;
}

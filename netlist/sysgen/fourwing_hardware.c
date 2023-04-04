#include "fourwing_hardware.h"
#ifndef __linux__
int fourwing_hardware_CfgInitialize(fourwing_hardware *InstancePtr, fourwing_hardware_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->fourwing_hardware_BaseAddress = ConfigPtr->fourwing_hardware_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void fourwing_hardware_z_write(fourwing_hardware *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fourwing_hardware_WriteReg(InstancePtr->fourwing_hardware_BaseAddress, 0, Data);
}
int fourwing_hardware_z_read(fourwing_hardware *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fourwing_hardware_ReadReg(InstancePtr->fourwing_hardware_BaseAddress, 0);
    return Data;
}
void fourwing_hardware_y_write(fourwing_hardware *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fourwing_hardware_WriteReg(InstancePtr->fourwing_hardware_BaseAddress, 4, Data);
}
int fourwing_hardware_y_read(fourwing_hardware *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fourwing_hardware_ReadReg(InstancePtr->fourwing_hardware_BaseAddress, 4);
    return Data;
}
void fourwing_hardware_x_write(fourwing_hardware *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fourwing_hardware_WriteReg(InstancePtr->fourwing_hardware_BaseAddress, 8, Data);
}
int fourwing_hardware_x_read(fourwing_hardware *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fourwing_hardware_ReadReg(InstancePtr->fourwing_hardware_BaseAddress, 8);
    return Data;
}
int fourwing_hardware_xnew_read(fourwing_hardware *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fourwing_hardware_ReadReg(InstancePtr->fourwing_hardware_BaseAddress, 12);
    return Data;
}
int fourwing_hardware_ynew_read(fourwing_hardware *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fourwing_hardware_ReadReg(InstancePtr->fourwing_hardware_BaseAddress, 16);
    return Data;
}
int fourwing_hardware_znew_read(fourwing_hardware *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fourwing_hardware_ReadReg(InstancePtr->fourwing_hardware_BaseAddress, 20);
    return Data;
}

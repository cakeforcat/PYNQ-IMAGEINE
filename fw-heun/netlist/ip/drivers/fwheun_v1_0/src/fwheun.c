#include "fwheun.h"
#ifndef __linux__
int fwheun_CfgInitialize(fwheun *InstancePtr, fwheun_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->fwheun_BaseAddress = ConfigPtr->fwheun_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void fwheun_z_write(fwheun *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fwheun_WriteReg(InstancePtr->fwheun_BaseAddress, 0, Data);
}
int fwheun_z_read(fwheun *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fwheun_ReadReg(InstancePtr->fwheun_BaseAddress, 0);
    return Data;
}
void fwheun_y_write(fwheun *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fwheun_WriteReg(InstancePtr->fwheun_BaseAddress, 4, Data);
}
int fwheun_y_read(fwheun *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fwheun_ReadReg(InstancePtr->fwheun_BaseAddress, 4);
    return Data;
}
void fwheun_x_write(fwheun *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fwheun_WriteReg(InstancePtr->fwheun_BaseAddress, 8, Data);
}
int fwheun_x_read(fwheun *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fwheun_ReadReg(InstancePtr->fwheun_BaseAddress, 8);
    return Data;
}
int fwheun_xnew_read(fwheun *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fwheun_ReadReg(InstancePtr->fwheun_BaseAddress, 12);
    return Data;
}
int fwheun_ynew_read(fwheun *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fwheun_ReadReg(InstancePtr->fwheun_BaseAddress, 16);
    return Data;
}
int fwheun_znew_read(fwheun *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fwheun_ReadReg(InstancePtr->fwheun_BaseAddress, 20);
    return Data;
}

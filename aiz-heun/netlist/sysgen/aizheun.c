#include "aizheun.h"
#ifndef __linux__
int aizheun_CfgInitialize(aizheun *InstancePtr, aizheun_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->aizheun_BaseAddress = ConfigPtr->aizheun_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void aizheun_z_write(aizheun *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    aizheun_WriteReg(InstancePtr->aizheun_BaseAddress, 0, Data);
}
int aizheun_z_read(aizheun *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = aizheun_ReadReg(InstancePtr->aizheun_BaseAddress, 0);
    return Data;
}
void aizheun_y_write(aizheun *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    aizheun_WriteReg(InstancePtr->aizheun_BaseAddress, 4, Data);
}
int aizheun_y_read(aizheun *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = aizheun_ReadReg(InstancePtr->aizheun_BaseAddress, 4);
    return Data;
}
void aizheun_x_write(aizheun *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    aizheun_WriteReg(InstancePtr->aizheun_BaseAddress, 8, Data);
}
int aizheun_x_read(aizheun *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = aizheun_ReadReg(InstancePtr->aizheun_BaseAddress, 8);
    return Data;
}
int aizheun_xnew_read(aizheun *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = aizheun_ReadReg(InstancePtr->aizheun_BaseAddress, 12);
    return Data;
}
int aizheun_ynew_read(aizheun *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = aizheun_ReadReg(InstancePtr->aizheun_BaseAddress, 16);
    return Data;
}
int aizheun_znew_read(aizheun *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = aizheun_ReadReg(InstancePtr->aizheun_BaseAddress, 20);
    return Data;
}

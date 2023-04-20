#ifndef AIZHEUN__H
#define AIZHEUN__H
#ifdef __cplusplus
extern "C" {
#endif
/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "aizheun_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 aizheun_BaseAddress;
} aizheun_Config;
#endif
/**
* The aizheun driver instance data. The user is required to
* allocate a variable of this type for every aizheun device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 aizheun_BaseAddress;
    u32 IsReady;
} aizheun;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define aizheun_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define aizheun_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define aizheun_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define aizheun_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif
/************************** Function Prototypes *****************************/
#ifndef __linux__
int aizheun_Initialize(aizheun *InstancePtr, u16 DeviceId);
aizheun_Config* aizheun_LookupConfig(u16 DeviceId);
int aizheun_CfgInitialize(aizheun *InstancePtr, aizheun_Config *ConfigPtr);
#else
int aizheun_Initialize(aizheun *InstancePtr, const char* InstanceName);
int aizheun_Release(aizheun *InstancePtr);
#endif
/**
* Write to z gateway of aizheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the z instance to operate on.
* @param	Data is value to be written to gateway z.
*
* @return	None.
*
* @note    .
*
*/
void aizheun_z_write(aizheun *InstancePtr, int Data);
/**
* Read from z gateway of aizheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the z instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int aizheun_z_read(aizheun *InstancePtr);
/**
* Write to y gateway of aizheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the y instance to operate on.
* @param	Data is value to be written to gateway y.
*
* @return	None.
*
* @note    .
*
*/
void aizheun_y_write(aizheun *InstancePtr, int Data);
/**
* Read from y gateway of aizheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the y instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int aizheun_y_read(aizheun *InstancePtr);
/**
* Write to x gateway of aizheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the x instance to operate on.
* @param	Data is value to be written to gateway x.
*
* @return	None.
*
* @note    .
*
*/
void aizheun_x_write(aizheun *InstancePtr, int Data);
/**
* Read from x gateway of aizheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the x instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int aizheun_x_read(aizheun *InstancePtr);
/**
* Read from xnew gateway of aizheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the xnew instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int aizheun_xnew_read(aizheun *InstancePtr);
/**
* Read from ynew gateway of aizheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the ynew instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int aizheun_ynew_read(aizheun *InstancePtr);
/**
* Read from znew gateway of aizheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the znew instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int aizheun_znew_read(aizheun *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif

#ifndef FWHEUN__H
#define FWHEUN__H
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
#include "fwheun_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 fwheun_BaseAddress;
} fwheun_Config;
#endif
/**
* The fwheun driver instance data. The user is required to
* allocate a variable of this type for every fwheun device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 fwheun_BaseAddress;
    u32 IsReady;
} fwheun;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define fwheun_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define fwheun_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define fwheun_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define fwheun_ReadReg(BaseAddress, RegOffset) \
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
int fwheun_Initialize(fwheun *InstancePtr, u16 DeviceId);
fwheun_Config* fwheun_LookupConfig(u16 DeviceId);
int fwheun_CfgInitialize(fwheun *InstancePtr, fwheun_Config *ConfigPtr);
#else
int fwheun_Initialize(fwheun *InstancePtr, const char* InstanceName);
int fwheun_Release(fwheun *InstancePtr);
#endif
/**
* Write to z gateway of fwheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the z instance to operate on.
* @param	Data is value to be written to gateway z.
*
* @return	None.
*
* @note    .
*
*/
void fwheun_z_write(fwheun *InstancePtr, int Data);
/**
* Read from z gateway of fwheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the z instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fwheun_z_read(fwheun *InstancePtr);
/**
* Write to y gateway of fwheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the y instance to operate on.
* @param	Data is value to be written to gateway y.
*
* @return	None.
*
* @note    .
*
*/
void fwheun_y_write(fwheun *InstancePtr, int Data);
/**
* Read from y gateway of fwheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the y instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fwheun_y_read(fwheun *InstancePtr);
/**
* Write to x gateway of fwheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the x instance to operate on.
* @param	Data is value to be written to gateway x.
*
* @return	None.
*
* @note    .
*
*/
void fwheun_x_write(fwheun *InstancePtr, int Data);
/**
* Read from x gateway of fwheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the x instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fwheun_x_read(fwheun *InstancePtr);
/**
* Read from xnew gateway of fwheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the xnew instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fwheun_xnew_read(fwheun *InstancePtr);
/**
* Read from ynew gateway of fwheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the ynew instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fwheun_ynew_read(fwheun *InstancePtr);
/**
* Read from znew gateway of fwheun. Assignments are LSB-justified.
*
* @param	InstancePtr is the znew instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fwheun_znew_read(fwheun *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif

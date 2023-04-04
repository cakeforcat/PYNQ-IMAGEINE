#ifndef FOURWING_HARDWARE__H
#define FOURWING_HARDWARE__H
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
#include "fourwing_hardware_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 fourwing_hardware_BaseAddress;
} fourwing_hardware_Config;
#endif
/**
* The fourwing_hardware driver instance data. The user is required to
* allocate a variable of this type for every fourwing_hardware device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 fourwing_hardware_BaseAddress;
    u32 IsReady;
} fourwing_hardware;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define fourwing_hardware_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define fourwing_hardware_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define fourwing_hardware_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define fourwing_hardware_ReadReg(BaseAddress, RegOffset) \
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
int fourwing_hardware_Initialize(fourwing_hardware *InstancePtr, u16 DeviceId);
fourwing_hardware_Config* fourwing_hardware_LookupConfig(u16 DeviceId);
int fourwing_hardware_CfgInitialize(fourwing_hardware *InstancePtr, fourwing_hardware_Config *ConfigPtr);
#else
int fourwing_hardware_Initialize(fourwing_hardware *InstancePtr, const char* InstanceName);
int fourwing_hardware_Release(fourwing_hardware *InstancePtr);
#endif
/**
* Write to z gateway of fourwing_hardware. Assignments are LSB-justified.
*
* @param	InstancePtr is the z instance to operate on.
* @param	Data is value to be written to gateway z.
*
* @return	None.
*
* @note    .
*
*/
void fourwing_hardware_z_write(fourwing_hardware *InstancePtr, int Data);
/**
* Read from z gateway of fourwing_hardware. Assignments are LSB-justified.
*
* @param	InstancePtr is the z instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fourwing_hardware_z_read(fourwing_hardware *InstancePtr);
/**
* Write to y gateway of fourwing_hardware. Assignments are LSB-justified.
*
* @param	InstancePtr is the y instance to operate on.
* @param	Data is value to be written to gateway y.
*
* @return	None.
*
* @note    .
*
*/
void fourwing_hardware_y_write(fourwing_hardware *InstancePtr, int Data);
/**
* Read from y gateway of fourwing_hardware. Assignments are LSB-justified.
*
* @param	InstancePtr is the y instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fourwing_hardware_y_read(fourwing_hardware *InstancePtr);
/**
* Write to x gateway of fourwing_hardware. Assignments are LSB-justified.
*
* @param	InstancePtr is the x instance to operate on.
* @param	Data is value to be written to gateway x.
*
* @return	None.
*
* @note    .
*
*/
void fourwing_hardware_x_write(fourwing_hardware *InstancePtr, int Data);
/**
* Read from x gateway of fourwing_hardware. Assignments are LSB-justified.
*
* @param	InstancePtr is the x instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fourwing_hardware_x_read(fourwing_hardware *InstancePtr);
/**
* Read from xnew gateway of fourwing_hardware. Assignments are LSB-justified.
*
* @param	InstancePtr is the xnew instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fourwing_hardware_xnew_read(fourwing_hardware *InstancePtr);
/**
* Read from ynew gateway of fourwing_hardware. Assignments are LSB-justified.
*
* @param	InstancePtr is the ynew instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fourwing_hardware_ynew_read(fourwing_hardware *InstancePtr);
/**
* Read from znew gateway of fourwing_hardware. Assignments are LSB-justified.
*
* @param	InstancePtr is the znew instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fourwing_hardware_znew_read(fourwing_hardware *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif

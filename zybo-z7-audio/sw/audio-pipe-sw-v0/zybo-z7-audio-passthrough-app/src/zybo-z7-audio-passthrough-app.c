/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "xiicps.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "sleep.h"

#define SSM2603_ADDR    0x1A
#define IIC_DEVICE_ID   XPAR_I2C1_BASEADDR   // confirm index — see note below

XIicPs Iic;

int InitI2C(void) {
    XIicPs_Config *Config;
    int Status;

    Config = XIicPs_LookupConfig(IIC_DEVICE_ID);
    if (Config == NULL) {
        xil_printf("ERROR: I2C config lookup failed\r\n");
        return XST_FAILURE;
    }

    Status = XIicPs_CfgInitialize(&Iic, Config, Config->BaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: I2C CfgInitialize failed\r\n");
        return XST_FAILURE;
    }

    XIicPs_SetSClk(&Iic, 100000); // 100 kHz standard mode
    xil_printf("I2C1 initialized OK\r\n");
    return XST_SUCCESS;
}

// Returns XST_SUCCESS if the codec ACKs the write
int SSM2603_WriteReg(u8 regAddr, u16 data) {
    u8 buf[2];
    int Status;

    buf[0] = (regAddr << 1) | ((data >> 8) & 0x01);
    buf[1] = data & 0xFF;

    Status = XIicPs_MasterSendPolled(&Iic, buf, 2, SSM2603_ADDR);

    if (Status != XST_SUCCESS) {
        xil_printf("  -> Reg 0x%02X: NACK / send failed\r\n", regAddr);
        return XST_FAILURE;
    }

    // Wait for bus idle before next transaction
    while (XIicPs_BusIsBusy(&Iic));

    xil_printf("  -> Reg 0x%02X: ACK OK (wrote 0x%03X)\r\n", regAddr, data);
    return XST_SUCCESS;
}

int main(void) {
    int Status;
    int failCount = 0;

    xil_printf("\r\n--- SSM2603 I2C Bring-up Test ---\r\n");

    Status = InitI2C();
    if (Status != XST_SUCCESS) {
        xil_printf("HALTING: I2C peripheral init failed\r\n");
        return XST_FAILURE;
    }

    xil_printf("Testing device ACK at address 0x%02X...\r\n", SSM2603_ADDR);

    // Software reset - safest first write, defined behavior, easy to verify
    xil_printf("Test 1: Software reset (Reg 0x0F)\r\n");
    if (SSM2603_WriteReg(0x0F, 0x000) != XST_SUCCESS) failCount++;
    usleep(1000);

    // A few more benign writes to confirm repeated transactions are stable
    xil_printf("Test 2: Power management (Reg 0x06)\r\n");
    if (SSM2603_WriteReg(0x06, 0x072) != XST_SUCCESS) failCount++;

    xil_printf("Test 3: Digital audio I/F (Reg 0x07)\r\n");
    if (SSM2603_WriteReg(0x07, 0x00A) != XST_SUCCESS) failCount++;

    xil_printf("Test 4: Sampling rate (Reg 0x08)\r\n");
    if (SSM2603_WriteReg(0x08, 0x000) != XST_SUCCESS) failCount++;

    xil_printf("\r\n--- Results: %d/4 writes failed ---\r\n", failCount);
    if (failCount == 0) {
        xil_printf("PASS: I2C bring-up looks good, codec is ACKing.\r\n");
    } else {
        xil_printf("FAIL: Check wiring, MIO pin assignment, and device address.\r\n");
    }

    return 0;
}

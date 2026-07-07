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
#include "xi2srx.h"
#include "xi2stx.h"

#define SSM2603_ADDR    0x1A
#define IIC_DEVICE_ID   XPAR_I2C1_BASEADDR

#define I2S_RX_MCLK  12288000
#define I2S_RX_FS    48000      

XI2s_Rx I2sRxInstance;
XI2s_Tx I2sTxInstance;

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

int SSM2603_Init(void) {
    int failCount = 0;

    xil_printf("\r\n--- SSM2603 Full Init Sequence ---\r\n");
    
    xil_printf("\r\nStep 0: Software reset (Reg 0x0F)\r\n");
    if (SSM2603_WriteReg(0x0F, 0x000) != XST_SUCCESS) 
     failCount++;
    usleep(1000);

    xil_printf("Step 1: Power management - power up DAC/ADC/LineIn, Out muted (Reg 0x06)\r\n");
    if (SSM2603_WriteReg(0x06, 0x072) != XST_SUCCESS) 
     failCount++;

    xil_printf("Step 2a: Analog audio path - DACSEL=1, line-in to ADC (Reg 0x04)\r\n");
    if (SSM2603_WriteReg(0x04, 0x012) != XST_SUCCESS) 
     failCount++;

    xil_printf("Step 2b: Unmute ADC line inputs (Reg 0x00, 0x01)\r\n"); // LINMUTE=0, LINVOL=0dB, RINMUTE=0, RINVOL=0dB
    if (SSM2603_WriteReg(0x00, 0x017) != XST_SUCCESS) 
     failCount++;  
    if (SSM2603_WriteReg(0x01, 0x017) != XST_SUCCESS) 
     failCount++;  

    xil_printf("Step 3: Digital audio path - unmute DAC, ADC HPF enabled (Reg 0x05)\r\n");
    if (SSM2603_WriteReg(0x05, 0x000) != XST_SUCCESS) 
     failCount++;

    xil_printf("Step 4: Digital audio I/F - I2S, slave, 24-bit (Reg 0x07)\r\n");
    if (SSM2603_WriteReg(0x07, 0x00A) != XST_SUCCESS) 
     failCount++;

    xil_printf("Step 5: Sampling rate - normal mode, 256fs, 48kHz (Reg 0x08)\r\n");
    if (SSM2603_WriteReg(0x08, 0x000) != XST_SUCCESS) 
     failCount++;

    xil_printf("Step 6: Waiting for VMID capacitor charge (~50ms delay)\r\n");
    usleep(50000);

    xil_printf("Step 7: Activate digital core (Reg 0x09)\r\n");
    if (SSM2603_WriteReg(0x09, 0x001) != XST_SUCCESS) 
     failCount++;

    xil_printf("Step 8: Power management - clear Out bit, unmute DAC output (Reg 0x06)\r\n");
    if (SSM2603_WriteReg(0x06, 0x062) != XST_SUCCESS) 
     failCount++;
    
    return failCount;
}

int InitI2SCores(void) {
    XI2srx_Config *RxConfig;
    XI2stx_Config *TxConfig;
    int Status;

    RxConfig = XI2s_Rx_LookupConfig(XPAR_I2S_RECEIVER_0_BASEADDR);
    if (RxConfig == NULL) {
        xil_printf("ERROR: I2S RX config lookup failed\r\n");
        return XST_FAILURE;
    }
    Status = XI2s_Rx_CfgInitialize(&I2sRxInstance, RxConfig, RxConfig->BaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: I2S RX CfgInitialize failed\r\n");
        return XST_FAILURE;
    }

    TxConfig = XI2s_Tx_LookupConfig(XPAR_I2S_TRANSMITTER_0_BASEADDR);
    if (TxConfig == NULL) {
        xil_printf("ERROR: I2S TX config lookup failed\r\n");
        return XST_FAILURE;
    }
    Status = XI2s_Tx_CfgInitialize(&I2sTxInstance, TxConfig, TxConfig->BaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: I2S TX CfgInitialize failed\r\n");
        return XST_FAILURE;
    }

    xil_printf("I2S RX version: 0x%08X\r\n", XI2s_Rx_GetVersion(&I2sRxInstance));
    xil_printf("I2S TX version: 0x%08X\r\n", XI2s_Tx_GetVersion(&I2sTxInstance));

    XI2s_Rx_SetSclkOutDiv(&I2sRxInstance, I2S_RX_MCLK, I2S_RX_FS);
    XI2s_Rx_SetChMux(&I2sRxInstance, XI2S_RX_CHID0, XI2S_RX_CHMUX_XI2S_01);
    XI2s_Rx_Enable(&I2sRxInstance, TRUE);

    XI2s_Tx_SetChMux(&I2sTxInstance, XI2S_TX_CHID0, XI2S_TX_CHMUX_AXIS_01);
    XI2s_Tx_Enable(&I2sTxInstance, TRUE);

    xil_printf("I2S RX/TX cores configured and enabled\r\n");
    return XST_SUCCESS;
}


int main(void) {
    int Status;
    int failCount;

    xil_printf("\r\n--- Audio Passthrough Bring-up ---\r\n");

    Status = InitI2C();
    if (Status != XST_SUCCESS) {
        xil_printf("HALTING: I2C peripheral init failed\r\n");
        return XST_FAILURE;
    }

    failCount = SSM2603_Init();

    xil_printf("\r\n--- Results: %d/8 writes failed ---\r\n", failCount);
    if (failCount == 0)
        xil_printf("PASS: Codec fully initialized for line-in -> headphone passthrough at 48kHz.\r\n");
    else xil_printf("FAIL: Check the failed register(s) above.\r\n");
    
    
    Status = InitI2SCores();
    if (Status != XST_SUCCESS) {
        xil_printf("HALTING: I2S core init failed\r\n");
        return XST_FAILURE;
    }

    xil_printf("\r\n--- Audio passthrough active. Connect line-in to J7, headphones to J5. ---\r\n");

    while (1) {
        /* infinite loop */
    }
    
    return 0;
}

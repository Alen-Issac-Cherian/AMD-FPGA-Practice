

#include "iic_utils.h"
#define XPAR_XIICPS_0_DEVICE_ID 0
#define XPAR_XIICPS_1_DEVICE_ID 1

int ps_iic_init(u16 DeviceId, XIicPs* IicPs)
{
	int Status;
	XIicPs_Config *Config;

	Config = XIicPs_LookupConfig(DeviceId);
	if (NULL == Config) {
		return XST_FAILURE;
	}

	Status = XIicPs_CfgInitialize(IicPs, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Set the IIC serial clock rate.
	Status = XIicPs_SetSClk(IicPs, IIC_SCLK_RATE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

void set_iic_mux( XIicPs *IicPs, u8 MuxSelect, u8 Address)
{
	u8 data = MuxSelect;
	iic_write( IicPs, Address, data, 1 );
}

int iic_write( XIicPs *IicPs, u8 Address, u8 Data, s32 ByteCount)
{
	int Status;

	// Wait until bus is idle to start another transfer.
	while (XIicPs_BusIsBusy(IicPs)) {
		/* NOP */
	}

	// Send the buffer using the IIC and check for errors.
	Status = XIicPs_MasterSendPolled(IicPs, &Data, ByteCount, Address);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int iic_write2( XIicPs *IicPs, u8 Address, u8 Register, u8 Data )
{
	u8 WriteBuffer[2];
	int Status;

	/* A temporary write buffer must be used which contains both the address
	 * and the data to be written, put the address in first */
	WriteBuffer[0] = Register;
	WriteBuffer[1] = Data;


	// Wait until bus is idle to start another transfer.

	while (XIicPs_BusIsBusy(IicPs)) {
		/* NOP */
	}

	// Send the buffer using the IIC and check for errors.
	Status = XIicPs_MasterSendPolled(IicPs, WriteBuffer, 2, Address);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int iic_write3( XIicPs *IicPs, u8 Address, u8 h_addr, u8 l_addr, u8 Data)
{
	u8 WriteBuffer[3];
	int Status;

	/* A temporary write buffer must be used which contains both the address
	* and the data to be written, put the address in first */
	WriteBuffer[0] = h_addr;
	WriteBuffer[1] = l_addr;
	WriteBuffer[2] = Data;



	// Wait until bus is idle to start another transfer.

	while (XIicPs_BusIsBusy(IicPs)) {
		/* NOP */
	}

	 //Set the IIC Repeated Start option.
	Status = XIicPs_SetOptions(IicPs, XIICPS_REP_START_OPTION);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

	// Send the buffer using the IIC and check for errors.
	XIicPs_MasterSend(IicPs, WriteBuffer, 3, Address);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}

	 //Clear the IIC Repeated Start option.
	Status = XIicPs_ClearOptions(IicPs, XIICPS_REP_START_OPTION);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

    sleep(1);
	return XST_SUCCESS;
}

int iic_read( XIicPs *IicPs, u8 Address, u8 Register, u8 *Data, int ByteCount)
{

	int Status;

	// Wait until bus is idle to start another transfer.
	while (XIicPs_BusIsBusy(IicPs)) {
		/* NOP */
	}

	// Set the IIC Repeated Start option.
	Status = XIicPs_SetOptions(IicPs, XIICPS_REP_START_OPTION);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	// Set the address of the register to read
	Status = XIicPs_MasterSendPolled(IicPs, &Register, 1, Address);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Receive the data.
	Status = XIicPs_MasterRecvPolled(IicPs, Data, ByteCount, Address);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Clear the IIC Repeated Start option.
	Status = XIicPs_ClearOptions(IicPs, XIICPS_REP_START_OPTION);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int iic_read2( XIicPs *IicPs, u8 Address, u8 h_addr, u8 l_addr, u8 *Data, int ByteCount)
{
	u8 ReadBuffer_0, ReadBuffer_1;
	ReadBuffer_1 = h_addr;
	ReadBuffer_0 = l_addr;
	int Status;

	// Wait until bus is idle to start another transfer.
	while (XIicPs_BusIsBusy(IicPs)) {
		/* NOP */
	}

	// Set the IIC Repeated Start option.
	Status = XIicPs_SetOptions(IicPs, XIICPS_REP_START_OPTION);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	// Set the address of the register to read
	XIicPs_MasterSend(IicPs, &ReadBuffer_1, 1, Address);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}

	XIicPs_MasterSend(IicPs, &ReadBuffer_0, 1, Address);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}

	// Receive the data.
	XIicPs_MasterRecv(IicPs, Data, ByteCount, Address);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}

	// Clear the IIC Repeated Start option.
	Status = XIicPs_ClearOptions(IicPs, XIICPS_REP_START_OPTION);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int check_hdmi_hpd_status(XIicPs *IicPs, u8 Address)
{
	int Status;
	u8 data = 0x00;

	//
	Status = iic_read(IicPs, Address, ADV7511_HDP_REG_ADDR, &data, 1);
	// Status = iic_read2( IicPs, /*ZC702_HDMI_ADDR*/ 0x39, 0x42, &data, 1);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	if((data & ADV7511_HPD_CTRL_MASK) == ADV7511_HPD_CTRL_MASK) {
		// Monitor Connected
		return 1;
	}
	else
	{
		// Monitor not connected
		return 0;
	}
}

int check_ov426_status (XIicPs *IicPs, u8 Address)
{
	int Status;
	u8 l_data = 0x00;
	u8 h_data = 0x00;
	//
	Status = iic_read2(IicPs, Address, OV426_REG1_H_ADDR, OV426_REG1_L_ADDR, &l_data, 1);
	// Status = iic_read2( IicPs, /*ZC702_HDMI_ADDR*/ 0x39, 0x42, &data, 1);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = iic_read2(IicPs, Address, OV426_REG2_H_ADDR, OV426_REG2_L_ADDR, &h_data, 1);
	// Status = iic_read2( IicPs, /*ZC702_HDMI_ADDR*/ 0x39, 0x42, &data, 1);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	if((l_data == 0x69) && (h_data == 0x4F)) {
		// sensor Connected
		return 1;
	}
	else
	{
		// sensor not connected
		return 0;
	}
}


void configure_adv7511(XIicPs *IicPs, u8 Address)
{

	// Power-up the Tx
	iic_write2(IicPs, Address, 0x41,0x10);


	// Fixed registers that must be set on power up
	iic_write2(IicPs, Address, 0x98, 0x03);
	iic_write2(IicPs, Address, 0x9A, 0xE0);
	iic_write2(IicPs, Address, 0x9C, 0x30);
	iic_write2(IicPs, Address, 0x9D, 0x61);
	iic_write2(IicPs, Address, 0xA2, 0xA4);
	iic_write2(IicPs, Address, 0xA3, 0xA4);
	iic_write2(IicPs, Address, 0xE0, 0xD0);
	iic_write2(IicPs, Address, 0xF9, 0x00);

	// Color Space Conversion
	iic_write2(IicPs, Address, 0x18, 0xE7); //CSC Enabled (YCbCr to RGB)

	// Set RGB in AVinfo Frame
	iic_write2(IicPs, Address, 0x55, 0x00);
	// Aspect Ration
	iic_write2(IicPs, Address, 0x56, 0x28);

	// HPD Control always high
	iic_write2(IicPs, Address, 0xD6, 0xC0);

	// DVI Mode, no HDCP
	iic_write2(IicPs, Address, 0xAF, 0x04);

	// Fixed I2C Address
	iic_write2(IicPs, Address, 0xF9, 0x00);

}

/*This function set the parameters specific for the ZC702*/
void configure_adv7511_zc702(XIicPs *IicPs, u8 Address)
{
    // ADV7511 Input / Output Mode
    //YCbCr 422 with Separated Syncs
    iic_write2(IicPs, Address, 0x15, 0x01);
    //YCbCr444 Output Format, Style 1, 8bpc
    iic_write2(IicPs, Address, 0x16, 0x38);
    //Video Input Justification: Right justified
    iic_write2(IicPs, Address, 0x48, 0x08);
}

void configure_ov426(XIicPs *IicPs, u8 Address)
{
	iic_write3(IicPs, Address, 0x01, 0x03, 0x01);
	iic_write3(IicPs, Address, 0x30, 0x25, 0x06);
	iic_write3(IicPs, Address, 0x30, 0x26, 0x1C);
	iic_write3(IicPs, Address, 0x32, 0x05, 0x01);
	iic_write3(IicPs, Address, 0x01, 0x00, 0x01);
	iic_write3(IicPs, Address, 0x30, 0x24, 0x04);
	iic_write3(IicPs, Address, 0x32, 0x09, 0x03);
	iic_write3(IicPs, Address, 0x37, 0x01, 0x41); //40 in rec, 41 for mirror
	iic_write3(IicPs, Address, 0x37, 0x02, 0x4C); //4B for lc, 4c rec, 4b used by japanese //3004 =01, 3702 = 4c sharp image ISO v5 setting
	iic_write3(IicPs, Address, 0x30, 0x03, 0x31); //32 for lc , 31 for sc
	iic_write3(IicPs, Address, 0x32, 0x04, 0x87);
	iic_write3(IicPs, Address, 0x30, 0x28, 0xB0);
	iic_write3(IicPs, Address, 0x30, 0x27, 0x20);
	iic_write3(IicPs, Address, 0x5A, 0x40, 0x05);
	iic_write3(IicPs, Address, 0x3A, 0x19, 0x3E);
	iic_write3(IicPs, Address, 0x5A, 0x00, 0x04);
	iic_write3(IicPs, Address, 0x40, 0x00, 0x89);
	iic_write3(IicPs, Address, 0x40, 0x05, 0x1A); //1A  //0A for Japanese to use extra pixel info
	iic_write3(IicPs, Address, 0x30, 0x20, 0x09);
	iic_write3(IicPs, Address, 0x30, 0x24, 0x00);
	iic_write3(IicPs, Address, 0x3A, 0x0F, 0x58); //78
	iic_write3(IicPs, Address, 0x3A, 0x10, 0x48); //68
	iic_write3(IicPs, Address, 0x3A, 0x1B, 0x64); //78
	iic_write3(IicPs, Address, 0x3A, 0x1E, 0x40); //68
	iic_write3(IicPs, Address, 0x32, 0x03, 0x27);
	iic_write3(IicPs, Address, 0x40, 0x52, 0x01);
	iic_write3(IicPs, Address, 0x30, 0x2A, 0x00);
	//iic_write3(IicPs, Address, 0x30, 0x04, 0x01);

	iic_write3(IicPs, Address, 0x35, 0x03, 0x03);
	iic_write3(IicPs, Address, 0x35, 0x01, 0x1C);
	iic_write3(IicPs, Address, 0x35, 0x02, 0xE0);
	iic_write3(IicPs, Address, 0x35, 0x0B, 0x3F);

	//iic_write3(IicPs, Address, 0x51, 0x86, 4); // red gain MSB
	//iic_write3(IicPs, Address, 0x51, 0x87, 0); // red gain LSB
	//iic_write3(IicPs, Address, 0x51, 0x88, 4); // green gain MSB
	//iic_write3(IicPs, Address, 0x51, 0x89, 0); // green gain LSB
	//iic_write3(IicPs, Address, 0x51, 0x8A, 4); // blue gain MSB
	//iic_write3(IicPs, Address, 0x51, 0x8B, 0); // blue gain LSB

	iic_write3(IicPs, Address, 0x32, 0x05, 0x00);
	iic_write3(IicPs, Address, 0x35, 0x01, 0x1C);
	iic_write3(IicPs, Address, 0x35, 0x02, 0xE0);
	iic_write3(IicPs, Address, 0x35, 0x0B, 0x3F);
	iic_write3(IicPs, Address, 0x40, 0x09, 0x0A);
	iic_write3(IicPs, Address, 0x32, 0x03, 0x27);
	iic_write3(IicPs, Address, 0x32, 0x04, 0x87);
	iic_write3(IicPs, Address, 0x32, 0x06, 0x00);
	iic_write3(IicPs, Address, 0x32, 0x09, 0x03);

}

/*This wait for a monitor to be connected to the ADV7511*/
void wait_for_monitor(XIicPs *IicPs, u8 Address)
{
    //Check the state of the HPD signal
	u8 monitor_connected = 0;
	u8 temp = 2;
    while(!monitor_connected)
    {
    	monitor_connected = check_hdmi_hpd_status(IicPs, Address);

    	if(monitor_connected != temp)
    	{
    		temp = monitor_connected;
    		if(monitor_connected)
    		{
    			xil_printf("HDMI Monitor connected\r\n");
    		}
    		else
    		{
    			xil_printf("No HDMI Monitor connected / Monitor Disconnected\r\n");
    		}
    		sleep(2);
    	}
    }
}

void wait_for_ov426(XIicPs *IicPs, u8 Address)
{
    //Check the state of the HPD signal
	u8 ov426_connected = 0;
	u8 temp = 2;
    while(!ov426_connected)
    {
    	ov426_connected = check_ov426_status(IicPs, Address);

    	if(ov426_connected != temp)
    	{
    		temp = ov426_connected;
    		if(ov426_connected)
    		{
    			xil_printf("Image sensor connected\r\n");
    		}
    		else
    		{
    			xil_printf("No Image sensor connected / sensor disconnected\r\n");
    		}
    		sleep(2);
    	}
    }
}

void zc702_set_on_board_hdmi(XIicPs *IicPs)
{
    //Configure the PS IIC Controller
    ps_iic_init(XPAR_XIICPS_0_DEVICE_ID, IicPs);

    // Set the iic mux to the ADV7511
    set_iic_mux(IicPs, ZC702_I2C_SELECT_HDMI, ZC702_I2C_MUX_ADDR);

    //Wait for the monitor to be connected
    wait_for_monitor(IicPs, ZC702_HDMI_ADDR);

    // ADV7511 Basic Configuration
    configure_adv7511(IicPs,ZC702_HDMI_ADDR);
    // ADV7511 ZC702 Specific configuration
    configure_adv7511_zc702(IicPs,ZC702_HDMI_ADDR);
}

void zc702_set_on_board_ov426(XIicPs *IicPs)
{
    //Configure the PS IIC Controller
    ps_iic_init(XPAR_XIICPS_1_DEVICE_ID, IicPs);

    // Set the iic mux to the ADV7511
    //set_iic_mux(IicPs, MUX_CHANNEL, MUX_ADDR);

    // ov426 Configuration
    configure_ov426(IicPs, OV426_ADDR);

    //Wait for the ov426 to be connected
    //wait_for_ov426(IicPs, OV426_ADDR);

}

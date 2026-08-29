


#ifndef SRC_IIC_UTILS_H_
#define SRC_IIC_UTILS_H_


#include "xiicps.h"
#include "sleep.h"
#include "broncho_hw.h"

#define IIC_SCLK_RATE		400000

//OV426
#define MUX_ADDR        	0x70
#define OV426_ADDR      	0x36
#define MUX_CHANNEL     	0x07
#define OV426_REG1_H_ADDR	0x30
#define OV426_REG1_L_ADDR	0x0A
#define OV426_REG2_H_ADDR	0x30
#define OV426_REG2_L_ADDR	0x3B

//ADV7511
#define ADV7511_HPD_CTRL_MASK	0x40 // bit 6 = state of HPD
#define ADV7511_HDP_REG_ADDR	0x42

	int ps_iic_init(u16 DeviceId, XIicPs* IicPs);
	int iic_write( XIicPs *IicPs, u8 Address, u8 Data, s32 ByteCount);
	int iic_write2( XIicPs *IicPs, u8 Address, u8 Register, u8 Data );
	int iic_write3( XIicPs *IicPs, u8 Address, u8 h_addr, u8 l_addr, u8 Data);
	int iic_read( XIicPs *IicPs, u8 Address, u8 Register, u8 *Data, int ByteCount);
	int iic_read2( XIicPs *IicPs, u8 Address, u8 h_addr, u8 l_addr, u8 *Data, int ByteCount);
	void set_iic_mux( XIicPs *IicPs, u8 MuxSelect, u8 Address);
	int check_hdmi_hpd_status(XIicPs *IicPs, u8 Address);
	int check_ov426_status (XIicPs *IicPs, u8 Address);
	void configure_adv7511(XIicPs *IicPs, u8 Address);
	void configure_adv7511_zc702(XIicPs *IicPs, u8 Address);
	void configure_ov426(XIicPs *IicPs, u8 Address);
	void wait_for_monitor(XIicPs *IicPs, u8 Address);
	void wait_for_ov426(XIicPs *IicPs, u8 Address);
	void zc702_set_on_board_hdmi(XIicPs *IicPs);
	void zc702_set_on_board_ov426(XIicPs *IicPs);

#endif /* SRC_IIC_UTILS_H_ */

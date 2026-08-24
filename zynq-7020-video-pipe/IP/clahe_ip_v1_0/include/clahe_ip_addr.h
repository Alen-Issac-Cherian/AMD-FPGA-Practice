/*
 * File Name:         d:\soc_prj\hdlcoder\CLAHE\ipcore\clahe_ip_v1_0\include\clahe_ip_addr.h
 * Description:       C Header File
 * Created:           2023-12-22 10:30:13
*/

#ifndef CLAHE_IP_H_
#define CLAHE_IP_H_

#define  IPCore_Reset_clahe_ip                            0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_clahe_ip                           0x4  //enabled (by default) when bit 0 is 0x1
#define  AXI4_Stream_Video_0_Slave_ImageWidth_clahe_ip    0x8  //Active pixels per line in each video frame for "AXI4-Stream Video 0 Slave" interface, the default value is 1920.
#define  AXI4_Stream_Video_0_Slave_ImageHeight_clahe_ip   0xC  //Active video lines in each video frame for "AXI4-Stream Video 0 Slave" interface, the default value is 1080.
#define  AXI4_Stream_Video_0_Slave_HPorch_clahe_ip        0x10  //Horizontal porch length in each video frame for "AXI4-Stream Video 0 Slave" interface, the default value is 280.
#define  AXI4_Stream_Video_0_Slave_VPorch_clahe_ip        0x14  //Vertical porch length in each video frame for "AXI4-Stream Video 0 Slave" interface, the default value is 45.
#define  AXI4_Master_0_Rd_BaseAddr_clahe_ip               0x18  //Base Address offset for AXI4 Master 0 Read (Default Base Address: hex2dec(80000000))
#define  AXI4_Master_0_Wr_BaseAddr_clahe_ip               0x1C  //Base Address offset for AXI4 Master 0 Write (Default Base Address: hex2dec(80000000))
#define  IPCore_Timestamp_clahe_ip                        0x20  //contains unique IP timestamp (yymmddHHMM): 2312221029

#endif /* CLAHE_IP_H_ */

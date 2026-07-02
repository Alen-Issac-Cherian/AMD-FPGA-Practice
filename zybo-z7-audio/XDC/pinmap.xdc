## I2S Bit Clock (shared, single pin)
set_property PACKAGE_PIN R19 [get_ports sclk_out_0]
set_property IOSTANDARD LVCMOS33 [get_ports sclk_out_0]

## I2S Channel Clock — Playback direction
set_property PACKAGE_PIN T19 [get_ports lrclk_out_pb_0]
set_property IOSTANDARD LVCMOS33 [get_ports lrclk_out_pb_0]

## I2S Channel Clock — Record direction
set_property PACKAGE_PIN Y18 [get_ports lrclk_out_rec_0]
set_property IOSTANDARD LVCMOS33 [get_ports lrclk_out_rec_0]

## I2S Playback Data (Transmitter → Codec)
set_property PACKAGE_PIN R18 [get_ports sdata_0_out_0]
set_property IOSTANDARD LVCMOS33 [get_ports sdata_0_out_0]

## I2S Record Data (Codec → Receiver)
set_property PACKAGE_PIN R16 [get_ports sdata_0_in_0]
set_property IOSTANDARD LVCMOS33 [get_ports sdata_0_in_0]

## Master Clock
set_property PACKAGE_PIN R17 [get_ports MCLK_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports MCLK_OUT]
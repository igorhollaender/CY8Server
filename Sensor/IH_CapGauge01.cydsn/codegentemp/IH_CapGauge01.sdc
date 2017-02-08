# THIS FILE IS AUTOMATICALLY GENERATED
# Project: C:\Users\igor.hollaender\Documents\GitHub\CY8Server\Sensor\IH_CapGauge01.cydsn\IH_CapGauge01.cyprj
# Date: Wed, 08 Feb 2017 09:59:26 GMT
#set_units -time ns
create_clock -name {UART_SCBCLK(FFB)} -period 666.66666666666663 -waveform {0 333.333333333333} [list [get_pins {ClockBlock/ff_div_5}]]
create_clock -name {CapSense_1_SenseClk(FFB)} -period 10625 -waveform {0 5312.5} [list [get_pins {ClockBlock/ff_div_8}]]
create_clock -name {CapSense_1_SampleClk(FFB)} -period 10625 -waveform {0 5312.5} [list [get_pins {ClockBlock/ff_div_9}]]
create_clock -name {CyRouted1} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/dsi_in_0}]]
create_clock -name {CyILO} -period 31250 -waveform {0 15625} [list [get_pins {ClockBlock/ilo}]]
create_clock -name {CyLFCLK} -period 31250 -waveform {0 15625} [list [get_pins {ClockBlock/lfclk}]]
create_clock -name {CyIMO} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/imo}]]
create_clock -name {CyHFCLK} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/hfclk}]]
create_clock -name {CySYSCLK} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/sysclk}]]
create_generated_clock -name {UART_SCBCLK} -source [get_pins {ClockBlock/hfclk}] -edges {1 17 33} [list]
create_generated_clock -name {CapSense_1_SenseClk} -source [get_pins {ClockBlock/hfclk}] -edges {1 255 511} [list]
create_generated_clock -name {CapSense_1_SampleClk} -source [get_pins {ClockBlock/hfclk}] -edges {1 255 511} [list]

set_false_path -from [get_pins {__ONE__/q}]

# Component constraints for C:\Users\igor.hollaender\Documents\GitHub\CY8Server\Sensor\IH_CapGauge01.cydsn\TopDesign\TopDesign.cysch
# Project: C:\Users\igor.hollaender\Documents\GitHub\CY8Server\Sensor\IH_CapGauge01.cydsn\IH_CapGauge01.cyprj
# Date: Wed, 08 Feb 2017 09:59:23 GMT
# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\ryand\OneDrive\Documents\Xilinx\ECE153A\Vitis\ECE153a_Lab1\Hello_World_system\_ide\scripts\debugger_hello_world-default_44.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\ryand\OneDrive\Documents\Xilinx\ECE153A\Vitis\ECE153a_Lab1\Hello_World_system\_ide\scripts\debugger_hello_world-default_44.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys A7 -100T 210292B62091A" && level==0 && jtag_device_ctx=="jsn-Nexys A7 -100T-210292B62091A-13631093-0"}
fpga -file C:/Users/ryand/OneDrive/Documents/Xilinx/ECE153A/Vitis/ECE153a_Lab1/Hello_World/_ide/bitstream/download.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/ryand/OneDrive/Documents/Xilinx/ECE153A/Vitis/ECE153a_Lab1/ECE153a_Lab1/export/ECE153a_Lab1/hw/system_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/ryand/OneDrive/Documents/Xilinx/ECE153A/Vitis/ECE153a_Lab1/Hello_World/Debug/Hello_World.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con

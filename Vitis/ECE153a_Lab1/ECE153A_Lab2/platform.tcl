# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\ryand\OneDrive\Documents\Xilinx\ECE153A\Vitis\ECE153a_Lab1\ECE153A_Lab2\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\ryand\OneDrive\Documents\Xilinx\ECE153A\Vitis\ECE153a_Lab1\ECE153A_Lab2\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ECE153A_Lab2}\
-hw {C:\Users\ryand\OneDrive\Documents\Xilinx\ECE153A\Vivado\ECE_153A_Lab2\system_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Users/ryand/OneDrive/Documents/Xilinx/ECE153A/Vitis/ECE153a_Lab1}

platform write
platform generate -domains 
platform active {ECE153A_Lab2}
bsp reload
bsp setdriver -ip sevenSeg_0 -driver generic -ver 3.0 3.1
bsp write
bsp reload
catch {bsp regenerate}
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {ECE153A_Lab2}
domain active {standalone_domain}
domain active {standalone_microblaze_0}
platform generate -quick
domain active {standalone_microblaze_0}
bsp reload
bsp setdriver -ip sevenSeg_0 -driver generic -ver 3.0 3.1
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {ECE153A_Lab2}

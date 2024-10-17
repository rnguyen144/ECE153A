# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\ryand\OneDrive\Documents\Xilinx\ECE153A\Vitis\ECE153a_Lab1\ECE153a_Lab1\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\ryand\OneDrive\Documents\Xilinx\ECE153A\Vitis\ECE153a_Lab1\ECE153a_Lab1\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ECE153a_Lab1}\
-hw {C:\Users\ryand\OneDrive\Documents\Xilinx\ECE153A\Vivado\ECE_152A_Lab1\system_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Users/ryand/OneDrive/Documents/Xilinx/ECE153A/Vitis/ECE153a_Lab1}

platform write
platform generate -domains 
platform active {ECE153a_Lab1}
bsp reload
bsp setdriver -ip sevenSeg_0 -driver generic -ver 3.0 3.1
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {ECE153a_Lab1}
platform generate
platform active {ECE153a_Lab1}
platform generate -domains 

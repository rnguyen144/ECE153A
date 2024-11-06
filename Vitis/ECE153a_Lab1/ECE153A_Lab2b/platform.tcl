# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\ryand\OneDrive\Documents\Xilinx\ECE153A\Vitis\ECE153a_Lab1\ECE153A_Lab2b\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\ryand\OneDrive\Documents\Xilinx\ECE153A\Vitis\ECE153a_Lab1\ECE153A_Lab2b\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ECE153A_Lab2b}\
-hw {C:\Users\ryand\OneDrive\Documents\Xilinx\ECE153A\Vivado\ECE_153A_Lab2\system_wrapper_2b.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Users/ryand/OneDrive/Documents/Xilinx/ECE153A/Vitis/ECE153a_Lab1}

platform write
platform generate -domains 
platform active {ECE153A_Lab2b}
bsp reload
bsp reload
bsp setdriver -ip sevenSeg_0 -driver generic -ver 3.0 3.1
bsp write
bsp reload
catch {bsp regenerate}

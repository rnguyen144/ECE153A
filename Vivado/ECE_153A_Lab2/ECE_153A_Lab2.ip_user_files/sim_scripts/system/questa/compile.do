vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/microblaze_v11_0_9
vlib questa_lib/msim/lmb_v10_v3_0_12
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_21
vlib questa_lib/msim/blk_mem_gen_v8_4_5
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_26
vlib questa_lib/msim/fifo_generator_v13_2_7
vlib questa_lib/msim/axi_data_fifo_v2_1_25
vlib questa_lib/msim/axi_crossbar_v2_1_27
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_intc_v4_1_17
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/mdm_v3_2_23
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_vip_v1_1_12
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/axi_timer_v2_0_28
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_28

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap microblaze_v11_0_9 questa_lib/msim/microblaze_v11_0_9
vmap lmb_v10_v3_0_12 questa_lib/msim/lmb_v10_v3_0_12
vmap lmb_bram_if_cntlr_v4_0_21 questa_lib/msim/lmb_bram_if_cntlr_v4_0_21
vmap blk_mem_gen_v8_4_5 questa_lib/msim/blk_mem_gen_v8_4_5
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_26 questa_lib/msim/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 questa_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 questa_lib/msim/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 questa_lib/msim/axi_crossbar_v2_1_27
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_17 questa_lib/msim/axi_intc_v4_1_17
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap mdm_v3_2_23 questa_lib/msim/mdm_v3_2_23
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_vip_v1_1_12 questa_lib/msim/axi_vip_v1_1_12
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap axi_timer_v2_0_28 questa_lib/msim/axi_timer_v2_0_28
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_28 questa_lib/msim/axi_gpio_v2_0_28

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/system_mig_7series_0_0_mig_sim.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/system_mig_7series_0_0.v" \

vcom -work microblaze_v11_0_9  -93 \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/057e/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_microblaze_0_0/sim/system_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_12  -93 \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_dlmb_v10_0/sim/system_dlmb_v10_0.vhd" \
"../../../bd/system/ip/system_ilmb_v10_0/sim/system_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_21  -93 \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/a177/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_dlmb_bram_if_cntlr_0/sim/system_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/system/ip/system_ilmb_bram_if_cntlr_0/sim/system_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_lmb_bram_0/sim/system_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93 \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_17  -93 \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_microblaze_0_axi_intc_0/sim/system_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_4  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_microblaze_0_xlconcat_0/sim/system_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_23  -93 \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/b8f4/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_mdm_1_0/sim/system_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_rst_mig_7series_0_100M_0/sim/system_rst_mig_7series_0_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/sim/bd_919a.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_919a_one_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_919a_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_919a_arsw_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_919a_rsw_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_919a_awsw_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_919a_wsw_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_919a_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_919a_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_919a_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_919a_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_919a_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_919a_sarn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_919a_srn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_919a_s01mmu_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_919a_s01tr_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_919a_s01sic_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_919a_s01a2s_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_919a_sarn_1.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_919a_srn_1.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_919a_sawn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_919a_swn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_919a_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_919a_m00s2a_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_919a_m00arn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_919a_m00rn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_919a_m00awn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_919a_m00wn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_919a_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_919a_m00e_0.sv" \

vlog -work axi_vip_v1_1_12  -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/sim/system_smartconnect_0_0.v" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_28  -93 \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/2389/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_axi_timer_0_0/sim/system_axi_timer_0_0.vhd" \
"../../../bd/system/ip/system_axi_timer_1_0/sim/system_axi_timer_1_0.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_28  -93 \
"../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \
"../../../bd/system/ip/system_axi_gpio_0_1/sim/system_axi_gpio_0_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ECE_152A_Lab1.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ipshared/71e2/src/lab3_user_logic.v" \
"../../../bd/system/ipshared/71e2/hdl/sevenSeg_v1_0_S00_AXI.v" \
"../../../bd/system/ipshared/71e2/hdl/sevenSeg_v1_0.v" \
"../../../bd/system/ip/system_sevenSeg_0_0/sim/system_sevenSeg_0_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"


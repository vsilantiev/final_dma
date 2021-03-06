# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7z020clg484-1
set_property target_language Verilog [current_project]
set_property board em.avnet.com:zynq:zed:d [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property ip_repo_paths {
  /home/vladimir/Z/zedboard/Final_DMA/IPCore/Emul
  /home/vladimir/Z/zedboard/Final_DMA/IPCore/def_stream_1.0
  /home/vladimir/Z/zedboard/Final_DMA/IPCore/init_dma_v4_4.0
  /home/vladimir/Z/zedboard/Final_DMA/IPCore
} [current_fileset]

add_files /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/testDMA.bd
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_processing_system7_0_0/testDMA_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_axi_dma_0_0/testDMA_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_axi_dma_0_0/testDMA_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_axi_dma_0_0/testDMA_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_proc_sys_reset_0/testDMA_proc_sys_reset_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_proc_sys_reset_0/testDMA_proc_sys_reset_0.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_proc_sys_reset_0/testDMA_proc_sys_reset_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_xbar_1/testDMA_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_xbar_3/testDMA_xbar_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_axis_data_fifo_0_1/testDMA_axis_data_fifo_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_axis_data_fifo_0_1/testDMA_axis_data_fifo_0_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_ds_408/testDMA_auto_ds_408_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_ds_408/testDMA_auto_ds_408_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_pc_513/testDMA_auto_pc_513_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_ds_409/testDMA_auto_ds_409_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_ds_409/testDMA_auto_ds_409_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_pc_514/testDMA_auto_pc_514_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_ds_410/testDMA_auto_ds_410_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_ds_410/testDMA_auto_ds_410_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_pc_515/testDMA_auto_pc_515_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_pc_516/testDMA_auto_pc_516_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_us_411/testDMA_auto_us_411_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_us_411/testDMA_auto_us_411_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_pc_517/testDMA_auto_pc_517_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_us_412/testDMA_auto_us_412_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_us_412/testDMA_auto_us_412_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_pc_518/testDMA_auto_pc_518_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_us_413/testDMA_auto_us_413_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_us_413/testDMA_auto_us_413_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/testDMA_ooc.xdc]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/bd/testDMA/testDMA.bd]

read_verilog /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/sources_1/imports/hdl/testDMA_wrapper.v
read_xdc /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/constrs_1/new/testDMA_wrapper.xdc
set_property used_in_implementation false [get_files /home/vladimir/Z/zedboard/Final_DMA/testDMA.srcs/constrs_1/new/testDMA_wrapper.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/vladimir/Z/zedboard/Final_DMA/testDMA.data/wt [current_project]
set_property parent.project_dir /home/vladimir/Z/zedboard/Final_DMA [current_project]
synth_design -top testDMA_wrapper -part xc7z020clg484-1
write_checkpoint testDMA_wrapper.dcp
report_utilization -file testDMA_wrapper_utilization_synth.rpt -pb testDMA_wrapper_utilization_synth.pb

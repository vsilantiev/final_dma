proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param gui.test TreeTableDev
  create_project -in_memory -part xc7z020clg484-1
  set_property board em.avnet.com:zynq:zed:d [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/vladimir/Z/zedboard/final_dma/testDMA.data/wt [current_project]
  set_property parent.project_dir /home/vladimir/Z/zedboard/final_dma [current_project]
  add_files /home/vladimir/Z/zedboard/final_dma/testDMA.runs/synth_1/testDMA_wrapper.dcp
  read_xdc -ref testDMA_processing_system7_0_0 -cells inst /home/vladimir/Z/zedboard/final_dma/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_processing_system7_0_0/testDMA_processing_system7_0_0.xdc
  read_xdc -ref testDMA_axi_dma_0_0 -cells U0 /home/vladimir/Z/zedboard/final_dma/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_axi_dma_0_0/testDMA_axi_dma_0_0.xdc
  read_xdc -prop_thru_buffers -ref testDMA_proc_sys_reset_0 -cells U0 /home/vladimir/Z/zedboard/final_dma/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_proc_sys_reset_0/testDMA_proc_sys_reset_0_board.xdc
  read_xdc -ref testDMA_proc_sys_reset_0 -cells U0 /home/vladimir/Z/zedboard/final_dma/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_proc_sys_reset_0/testDMA_proc_sys_reset_0.xdc
  read_xdc /home/vladimir/Z/zedboard/final_dma/testDMA.srcs/constrs_1/new/testDMA_wrapper.xdc
  read_xdc -ref testDMA_axi_dma_0_0 -cells U0 /home/vladimir/Z/zedboard/final_dma/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_axi_dma_0_0/testDMA_axi_dma_0_0_clocks.xdc
  read_xdc -ref testDMA_axis_data_fifo_0_1 -cells inst /home/vladimir/Z/zedboard/final_dma/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_axis_data_fifo_0_1/testDMA_axis_data_fifo_0_1_clocks.xdc
  read_xdc -ref testDMA_auto_ds_1265 -cells inst /home/vladimir/Z/zedboard/final_dma/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_ds_1265/testDMA_auto_ds_1265_clocks.xdc
  read_xdc -ref testDMA_auto_ds_1266 -cells inst /home/vladimir/Z/zedboard/final_dma/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_ds_1266/testDMA_auto_ds_1266_clocks.xdc
  read_xdc -ref testDMA_auto_ds_1267 -cells inst /home/vladimir/Z/zedboard/final_dma/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_ds_1267/testDMA_auto_ds_1267_clocks.xdc
  read_xdc -ref testDMA_auto_us_1268 -cells inst /home/vladimir/Z/zedboard/final_dma/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_us_1268/testDMA_auto_us_1268_clocks.xdc
  read_xdc -ref testDMA_auto_us_1269 -cells inst /home/vladimir/Z/zedboard/final_dma/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_us_1269/testDMA_auto_us_1269_clocks.xdc
  read_xdc -ref testDMA_auto_us_1270 -cells inst /home/vladimir/Z/zedboard/final_dma/testDMA.srcs/sources_1/bd/testDMA/ip/testDMA_auto_us_1270/testDMA_auto_us_1270_clocks.xdc
  link_design -top testDMA_wrapper -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force testDMA_wrapper_opt.dcp
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  place_design 
  catch { report_io -file testDMA_wrapper_io_placed.rpt }
  catch { report_clock_utilization -file testDMA_wrapper_clock_utilization_placed.rpt }
  catch { report_utilization -file testDMA_wrapper_utilization_placed.rpt -pb testDMA_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file testDMA_wrapper_control_sets_placed.rpt }
  write_checkpoint -force testDMA_wrapper_placed.dcp
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  catch { report_drc -file testDMA_wrapper_drc_routed.rpt -pb testDMA_wrapper_drc_routed.pb }
  catch { report_power -file testDMA_wrapper_power_routed.rpt -pb testDMA_wrapper_power_summary_routed.pb }
  catch { report_route_status -file testDMA_wrapper_route_status.rpt -pb testDMA_wrapper_route_status.pb }
  catch { report_timing_summary -file testDMA_wrapper_timing_summary_routed.rpt -pb testDMA_wrapper_timing_summary_routed.pb }
  write_checkpoint -force testDMA_wrapper_routed.dcp
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  write_bitstream -force testDMA_wrapper.bit 
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}


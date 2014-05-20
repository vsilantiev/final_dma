@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.

set PATH=$XILINX/lib/$PLATFORM:$XILINX/bin/$PLATFORM;/opt/Xilinx/Vivado/2013.3/ids_lite/EDK/bin/lin64:/opt/Xilinx/Vivado/2013.3/ids_lite/ISE/bin/lin64;/opt/Xilinx/Vivado/2013.3/ids_lite/EDK/lib/lin64:/opt/Xilinx/Vivado/2013.3/ids_lite/ISE/lib/lin64;/opt/Xilinx/Vivado/2013.3/bin;%PATH%
set XILINX_PLANAHEAD=/opt/Xilinx/Vivado/2013.3

xelab -m64 --debug typical --relax -L work -L unisims_ver -L unimacro_ver -L secureip --snapshot testbench_behav --prj /home/chupa/Pravka2/Final_DMA/IPCore/Emul/edit_ip.sim/sim_1/behav/testbench.prj   work.testbench   work.glbl
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)

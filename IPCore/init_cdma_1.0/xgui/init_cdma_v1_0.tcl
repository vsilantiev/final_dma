#Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ ipgui::add_page $IPINST  -name "Page 0" -layout vertical]
	set Component_Name [ ipgui::add_param  $IPINST  -parent  $Page0  -name Component_Name ]
	set C_M00_AXI_LEN_DATA [ipgui::add_param $IPINST -parent $Page0 -name C_M00_AXI_LEN_DATA]
	set C_M00_OFFSET_DDR [ipgui::add_param $IPINST -parent $Page0 -name C_M00_OFFSET_DDR ]
	set C_M00_AXI_START_DATA_VALUE [ipgui::add_param $IPINST -parent $Page0 -name C_M00_AXI_START_DATA_VALUE]
set_property tooltip {The master will start generating data from the C_M_START_DATA_VALUE value} $C_M00_AXI_START_DATA_VALUE
	set C_M00_AXI_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -parent $Page0 -name C_M00_AXI_TARGET_SLAVE_BASE_ADDR]
set_property tooltip {The master requires a target slave base address.     // The master will initiate read and write transactions on the slave with base address specified here as a parameter.} $C_M00_AXI_TARGET_SLAVE_BASE_ADDR
	set C_M00_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_M00_AXI_ADDR_WIDTH ]
set_property tooltip {Width of M_AXI address bus. 
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.} $C_M00_AXI_ADDR_WIDTH
	set C_M00_AXI_DATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_M00_AXI_DATA_WIDTH ]
set_property tooltip {Width of M_AXI data bus.      // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH} $C_M00_AXI_DATA_WIDTH
	set C_M00_AXI_TRANSACTIONS_NUM [ipgui::add_param $IPINST -parent $Page0 -name C_M00_AXI_TRANSACTIONS_NUM ]
set_property tooltip {Transaction number is the number of write      // and read transactions the master will perform as a part of this example memory test.} $C_M00_AXI_TRANSACTIONS_NUM
	set C_M00_AXI_DST_ADDR [ipgui::add_param $IPINST -parent $Page0 -name C_M00_AXI_DST_ADDR]
}

proc update_PARAM_VALUE.C_M00_AXI_LEN_DATA { PARAM_VALUE.C_M00_AXI_LEN_DATA } {
	# Procedure called to update C_M00_AXI_LEN_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_LEN_DATA { PARAM_VALUE.C_M00_AXI_LEN_DATA } {
	# Procedure called to validate C_M00_AXI_LEN_DATA
	return true
}

proc update_PARAM_VALUE.C_M00_OFFSET_DDR { PARAM_VALUE.C_M00_OFFSET_DDR } {
	# Procedure called to update C_M00_OFFSET_DDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_OFFSET_DDR { PARAM_VALUE.C_M00_OFFSET_DDR } {
	# Procedure called to validate C_M00_OFFSET_DDR
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_START_DATA_VALUE { PARAM_VALUE.C_M00_AXI_START_DATA_VALUE } {
	# Procedure called to update C_M00_AXI_START_DATA_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_START_DATA_VALUE { PARAM_VALUE.C_M00_AXI_START_DATA_VALUE } {
	# Procedure called to validate C_M00_AXI_START_DATA_VALUE
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M00_AXI_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M00_AXI_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to update C_M00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_TRANSACTIONS_NUM { PARAM_VALUE.C_M00_AXI_TRANSACTIONS_NUM } {
	# Procedure called to update C_M00_AXI_TRANSACTIONS_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_TRANSACTIONS_NUM { PARAM_VALUE.C_M00_AXI_TRANSACTIONS_NUM } {
	# Procedure called to validate C_M00_AXI_TRANSACTIONS_NUM
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_DST_ADDR { PARAM_VALUE.C_M00_AXI_DST_ADDR } {
	# Procedure called to update C_M00_AXI_DST_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_DST_ADDR { PARAM_VALUE.C_M00_AXI_DST_ADDR } {
	# Procedure called to validate C_M00_AXI_DST_ADDR
	return true
}


proc update_MODELPARAM_VALUE.C_M00_AXI_START_DATA_VALUE { MODELPARAM_VALUE.C_M00_AXI_START_DATA_VALUE PARAM_VALUE.C_M00_AXI_START_DATA_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_START_DATA_VALUE}] ${MODELPARAM_VALUE.C_M00_AXI_START_DATA_VALUE}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_TRANSACTIONS_NUM { MODELPARAM_VALUE.C_M00_AXI_TRANSACTIONS_NUM PARAM_VALUE.C_M00_AXI_TRANSACTIONS_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_TRANSACTIONS_NUM}] ${MODELPARAM_VALUE.C_M00_AXI_TRANSACTIONS_NUM}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_DST_ADDR { MODELPARAM_VALUE.C_M00_AXI_DST_ADDR PARAM_VALUE.C_M00_AXI_DST_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_DST_ADDR}] ${MODELPARAM_VALUE.C_M00_AXI_DST_ADDR}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_LEN_DATA { MODELPARAM_VALUE.C_M00_AXI_LEN_DATA PARAM_VALUE.C_M00_AXI_LEN_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_LEN_DATA}] ${MODELPARAM_VALUE.C_M00_AXI_LEN_DATA}
}

proc update_MODELPARAM_VALUE.C_M00_OFFSET_DDR { MODELPARAM_VALUE.C_M00_OFFSET_DDR PARAM_VALUE.C_M00_OFFSET_DDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_OFFSET_DDR}] ${MODELPARAM_VALUE.C_M00_OFFSET_DDR}
}


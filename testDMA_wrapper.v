// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.3 (lin64) Build 329390 Wed Oct 16 18:26:55 MDT 2013
// Date        : Fri May 30 14:22:22 2014
// Host        : ubuntu running 64-bit Ubuntu 12.04.4 LTS
// Command     : write_verilog /home/vladimir/Z/zedboard/final_dma/testDMA_wrapper.v -mode pin_planning -force
// Design      : testDMA_wrapper
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module testDMA_wrapper(DDR_addr, DDR_ba, DDR_dm, DDR_dq, DDR_dqs_n, DDR_dqs_p, FIXED_IO_mio, DDR_cas_n, DDR_ck_n, DDR_ck_p, DDR_cke, DDR_cs_n, DDR_odt, DDR_ras_n, DDR_reset_n, DDR_we_n, FIXED_IO_ddr_vrn, FIXED_IO_ddr_vrp, FIXED_IO_ps_clk, FIXED_IO_ps_porb, FIXED_IO_ps_srstb, LD0, LD1, LD2, LD4, LD6, LD7, SW_0);
  inout [14:0] DDR_addr;
  inout [2:0] DDR_ba;
  inout [3:0] DDR_dm;
  inout [31:0] DDR_dq;
  inout [3:0] DDR_dqs_n;
  inout [3:0] DDR_dqs_p;
  inout [53:0] FIXED_IO_mio;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output LD0;
  output LD1;
  output LD2;
  output LD4;
  output LD6;
  output LD7;
  input SW_0;

endmodule

// (c) Copyright 1995-2014 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:user:init_dma:6.0
// IP Revision: 41

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
testDMA_init_dma_1_0 your_instance_name (
  .m00_len_ref(m00_len_ref),                    // output [31 : 0] m00_len_ref
  .m00_valid2stream(m00_valid2stream),          // output m00_valid2stream
  .m00_irq_dma(m00_irq_dma),                    // input m00_irq_dma
  .m00_irq_end_buff_dma(m00_irq_end_buff_dma),  // output m00_irq_end_buff_dma
  .m00_per_imp(m00_per_imp),                    // output [31 : 0] m00_per_imp
  .m00_start_capture(m00_start_capture),        // input m00_start_capture
  .s01_axi_awaddr(s01_axi_awaddr),              // input [10 : 0] s01_axi_awaddr
  .s01_axi_awprot(s01_axi_awprot),              // input [2 : 0] s01_axi_awprot
  .s01_axi_awvalid(s01_axi_awvalid),            // input s01_axi_awvalid
  .s01_axi_awready(s01_axi_awready),            // output s01_axi_awready
  .s01_axi_wdata(s01_axi_wdata),                // input [31 : 0] s01_axi_wdata
  .s01_axi_wstrb(s01_axi_wstrb),                // input [3 : 0] s01_axi_wstrb
  .s01_axi_wvalid(s01_axi_wvalid),              // input s01_axi_wvalid
  .s01_axi_wready(s01_axi_wready),              // output s01_axi_wready
  .s01_axi_bresp(s01_axi_bresp),                // output [1 : 0] s01_axi_bresp
  .s01_axi_bvalid(s01_axi_bvalid),              // output s01_axi_bvalid
  .s01_axi_bready(s01_axi_bready),              // input s01_axi_bready
  .s01_axi_araddr(s01_axi_araddr),              // input [10 : 0] s01_axi_araddr
  .s01_axi_arprot(s01_axi_arprot),              // input [2 : 0] s01_axi_arprot
  .s01_axi_arvalid(s01_axi_arvalid),            // input s01_axi_arvalid
  .s01_axi_arready(s01_axi_arready),            // output s01_axi_arready
  .s01_axi_rdata(s01_axi_rdata),                // output [31 : 0] s01_axi_rdata
  .s01_axi_rresp(s01_axi_rresp),                // output [1 : 0] s01_axi_rresp
  .s01_axi_rvalid(s01_axi_rvalid),              // output s01_axi_rvalid
  .s01_axi_rready(s01_axi_rready),              // input s01_axi_rready
  .s01_axi_aclk(s01_axi_aclk),                  // input s01_axi_aclk
  .s01_axi_aresetn(s01_axi_aresetn),            // input s01_axi_aresetn
  .m00_axi_awaddr(m00_axi_awaddr),              // output [31 : 0] m00_axi_awaddr
  .m00_axi_awprot(m00_axi_awprot),              // output [2 : 0] m00_axi_awprot
  .m00_axi_awvalid(m00_axi_awvalid),            // output m00_axi_awvalid
  .m00_axi_awready(m00_axi_awready),            // input m00_axi_awready
  .m00_axi_wdata(m00_axi_wdata),                // output [31 : 0] m00_axi_wdata
  .m00_axi_wstrb(m00_axi_wstrb),                // output [3 : 0] m00_axi_wstrb
  .m00_axi_wvalid(m00_axi_wvalid),              // output m00_axi_wvalid
  .m00_axi_wready(m00_axi_wready),              // input m00_axi_wready
  .m00_axi_bresp(m00_axi_bresp),                // input [1 : 0] m00_axi_bresp
  .m00_axi_bvalid(m00_axi_bvalid),              // input m00_axi_bvalid
  .m00_axi_bready(m00_axi_bready),              // output m00_axi_bready
  .m00_axi_araddr(m00_axi_araddr),              // output [31 : 0] m00_axi_araddr
  .m00_axi_arprot(m00_axi_arprot),              // output [2 : 0] m00_axi_arprot
  .m00_axi_arvalid(m00_axi_arvalid),            // output m00_axi_arvalid
  .m00_axi_arready(m00_axi_arready),            // input m00_axi_arready
  .m00_axi_rdata(m00_axi_rdata),                // input [31 : 0] m00_axi_rdata
  .m00_axi_rresp(m00_axi_rresp),                // input [1 : 0] m00_axi_rresp
  .m00_axi_rvalid(m00_axi_rvalid),              // input m00_axi_rvalid
  .m00_axi_rready(m00_axi_rready),              // output m00_axi_rready
  .m00_axi_aclk(m00_axi_aclk),                  // input m00_axi_aclk
  .m00_axi_aresetn(m00_axi_aresetn),            // input m00_axi_aresetn
  .m00_axi_error(m00_axi_error),                // output m00_axi_error
  .m00_axi_txn_done(m00_axi_txn_done),          // output m00_axi_txn_done
  .s00_axi_awaddr(s00_axi_awaddr),              // input [6 : 0] s00_axi_awaddr
  .s00_axi_awprot(s00_axi_awprot),              // input [2 : 0] s00_axi_awprot
  .s00_axi_awvalid(s00_axi_awvalid),            // input s00_axi_awvalid
  .s00_axi_awready(s00_axi_awready),            // output s00_axi_awready
  .s00_axi_wdata(s00_axi_wdata),                // input [31 : 0] s00_axi_wdata
  .s00_axi_wstrb(s00_axi_wstrb),                // input [3 : 0] s00_axi_wstrb
  .s00_axi_wvalid(s00_axi_wvalid),              // input s00_axi_wvalid
  .s00_axi_wready(s00_axi_wready),              // output s00_axi_wready
  .s00_axi_bresp(s00_axi_bresp),                // output [1 : 0] s00_axi_bresp
  .s00_axi_bvalid(s00_axi_bvalid),              // output s00_axi_bvalid
  .s00_axi_bready(s00_axi_bready),              // input s00_axi_bready
  .s00_axi_araddr(s00_axi_araddr),              // input [6 : 0] s00_axi_araddr
  .s00_axi_arprot(s00_axi_arprot),              // input [2 : 0] s00_axi_arprot
  .s00_axi_arvalid(s00_axi_arvalid),            // input s00_axi_arvalid
  .s00_axi_arready(s00_axi_arready),            // output s00_axi_arready
  .s00_axi_rdata(s00_axi_rdata),                // output [31 : 0] s00_axi_rdata
  .s00_axi_rresp(s00_axi_rresp),                // output [1 : 0] s00_axi_rresp
  .s00_axi_rvalid(s00_axi_rvalid),              // output s00_axi_rvalid
  .s00_axi_rready(s00_axi_rready),              // input s00_axi_rready
  .s00_axi_aclk(s00_axi_aclk),                  // input s00_axi_aclk
  .s00_axi_aresetn(s00_axi_aresetn)            // input s00_axi_aresetn
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file testDMA_init_dma_1_0.v when simulating
// the core, testDMA_init_dma_1_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.


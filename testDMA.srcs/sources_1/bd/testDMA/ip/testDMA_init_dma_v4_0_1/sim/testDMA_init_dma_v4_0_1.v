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


// IP VLNV: xilinx.com:user:init_dma_v4:4.0
// IP Revision: 63

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module testDMA_init_dma_v4_0_1 (
  m00_len_ref,
  m00_valid2stream,
  m00_irq_dma,
  s00_axi_aclk,
  s00_axi_aresetn,
  s00_axi_awaddr,
  s00_axi_awprot,
  s00_axi_awvalid,
  s00_axi_awready,
  s00_axi_wdata,
  s00_axi_wstrb,
  s00_axi_wvalid,
  s00_axi_wready,
  s00_axi_bresp,
  s00_axi_bvalid,
  s00_axi_bready,
  s00_axi_araddr,
  s00_axi_arprot,
  s00_axi_arvalid,
  s00_axi_arready,
  s00_axi_rdata,
  s00_axi_rresp,
  s00_axi_rvalid,
  s00_axi_rready,
  m00_axi_error,
  m00_axi_txn_done,
  m00_axi_aclk,
  m00_axi_aresetn,
  m00_axi_awaddr,
  m00_axi_awprot,
  m00_axi_awvalid,
  m00_axi_awready,
  m00_axi_wdata,
  m00_axi_wstrb,
  m00_axi_wvalid,
  m00_axi_wready,
  m00_axi_bresp,
  m00_axi_bvalid,
  m00_axi_bready,
  m00_axi_araddr,
  m00_axi_arprot,
  m00_axi_arvalid,
  m00_axi_arready,
  m00_axi_rdata,
  m00_axi_rresp,
  m00_axi_rvalid,
  m00_axi_rready,
  m01_axi_error,
  m01_axi_txn_done,
  m01_axi_aclk,
  m01_axi_aresetn,
  m01_axi_awaddr,
  m01_axi_awprot,
  m01_axi_awvalid,
  m01_axi_awready,
  m01_axi_wdata,
  m01_axi_wstrb,
  m01_axi_wvalid,
  m01_axi_wready,
  m01_axi_bresp,
  m01_axi_bvalid,
  m01_axi_bready,
  m01_axi_araddr,
  m01_axi_arprot,
  m01_axi_arvalid,
  m01_axi_arready,
  m01_axi_rdata,
  m01_axi_rresp,
  m01_axi_rvalid,
  m01_axi_rready
);

output [31 : 0] m00_len_ref;
output m00_valid2stream;
input m00_irq_dma;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *)
input s00_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *)
input s00_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *)
input [6 : 0] s00_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *)
input [2 : 0] s00_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *)
input s00_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *)
output s00_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *)
input [31 : 0] s00_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *)
input [3 : 0] s00_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *)
input s00_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *)
output s00_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *)
output [1 : 0] s00_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *)
output s00_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *)
input s00_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *)
input [6 : 0] s00_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *)
input [2 : 0] s00_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *)
input s00_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *)
output s00_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *)
output [31 : 0] s00_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *)
output [1 : 0] s00_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *)
output s00_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *)
input s00_axi_rready;
output m00_axi_error;
output m00_axi_txn_done;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *)
input m00_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *)
input m00_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *)
output [31 : 0] m00_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *)
output [2 : 0] m00_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *)
output m00_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *)
input m00_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *)
output [31 : 0] m00_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *)
output [3 : 0] m00_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *)
output m00_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *)
input m00_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *)
input [1 : 0] m00_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *)
input m00_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *)
output m00_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *)
output [31 : 0] m00_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *)
output [2 : 0] m00_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *)
output m00_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *)
input m00_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *)
input [31 : 0] m00_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *)
input [1 : 0] m00_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *)
input m00_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *)
output m00_axi_rready;
output m01_axi_error;
output m01_axi_txn_done;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M01_AXI_CLK CLK" *)
input m01_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M01_AXI_RST RST" *)
input m01_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *)
output [31 : 0] m01_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *)
output [2 : 0] m01_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *)
output m01_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *)
input m01_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *)
output [31 : 0] m01_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *)
output [3 : 0] m01_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *)
output m01_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *)
input m01_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *)
input [1 : 0] m01_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *)
input m01_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *)
output m01_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *)
output [31 : 0] m01_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *)
output [2 : 0] m01_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *)
output m01_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *)
input m01_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *)
input [31 : 0] m01_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *)
input [1 : 0] m01_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *)
input m01_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *)
output m01_axi_rready;

  init_dma_v4_v4_0 #(
    .C_M00_AXI_START_DATA_VALUE('H00001001),
    .C_M00_AXI_TARGET_SLAVE_BASE_ADDR('H40400030),
    .C_M00_AXI_ADDR_WIDTH(32),
    .C_M00_AXI_DATA_WIDTH(32),
    .C_M00_AXI_TRANSACTIONS_NUM(4),
    .C_S00_AXI_DATA_WIDTH(32),
    .C_S00_AXI_ADDR_WIDTH(7),
    .C_M01_AXI_START_DATA_VALUE('H00000004),
    .C_M01_AXI_TARGET_SLAVE_BASE_ADDR('H44A00000),
    .C_M01_AXI_ADDR_WIDTH(32),
    .C_M01_AXI_DATA_WIDTH(32),
    .C_M01_AXI_TRANSACTIONS_NUM(11)
  ) inst (
    .m00_len_ref(m00_len_ref),
    .m00_valid2stream(m00_valid2stream),
    .m00_irq_dma(m00_irq_dma),
    .s00_axi_aclk(s00_axi_aclk),
    .s00_axi_aresetn(s00_axi_aresetn),
    .s00_axi_awaddr(s00_axi_awaddr),
    .s00_axi_awprot(s00_axi_awprot),
    .s00_axi_awvalid(s00_axi_awvalid),
    .s00_axi_awready(s00_axi_awready),
    .s00_axi_wdata(s00_axi_wdata),
    .s00_axi_wstrb(s00_axi_wstrb),
    .s00_axi_wvalid(s00_axi_wvalid),
    .s00_axi_wready(s00_axi_wready),
    .s00_axi_bresp(s00_axi_bresp),
    .s00_axi_bvalid(s00_axi_bvalid),
    .s00_axi_bready(s00_axi_bready),
    .s00_axi_araddr(s00_axi_araddr),
    .s00_axi_arprot(s00_axi_arprot),
    .s00_axi_arvalid(s00_axi_arvalid),
    .s00_axi_arready(s00_axi_arready),
    .s00_axi_rdata(s00_axi_rdata),
    .s00_axi_rresp(s00_axi_rresp),
    .s00_axi_rvalid(s00_axi_rvalid),
    .s00_axi_rready(s00_axi_rready),
    .m00_axi_error(m00_axi_error),
    .m00_axi_txn_done(m00_axi_txn_done),
    .m00_axi_aclk(m00_axi_aclk),
    .m00_axi_aresetn(m00_axi_aresetn),
    .m00_axi_awaddr(m00_axi_awaddr),
    .m00_axi_awprot(m00_axi_awprot),
    .m00_axi_awvalid(m00_axi_awvalid),
    .m00_axi_awready(m00_axi_awready),
    .m00_axi_wdata(m00_axi_wdata),
    .m00_axi_wstrb(m00_axi_wstrb),
    .m00_axi_wvalid(m00_axi_wvalid),
    .m00_axi_wready(m00_axi_wready),
    .m00_axi_bresp(m00_axi_bresp),
    .m00_axi_bvalid(m00_axi_bvalid),
    .m00_axi_bready(m00_axi_bready),
    .m00_axi_araddr(m00_axi_araddr),
    .m00_axi_arprot(m00_axi_arprot),
    .m00_axi_arvalid(m00_axi_arvalid),
    .m00_axi_arready(m00_axi_arready),
    .m00_axi_rdata(m00_axi_rdata),
    .m00_axi_rresp(m00_axi_rresp),
    .m00_axi_rvalid(m00_axi_rvalid),
    .m00_axi_rready(m00_axi_rready),
    .m01_axi_error(m01_axi_error),
    .m01_axi_txn_done(m01_axi_txn_done),
    .m01_axi_aclk(m01_axi_aclk),
    .m01_axi_aresetn(m01_axi_aresetn),
    .m01_axi_awaddr(m01_axi_awaddr),
    .m01_axi_awprot(m01_axi_awprot),
    .m01_axi_awvalid(m01_axi_awvalid),
    .m01_axi_awready(m01_axi_awready),
    .m01_axi_wdata(m01_axi_wdata),
    .m01_axi_wstrb(m01_axi_wstrb),
    .m01_axi_wvalid(m01_axi_wvalid),
    .m01_axi_wready(m01_axi_wready),
    .m01_axi_bresp(m01_axi_bresp),
    .m01_axi_bvalid(m01_axi_bvalid),
    .m01_axi_bready(m01_axi_bready),
    .m01_axi_araddr(m01_axi_araddr),
    .m01_axi_arprot(m01_axi_arprot),
    .m01_axi_arvalid(m01_axi_arvalid),
    .m01_axi_arready(m01_axi_arready),
    .m01_axi_rdata(m01_axi_rdata),
    .m01_axi_rresp(m01_axi_rresp),
    .m01_axi_rvalid(m01_axi_rvalid),
    .m01_axi_rready(m01_axi_rready)
  );
endmodule

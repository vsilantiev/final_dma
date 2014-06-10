	module def_stream_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M00_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here
        input wire m00_axi_datav, // в мастер axi stream на запуск
        output wire s00_axi_datav, // cо слейва reg 0
                  
        input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] m00_gen_tdata,
        
        input wire [31:0] m00_len_ref,
    
        output wire m00_tx_en,
		// User ports ends
		// Do not modify the ports beyond this line




		// Ports of Axi Master Bus Interface M00_AXIS
		input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready
	);


// Instantiation of Axi Bus Interface M00_AXIS
	def_stream_v1_0_M00_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M00_AXIS_START_COUNT)
	) def_stream_v1_0_M00_AXIS_inst (
	     .M_LEN_REF(m00_len_ref),
	    .V(m00_axi_datav),
	    .tx_en(m00_tx_en),
	    .M_TDATA(m00_gen_tdata),
		.M_AXIS_ACLK(m00_axis_aclk),
		.M_AXIS_ARESETN(m00_axis_aresetn),
		.M_AXIS_TVALID(m00_axis_tvalid),
		.M_AXIS_TDATA(m00_axis_tdata),
		.M_AXIS_TSTRB(m00_axis_tstrb),
		.M_AXIS_TLAST(m00_axis_tlast),
		.M_AXIS_TREADY(m00_axis_tready)
	);

// Instantiation of Axi Bus Interface S00_AXI


	// Add user logic here
	/////assign m00_axi_datav = s00_axi_datav; // reg0 slave axi -> tvalid master stream

	// User logic ends

	endmodule

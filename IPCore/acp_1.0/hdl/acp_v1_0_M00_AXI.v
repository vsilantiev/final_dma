	module acp_v1_0_M00_AXI #
	(
		// The master requires a target slave base address.
    // The master will initiate read and write transactions on the slave with base address specified here as a parameter.
		parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		// Width of M_AXI address bus. 
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// Width of M_AXI data bus. 
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
		parameter integer C_M_AXI_DATA_WIDTH	= 32,
		// Transaction number is the number of write 
    // and read transactions the master will perform as a part of this example memory test.
		parameter integer C_M_TRANSACTIONS_NUM	= 4
	)
	(
		// Users to add ports here
        output wire HALF,
        input wire C_M_START_CAPTURE,
        input wire [C_M_AXI_DATA_WIDTH -1 : 0] C_M_DATA_ADC,
        output wire [C_M_AXI_ADDR_WIDTH-1 : 0] C_M_SRC_ADDR,
		// User ports ends
		// Do not modify the ports beyond this line

		// Initiate AXI transactions
		// Asserts when ERROR is detected
		// AXI clock signal
		input wire  M_AXI_ACLK,
		// AXI active low reset signal
		input wire  M_AXI_ARESETN,
		// Master Interface Write Address Channel ports. Write address (issued by master)
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
		// Write channel Protection type.
    // This signal indicates the privilege and security level of the transaction,
    // and whether the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_AWPROT,
		// Write address valid. 
    // This signal indicates that the master signaling valid write address and control information.
		output wire  M_AXI_AWVALID,
		// Write address ready. 
    // This signal indicates that the slave is ready to accept an address and associated control signals.
		input wire  M_AXI_AWREADY,
		// Master Interface Write Data Channel ports. Write data (issued by master)
		output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
		// Write strobes. 
    // This signal indicates which byte lanes hold valid data.
    // There is one write strobe bit for each eight bits of the write data bus.
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
		// Write valid. This signal indicates that valid write data and strobes are available.
		output wire  M_AXI_WVALID,
		// Write ready. This signal indicates that the slave can accept the write data.
		input wire  M_AXI_WREADY,
		// Master Interface Write Response Channel ports. 
    // This signal indicates the status of the write transaction.
		input wire [1 : 0] M_AXI_BRESP,
		// Write response valid. 
    // This signal indicates that the channel is signaling a valid write response
		input wire  M_AXI_BVALID,
		// Response ready. This signal indicates that the master can accept a write response.
		output wire  M_AXI_BREADY,
		// Master Interface Read Address Channel ports. Read address (issued by master)
        output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
        //tection type. 
    // This signal indicates the privilege and security level of the transaction, 
    // and whether the transaction is a data access or an instruction access.
        output wire [2 : 0] M_AXI_ARPROT,
        //d address valid. 
    // This signal indicates that the channel is signaling valid read address and control information.
        output wire  M_AXI_ARVALID,
        //d address ready. 
    // This signal indicates that the slave is ready to accept an address and associated control signals.
        input wire  M_AXI_ARREADY,
        //ter Interface Read Data Channel ports. Read data (issued by slave)
        input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
        //d response. This signal indicates the status of the read transfer.
        input wire [1 : 0] M_AXI_RRESP,
        //d valid. This signal indicates that the channel is signaling the required read data.
        input wire  M_AXI_RVALID,
        //d ready. This signal indicates that the master can accept the read data and response information.
         output wire  M_AXI_RREADY

	);

	// function called clogb2 that returns an integer which has the
	// value of the ceiling of the log base 2

	 function integer clogb2 (input integer bit_depth);
		 begin
		 for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
			 bit_depth = bit_depth >> 1;
		 end
	 endfunction

	// TRANS_NUM_BITS is the width of the index counter for 
	// number of write or read transaction.
	 localparam integer TRANS_NUM_BITS = clogb2(C_M_TRANSACTIONS_NUM-1);

	// Example State machine to initialize counter, initialize write transactions, 
	// initialize read transactions and comparison of read data with the 
	// written data words.
	parameter [1:0] IDLE = 2'b00, INIT_WRITE   = 2'b01; // This state initializes write transaction,

	reg [1:0] mst_exec_state;

	// AXI4LITE signals
	//write address valid
	reg  	axi_awvalid;
	//write data valid
	reg  	axi_wvalid;

	//write response acceptance
	reg  	axi_bready;
	//write address
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	//write data
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;
	//read addresss
	//reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	//Asserts when there is a write response error
	wire  	write_resp_error;
	//Asserts when there is a read response error
	//wire  	read_resp_error;
	//A pulse to initiate a write transaction
	reg  	start_single_write;
	//A pulse to initiate a read transaction
	//reg  	start_single_read;
	//Asserts when a single beat write transaction is issued and remains asserted till the completion of write trasaction.
	reg  	write_issued;
	//Asserts when a single beat read transaction is issued and remains asserted till the completion of read trasaction.
	//reg  	read_issued;
	//flag that marks the completion of write trasactions. The number of write transaction is user selected by the parameter C_M_TRANSACTIONS_NUM.
	reg  	writes_done;
	//flag that marks the completion of read trasactions. The number of read transaction is user selected by the parameter C_M_TRANSACTIONS_NUM
	//reg  	reads_done;
	//The error register is asserted when any of the write response error, read response error or the data mismatch flags are asserted.
	//reg  	error_reg;
	//index counter to track the number of write transaction issued
	reg [TRANS_NUM_BITS : 0] 	write_index;
	//index counter to track the number of read transaction issued
	//reg [TRANS_NUM_BITS : 0] 	read_index;
	//Expected read data used to compare with the read data.
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	expected_rdata;

	//Flag is asserted when the write index reaches the last write transction number
	reg  	last_write;
	//Flag is asserted when the read index reaches the last read transction number
	//reg  	last_read;
	reg  	init_txn_ff;
	reg  	init_txn_ff2;
	reg  	init_txn_edge;
	wire  	init_txn_pulse;
    reg half;

    reg [31 :0] src_addr;
	// I/O Connections assignments
    


	//Adding the offset address to the base addr of the slave
	assign M_AXI_AWADDR	= C_M_TARGET_SLAVE_BASE_ADDR + axi_awaddr;
	//AXI 4 write data
	////assign M_AXI_WDATA	= axi_wdata;
	assign M_AXI_WDATA = C_M_DATA_ADC;
	assign M_AXI_AWPROT	= 3'b000;
	assign M_AXI_AWVALID	= axi_awvalid;
	//Write Data(W)
	assign M_AXI_WVALID	= axi_wvalid;
	//Set all byte strobes in this example
	assign M_AXI_WSTRB	= 4'b1111;
	//Write Response (B)
	assign M_AXI_BREADY	= axi_bready;

	//Example design I/O
	//assign TXN_DONE	= compare_done;
////	assign init_txn_pulse	= (!init_txn_ff2) && init_txn_ff;

    assign HALF = half;
    
    assign C_M_SRC_ADDR = src_addr;
	//Generate a pulse to initiate AXI transaction.
/*
           always @(posedge M_AXI_ACLK)										      
      	  begin                                                                        
      	    // Initiates AXI transaction delay    
      	    if (M_AXI_ARESETN == 0)                                                   
      	      begin                                                                    
      	        init_txn_ff <= 1'b0;                                                   
      	        init_txn_ff2 <= 1'b0;                                                   
      	      end                                                                               
      	    else
      	        begin
      	        case (writes_done)
      	             1'b1:  
      	             begin  
                        init_txn_ff <= 1'b1;
                        init_txn_ff2 <= init_txn_ff;                                                                 
                     end
                    1'b0:
      	            begin
                        init_txn_ff <= 1'b0;
                        init_txn_ff2 <= init_txn_ff;
                    end
                endcase      	  
            end
      	 end 

*/      	    

	//--------------------
	//Write Address Channel
	//--------------------

	// The purpose of the write address channel is to request the address and 
	// command information for the entire transaction.  It is a single beat
	// of information.

	// Note for this example the axi_awvalid/axi_wvalid are asserted at the same
	// time, and then each is deasserted independent from each other.
	// This is a lower-performance, but simplier control scheme.

	// AXI VALID signals must be held active until accepted by the partner.

	// A data transfer is accepted by the slave when a master has
	// VALID data and the slave acknoledges it is also READY. While the master
	// is allowed to generated multiple, back-to-back requests by not 
	// deasserting VALID, this design will add rest cycle for
	// simplicity.

	// Since only one outstanding transaction is issued by the user design,
	// there will not be a collision between a new request and an accepted
	// request on the same clock cycle. 

	  always @(posedge M_AXI_ACLK)										      
	  begin                                                                        
	    //Only VALID signals must be deasserted during reset per AXI spec          
	    //Consider inverting then registering active-low reset for higher fmax     
	    if (M_AXI_ARESETN == 0 || writes_done == 1'b1 || C_M_START_CAPTURE == 1'b0 )                                                   
	    ////if (M_AXI_ARESETN == 0)  
	      begin                                                                    
	        axi_awvalid <= 1'b0;                                                   
	      end                                                                      
	      //Signal a new address/data command is available by user logic           
	    else                                                                       
	      //begin                                                                    
	        //if (start_single_write)                                                
	          begin                                                                
	            axi_awvalid <= 1'b1;                                               
	          end                                                                  
	     //Address accepted by interconnect/slave (issue of M_AXI_AWREADY by slave)
	        /*
	        else if (M_AXI_AWREADY && axi_awvalid)                                 
	          begin                                                                
	            axi_awvalid <= 1'b0;                                               
	          end                                                                  
	      */
	      //end                                                                      
	  end                                                                          
	                                                                               
	                                                                               
	  // start_single_write triggers a new write                                   
	  // transaction. write_index is a counter to                                  
	  // keep track with number of write transaction                               
	  // issued/initiated                                                          
	  /*
	  always @(posedge M_AXI_ACLK)                                                 
	  begin                                                                        
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || C_M_START_CAPTURE == 1'b0 )                                                  
	    ////if (M_AXI_ARESETN == 0)  
	      begin                                                                 
	        write_index <= 0;                                                      
	      end                                                                      
	      // Signals a new write address/ write data is                            
	      // available by user logic                                               
	    else if (start_single_write)                                               
	      begin                                                                    
	        write_index <= write_index + 1;                                        
	      end                                                                      
	  end                                                                          
    */

	//--------------------
	//Write Data Channel
	//--------------------

	//The write data channel is for transfering the actual data.
	//The data generation is speific to the example design, and 
	//so only the WVALID/WREADY handshake is shown here

	   always @(posedge M_AXI_ACLK)                                        
	   begin                                                                         
	     if (M_AXI_ARESETN == 0 || writes_done == 1'b1 || C_M_START_CAPTURE == 1'b0 )                                                  
	      ////if (M_AXI_ARESETN == 0)  
	       begin                                                                     
	         axi_wvalid <= 1'b0;                                                     
	       end                                                                       
	     //Signal a new address/data command is available by user logic              
	     ////else if (start_single_write)                                                
	      else
	       begin                                                                     
	         axi_wvalid <= 1'b1;                                                     
	       end                                                                       
	     //Data accepted by interconnect/slave (issue of M_AXI_WREADY by slave)      
	   /* 
	     else if (M_AXI_WREADY && axi_wvalid)                                        
	       begin                                                                     
	        axi_wvalid <= 1'b0;                                                      
	       end                                                                       
	   */
	   end                                                                           


	//----------------------------
	//Write Response (B) Channel
	//----------------------------

	//The write response channel provides feedback that the write has committed
	//to memory. BREADY will occur after both the data and the write address
	//has arrived and been accepted by the slave, and can guarantee that no
	//other accesses launched afterwards will be able to be reordered before it.

	//The BRESP bit [1] is used indicate any errors from the interconnect or
	//slave for the entire write burst. This example will capture the error.

	//While not necessary per spec, it is advisable to reset READY signals in
	//case of differing reset latencies between master/slave.



	  always @(posedge M_AXI_ACLK)                                    
	  begin                                                                
	    if (M_AXI_ARESETN == 0 || writes_done == 1'b1 || C_M_START_CAPTURE == 1'b0 )                                           
	    ////if (M_AXI_ARESETN == 0)   
	      begin                                                            
	        axi_bready <= 1'b0;                                            
	      end                                                              
	    // accept/acknowledge bresp with axi_bready by the master          
	    // when M_AXI_BVALID is asserted by slave                          
	    /*
	    else if (M_AXI_BVALID && ~axi_bready)                              
	      begin                                                            
	        axi_bready <= 1'b1;                                            
	      end                                                              
	    // deassert after one clock cycle                                  
	    else if (axi_bready)                                               
	      begin                                                            
	        axi_bready <= 1'b0;                                            
	      end                                                              
	    // retain the previous value                                       
	    else                                                               
	      axi_bready <= axi_bready;
	    */
	    else
	       axi_bready <= 1'b1;                                        
	  end                                                                  
	                                                                       
	//Flag write errors                                                    
////	assign write_resp_error = (axi_bready & M_AXI_BVALID & M_AXI_BRESP[1]);


	//--------------------------------
	//User Logic
	//--------------------------------

	//Address/Data Stimulus

	//Address/data pairs for this example. The read and write values should
	//match.
	//Modify these as desired for different address patterns.

	  //Write Addresses                                        
	  always @(posedge M_AXI_ACLK)                                  
	      begin                                                     
	       if (M_AXI_ARESETN == 0 || writes_done == 1'b1 || C_M_START_CAPTURE == 1'b0 )
	        ////if (M_AXI_ARESETN == 0)                                 
	          begin                                                 
	            axi_awaddr <= 0;                                    
	          end                                                   
	          // Signals a new write address/ write data is         
	          // available by user logic                            
	        else if (M_AXI_AWREADY && axi_awvalid)
	        //else                  
	          begin                                                 
	            axi_awaddr <= axi_awaddr + 32'h00000004;            
	                                                                
	          end                                                   
	      end                                                       
	     /*                                                          
	  // Write data generation                                      
	  always @(posedge M_AXI_ACLK)                                  
	      begin                                                     
	       if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || C_M_START_CAPTURE == 1'b0 )
	        ////if (M_AXI_ARESETN == 0)                                 
	          begin                                                 
	            axi_wdata <= C_M_DATA_ADC;                  
	          end                                                   
	        // Signals a new write address/ write data is           
	        // available by user logic                              
	        else if (M_AXI_WREADY && axi_wvalid)
	        //else                    
	          begin
	            //if (count_txn == 1)                                            
	            axi_wdata <= C_M_DATA_ADC;
	            //axi_wdata <= write_index;
	          end                                                   
	        end
	      */           	                                       
	 
	 /*
	  //implement master command interface state machine                         
	  always @ ( posedge M_AXI_ACLK)                                                    
	  begin                                                                             
	    if (M_AXI_ARESETN == 1'b0)                                                     
	      begin                                                                         
	      // reset condition                                                            
	      // All the signals are assigned default values under reset condition          
	        ////mst_exec_state  <= IDLE;                                            
	        mst_exec_state <= IDLE;
	        start_single_write <= 1'b0;                                                 
	        write_issued  <= 1'b0;                                                      
	      //  start_single_read  <= 1'b0;                                                 
	       // read_issued   <= 1'b0;                                                      
	       // compare_done  <= 1'b0;                                                      
	      end                                                                           
	    else                                                                            
	      begin                                                                         
	       // state transition                                                          
	        case (mst_exec_state)
	        IDLE:                                                             
            //This state is responsible to initiate 
            //AXI transaction when init_txn_pulse is asserted 
            if ( C_M_START_CAPTURE == 1'b1 )                                     
             begin                                                                 
               mst_exec_state  <= INIT_WRITE;                                      
             end                                                                   
            else                                                                    
             begin                                                                 
               mst_exec_state  <= IDLE;                                    
             end                                                                                                                     
	          INIT_WRITE:                                                               
	            // This state is responsible to issue start_single_write pulse to       
	            // initiate a write transaction. Write transactions will be             
	            // issued until last_write signal is asserted.                          
	            // write controller                                                     
	            if (writes_done)                                                        
	              begin
	                   //Думаю сдесь                                                                
	                mst_exec_state <= IDLE;                                 
	              end                                                                   
	            else                                                                    
	              begin                                                                 
	                mst_exec_state  <= INIT_WRITE;                                      
	                                                                                    
	                  if (/*~axi_awvalid && ~axi_wvalid && ~M_AXI_BVALID &&*/ ////~last_write/* && ~start_single_write /*&& ~write_issued*/)
	       ////             begin                                                           
	      ////                start_single_write <= 1'b1;                                   
	                      //write_issued  <= 1'b1;                                        
	     ////               end 
	                  /*                                                            
	                  else if (axi_bready)                                              
	                    begin                                                           
	                      write_issued  <= 1'b0;                                        
	                    end
	                  */                                                             
	     ////             else                                                              
	     ////               begin                                                           
	     ////                 start_single_write <= 1'b0; //Negate to generate a pulse      
	     ////               end                                                             
	    ////          end                                                                                                                               
	    ////       default :                                                                
	    ////         begin                                                                  
	    ////           mst_exec_state  <= IDLE;                                     
	    ////         end                                                                    
	   ////     endcase                                                                     
	   //// end                                                                             
	  ////end //MASTER_EXECUTION_PROC                                                       
	   
	                                                                                    
	  //Terminal write count                                                            
	                                                                                    
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || writes_done == 1'b1 || C_M_START_CAPTURE == 1'b0 )                                                         
	     ////if (M_AXI_ARESETN == 0)  
	      last_write <= 1'b0;                                                           
	                                                                                    
	    //The last write should be associated with a write address ready response       
	    else if ((/*write_index*/axi_awaddr/4 == C_M_TRANSACTIONS_NUM) && M_AXI_AWREADY)                
	      last_write <= 1'b1;
	                                                           
	    else                                                                            
	      last_write <= last_write;                                                     
	  end                                                                               
	                                                                                    
	  //Check for last write completion.                                                
	                                                                                    
	  //This logic is to qualify the last write count with the final write              
	  //response. This demonstrates how to confirm that a write has been                
	  //committed.                                                                      
	                                                                                    
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || writes_done == 1'b1 || C_M_START_CAPTURE == 1'b0 )                                                         
	    ////if (M_AXI_ARESETN == 0)   
	      writes_done <= 1'b0;                                                          
	                                                                                    
	      //The writes_done should be associated with a bready response                 
	    else if (last_write /*&& M_AXI_BVALID && axi_bready*/)                              
	      writes_done <= 1'b1;                                                          
	    else                                                                            
	      writes_done <= writes_done;                                                   
	  end                                                                               
            
            always @(posedge M_AXI_ACLK)										      
        	  begin                                                                        
        	    // Initiates AXI transaction delay    
        	    if (M_AXI_ARESETN == 0 || writes_done == 1'b1 || C_M_START_CAPTURE == 1'b0 )
        	       half <= 1'b0;
        	    else 
        	    begin
        	    case (axi_awaddr/4)
        	       C_M_TRANSACTIONS_NUM/2:
        	           begin
        	               src_addr <= C_M_TARGET_SLAVE_BASE_ADDR;
        	               half <= 1'b1;
        	           end
        	       C_M_TRANSACTIONS_NUM/2+1:
        	           begin
                            half <= 1'b0;
                       end
                    C_M_TRANSACTIONS_NUM:
                        begin    
        	               src_addr <= (C_M_TARGET_SLAVE_BASE_ADDR + (C_M_TRANSACTIONS_NUM/2)*4);
        	               half <= 1'b1;
        	           end
        	        1'b1:
        	            begin
                            half <= 1'b0;
                        end
                  endcase
                 end
        	  end     
        	    
        	    
        	    /*   
        	    else if (axi_awaddr/4 == C_M_TRANSACTIONS_NUM/2)
        	       begin
        	       src_addr <= C_M_TARGET_SLAVE_BASE_ADDR;
        	       //src_addr <= (C_M_TARGET_SLAVE_BASE_ADDR + (C_M_TRANSACTIONS_NUM/2)*4); 
        	       
        	       
        	       half <= 1'b1;
        	       end
        	    else if (axi_awaddr/4 == C_M_TRANSACTIONS_NUM/2+1)
        	       begin
        	       half <= 1'b0;
        	       end                                                                                                      
        	    else if (axi_awaddr/4 == C_M_TRANSACTIONS_NUM)
        	       begin
        	       src_addr <= (C_M_TARGET_SLAVE_BASE_ADDR + (C_M_TRANSACTIONS_NUM/2)*4);
        	       
        	       //src_addr <= C_M_TARGET_SLAVE_BASE_ADDR;
        	       half <= 1'b1;
        	       end
        	    else if (axi_awaddr/4 == 1)
        	       begin
        	       half <= 1'b0;
                   end                                                                                                          
        	  end 
        	  */  
	endmodule

module ADC_emul(
                input reset,
                input valid,
                input r,
                input clkp,
                input clkn,
                input delay_clk,
                input datap,
                input datan,
                input adc_data_or_p,
                input adc_data_or_n,
                output link,
                output strobe
                
                //input up_dmode
                //output clk
                );
//                               
/*Parametrs*/
//                   
parameter WIDTH=16;
//
/*Variable*/
//
    //wire up_dmode;
    //
    /*Input port clk*/
    //
    wire                clkp;
    wire                clkn;
    wire    [7:0]       datap;
    wire    [7:0]       datan;
    wire                delay_clk;//200 MHz
    wire                adc_data_or_p;
    wire                adc_data_or_n;
    //
    /*Default signal*/
    //
    wire                reset;
    wire                valid;
    wire                ready;
    wire    [WIDTH-1:0] r;      //Laser period 
    reg     [WIDTH-1:0] r_acc;  //Laser counter
    reg                 r_out;
    wire    [WIDTH-1:0] link;
    wire                strobe; //Strobe signal
    //
    /*Buffer variables*/
    //
    wire                clk_buf;
    wire    [7:0]       data_buf;
    wire                clk;
    wire                adc_or_ibuf_s;
    //
    /*Delay variables*/
    //
	wire    [7:0]       data_delay;
	reg     [8:0]       delay_ld = 'd0;
	reg     [4:0]       delay_wdata = 'd0;
	reg                 delay_locked = 'd10;
	reg                 adc_or_p = 'd0;
	reg                 adc_or_n = 'd0;
	reg     [4:0]       adc_or_count = 'd0;
	wire    [4:0]       delay_rdata [8:0];
	wire                delay_rst_s;
    wire                adc_or_idelay_s;
    
    wire            delay_preset_s;

    
	//
	/*Synchro variables*/
	//
	wire    [7:0]       adc_data_p_s;
	wire    [7:0]       adc_data_n_s;
	wire                adc_or_p_s;
    wire                adc_or_n_s;
	//
	/*Output real data*/
	//
	
	reg                 adc_dmode_m1 = 'd0;
    reg                 adc_dmode = 'd1;
    reg     [7:0]       adc_data_n_d = 'd0;
    reg     [7:0]       adc_dmux_a = 'd0;
    reg     [7:0]       adc_dmux_b = 'd0;
    
	reg     [7:0]       delay_rst_cnt = 'd0;
	
    reg     [7:0]       adc_data_p = 'd0;
    reg     [7:0]       adc_data_n = 'd0;
	reg     [15:0]      real_data;
	
	reg                 adc_or ='d0;
	genvar              l_inst;
	
	
//
/*Gluing data ADC*/
//
always @ (posedge clk)
    begin
        //adc_dmode_m1 <= up_dmode;
        //adc_dmode <= adc_dmode_m1;
        
        adc_data_p <= adc_data_p_s;
        adc_data_n <= adc_data_n_s;
        
        adc_data_n_d <= adc_data_n;
        
        adc_dmux_a <= (adc_dmode == 1'b1) ? adc_data_n : adc_data_p;
        adc_dmux_b <= (adc_dmode == 1'b1) ? adc_data_p : adc_data_n_d;
        if (valid)
        begin
        real_data[15]<= adc_dmux_b[7];
        real_data[14]<= adc_dmux_a[7];
        real_data[13]<= adc_dmux_b[6];
        real_data[12]<= adc_dmux_a[6];
        real_data[11]<= adc_dmux_b[5];
        real_data[10]<= adc_dmux_a[5];
        real_data[9]<= adc_dmux_b[4];
        real_data[8]<= adc_dmux_a[4];
        real_data[7]<= adc_dmux_b[3];
        real_data[6]<= adc_dmux_a[3];
        real_data[5]<= adc_dmux_b[2];
        real_data[4]<= adc_dmux_a[2];
        real_data[3]<= adc_dmux_b[1];
        real_data[2]<= adc_dmux_a[1];
        real_data[1]<= adc_dmux_b[0];
        real_data[0]<= adc_dmux_a[0];
        end
        
        adc_or_p <= adc_or_p_s;
        adc_or_n <= adc_or_n_s;
        
        
        if ((adc_or_p == 1'b1) || (adc_or_n == 1'b1)) begin
            adc_or_count <= 5'h10;
            end else if (adc_or_count[4] == 1'b1) begin
                adc_or_count <= adc_or_count + 1'b1;
            end
            adc_or <= adc_or_count[4];
    end

//	
/*Strobe signal*/
//	
always @ (posedge clk or negedge reset)
    begin
        if (!reset)
            begin
                r_acc<=0;
                r_out<=0;
            end
        else if (r==r_acc)
                begin
                    r_acc<=0;
                    r_out<=1;
                end
                else
                begin  
                    r_out<=0;
                    r_acc<=r_acc+1;
                end
    end


  // The delay elements need calibration from a delay controller and it needs a
  // reset (it also asserts locked after the controller is up and running).
/*
always @(posedge delay_clk) begin
    if (delay_rst_cnt[7] == 1'b0) begin
      delay_rst_cnt <= delay_rst_cnt + 1'b1;
    end
end

  assign delay_preset_s = ~delay_rst_cnt[7];

  FDPE #(.INIT(1'b1)) i_delayctrl_rst_reg (
    .CE (1'b1),
    .D (1'b0),
    .PRE (delay_preset_s),
    .C (delay_clk),
    .Q (delay_rst_s));
*/

//
/*Buffering differencial clock*/
//
//generate   
IBUFGDS i_clk_ibuf (
                    .I (clkp),
                    .IB (clkn),
                    .O (clk_buf));
//endgenerate
  
generate
BUFG i_clk_gbuf (
                    .I (clk_buf),
                    .O (clk));
endgenerate	


generate
  for (l_inst = 0; l_inst <= 7; l_inst = l_inst + 1) begin : g_adc_if

IBUFDS i_data_ibuf (
                    .I (datap[l_inst]),
                    .IB (datan[l_inst]),
                    .O (data_buf[l_inst]));

(* IODELAY_GROUP = "adc_if_delay_group" *)

IDELAYE2 #(
                    .CINVCTRL_SEL ("FALSE"),
                    .DELAY_SRC ("IDATAIN"),
                    .HIGH_PERFORMANCE_MODE ("FALSE"),
                    .IDELAY_TYPE ("VAR_LOAD"),
                    .IDELAY_VALUE (0),
                    .REFCLK_FREQUENCY (200.0),
                    .PIPE_SEL ("FALSE"),
                    .SIGNAL_PATTERN ("DATA"))
    i_data_idelay (
                    .CE (1'b0),
                    .INC (1'b0),
                    .DATAIN (1'b0),
                    .LDPIPEEN (1'b0),
                    .CINVCTRL (1'b0),
                    .REGRST (1'b0),
                    .C (delay_clk),
                    .IDATAIN (data_buf[l_inst]),
                    .DATAOUT (data_delay[l_inst]),
                    .LD (delay_ld[l_inst]),
                    .CNTVALUEIN (delay_wdata),
                    .CNTVALUEOUT (delay_rdata[l_inst]));

IDDR #(
                    .INIT_Q1 (1'b0),
                    .INIT_Q2 (1'b0),
                    .DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
                    .SRTYPE ("ASYNC"))
    i_data_ddr (
                    .CE (1'b1),
                    .R (1'b0),
                    .S (1'b0),
                    .C (clk),
                    .D (data_delay[l_inst]),
                    .Q1 (adc_data_p_s[l_inst]),
                    .Q2 (adc_data_n_s[l_inst]));
    end
endgenerate

/*
generate

IBUFDS i_data_ibuf (
                    .I (datap[0]),
                    .IB (datan[0]),
                    .O (data_buf[0]));

(* IODELAY_GROUP = "adc_if_delay_group" *)

IDELAYE2 #(
                    .CINVCTRL_SEL ("FALSE"),
                    .DELAY_SRC ("IDATAIN"),
                    .HIGH_PERFORMANCE_MODE ("FALSE"),
                    .IDELAY_TYPE ("FIXED"),
                    .IDELAY_VALUE (31),
                    .REFCLK_FREQUENCY (200.0),
                    .PIPE_SEL ("FALSE"),
                    .SIGNAL_PATTERN ("DATA"))
    i_data_idelay (
                    .CE (1'b0),
                    .INC (1'b0),
                    .DATAIN (1'b0),
                    .LDPIPEEN (1'b0),
                    .CINVCTRL (1'b0),
                    .REGRST (1'b0),
                    .C (delay_clk),
                    .IDATAIN (data_buf[0]),
                    .DATAOUT (data_delay[0]),
                    .LD (1'b1),
                    .CNTVALUEIN (delay_wdata),
                    .CNTVALUEOUT (delay_rdata[0]));

IDDR #(
                    .INIT_Q1 (1'b0),
                    .INIT_Q2 (1'b0),
                    .DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
                    .SRTYPE ("ASYNC"))
    i_data_ddr (
                    .CE (1'b1),
                    .R (1'b0),
                    .S (1'b0),
                    .C (clk),
                    .D (data_delay[0]),
                    .Q1 (adc_data_p_s[0]),
                    .Q2 (adc_data_n_s[0]));

endgenerate

generate

IBUFDS i_data_ibuf1 (
                    .I (datap[1]),
                    .IB (datan[1]),
                    .O (data_buf[1]));

(* IODELAY_GROUP = "adc_if_delay_group" *)

IDELAYE2 #(
                    .CINVCTRL_SEL ("FALSE"),
                    .DELAY_SRC ("IDATAIN"),
                    .HIGH_PERFORMANCE_MODE ("FALSE"),
                    .IDELAY_TYPE ("FIXED"),
                    .IDELAY_VALUE (30),
                    .REFCLK_FREQUENCY (200.0),
                    .PIPE_SEL ("FALSE"),
                    .SIGNAL_PATTERN ("DATA"))
    i_data_idelay1 (
                    .CE (1'b0),
                    .INC (1'b0),
                    .DATAIN (1'b0),
                    .LDPIPEEN (1'b0),
                    .CINVCTRL (1'b0),
                    .REGRST (1'b0),
                    .C (delay_clk),
                    .IDATAIN (data_buf[1]),
                    .DATAOUT (data_delay[1]),
                    .LD (1'b1),
                    .CNTVALUEIN (delay_wdata),
                    .CNTVALUEOUT (delay_rdata[1]));

IDDR #(
                    .INIT_Q1 (1'b0),
                    .INIT_Q2 (1'b0),
                    .DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
                    .SRTYPE ("ASYNC"))
    i_data_ddr1 (
                    .CE (1'b1),
                    .R (1'b0),
                    .S (1'b0),
                    .C (clk),
                    .D (data_delay[1]),
                    .Q1 (adc_data_p_s[1]),
                    .Q2 (adc_data_n_s[1]));

endgenerate

generate

IBUFDS i_data_ibuf2 (
                    .I (datap[2]),
                    .IB (datan[2]),
                    .O (data_buf[2]));

(* IODELAY_GROUP = "adc_if_delay_group" *)

IDELAYE2 #(
                    .CINVCTRL_SEL ("FALSE"),
                    .DELAY_SRC ("IDATAIN"),
                    .HIGH_PERFORMANCE_MODE ("FALSE"),
                    .IDELAY_TYPE ("FIXED"),
                    .IDELAY_VALUE (29),
                    .REFCLK_FREQUENCY (200.0),
                    .PIPE_SEL ("FALSE"),
                    .SIGNAL_PATTERN ("DATA"))
    i_data_idelay2 (
                    .CE (1'b0),
                    .INC (1'b0),
                    .DATAIN (1'b0),
                    .LDPIPEEN (1'b0),
                    .CINVCTRL (1'b0),
                    .REGRST (1'b0),
                    .C (delay_clk),
                    .IDATAIN (data_buf[2]),
                    .DATAOUT (data_delay[2]),
                    .LD (1'b1),
                    .CNTVALUEIN (delay_wdata),
                    .CNTVALUEOUT (delay_rdata[2]));

IDDR #(
                    .INIT_Q1 (1'b0),
                    .INIT_Q2 (1'b0),
                    .DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
                    .SRTYPE ("ASYNC"))
    i_data_ddr2 (
                    .CE (1'b1),
                    .R (1'b0),
                    .S (1'b0),
                    .C (clk),
                    .D (data_delay[2]),
                    .Q1 (adc_data_p_s[2]),
                    .Q2 (adc_data_n_s[2]));

endgenerate

generate

IBUFDS i_data_ibuf3 (
                    .I (datap[3]),
                    .IB (datan[3]),
                    .O (data_buf[3]));

(* IODELAY_GROUP = "adc_if_delay_group" *)

IDELAYE2 #(
                    .CINVCTRL_SEL ("FALSE"),
                    .DELAY_SRC ("IDATAIN"),
                    .HIGH_PERFORMANCE_MODE ("FALSE"),
                    .IDELAY_TYPE ("FIXED"),
                    .IDELAY_VALUE (28),
                    .REFCLK_FREQUENCY (200.0),
                    .PIPE_SEL ("FALSE"),
                    .SIGNAL_PATTERN ("DATA"))
    i_data_idelay3 (
                    .CE (1'b0),
                    .INC (1'b0),
                    .DATAIN (1'b0),
                    .LDPIPEEN (1'b0),
                    .CINVCTRL (1'b0),
                    .REGRST (1'b0),
                    .C (delay_clk),
                    .IDATAIN (data_buf[3]),
                    .DATAOUT (data_delay[3]),
                    .LD (1'b1),
                    .CNTVALUEIN (delay_wdata),
                    .CNTVALUEOUT (delay_rdata[3]));

IDDR #(
                    .INIT_Q1 (1'b0),
                    .INIT_Q2 (1'b0),
                    .DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
                    .SRTYPE ("ASYNC"))
    i_data_ddr3 (
                    .CE (1'b1),
                    .R (1'b0),
                    .S (1'b0),
                    .C (clk),
                    .D (data_delay[3]),
                    .Q1 (adc_data_p_s[3]),
                    .Q2 (adc_data_n_s[3]));

endgenerate

generate

IBUFDS i_data_ibuf4 (
                    .I (datap[4]),
                    .IB (datan[4]),
                    .O (data_buf[4]));

(* IODELAY_GROUP = "adc_if_delay_group" *)

IDELAYE2 #(
                    .CINVCTRL_SEL ("FALSE"),
                    .DELAY_SRC ("IDATAIN"),
                    .HIGH_PERFORMANCE_MODE ("FALSE"),
                    .IDELAY_TYPE ("FIXED"),
                    .IDELAY_VALUE (27),
                    .REFCLK_FREQUENCY (200.0),
                    .PIPE_SEL ("FALSE"),
                    .SIGNAL_PATTERN ("DATA"))
    i_data_idelay4 (
                    .CE (1'b0),
                    .INC (1'b0),
                    .DATAIN (1'b0),
                    .LDPIPEEN (1'b0),
                    .CINVCTRL (1'b0),
                    .REGRST (1'b0),
                    .C (delay_clk),
                    .IDATAIN (data_buf[4]),
                    .DATAOUT (data_delay[4]),
                    .LD (1'b1),
                    .CNTVALUEIN (delay_wdata),
                    .CNTVALUEOUT (delay_rdata[4]));

IDDR #(
                    .INIT_Q1 (1'b0),
                    .INIT_Q2 (1'b0),
                    .DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
                    .SRTYPE ("ASYNC"))
    i_data_ddr4 (
                    .CE (1'b1),
                    .R (1'b0),
                    .S (1'b0),
                    .C (clk),
                    .D (data_delay[4]),
                    .Q1 (adc_data_p_s[4]),
                    .Q2 (adc_data_n_s[4]));

endgenerate

generate

IBUFDS i_data_ibuf5 (
                    .I (datap[5]),
                    .IB (datan[5]),
                    .O (data_buf[5]));

(* IODELAY_GROUP = "adc_if_delay_group" *)

IDELAYE2 #(
                    .CINVCTRL_SEL ("FALSE"),
                    .DELAY_SRC ("IDATAIN"),
                    .HIGH_PERFORMANCE_MODE ("FALSE"),
                    .IDELAY_TYPE ("FIXED"),
                    .IDELAY_VALUE (26),
                    .REFCLK_FREQUENCY (200.0),
                    .PIPE_SEL ("FALSE"),
                    .SIGNAL_PATTERN ("DATA"))
    i_data_idelay5 (
                    .CE (1'b0),
                    .INC (1'b0),
                    .DATAIN (1'b0),
                    .LDPIPEEN (1'b0),
                    .CINVCTRL (1'b0),
                    .REGRST (1'b0),
                    .C (delay_clk),
                    .IDATAIN (data_buf[5]),
                    .DATAOUT (data_delay[5]),
                    .LD (1'b1),
                    .CNTVALUEIN (delay_wdata),
                    .CNTVALUEOUT (delay_rdata[5]));

IDDR #(
                    .INIT_Q1 (1'b0),
                    .INIT_Q2 (1'b0),
                    .DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
                    .SRTYPE ("ASYNC"))
    i_data_ddr5 (
                    .CE (1'b1),
                    .R (1'b0),
                    .S (1'b0),
                    .C (clk),
                    .D (data_delay[5]),
                    .Q1 (adc_data_p_s[5]),
                    .Q2 (adc_data_n_s[5]));

endgenerate

generate

IBUFDS i_data_ibuf6 (
                    .I (datap[6]),
                    .IB (datan[6]),
                    .O (data_buf[6]));

(* IODELAY_GROUP = "adc_if_delay_group" *)

IDELAYE2 #(
                    .CINVCTRL_SEL ("FALSE"),
                    .DELAY_SRC ("IDATAIN"),
                    .HIGH_PERFORMANCE_MODE ("FALSE"),
                    .IDELAY_TYPE ("FIXED"),
                    .IDELAY_VALUE (25),
                    .REFCLK_FREQUENCY (200.0),
                    .PIPE_SEL ("FALSE"),
                    .SIGNAL_PATTERN ("DATA"))
    i_data_idelay6 (
                    .CE (1'b0),
                    .INC (1'b0),
                    .DATAIN (1'b0),
                    .LDPIPEEN (1'b0),
                    .CINVCTRL (1'b0),
                    .REGRST (1'b0),
                    .C (delay_clk),
                    .IDATAIN (data_buf[6]),
                    .DATAOUT (data_delay[6]),
                    .LD (1'b1),
                    .CNTVALUEIN (delay_wdata),
                    .CNTVALUEOUT (delay_rdata[6]));

IDDR #(
                    .INIT_Q1 (1'b0),
                    .INIT_Q2 (1'b0),
                    .DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
                    .SRTYPE ("ASYNC"))
    i_data_ddr6 (
                    .CE (1'b1),
                    .R (1'b0),
                    .S (1'b0),
                    .C (clk),
                    .D (data_delay[6]),
                    .Q1 (adc_data_p_s[6]),
                    .Q2 (adc_data_n_s[6]));

endgenerate

generate

IBUFDS i_data_ibuf7 (
                    .I (datap[7]),
                    .IB (datan[7]),
                    .O (data_buf[7]));

(* IODELAY_GROUP = "adc_if_delay_group" *)

IDELAYE2 #(
                    .CINVCTRL_SEL ("FALSE"),
                    .DELAY_SRC ("IDATAIN"),
                    .HIGH_PERFORMANCE_MODE ("FALSE"),
                    .IDELAY_TYPE ("FIXED"),
                    .IDELAY_VALUE (1),
                    .REFCLK_FREQUENCY (200.0),
                    .PIPE_SEL ("FALSE"),
                    .SIGNAL_PATTERN ("DATA"))
    i_data_idelay7 (
                    .CE (1'b0),
                    .INC (1'b0),
                    .DATAIN (1'b0),
                    .LDPIPEEN (1'b0),
                    .CINVCTRL (1'b0),
                    .REGRST (1'b0),
                    .C (delay_clk),
                    .IDATAIN (data_buf[7]),
                    .DATAOUT (data_delay[7]),
                    .LD (1'b1),
                    .CNTVALUEIN (delay_wdata),
                    .CNTVALUEOUT (delay_rdata[7]));

IDDR #(
                    .INIT_Q1 (1'b0),
                    .INIT_Q2 (1'b0),
                    .DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
                    .SRTYPE ("ASYNC"))
    i_data_ddr7 (
                    .CE (1'b1),
                    .R (1'b0),
                    .S (1'b0),
                    .C (clk),
                    .D (data_delay[7]),
                    .Q1 (adc_data_p_s[7]),
                    .Q2 (adc_data_n_s[7]));

endgenerate
*/
//
/*Over-range interface*/
//
IBUFDS i_or_ibuf (
    .I (adc_data_or_p),
    .IB (adc_data_or_n),
    .O (adc_or_ibuf_s));
    
    
generate
     (* IODELAY_GROUP = "adc_if_delay_group" *)
     IDELAYE2 #(
       .CINVCTRL_SEL ("FALSE"),
       .DELAY_SRC ("IDATAIN"),
       .HIGH_PERFORMANCE_MODE ("FALSE"),
       .IDELAY_TYPE ("VAR_LOAD"),
       .IDELAY_VALUE (0),
       .REFCLK_FREQUENCY (200.0),
       .PIPE_SEL ("FALSE"),
       .SIGNAL_PATTERN ("DATA"))
     i_or_idelay (
       .CE (1'b0),
       .INC (1'b0),
       .DATAIN (1'b0),
       .LDPIPEEN (1'b0),
       .CINVCTRL (1'b0),
       .REGRST (1'b0),
       .C (delay_clk),
       .IDATAIN (adc_or_ibuf_s),
       .DATAOUT (adc_or_idelay_s),
       .LD (delay_ld[8]),
       .CNTVALUEIN (delay_wdata),
       .CNTVALUEOUT (delay_rdata[8]));
     endgenerate

IDDR #(
    .INIT_Q1 (1'b0),
    .INIT_Q2 (1'b0),
    .DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
    .SRTYPE ("ASYNC"))
  i_or_ddr (
    .CE (1'b1),
    .R (1'b0),
    .S (1'b0),
    .C (clk),
    .D (adc_or_idelay_s),
    .Q1 (adc_or_p_s),
    .Q2 (adc_or_n_s));




(* IODELAY_GROUP = "adc_if_delay_group" *)
  IDELAYCTRL i_delay_ctrl (
    .RST (delay_rst_s),
    .REFCLK (delay_clk),
    .RDY ());




assign link=real_data;
assign strobe=r_out;
endmodule

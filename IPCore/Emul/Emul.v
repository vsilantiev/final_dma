module ADC_emul(
                input clk,
                input reset,
                input valid,
                input r,
                output link,
                output strobe
                );
                               
/*Parametrs*/
                    
parameter WIDTH=16;
parameter accPP=1;

/*Variable*/

wire clk;
wire reset;
wire valid;
wire ready;
wire nul;
wire [WIDTH-1:0] r;// Laser period 
reg [WIDTH-1:0] acc;
reg redirect_flag;
reg [WIDTH-1:0] r_acc;
reg r_out;
wire [WIDTH-1:0] link;
wire strobe;//Strobe signal


/*Output Data*/

always @ (posedge clk or negedge reset)
	begin
	  if ((!reset)||(!valid)||(strobe))
	    begin
	      acc<=0;
	      redirect_flag<=1;
	    end
	    
	  else if (valid)
	 begin
	 case (acc)
	   1:redirect_flag<=1;
	   2**15-2 :redirect_flag<=0;
	   //default:redirect_flag<=0;
	 endcase
	 case (redirect_flag)
	   0:acc<=acc-accPP;
	   1:acc<=acc+accPP;
	   //default:acc<=0;
	 endcase
     end
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



	
/***���������_���������_��������***/
/*always @ (posedge clk or negedge reset)
  begin
    if (!reset)
      sinc_flag<=0;
    else sinc_flag<=sinc_flag+1;
  end*/
  
/******����������_LVDS_������****/
/*always @ (posedge sinc_flag or negedge sinc_flag or negedge reset)
  begin
    if(!reset)
      begin
        lvds_n<=0;
        lvds_p<=0;
      end
    if (sinc_flag)
      lvds_p<=acc;
    else lvds_n<=acc;
  end*/

//assign lvds=lvds_p+(lvds_n<<WIDTH);
//assign clk_out=sinc_flag;
assign link=acc;
assign strobe=r_out;
endmodule

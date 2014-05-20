module ADC_emul(input clk,input reset,input valid,/*output lvds,output clk_out*/ output link, input ready);
parameter WIDTH=16;//������ LVDS ������
parameter accPP=1;//����������
wire clk;
wire reset;
wire valid;
wire ready;
wire nul;
reg [WIDTH-1:0] acc;//������� ����������
reg redirect_flag;//���� ��������������� ����� ������
wire [WIDTH-1:0] link;
//output wire [31:0]testlink;
//reg sinc_flag;//���� ������ ������
//reg [WIDTH-1:0]lvds_n;
//reg [WIDTH-1:0]lvds_p;
//wire [2*WIDTH-1:0]lvds;//�������� ����
//wire clk_out;//�������� ��


/******���������_������**********/
always @ (posedge clk or negedge reset)
	begin
	  if ((!reset)||(!nul))
	    begin
	      acc<=0;
	      redirect_flag<=1;
	    end
	    
	  else if (nul)
	 begin
	 case (acc)
	   1:redirect_flag<=1;
	   2**15-2 :redirect_flag<=0;
	 endcase
	 case (redirect_flag)
	   0:acc<=acc-accPP;
	   1:acc<=acc+accPP;
	 endcase
     end
	end
	
assign nul=valid && ready;
	
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
endmodule
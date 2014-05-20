module testbench();

reg clk;
reg reset;
wire [3:0]acc;
reg [3:0]link;
reg valid;
reg ready;

initial
	begin
		#10 clk=1;
		#30 reset=0;
		#20 reset=1;
		#60 valid=1;
		#60 ready=1;
		#400 ready =0;
		#3000 $stop;
	end
always
#10 clk=~clk;


ADC_emul tb (.clk(clk),.reset(reset),.valid(valid),.ready(ready));


endmodule

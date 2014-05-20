module testbench();

reg clk;
reg reset;
wire [3:0]acc;
reg [3:0]link;

initial
	begin
		#10 clk=1;
		#30 reset=1;
		#10 reset=0;
		#3000 $stop;
	end
always
#10 clk=~clk;


ADC_emul tb (.clk(clk),.reset(reset));


endmodule

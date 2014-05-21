module testbench();

reg clk;
reg reset;
wire [3:0]acc;
reg [3:0]link;
reg valid;
reg [15:0]r;

initial
	begin
		#10 clk=1;
		#30 reset=0;
		#10 reset=1;
		#100 r=20;
		#0 valid=1;
		
		//#200 valid=0;
		
		#3000 $stop;
	end
always
#10 clk=~clk;


ADC_emul tb (
             .clk(clk),
             .reset(reset),
             .valid(valid),
             .r(r),
             .strobe(strobe)
             );


endmodule

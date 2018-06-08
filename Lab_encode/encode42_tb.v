//********************************************************
//
//   copyright(sw[2])2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   encode42_tb.v
//   Module name     :   encode42_tb

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/24

//   Version         :   V1.0
//   Desacription     :   testbench module
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/24)   V1.0
// Description   
//
//********************************************************
//
//
//*******************
//DEFINE MODULE PORT
//*******************
`timescale 1ns/100ps
module encode42_tb;

reg [3:0] sw;
wire  [1:0] led1,led2,led3;
initial 
	begin 
		sw=4'b0000;
		#50;
		sw=4'b0001;
		#50;
		sw=4'b0010;
		#50;
		sw=4'b0100;
		#50;
		sw=4'b1000;
		#50;			
	end

encode42 encode42_uut(
									.sw			(sw),
									.led1		(led1),
									.led2		(led2),
									.led3		(led3)
							);
endmodule


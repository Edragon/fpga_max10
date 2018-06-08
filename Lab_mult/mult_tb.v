//********************************************************
//
//   copyright(sw[2])2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   mult_tb.v
//   Module name     :   mult_tb

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/30

//   Version         :   V1.0
//   Desacription    :   testbench module
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/30)   V1.0
// Description   
//
//********************************************************
//
//
//*******************
//DEFINE MODULE PORT
//*******************
`timescale 1ns/100ps
module mult_tb;

reg [3:0] sw;
reg [3:0] key;
wire[7:0] led;
initial 
	begin 
		sw=4'b1010;
		#50;
		key=~4'b0001;
		#50;
		key=~4'b0010;
		#50;
		key=~4'b0011;
		#50;
		key=~4'b0100;
		#50;
		key=~4'b0101;
		#50;
		key=~4'b0110;
		#50;
		key=~4'b0111;
		#50;
		key=~4'b1000;
		#50;
		key=~4'b1001;
		#50;
		key=~4'b1010;
		#50;
		key=~4'b1011;
		#50;
		key=~4'b1100;
		#50;
		key=~4'b1101;
		#50;
		key=~4'b1110;
		#50;
		key=~4'b1111;
		#50;
	end

mult mult_uut(
				.sw			(sw),
				.key		(key),
				.led		(led)
			 );
endmodule


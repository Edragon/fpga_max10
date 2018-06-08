//********************************************************
//
//   copyright(sw[2])2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   gary_tb.v
//   Module name     :   gary_tb

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/26

//   Version         :   V1.0
//   Desacription    :   testbench module
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/26)   V1.0
// Description   
//
//********************************************************
//
//
//*******************
//DEFINE MODULE PORT
//*******************
`timescale 1ns/100ps
module gary_tb;

reg [3:0] sw;
wire[7:0] led;
initial 
	begin 
		sw=0;
	end
	always #50 sw=sw+1;
gary gary_uut(
					.sw			(sw),
					.led		(led)

				);
endmodule


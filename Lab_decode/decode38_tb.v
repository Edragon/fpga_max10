//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   decode38_tb.v
//   Module name     :   decode38_tb

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/23

//   Version         :   V1.0
//   Description     :   3_8 decoder testbench
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/23)   V1.0
// Description
//
//********************************************************

`timescale 1ns/100ps
module decode38_tb;

reg [2:0] sw;
wire 	[7:0]	led;
initial  
	begin 
		sw=3'b000;
	end
always #50 sw=sw+1;
decode38 decode38_uut(
						.sw		(sw),
						.led	(led)
					);
endmodule

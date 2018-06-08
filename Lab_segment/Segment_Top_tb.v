//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   segment_top_tb.v
//   Module name     :   segment_top_tb

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/01

//   Version         :   V1.0
//   Description     :
//   Modification history
//   ----------------------------------------------------------------------------
// Version       
// Description
//
//********************************************************

`timescale 1ns/100ps
module Segment_Top_tb();

reg 	[3:0]	sw;
wire 	[8:0]	seg_led_1,seg_led_2;

initial 
	begin 
		sw=0;
	end	
	
always #50 sw = sw + 1;  

Segment_Top u1 (
						.sw		(sw),
						.segment_led_1	(seg_led_1),
						.segment_led_2	(seg_led_2)
					  );
	
endmodule

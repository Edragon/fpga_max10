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
module segment_top_tb();

reg 			clk,rst_n;
wire 	[8:0]	seg_led_1,seg_led_2;

initial 
	begin 
		clk=0;
		rst_n=0;
		#25
		rst_n=1;
	end	
	
always #10 clk = ~clk;  


segment_top #(.CNT_NUM(10)) u1 (
						.clk_in		(clk),
						.rst_n_in	(rst_n),
						.segment_led_1	(seg_led_1),
						.segment_led_2	(seg_led_2)
					  );
					  
endmodule

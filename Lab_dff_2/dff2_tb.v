//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   dff2_tb.v
//   Module name     :   dff2_tb

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
module dff2_tb();

reg clk,d;
wire q,notq;

initial 
	begin 
		clk = 0;
		d = 0;
	end
	
always #10 clk = ~clk;  
always #25 d = ~d;

          dff2 u1 (
						.clk	(clk),
						.d		(d),
						.q		(q),
						.notq	(notq)
					  );
					  
endmodule

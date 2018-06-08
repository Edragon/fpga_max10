//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   dff1_tb.v
//   Module name     :   dff1_tb

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
module dff1_tb();

reg clk,rst,d;
wire q;

initial 
	begin 
		clk = 0;
		d = 0;
		rst = 1;
		#20 
		rst = 1;
	end
	
always #10 clk = ~clk;  
always #25 d = ~d;

          dff1 u1 (
						.clk	(clk),
						.rst	(rst),
						.d		(d),
						.q		(q)

					  );
endmodule

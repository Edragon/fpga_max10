//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   counter1_tb.v
//   Module name     :   counter1_tb

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
module counter1_tb();

reg clk,rst;
wire [7:0]	q;

initial 
	begin 
		clk = 0;
		rst = 0;
		#20
		rst = 1;
	end
	
always #10 clk = ~clk;  


counter1 u1 (
						.clk	(clk),
						.rst	(rst),
						.q		(q)
					  );
endmodule

//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   shift_tb.v
//   Module name     :   shift_tb

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
module shift_tb();

reg clk,rst,din;
wire [3:0]	q;

initial 
	begin 
		clk = 0;
		rst = 0;
		din = 0;
		#20
		rst = 1;
		#100
		din = 1;
	end
	
always #10 clk = ~clk;  


shift u1 (
						.clk	(clk),
						.rst	(rst),
						.din	(din),
						.q		(q)
					  );
endmodule

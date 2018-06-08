//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   register_tb.v
//   Module name     :   register_tb

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
module register_tb();

reg clk,rst,load;
reg din;
wire q;

initial 
	begin 
		clk = 0;
		din = 0;
		rst = 0;
		load = 0;
		#20 
		rst = 1;
		#2000
		load = 1;
	end
	
always #10 clk = ~clk;  
always #25 din = ~din;

register #(.N(1)) u1  (
						.clk	(clk),
						.rst	(rst),
						.load	(load),
						.din	(din),
						.q		(q)

					  );
endmodule

//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   snglepulse_tb.v
//   Module name     :   singlepulse_tb

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
module singlepulse_tb();

reg clk,rst_n,load;
wire 	q;

initial 
	begin 
		clk = 0;
		rst_n = 0;
		load = 0;
		#20
		rst_n = 1;
		#100
		load = 1;
		#200
		load = 0;
		#200
		load = 1;
	end
	
always #10 clk = ~clk;  


singlepulse u1 (
						.clk	(clk),
						.rst_n	(rst_n),
						.load	(load),
						.q		(q)
					  );
endmodule

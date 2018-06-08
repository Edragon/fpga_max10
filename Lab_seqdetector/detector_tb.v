//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   detector_tb.v
//   Module name     :   detector_tb

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
module detector_tb();

reg clk,rst_n,din;
reg [9:0]	d;
wire 	dout;

parameter 		DATA = 10'b1001010110;

initial 
	begin 
		clk = 0;
		rst_n = 0;
		din = 0;
		#20
		rst_n = 1;
		#100
		din = 1;
	end
	
always #10 clk = ~clk;  

always@(posedge clk)
	if(!rst_n)
		d<=DATA;
	else begin
		d<={d[0],d[9:1]};
		din<=d[0];
	end
	
	
detector u1 (
						.clk	(clk),
						.rst_n	(rst_n),
						.din	(din),
						.dout	(dout)
					  );
endmodule

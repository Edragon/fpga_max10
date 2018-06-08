//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   gates_tb.v
//   Module name     :   gates_tb

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/19

//   Version         :   V1.0
//   Description     :   testbench module
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/19)   V1.0
// Description   
//
//********************************************************
//
//
//*******************
//DEFINE MODULE PORT
//*******************
`timescale 1ns/100ps
module gates_tb;

reg a,b;
wire [5:0] led;
initial 
	begin 
		a=0;
		b=0;
		#50;
		a=0;
		b=1;
		#50;
		a=1;
		b=0;
		#50;
		a=1;
		b=1;
		#50;	
	end
gates gates_tb_uut(
						.a		(a),
						.b		(b),
						.led	(led)
					);
endmodule

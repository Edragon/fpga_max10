//********************************************************
//
//   copyright(a[1])2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   mux41_tb.v
//   Module name     :   mux41_tb

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/22

//   Version         :   V1.0
//   Desacription     :   testbench module
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/22)   V1.0
// Description   
//
//********************************************************
//
//
//*******************
//DEFINE MODULE PORT
//*******************
`timescale 1ns/100ps
module mux41_tb();
reg  [3:0] sw;
reg  [1:0] key;
wire 		led;

initial 
	begin 
		sw=4'b1010;
		key=2'b00;
		#50;
		key=2'b01;
		#50;
		key=2'b10;
		#50;
		key=2'b11;
		#50;		
	end

mux41 mux41_uut(
					.c			(sw)	,
					.key1		(key[0]),
					.key2		(key[1]),
					.led		(led)
				);
endmodule


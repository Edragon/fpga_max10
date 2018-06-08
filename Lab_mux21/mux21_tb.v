//********************************************************
//
//   copyright(a[1])2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   mux21_tb.v
//   Module name     :   mux21_tb
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
module mux21_tb;

reg  b;
reg  a;
reg  s;
wire [3:0]	led;
initial 
	begin 
		a=0;
		b=0;
		s=0;
		#50;
		a=0;
		b=1;
		s=0;
		#50;
		a=1;
		b=0;
		s=0;
		#50;
		a=1;
		b=1;
		s=0;
		#50;
		a=0;
		b=0;
		s=1;
		#50;
		a=0;
		b=1;
		s=1;
		#50;
		a=1;
		b=0;
		s=1;
		#50;
		a=1;
		b=1;
		s=1;
		#50;		
	end
mux21 mux21_uut(
									.a			(a),
									.b			(b),
									.s			(s),
									.led		(led)
				);
endmodule


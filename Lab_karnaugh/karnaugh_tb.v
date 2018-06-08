//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   karnaugh_tb.v
//   Module name     :   karnaugh_tb

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/22

//   Version         :   V1.0
//   Description     :   testbench module
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
module karnaugh_tb;

reg a;
reg b;
reg c;
reg d;
wire led;
initial 
	begin 
		a=0;
		b=0;
		c=0;
		d=0;
		#50;
		a=0;
		b=0;
		c=0;
		d=1;
		#50;
		a=0;
		b=0;
		c=1;
		d=0;
		#50;
		a=0;
		b=0;
		c=1;
		d=1;
		#50;
		a=0;
		b=1;
		c=0;
		d=0;
		#50;	
		a=0;
		b=1;
		c=0;
		d=1;
		#50;	
		a=0;
		b=1;
		c=1;
		d=0;
		#50;	
		a=0;
		b=1;
		c=1;
		d=1;
		#50;	
		a=1;
		b=0;
		c=0;
		d=0;
		#50;
		a=1;
		b=0;
		c=0;
		d=1;
		#50;
		a=1;
		b=0;
		c=1;
		d=0;
		#50;
		a=1;
		b=0;
		c=1;
		d=1;
		#50;
		a=1;
		b=1;
		c=0;
		d=0;
		#50;
		a=1;
		b=1;
		c=0;
		d=1;
		#50;
		a=1;
		b=1;
		c=1;
		d=0;
		#50;
		a=1;
		b=1;
		c=1;
		d=1;
		#50;		
	end
karnaugh karnaugh_uut(
									.a		(a),
									.b		(b),
									.c		(c),
									.d		(d),
									.led	(led)
					);
endmodule


//********************************************************
//
//   copyright(a[1])2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   compare_tb.v
//   Module name     :   compare_tb

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
module compare_tb;

reg [1:0] b;
reg [1:0] a;
wire[2:0] led;
initial 
	begin 
		b[1]=0;
		b[0]=0;
		a[1]=0;
		a[0]=0;
		#50;
		b[1]=0;
		b[0]=0;
		a[1]=0;
		a[0]=1;
		#50;
		b[1]=0;
		b[0]=0;
		a[1]=1;
		a[0]=0;
		#50;
		b[1]=0;
		b[0]=0;
		a[1]=1;
		a[0]=1;
		#50;
		b[1]=0;
		b[0]=1;
		a[1]=0;
		a[0]=0;
		#50;	
		b[1]=0;
		b[0]=1;
		a[1]=0;
		a[0]=1;
		#50;	
		b[1]=0;
		b[0]=1;
		a[1]=1;
		a[0]=0;
		#50;	
		b[1]=0;
		b[0]=1;
		a[1]=1;
		a[0]=1;
		#50;	
		b[1]=1;
		b[0]=0;
		a[1]=0;
		a[0]=0;
		#50;
		b[1]=1;
		b[0]=0;
		a[1]=0;
		a[0]=1;
		#50;
		b[1]=1;
		b[0]=0;
		a[1]=1;
		a[0]=0;
		#50;
		b[1]=1;
		b[0]=0;
		a[1]=1;
		a[0]=1;
		#50;
		b[1]=1;
		b[0]=1;
		a[1]=0;
		a[0]=0;
		#50;
		b[1]=1;
		b[0]=1;
		a[1]=0;
		a[0]=1;
		#50;
		b[1]=1;
		b[0]=1;
		a[1]=1;
		a[0]=0;
		#50;
		b[1]=1;
		b[0]=1;
		a[1]=1;
		a[0]=1;
		#50;		
	end
compare compare_uut(
							.a			(a),
							.b			(b),
							.led		(led)
					);
endmodule


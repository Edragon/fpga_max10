//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   four_in_gates_tb.v
//   Module name     :   four_in_gates_tb

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
module four_in_gates_tb;

reg [3:0] a;
initial 
	begin 
		a[0]=0;
		a[1]=0;
		a[2]=0;
		a[3]=0;
		#50;
		a[0]=0;
		a[1]=0;
		a[2]=0;
		a[3]=1;
		#50;
		a[0]=0;
		a[1]=0;
		a[2]=1;
		a[3]=0;
		#50;
		a[0]=0;
		a[1]=0;
		a[2]=1;
		a[3]=1;
		#50;
		a[0]=0;
		a[1]=1;
		a[2]=0;
		a[3]=0;
		#50;	
		a[0]=0;
		a[1]=1;
		a[2]=0;
		a[3]=1;
		#50;	
		a[0]=0;
		a[1]=1;
		a[2]=1;
		a[3]=0;
		#50;	
		a[0]=0;
		a[1]=1;
		a[2]=1;
		a[3]=1;
		#50;	
		a[0]=1;
		a[1]=0;
		a[2]=0;
		a[3]=0;
		#50;
		a[0]=1;
		a[1]=0;
		a[2]=0;
		a[3]=1;
		#50;
		a[0]=1;
		a[1]=0;
		a[2]=1;
		a[3]=0;
		#50;
		a[0]=1;
		a[1]=0;
		a[2]=1;
		a[3]=1;
		#50;
		a[0]=1;
		a[1]=1;
		a[2]=0;
		a[3]=0;
		#50;
		a[0]=1;
		a[1]=1;
		a[2]=0;
		a[3]=1;
		#50;
		a[0]=1;
		a[1]=1;
		a[2]=1;
		a[3]=0;
		#50;
		a[0]=1;
		a[1]=1;
		a[2]=1;
		a[3]=1;
		#50;		
	end
	
wire	[5:0] led;
four_in_gates four_in_gates_tb_uut(
									.a		(a),
									.led	(led)
								);
endmodule


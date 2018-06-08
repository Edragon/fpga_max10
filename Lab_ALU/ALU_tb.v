//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :  ALU_tb.v
//   Module name     :  ALU_tb

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/31

//   Version         :   V1.0
//   Desacription    :   testbench module
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/31)   V1.0
// Description   
//
//********************************************************
//
//
//*******************
//DEFINE MODULE PORT
//*******************
`timescale 1ns/100ps
module ALU_tb;
reg [2:0] sw;
initial 
	begin 
		sw=~3'b001;
		#50;
		sw=~3'b011;
		#50;
		sw=~3'b100;
		#50;
		sw=~3'b111;
		#50;
	end
wire  [7:0] led;
ALU ALU_uut(
				.alusel				(sw)  ,
				.led				(led) 
			 );
endmodule


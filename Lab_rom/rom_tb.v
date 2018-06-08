//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   rom_tb.v
//   Module name     :   rom_tb

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
module rom_tb();

reg		[3:0] 	addr;
wire 	[7:0]	data;

initial 
	begin 
		addr = 0;
	end
	
always #20 addr = addr+1;  


rom u1 (
						.addr	(addr),
						.data	(data)
					  );
endmodule

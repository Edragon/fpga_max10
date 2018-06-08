//********************************************************
//
//   copyright(sw[2])2016, STEP FPGA 
//   All rights reserved
//
//   File name       :  comp4_tb.v
//   Module name     :  comp4_tb

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/23

//   Version         :   V1.0
//   Desacription    :   testbench module
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/23)   V1.0
// Description   
//
//********************************************************
//
//
//*******************
//DEFINE MODULE PORT
//*******************
`timescale 1ns/100ps
module comp4_tb;
reg [3:0] sw;
reg [3:0] key;

wire gt_led,eq_led,lt_led;
initial 
	begin 
		key=4'b0000;
		sw=4'b0000;
		#50;
		key=4'b0010;
		sw=4'b0100;
		#50;
		key=4'b1000;
		sw=4'b0010;
		#50;
		key=4'b1001;
		sw=4'b1001;
		
	end

comp4 comp4_uut(
				.x					(sw),
				.y			        (key),
				.gt_led      		(gt_led),		
				.eq_led      		(eq_led),		
				.lt_led      		(lt_led)
			 );
endmodule


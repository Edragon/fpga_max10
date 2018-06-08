//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   pwmpulse_tb.v
//   Module name     :   pwmpulse_tb

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
module pwmpulse_tb();

reg clk,rst_n;
wire pwm;

initial 
	begin 
		clk = 0;
		rst_n = 0;
		#20
		rst_n = 1;
	end
	
always #10 clk = ~clk;  

pwmpulse #(.duty(3),.cycle(14)) u1 (
						.clk	(clk),
						.rst_n	(rst_n),
						.pwm	(pwm)
					  );
					  
endmodule

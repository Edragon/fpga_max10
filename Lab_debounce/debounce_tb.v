//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   debounce.v
//   Module name     :   debounce
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/01
//   Version         :   V1.0
//   Description     :   The testbench for module Debounce
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       
// Description
//
//********************************************************// --------------------------------------------------------------------

`timescale 1ns / 100ps

module debounce_tb;

	parameter CLK_PERIOD = 10;  //CLK_PERIOD=10ns, Frequency=100MHz
	parameter CNT_NUM=30; //related with key_clk's frequency

	reg sys_clk;
	initial
		sys_clk = 1'b0;
	always
		sys_clk = #(CLK_PERIOD >> 1) ~sys_clk;

	reg sys_rst_n;  //active low
	initial 
		begin
			sys_rst_n = 1'b0;
			#200;
			sys_rst_n = 1'b1;
		end

	integer	ii;
	reg key_in;  //active low
	initial 
		begin
			key_in = 1'b1;
			#400;
			for(ii=0;ii<=4;ii=ii+1)  key_in = #50 ~key_in;
		
			#1000 key_in = 1'b1;
		
			for(ii=0;ii<=4;ii=ii+1)  key_in = #50 ~key_in;
			#50 key_in = 1'b1;
			#400; $stop;
		end
	
	wire key_pulse,key_state;
	debounce #
	(
	.CNT_NUM(CNT_NUM)
	)
	debounce_uut
			(
				.clk(sys_clk),				//system clock
				.rst_n(sys_rst_n),			//system reset
				.key_n(key_in),				//button input
				.key_pulse(key_pulse),		//Debounce pulse output
				.key_state(key_state)	//Debounce state output
			);
	
endmodule
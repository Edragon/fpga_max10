//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   karnaugh.v
//   Module name     :   karnaugh

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/22

//   Version         :   V1.0
//   Description     :   simplify 4 input circuit by karnaugh maps
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

module karnaugh
(
	//INPUT
	a			,
	b			,
	c			,
	d			,
	
	//OUTPUT
	led		
);
	//*******************
	//DEFINE INPUT
	//*******************
	input 		  a;
	input 		  b;
	input 		  c;
	input 		  d;
	
	//*******************
	//DEFINE OUTPUT
	//*******************
	output  		led;
	
	wire			f;
	
	//Combinational logic style
	assign f=b&c&d|a&c&d|a&b&d|a&b&c;	//simplify by karnaugh maps
	
	assign	led=~f;        				//led is low active
	
endmodule     

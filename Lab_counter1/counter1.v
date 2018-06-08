//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   counter1.v
//   Module name     :   counter1
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/01
//   Version         :   V1.0
//   Description     :   
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       
// Description
//
//********************************************************


//*******************
//DEFINE MODULE PORT
//*******************
module counter1
(
	//INPUT
	clk			,
	rst			,
	//OUTPUT
	q			
);
	
	//*******************
	//DEFINE INPUT
	//*******************
	input 	clk,rst;     

    //*******************
	//DEFINE OUTPUT
	//*******************
	output	[7:0]	q;
	
	//********************
	//OUTPUT ATTRIBUTE
	//********************
	//REGS
	reg 	[7:0]   q;    

	
	//Sequential logic style
	always@(posedge clk)
		if (!rst==1)
			q<=0;
		else if (q == 10)
			q<=0;
		else
			q<=q+1;
			
endmodule     
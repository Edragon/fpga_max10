//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   dff1.v
//   Module name     :   dff1
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
module dff1
(
	//INPUT
	clk			,
	rst			,
	d			,
	//OUTPUT
	q			
);
	//*******************
	//DEFINE INPUT
	//*******************
	input 	clk,rst,d;     

    //*******************
	//DEFINE OUTPUT
	//*******************
	output	q;
	
	//********************
	//OUTPUT ATTRIBUTE
	//********************
	//REGS
	reg     q;    

	
	//Sequential logic style
	always@(posedge clk)
		if (!rst==1)
			q<=0;
		else
			q<=d;
			
endmodule     
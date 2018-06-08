//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   ring.v
//   Module name     :   ring
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
module ring
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
			q<=1;
		else
			q<={q[0],q[7:1]};
			
endmodule     
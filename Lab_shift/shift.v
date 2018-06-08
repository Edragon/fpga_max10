//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   shift.v
//   Module name     :   shift
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
module shift
(
	//INPUT
	clk			,
	rst			,
	din			,
	//OUTPUT
	q			
);
	//*******************
	//DEFINE INPUT
	//*******************
	input 	clk,rst,din;     

    //*******************
	//DEFINE OUTPUT
	//*******************
	output	[3:0]	q;
	
	//********************
	//OUTPUT ATTRIBUTE
	//********************
	//REGS
	reg 	[3:0]   q;    

	
	//Sequential logic style
	always@(posedge clk)
		if (!rst==1)
			q<=0;
		else
			q<={din,q[3:1]};
			
endmodule     
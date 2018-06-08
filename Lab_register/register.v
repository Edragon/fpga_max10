//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   register.v
//   Module name     :   register
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
module register
(
	//INPUT
	clk			,
	rst			,
	load		,
	din			,
	//OUTPUT
	q			
);
	//*******************
	//DEFINE PARAMETER
	//*******************
	parameter			N	=	1;
	
	//*******************
	//DEFINE INPUT
	//*******************
	input 	clk,rst,load;
	input	[N-1:0]	din;

    //*******************
	//DEFINE OUTPUT
	//*******************
	output	[N-1:0]	q;
	
	//********************
	//OUTPUT ATTRIBUTE
	//********************
	//REGS
	reg		[N-1:0]	q;    

	
	//Sequential logic style
	always@(posedge clk)
		if (!rst==1)
			q<=0;
		else if (load==1)
			q<=din;
			
endmodule     
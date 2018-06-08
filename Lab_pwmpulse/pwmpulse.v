//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   pwmpulse.v
//   Module name     :   pwmpulse
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
module pwmpulse
(
	//INPUT
	clk			,
	rst_n		,
	//OUTPUT
	pwm			
);
	//*******************
	//DEFINE PARAMETER
	//*******************
	parameter			duty	=	4;//duty
	parameter			cycle	=	12;//cycle
	
	//*******************
	//DEFINE INPUT
	//*******************
	input 	clk,rst_n;     

    //*******************
	//DEFINE OUTPUT
	//*******************
	output	pwm;
	
	//********************
	//OUTPUT ATTRIBUTE
	//********************
	//REGS
	reg 	pwm;    

	//*********************
	//INNER SIGNAL DECLARATION
	//*********************
	reg		[3:0]	count;
	
	//Sequential logic style
	always@(posedge clk)
		if (!rst_n)
			count<=0;
		else if(count==cycle-1)
			count<=0;
		else
			count<=count+1;
			
	always@(*)
		if(count<duty)
			pwm<=1;
		else
			pwm<=0;

endmodule     
//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   dff2.v
//   Module name     :   dff2
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
module dff2
(
	//INPUT
	clk			,
	d			,
	//OUTPUT
	q			,
	notq
);
	//*******************
	//DEFINE INPUT
	//*******************
	input 	clk,d;     

    //*******************
	//DEFINE OUTPUT
	//*******************
	output	q,notq;
	
	//*********************
	//INNER SIGNAL DECLARATION
	//*********************
	wire q1,q2,q3,q4,q5,q6;
	
	//Combinational logic style
	assign	q1 = ~(q4 & q2);
	assign	q2 = ~(q1 & q5);
	assign	q3 = ~(q6 & q4);
	assign	q4 = ~(q3 & clk);
	assign	q5 = ~(q4 & q6 & clk);
	assign	q6 = ~(q5 & d);
	assign	q = q1;
	assign	notq = q2;
	
endmodule     
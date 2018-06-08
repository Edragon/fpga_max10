//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   mux21.v
//   Module name     :   mux21

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/23

//   Version         :   V1.0
//   Description     :   simplify 4 input circuit by mux21 maps
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/23)   V1.0
// Description    
//
//********************************************************
//
//
//*******************
//DEFINE MODULE PORT
//*******************

module mux21
(
	//INPUT
	a			,
	b			,
	s			,
	
	//OUTPUT
	y		

);
	//*******************
	//DEFINE INPUT
	//*******************
	input 		  a;
	input 		  b;
	input 		  s;
	
	//*******************
	//DEFINE OUTPUT
	//*******************
	output	reg		y;
	
	//plan B, using "always" and "if" 
	always @ (a,b,s)
	if(s==0)
		y=a;
	else 
		y=b;
	
endmodule     

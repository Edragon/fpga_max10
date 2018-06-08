//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   mux21.v
//   Module name     :   mux21
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/22
//   Version         :   V1.0
//   Description     :   simplify 4 input circuit by mux21 maps
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

module mux21
(
	//INPUT
	a			,
	b			,
	s			,
	
	//OUTPUT
	led			
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
	output  [3:0]	led;
	
	wire			y1;
	reg				y2;
	reg				y3;
	wire			y4;
	
	//plan A, Combinational logic style
	assign y1=~s&a|s&b;		
	
	//plan B, using "always" and "if" 
	always @ (a,b,s)
	if(s==0)
		y2=a;
	else 
		y2=b;
		
	//plan C 
	always @ (*)
	if(s==0)
		y3=a;
	else 
		y3=b;
	
	//plan D
	assign y4=s?b:a;

	
	assign	led[0]=~y1;        				//led is low active
	assign	led[1]=~y2;
	assign	led[2]=~y3;
	assign	led[3]=~y4;
	
endmodule     

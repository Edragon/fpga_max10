//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   gates.v
//   Module name     :   gates

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/19

//   Version         :   V1.0
//   Description     :   2 inputs and 6 logic gates
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/19)   V1.0
// Description    
//
//********************************************************
//
//
//*******************
//DEFINE MODULE PORT
//*******************

module gates
(
	//INPUT
	a			,
	b			,
	
	//OUTPUT
	led			
);
	//*******************
	//DEFINE INPUT
	//*******************
	input 	a,b;     
	
	//*******************
	//DEFINE OUTPUT
	//*******************
	output  [5:0]	led;
	
	wire	[5:0]	z;
	
	//Combinational logic style
	assign	z[5]=a&b;				//AND	
	assign	z[4]=~(a&b);			//NAND
	assign	z[3]=a|b;				//OR
	assign	z[2]=~(a|b);			//NOR
	assign	z[1]=a^b;				//XOR
	assign	z[0]=a~^b;				//XNOR
	
	assign	led=~z;        		//led is low active
	
endmodule     

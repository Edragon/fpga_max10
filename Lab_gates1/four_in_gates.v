//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   four_in_gates.v
//   Module name     :   four_in_gates

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/19

//   Version         :   V1.0
//   Description     :   4 inputs and 6 logic four_in_gates
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

module four_in_gates
(
	//INPUT
	a			,
	
	//OUTPUT
	led			
);
	//*******************
	//DEFINE INPUT
	//*******************
	input 	[3:0]  a;     
	
	//*******************
	//DEFINE OUTPUT
	//*******************
	output  [5:0]	led;
	
	wire	[5:0]	z;
	
	//Combinational logic style
//	assign	z[5]=a[0]&a[1]&a[2]&a[3]; 				//three kinds of AND logic expression
//	assign	z[5]=&a;
	and(z[5],a[0],a[1],a[2],a[3]);
	
//	assign	z[4]=~(a[0]&a[1]&a[2]&a[3]);			//three kinds of NAND logic expression
//	assign	z[4]=~&a;
	nand(z[4],a[0],a[1],a[2],a[3]);
	
//	assign	z[3]=a[0]|a[1]|a[2]|a[3];				//three kinds of OR logic expression
//	assign	z[3]=|a;
	or(z[3],a[0],a[1],a[2],a[3]);
	
//	assign	z[2]=~(a[0]|a[1]|a[2]|a[3]);			//three kinds of NOR logic expression
//	assign	z[2]=~|a;
	nor(z[2],a[0],a[1],a[2],a[3]);
	
//	assign	z[1]=a[0]^a[1]^a[2]^a[3];				//three kinds of XOR logic expression
//	assign	z[1]=^a;
	xor(z[1],a[0],a[1],a[2],a[3]);
	
//	assign	z[0]=a[0]~^a[1]~^a[2]~^a[3];			//three kinds of XNOR logic expression
//	assign	z[0]=~^a;
	xnor(z[0],a[0],a[1],a[2],a[3]);
	
	assign	led=~z;        		//led is low active
	
endmodule     

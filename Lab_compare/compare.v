//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   compare.v
//   Module name     :   compare

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/22

//   Version         :   V1.0
//   Description     :   simplify 4 input compare circuit by karnaugh maps
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

module compare
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
	input 	[1:0]	  a;
	input 	[1:0]	  b;
	
	//*******************
	//DEFINE OUTPUT 
	//*******************
	output  [2:0]	led;
	
	wire			a_eq_b;
	wire			a_gt_b;
	wire			a_1t_b;
	 
	//Combinational logic style
	assign 	a_eq_b=~b[1]&~b[0]&~a[1]&~a[0]	//simplify by karnaugh maps
					|~b[1]&b[0]&~a[1]&a[0]
					|b[1]&~b[0]&a[1]&~a[0]
					|b[1]&b[0]&a[1]&a[0];
	
	assign  a_gt_b=~b[1]&a[1]
					|~b[1]&~b[0]&a[0]
					|~b[0]&a[1]&a[0];
	
	assign  a_1t_b=b[1]&~a[1]
					|b[1]&b[0]&~a[0]
					|b[0]&~a[1]&~a[0];
	
	assign	led[0]=~a_eq_b;        		//led is low active
	assign	led[1]=~a_gt_b;
	assign	led[2]=~a_1t_b;
	
endmodule     

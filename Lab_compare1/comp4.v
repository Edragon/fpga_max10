//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   comp4.v
//   Module name     :   comp4

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/23

//   Version         :   V1.0
//   Description     :	 the four bits comparator
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
module comp4
(
	//INPUT
	x         	,
	y		    ,

	//OUTPUT
	gt_led      ,
	eq_led      ,
	lt_led      
);

	//*******************
	//DEFINE INPUT
	//*******************
	input  [3:0]		x			;    //4 bit input x (switch)
	input  [3:0]		y			;	 //4 bit input y (button)
	
	//*******************
	//DEFINE OUTPUT
	//*******************
	output      		gt_led      ;    //x is bigger than y
	output       		eq_led      ;    //x is equal to y
	output       		lt_led      ; 	 //x is smaller than y
	
	//********************
	//OUTPUT ATTRIBUTE
	//********************
	//REGS
	reg   		     	gt_led		;    
    reg                 eq_led		;
	reg					lt_led		;

	//*********************
	//INNER SIGNAL DECLARATION
	//*********************
	//REGS
	reg   [4:0]       	G  =0  	;    
	reg   [4:0]       	L  =0 	;    
	reg   [4:1]       	E     	;    
	
	//WIRES
	integer 			i		;
	
	//*********************
	//MAIN CORE
	//*********************
	
	always @ (*)
	begin
		for(i=0;i<4;i=i+1)
		comp1(x[i],y[i],G[i],L[i],G[i+1],L[i+1],E[i+1]);
		gt_led=~G[4];				//the led's default mode is lighted 
		eq_led=~E[4];				//the led's default mode is lighted
		lt_led=~L[4];				//the led's default mode is lighted
	end 
		
	task comp1(
				input  		x		,
				input 		y		,
				input		Gin		,
				input		Lin		,
				output      Gout	,
				output		Lout	,
				output		Eout
				);
	begin 
		Gout=x&~y|x&Gin|~y&Gin;
		Eout=~x&~y&~Gin&~Lin|x&y&~Gin&~Lin;
		Lout=~x&y|~x&Lin|y&Lin;
	end
	endtask   

endmodule  

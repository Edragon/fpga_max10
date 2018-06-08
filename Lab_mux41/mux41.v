//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   mux41.v
//   Module name     :   mux41

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/23

//   Version         :   V1.0
//   Description     :   the top file of mux41
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

module mux41
(
	//INPUT
	c			,
	key1		,
	key2		,
	
	//OUTPUT
	led			
);

	//*******************
	//DEFINE INPUT
	//*******************
	input 	[3:0]	  c;
	input             key1;
	input             key2;
	
	//*******************
	//DEFINE OUTPUT
	//*******************
	output     		led;
	
	// call module mux21
	wire v;
	wire s0,s1;
	mux21 mux21_m1
				(
					//INPUT
					.a			(c[0]),
					.b			(c[1]),
					.s			(s0),
					
					//OUTPUT
					.y			(v)
				);

	wire w;
	mux21 mux21_m2
				(
					//INPUT
					.a			(c[2]),
					.b			(c[3]),
					.s			(s0),
					
					//OUTPUT
					.y			(w)
				);

	wire z;			
	mux21 mux21_m3
				(
					//INPUT
					.a			(v),
					.b			(w),
					.s			(s1),
					
					//OUTPUT
					.y			(z)
				);
	
	assign led=~z;
	
	assign s0=~key1;
	assign s1=~key2; 
	
endmodule      

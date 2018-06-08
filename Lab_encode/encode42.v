//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   encode42.v
//   Module name     :   encode42

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/24
 
//   Version         :   V1.0
//   Description     £º  4-2 encoder
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/24)   V1.0
// Description
//
//********************************************************
//
//
//*******************
//DEFINE MODULE PORT
//*******************
module encode42
(
	//INPUT
	sw            ,
	
	//OUTPUT
	led1		  ,
	led2		  ,
	led3		  
);

	//*******************
	//DEFINE INPUT
	//*******************
	input   [3:0]       sw			;    

	//*******************
	//DEFINE OUTPUT
	//*******************
	output  [1:0]    	led1      	;
	output  [1:0]    	led2      	; 
	output  [1:0]    	led3      	; 

	
	//********************
	//OUTPUT ATTRIBUTE
	//********************  
	
	reg   [1:0]      	led1		;    
	wire  [1:0]      	led2		;
	reg   [1:0]      	led3		;
	wire  [1:0]			rled2		;
	integer 			i			;
	

	//*********************
	//MAIN CORE
	//*********************
	

	//Plan A
	always @ (*) 
	begin
		i=0; 
		for(i=0;i<4;i=i+1)  
			if(sw[i]==1) 
				led1=~i;          		// low active
	end 
		 
		
	//Plan B
	assign rled2[0]=sw[1]|sw[3];
	assign rled2[1]=sw[2]|sw[3];
	assign led2=~rled2;
	

	//Plan C
	always @ (*)
		case(sw) 
		4'b0001:led3=2'b11;
		4'b0010:led3=2'b10;
		4'b0100:led3=2'b01;
		4'b1000:led3=2'b00;
		default:led3=2'b11;
		endcase

endmodule 

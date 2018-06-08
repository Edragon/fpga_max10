//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   gary.v
//   Module name     :   gary

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/26

//   Version         :   V1.0
//   Description     £º  gary code converters
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/26)   V1.0
// Description
//
//********************************************************
//
//
//*******************
//DEFINE MODULE PORT
//*******************
module gary
(
	//INPUT
	sw            ,
	
	//OUTPUT
	led			  

);

	//*******************
	//DEFINE INPUT
	//*******************
	input   [3:0]       sw			;    


	//*******************
	//DEFINE OUTPUT
	//*******************
	output  [7:0]    	led      	;   

	//********************
	//OUTPUT ATTRIBUTE
	//********************  

	wire  [7:0]      	led			;    
	
	//*********************
	//INNER SIGNAL DECLARATION
	//*********************
	wire  [3:0]			gary_out	;
	reg   [3:0]			bin_out		;
	
	integer				i			;
	//*********************
	//MAIN CORE
	//*********************

	//bin-gary 
	assign	gary_out[3]=sw[3];
	assign	gary_out[2:0]=sw[3:1]^sw[2:0];
	
	//gary-bin
	always @ (*)
	begin 
		bin_out[3]=sw[3];
		for(i=2;i>=0;i=i-1)
			bin_out[i]=bin_out[i+1]^sw[i];
	end
	
	assign led={~bin_out,~gary_out};

endmodule

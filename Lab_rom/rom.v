//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   rom.v
//   Module name     :   rom
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
module rom
(
	//INPUT
	addr		,
	//OUTPUT
	data			
);
	//*******************
	//DEFINE INPUT
	//*******************
	input 	[3:0]	addr;     

    //*******************
	//DEFINE OUTPUT
	//*******************
	output	[7:0]	data;
	
	
	//*********************
	//INNER SIGNAL DECLARATION
	//*********************
	//REGS
	reg		[7:0]	romdata	[15:0];

			
	initial
	begin
		romdata[0] 	= 	8'h00;
		romdata[1]	=	8'h55;
		romdata[2]	=	8'haa;
		romdata[3]	=	8'hff;
		romdata[4] 	= 	8'h1f;
		romdata[5]	=	8'h5a;
		romdata[6]	=	8'ha5;
		romdata[7]	=	8'hf1;		
		romdata[8] 	= 	8'h3f;
		romdata[9]	=	8'hf3;
		romdata[10]	=	8'h6f;
		romdata[11]	=	8'hf6;
		romdata[12] = 	8'h7f;
		romdata[13]	=	8'h45;
		romdata[14]	=	8'h55;
		romdata[15]	=	8'hf4;	
	end
	
	assign data = romdata[addr];
			
endmodule     
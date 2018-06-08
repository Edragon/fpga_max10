//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   singlepulse.v
//   Module name     :   singlepulse
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
module singlepulse
(
	//INPUT
	clk			,
	rst_n		,
	load		,
	//OUTPUT
	q			
);
	//*******************
	//DEFINE INPUT
	//*******************
	input 	clk,rst_n,load;     

    //*******************
	//DEFINE OUTPUT
	//*******************
	output		q;
	
	//*********************
	//INNER SIGNAL DECLARATION
	//*********************
	//REGS
	reg   [2:0]       	cont;    
	  

	
	//Sequential logic style
	always@(posedge clk)
		if (!rst_n)
			cont<=0;
		else
			cont<={load,cont[2:1]};
			
	assign q = cont[2]&cont[1]& (~cont[0]);
			
endmodule     
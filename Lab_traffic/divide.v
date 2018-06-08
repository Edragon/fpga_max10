//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   divide.v
//   Module name     :   divide
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
module divide
(
	//INPUT
	clk			,
	rst_n			,
	//OUTPUT
	clkout			
);
	//*******************
	//DEFINE PARAMETER
	//*******************
	parameter			WIDTH	=	3;
	parameter			N		=	5;
	
	//*******************
	//DEFINE INPUT
	//*******************
	input 	clk,rst_n;     

    //*******************
	//DEFINE OUTPUT
	//*******************
	output	clkout;
	
	//********************
	//OUTPUT ATTRIBUTE
	//********************
	//REGS
	reg 	[WIDTH-1:0]		cnt_p,cnt_n;
	reg						clk_p,clk_n;

	assign clkout = (N==1)?clk:(N[0])?(clk_p&clk_n):clk_p;
	
	//Sequential logic style
	always @ (posedge clk)
		begin
			if(!rst_n)
				cnt_p<=0;
			else if (cnt_p==(N-1))
				cnt_p<=0;
			else cnt_p<=cnt_p+1;
		end
	
	always @ (negedge clk)
		begin
			if(!rst_n)
				cnt_n<=0;
			else if (cnt_n==(N-1))
				cnt_n<=0;
			else cnt_n<=cnt_n+1;
		end
		
	always @ (posedge clk)
		begin
			if(!rst_n)
				clk_p<=0;
			else if (cnt_p<(N>>1))  
				clk_p<=0;
			else 
				clk_p<=1;
		end

	always @ (negedge clk)
		begin
			if(!rst_n)
				clk_n<=0;
			else if (cnt_n<(N>>1))  
				clk_n<=0;
			else 
				clk_n<=1;
		end
endmodule     
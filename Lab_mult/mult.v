//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   mult.v
//   Module name     :   mult

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/30
 
//   Version         :   V1.0
//   Description     £º  4 bits multiply
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/30)   V1.0
// Description
//
//********************************************************
// 
// 
//*******************
//DEFINE MODULE PORT
//*******************
module mult
(
	//INPUT
	sw            ,
	key          ,
	
	//OUTPUT
	led		 	 
);

	//*******************
	//DEFINE INPUT
	//*******************
	input   [3:0]       sw			; 
	input   [3:0]       key			;  

	//*******************
	//DEFINE OUTPUT
	//*******************
	output  [7:0]    	led	      	;
	
	//******************** 
	//OUTPUT ATTRIBUTE 
	//********************     
	wire  [7:0]			led			;
	reg	  [7:0]			p			;

	//*********************
	//INNER SIGNAL DECLARATION
	//*********************
	reg   [7:0]			pv			;
	reg	  [7:0]			bp			;
	reg   [3:0]			a			;
	reg   [3:0]			b			;
	integer 			i			;
	
	//*********************
	//MAIN CORE  
	//*********************
	always @ (*)
		begin
			a=sw;
			b=~key;
			pv=8'b0000_0000;
			bp={4'b0000,b};
			for(i=0;i<=3;i=i+1)
				begin 
					if(a[i]==1)
						pv=pv+bp;
					bp={bp[6:0],1'b0};
				end
			p=pv;
		end
		 
	assign led=~p;

endmodule 


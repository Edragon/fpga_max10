//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   div.v
//   Module name     :   div

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/31
 
//   Version         :   V1.0
//   Description     £º  4 bits division
//
//   Modification history
//   ----------------------------------------------------------------------------
// Version       Data(2016/08/31)   V1.0
// Description
//
//********************************************************
// 
// 
//*******************
//DEFINE MODULE PORT
//*******************
module div
(
	//INPUT
	numerator    ,
	denominator  ,
	
	//OUTPUT
	led
);

	//*******************
	//DEFINE INPUT
	//*******************
	input   [3:0]       numerator	; 
	input   [3:0]       denominator	;  

	//*******************
	//DEFINE OUTPUT
	//*******************
	output  [7:0]    	led	      	;
	
	//******************** 
	//OUTPUT ATTRIBUTE 
	//********************     
	wire  [7:0]			led			;
	reg   [3:0]    	    quotient 	;
	reg   [3:0]		    remainder	;
	
	
	//*********************
	//MAIN CORE  
	//*********************
	always @ (*)
		begin
			div4({4'b0,numerator},~denominator,quotient,remainder);
		end
	
	task div4(
				input [7:0] numer	,
				input [3:0] denom	,
				output[3:0]	quot	,
				output[3:0]	rem	
			);
	begin:D4
		reg  [4:0] n1;
		reg  [3:0] n2;
		reg  [4:0] d;
		integer    i;
		begin
			d={1'b0,denom};
			n2=numer[3:0];
			n1={1'b0,numer[7:4]};
			for(i=0;i<=3;i=i+1)
			begin 
				n1={n1[3:0],n2[3]};				//shl n1:n2
				n2={n2[2:0],1'b0};
				if(n1>=d)
					begin 
						n1=n1-d;
						n2[0]=1;
					end
			end
		quot=n2; 
		rem=n1[3:0];	
		end
	end
	endtask				
	
	assign led={~remainder,~quotient};

endmodule 


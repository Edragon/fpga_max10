//********************************************************
//
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//
//   File name       :   decode38.v
//   Module name     :   decode38

//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/23

//   Version         :   V1.0
//   Description     £º  3_8 decoder
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
module decode38
(
	//INPUT
	sw            ,
	
	//OUTPUT
	led
);

	//*******************
	//DEFINE INPUT
	//*******************
	input   [2:0]       sw			;    


	//*******************
	//DEFINE OUTPUT
	//*******************
	output  [7:0]    	led      	;     

	//********************
	//OUTPUT ATTRIBUTE
	//********************  

	//WIRES
	reg  [7:0]      	led1			;    
	
	integer 			i			;

	//*********************
	//MAIN CORE
	//*********************

	//Plan A
	always @ (sw)
	begin
		case(sw)
			3'b000:	led1=8'b10000000;
			3'b001:	led1=8'b01000000;
			3'b010:	led1=8'b00100000;
			3'b011:	led1=8'b00010000;
			3'b100:	led1=8'b00001000;
			3'b101:	led1=8'b00000100;
			3'b110: led1=8'b00000010;
			3'b111:	led1=8'b00000001;
		endcase
	end
	assign led=led1;
	/*	
	//Plan B
	assign led[0]=~(~a[2]&~a[1]&~a[0]);
	assign led[1]=~(~a[2]&~a[1]& a[0]);
	assign led[2]=~(~a[2]& a[1]&~a[0]);
	assign led[3]=~(~a[2]& a[1]& a[0]);
	assign led[4]=~( a[2]&~a[1]&~a[0]);
	assign led[5]=~( a[2]&~a[1]& a[0]);
	assign led[6]=~( a[2]& a[1]&~a[0]);
	assign led[7]=~( a[2]& a[1]& a[0]);
	*/
endmodule

//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   detector.v
//   Module name     :   detector
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
module detector
(
	//INPUT
	clk			,
	rst_n			,
	din			,
	//OUTPUT
	dout			
);
	//*******************
	//DEFINE INPUT
	//*******************
	input 			clk,rst_n,din;     

    //*******************
	//DEFINE OUTPUT
	//*******************
	output	 reg   	dout;
	
	//*********************
	//INNER SIGNAL DECLARATION
	//*********************
	//REGS
	reg   [1:0]       	cur_state,next_state; 
	
	//*******************
	//DEFINE PARAMETER
	//*******************
	parameter			s0	=	2'b00,
						s1	=	2'b01,
						s2	=	2'b10,
						s3	=	2'b11;

	
	//Sequential logic style
	always @(posedge clk)
		begin
			if(!rst_n)
				cur_state<=s0;
			else
				cur_state<=next_state;
		end

	always @(cur_state or din)
		begin
			case(cur_state)
			s0:
				if(din==1)
					next_state=s1;
				else
					next_state=s0;
			s1:
				next_state=din?s1:s2;
			s2:
				next_state=din?s3:s0;
			s3:
				next_state=din?s1:s2;
			default:
				next_state=s0;
			endcase
		end

	always @(cur_state or din or rst_n)
		begin
			if(!rst_n)
				dout=1'b0;
			else if(cur_state==s3)
                dout=1'b1;
			else
				dout=1'b0;
		end

endmodule
			

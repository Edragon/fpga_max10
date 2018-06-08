//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   debounce.v
//   Module name     :   debounce
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2016/08/01
//   Version         :   V1.0
//   Description     :   Debounce for button with FPGA/CPLD
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

module debounce 

(
		clk,				//system clock
		rst_n,				//system reset
		key_n,				//button input
		key_pulse,			//Debounce pulse output
		key_state			//Debounce state output
); 

	//*******************
	//DEFINE PARAMETER
	//*******************
	parameter			CNT_NUM = 19'd240000;
	
	//*******************
	//DEFINE INPUT
	//*******************
	input   		clk;			//system clock
	input   		rst_n;			//system reset
	input   		key_n;			//button input
	
	//*******************
	//DEFINE OUTPUT
	//*******************
	output  		key_pulse;		//Debounce pulse output
	output	reg		key_state;		//Debounce state output

	//*********************
	//INNER SIGNAL DECLARATION
	//*********************
	reg  		key_rst;  
	reg			low_sw;	
	reg			low_sw_r;
	wire		key_pulse;
	wire		key_an;
	reg	[18:0]	cnt;
	

	//Register key_rst, lock key_n to next clk
	always @(posedge clk  or  negedge rst_n)
		if (!rst_n) 
			key_rst <= 1'b1;
		else
			key_rst <=key_n;

	//Detect the edge of key_n
	assign  key_an = (key_rst==key_n)? 0:1;


	//Count the number of clk when a edge of key_n is occured
	always @ (posedge clk  or negedge rst_n)
		if (!rst_n) 
			cnt <= 19'd0;
		else if(key_an) 
			cnt <=19'd0;
		else 
			cnt <= cnt + 1'b1;


	//Lock the status to register low_sw when cnt count to CNT_NUM(20ms)
	always @(posedge clk  or  negedge rst_n)
		if (!rst_n)  
			low_sw <= 1'b1;
		else if (cnt == CNT_NUM-1)
			low_sw <= key_n;


	//Register low_sw_r, lock low_sw to next clk
	always @ ( posedge clk  or  negedge rst_n )
		if (!rst_n) 
			low_sw_r <= 1'b1;
		else  
			low_sw_r <= low_sw;


	//Detect the negedge of low_sw, generate pulse
	assign key_pulse= low_sw_r & ( ~low_sw);

	//Detect the negedge of low_sw, generate state
	always @(posedge clk or negedge rst_n)
		if (!rst_n)
			key_state <= 1'b1;
		else if(key_pulse)
			key_state <= ~key_state;
		else
			key_state <= key_state;

endmodule


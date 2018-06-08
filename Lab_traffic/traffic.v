//********************************************************
//   Copyright(c)2016, STEP FPGA 
//   All rights reserved
//   File name       :   traffic.v
//   Module name     :   traffic
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
module traffic
(
	//INPUT
	clk			,
	rst_n		,
	//OUTPUT
	out			
);
	//*******************
	//DEFINE INPUT
	//*******************
	input 	clk,rst_n;     

    //*******************
	//DEFINE OUTPUT
	//*******************
	output	reg[5:0]	out;
	
	//*******************
	//DEFINE PARAMETER
	//*******************   
	parameter      	S1 = 4'b00,    
					S2 = 4'b01,
					S3 = 4'b10,
					S4 = 4'b11;
			   
	parameter		timegreen = 10,
					timeyellow = 3,
					timered = 15;
	//*********************
	//INNER SIGNAL DECLARATION
	//*********************
	//REGS	
	reg 	[3:0] 	timecont;
	reg  			timeout;
	reg 	[1:0] 	state; 
	
	//WIRES
	wire			clk1h;


	divide #(.WIDTH(32),.N(6000000)) CLK1H (
								.clk(clk),
								.rst_n(rst_n),
								.clkout(clk1h));
	//Sequential logic style
	always @ (posedge clk1h)
	begin
		if(!rst_n) begin
			state <= S1;
			timecont <= timegreen;
			end
		else begin
			case(state)
				S1:begin
					if(timecont==0) begin
						state <= S2;
						out <= 6'b101011;
						timecont <= timeyellow;
						end
					else begin
						state <= S1;
						out <= 6'b110011;
						timecont <= timecont - 1;
						end
				end

                S2:begin
					if(timecont==0) begin
						state <= S3;
						out <= 6'b011110;
						timecont <= timered;
						end
					else begin
						state <= S2;
						out <= 6'b101011;
						timecont <= timecont - 1;
						end
				end

                S3:begin
					if(timecont==0) begin
						state <= S4;
						out <= 6'b011101;
						timecont <= timeyellow;
						end
					else begin
						state <= S3;
						out <= 6'b011110;
						timecont <= timecont - 1;
						end
				end

                S4:begin
					if(timecont==0) begin
						state <= S1;
						out <= 6'b110011;
						timecont <= timegreen;
						end
					else begin
						state <= S4;
						out <= 6'b011101;
						timecont <= timecont - 1;
						end
				end
				
				default: begin
						out <= 6'b110011;
						timeout <= timegreen;
						end
				
			endcase
		end
	end
			
endmodule     

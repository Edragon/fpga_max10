// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Segment_Top
// 
// Author: Step
// 
// Description: Segment_Top
// 
// Web: www.ecbcamp.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Segment_Top
(
input	[3:0]	sw,
output	[8:0]	segment_led_1,  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
output	[8:0]	segment_led_2   //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

Segment_led Segment_led_uut
(
.seg_data_1(sw),  //seg_data input
.seg_data_2(sw),  //seg_data input
.segment_led_1(segment_led_1),  //segment_led output, MSB~LSB = SEG,DP,G,F,E,D,C,B,A
.segment_led_2(segment_led_2)   //segment_led output, MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

endmodule

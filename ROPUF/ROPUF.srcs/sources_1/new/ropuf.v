`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2021 09:17:31 PM
// Design Name: 
// Module Name: ropuf
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ropuf(
    input enable, 
    input [1:0] sel,
    output reg mux_output1, mux_output2
    );

wire out1_1, out2_1, out3_1, out4_1;
assign out1_1 = !(!(!(enable&out1_1)));
assign out2_1 = !(!(!(enable&out2_1)));
assign out3_1 = !(!(!(enable&out3_1)));
assign out4_1 = !(!(!(enable&out4_1)));

always @ (out1_1 or out2_1 or out3_1 or out4_1 or sel) begin  
      case (sel)  
         2'b00 : mux_output1 = out1_1;  
         2'b01 : mux_output1 = out2_1;  
         2'b10 : mux_output1 = out3_1;  
         2'b11 : mux_output1 = out4_1;  
      endcase 
 end
 
 wire out1_2, out2_2, out3_2, out4_2;
assign out1_2 = !(!(!(enable&out1_2)));
assign out2_2 = !(!(!(enable&out2_2)));
assign out3_2 = !(!(!(enable&out3_2)));
assign out4_2 = !(!(!(enable&out4_2)));

always @ (out1_2 or out2_2 or out3_2 or out4_2 or sel) begin  
      case (sel)  
         2'b00 : mux_output2 = out1_2;  
         2'b01 : mux_output2 = out2_2;  
         2'b10 : mux_output2 = out3_2;  
         2'b11 : mux_output2 = out4_2;  
      endcase 
 end  
      
endmodule

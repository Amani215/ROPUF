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
    //output reg out[0:3]
    //output wire out1, out2, out3, out4,
    output reg mux_output
    );

wire out1, out2, out3, out4;
assign out1 = (!(!(enable&out1)));
assign out2 = (!(!(enable&out2)));
assign out3 = (!(!(enable&out3)));
assign out4 = (!(!(enable&out4)));

always @ (out1 or out2 or out3 or out4 or sel) begin  
      case (sel)  
         2'b00 : mux_output = out1;  
         2'b01 : mux_output = out2;  
         2'b10 : mux_output = out3;  
         2'b11 : mux_output = out4;  
      endcase 
 end     
endmodule

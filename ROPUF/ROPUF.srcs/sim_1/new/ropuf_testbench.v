`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2021 09:20:48 PM
// Design Name: 
// Module Name: ropuf_testbench
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


module ropuf_testbench();

reg t_enable;
wire OUT;

ropuf dut(.enable(t_enable), .out(OUT));

initial begin
    t_enable = 1;
    #60
    
    $stop;
end

endmodule

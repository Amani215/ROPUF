`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2021 12:00:40 PM
// Design Name: 
// Module Name: ro_module_testbench
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


module ro_module_testbench(reg t_enable,reg t_out);

ro_module dut(.enable(t_enable), .out(t_out));

initial begin
    t_out = 0;
    #60
    
    $stop;
end
endmodule

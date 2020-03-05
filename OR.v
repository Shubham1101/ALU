`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:21:57
// Design Name: 
// Module Name: OR
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


module OR(inA, inB, orout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] orout;
    output reg flag;
    
    always@(*) begin
        orout = inA|inB;
        if(orout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
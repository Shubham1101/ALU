`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:23:21
// Design Name: 
// Module Name: XOR
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


module XOR(inA, inB, xorout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] xorout;
    output reg flag;
    
    always@(*) begin
        xorout = inA^inB;
        if(xorout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:15:22
// Design Name: 
// Module Name: LS
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


module LS(inA, inB, lsout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] lsout;
    output reg flag;
    
    always@(*) begin
        lsout = inA<<inB[4:0];
        if(lsout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
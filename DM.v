`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:35:45
// Design Name: 
// Module Name: DM
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


module DM(inA, inB, dmout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] dmout;
    output reg flag;
    
    always@(*) begin
        dmout = {inB[31:16],inA[15:0]};
        if(dmout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
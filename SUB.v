`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:14:10
// Design Name: 
// Module Name: SUB
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


module SUB(inA, inB, subout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] subout;
    output reg flag;
    
    always@(*) begin
        subout = inA-inB;
        if(subout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
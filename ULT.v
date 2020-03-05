`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:29:52
// Design Name: 
// Module Name: ULT
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


module ULT(inA, inB, ultout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] ultout;
    output reg flag;
    
    always@(*) begin
        ultout = (inA<inB)?32'b11111111111111111111111111111111:32'b0;
        if(ultout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
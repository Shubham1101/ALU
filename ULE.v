`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:32:17
// Design Name: 
// Module Name: ULE
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


module ULE(inA, inB, uleout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] uleout;
    output reg flag;
    
    always@(*) begin
        uleout = (inA<=inB)?32'b11111111111111111111111111111111:32'b0;
        if(uleout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:11:19
// Design Name: 
// Module Name: ADD4
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


module ADD4(inA, inB, add4out, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] add4out;
    output reg flag;
    
    always@(*) begin
        add4out = inA+(inB*4);
        if(add4out==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
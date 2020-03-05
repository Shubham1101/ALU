`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:18:34
// Design Name: 
// Module Name: RSL
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


module RSL(inA, inB, rslout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] rslout;
    output reg flag;
    
    always@(*) begin
        rslout = inA>>inB[4:0];
        if(rslout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
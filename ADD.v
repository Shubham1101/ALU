`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:06:04
// Design Name: 
// Module Name: ADD
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


module ADD(inA, inB, addout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] addout;
    output reg flag;
    
    always@(*) begin
        addout = inA+inB;
        if(addout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
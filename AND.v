`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:20:53
// Design Name: 
// Module Name: AND
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


module AND(inA, inB, andout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] andout;
    output reg flag;
    
    always@(*) begin
        andout = inA&inB;
        if(andout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
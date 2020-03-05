`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:31:08
// Design Name: 
// Module Name: SLE
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


module SLE(inA, inB, sleout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] sleout;
    output reg flag;
    
    always@(*) begin
        sleout = ($signed(inA)<=$signed(inB))?32'b11111111111111111111111111111111:32'b0;
        if(sleout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
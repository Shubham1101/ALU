`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:34:28
// Design Name: 
// Module Name: UGE
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


module UGE(inA, inB, ugeout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] ugeout;
    output reg flag;
    
    always@(*) begin
        ugeout = (inA>=inB)?32'b11111111111111111111111111111111:32'b0;
        if(ugeout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
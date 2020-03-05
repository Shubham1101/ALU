`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:27:41
// Design Name: 
// Module Name: UGT
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


module UGT(inA, inB, ugtout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] ugtout;
    output reg flag;
    
    always@(*) begin
        ugtout = (inA>inB)?32'b11111111111111111111111111111111:32'b0;
        if(ugtout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
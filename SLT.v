`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:28:56
// Design Name: 
// Module Name: SLT
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


module SLT(inA, inB, sltout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] sltout;
    output reg flag;
    
    always@(*) begin
        sltout = ($signed(inA)<$signed(inB))?32'b11111111111111111111111111111111:32'b0;
        if(sltout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
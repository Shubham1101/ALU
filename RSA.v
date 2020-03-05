`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:16:55
// Design Name: 
// Module Name: RSA
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


module RSA(inA, inB, rsaout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] rsaout;
    output reg flag;
    
    always@(*) begin
        rsaout = $signed(inA)>>>inB[4:0];
        if(rsaout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
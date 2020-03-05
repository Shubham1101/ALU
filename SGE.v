`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:33:24
// Design Name: 
// Module Name: SGE
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


module SGE(inA, inB, sgeout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] sgeout;
    output reg flag;
    
    always@(*) begin
        sgeout = ($signed(inA)>=$signed(inB))?32'b11111111111111111111111111111111:32'b0;
        if(sgeout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:25:31
// Design Name: 
// Module Name: SGT
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


module SGT(inA, inB, sgtout, flag);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] sgtout;
    output reg flag;
    
    always@(*) begin
        sgtout = ($signed(inA)>$signed(inB))?32'b11111111111111111111111111111111:32'b0;
        if(sgtout==0)
            flag = 1;
        else
            flag = 0;
    end
endmodule
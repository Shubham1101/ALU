`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2018 20:05:19
// Design Name: 
// Module Name: ALU
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


module ALU(inA, inB, aluout, zero, control);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] aluout;
    output reg zero;
    input [5:0] control;
    
    reg [31:0] addA, add4A, subA, lsA, rsaA, rslA, andA, orA, xorA, sgtA, ugtA, sltA, ultA, sleA, uleA, sgeA, ugeA, dmA;
    reg [31:0] addB, add4B, subB, lsB, rsaB, rslB, andB, orB, xorB, sgtB, ugtB, sltB, ultB, sleB, uleB, sgeB, ugeB, dmB;
    wire [31:0] addout, add4out, subout, lsout, rsaout, rslout, andout, orout, xorout, sgtout, ugtout, sltout, ultout, sleout, uleout, sgeout, ugeout, dmout;                                                                    
    wire [31:0] addflag, add4flag, subflag, lsflag, rsaflag, rslflag, andflag, orflag, xorflag, sgtflag, ugtflag, sltflag, ultflag, sleflag, uleflag, sgeflag, ugeflag, dmflag;

    ADD Add(addA, addB, addout, addflag);
    ADD4 Add4(add4A, add4B, add4out, add4flag);
    SUB Sub(subA, subB, subout, subflag);
    LS Ls(lsA, lsB, lsout, lsflag);
    RSA Rsa(rsaA, rsaB, rsaout, rsaflag);
    RSL Rsl(rslA, rslB, rslout, rslflag);
    AND And(andA, andB, andout, andflag);
    OR Or(orA, orB, orout, orflag);
    XOR Xor(xorA, xorB, xorout, xorflag);
    SGT Sgt(sgtA, sgtB, sgtout, sgtflag);
    UGT Ugt(ugtA, ugtB, ugtout, ugtflag);
    SLT Slt(sltA, sltB, sltout, sltflag);
    ULT Ult(ultA, ultB, ultout, ultflag);
    SLE Sle(sleA, sleB, sleout, sleflag);
    ULE Ule(uleA, uleB, uleout, uleflag);
    SGE Sge(sgeA, sgeB, sgeout, sgeflag);
    UGE Uge(ugeA, ugeB, ugeout, ugeflag);
    DM Dm(dmA, dmB, dmout, dmflag);
    
    always@(*) begin
        case(control)
            6'b000000:  begin
                            addA = inA;
                            addB = inB;
                            aluout = addout;
                            zero = addflag;
                        end
            6'b000001:  begin
                            add4A = inA;
                            add4B = inB;
                            aluout = add4out;
                            zero = add4flag;
                        end
            6'b000010:  begin
                            subA = inA;
                            subB = inB;
                            aluout = subout;
                            zero = subflag;
                        end
            6'b000011:  begin
                            lsA = inA;
                            lsB = inB;
                            aluout = lsout;
                            zero = lsflag;
                        end
            6'b000100:  begin
                            rsaA = inA;
                            rsaB = inB;
                            aluout = rsaout;
                            zero = rsaflag;
                        end
            6'b000101:  begin
                            rslA = inA;
                            rslB = inB;
                            aluout = rslout;
                            zero = rslflag;
                        end
            6'b000110:  begin
                            andA = inA;
                            andB = inB;
                            aluout = andout;
                            zero = andflag;
                        end
            6'b000111:  begin
                            orA = inA;
                            orB = inB;
                            aluout = orout;
                            zero = orflag;
                        end
            6'b001000:  begin
                            xorA = inA;
                            xorB = inB;
                            aluout = xorout;
                            zero = xorflag;
                        end
            6'b001001:  begin
                            sgtA = inA;
                            sgtB = inB;
                            aluout = sgtout;
                            zero = sgtflag;
                        end
            6'b001010:  begin
                            ugtA = inA;
                            ugtB = inB;
                            aluout = ugtout;
                            zero = ugtflag;
                        end
            6'b001011:  begin
                            sltA = inA;
                            sltB = inB;
                            aluout = sltout;
                            zero = sltflag;
                        end
            6'b001100:  begin
                            ultA = inA;
                            ultB = inB;
                            aluout = ultout;
                            zero = ultflag;
                        end
            6'b001101:  begin
                            sleA = inA;
                            sleB = inB;
                            aluout = sleout;
                            zero = sleflag;
                        end
            6'b001110:  begin
                            uleA = inA;
                            uleB = inB;
                            aluout = uleout;
                            zero = uleflag;
                        end
            6'b001111:  begin
                            sgeA = inA;
                            sgeB = inB;
                            aluout = sgeout;
                            zero = sgeflag;
                        end
            6'b010000:  begin
                            ugeA = inA;
                            ugeB = inB;
                            aluout = ugeout;
                            zero = ugeflag;
                        end
            6'b010001:  begin
                            dmA = inA;
                            dmB = inB;
                            aluout = dmout;
                            zero = dmflag;
                        end
            default:    $display("ERROR");                                   
        endcase
    end
endmodule
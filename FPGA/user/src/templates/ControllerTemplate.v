`timescale 1ns / 1ps

// generated file, do not edit
module Controller(
    input [31:0] IR,
    output [3:0] AluOp_o,
/*placeholder{0}*/
);
    wire [31:0] F;
    wire [6:0] OP;
    assign F = IR;
    assign OP = IR[6:0];
    
/*placeholder{1}*/

endmodule //Controller

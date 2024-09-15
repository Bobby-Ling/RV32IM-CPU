`timescale 1ns / 1ps

module PipelineInterfaceTemplate(
    input clk;
    input async_rst;
    input sync_rst;
    input en;
    input [31:0] PC_in;
    input [31:0] IR_in;
    output [31:0] PC_out;
    output [31:0] IR_out;
);
    parameter DEBUG=0;
    
    always @(posedge clk or negedge async_rst) begin;
        if (!async_rst) begin
            // do async reset
            PC_out <= 0;
            IR_out <= 0;
        end else if (sync_rst) begin
            // do sync reset 
            PC_out <= 0;
            IR_out <= 0;
        end else if(en) begin
            // propagate to next pipeline stage
            PC_out <= PC_in;
            IR_out <= PC_in;
        end
    end
endmodule
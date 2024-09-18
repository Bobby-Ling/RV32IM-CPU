`timescale 1ns / 1ps

// Brief: CPU Top Module
// Author: Bobby Ling
module RiscV32CoreDemo(
    input clk, 
    input async_rst
);

    `include "include/PipelineStageWireDefs.vh"

    // STAGE IF

    ///////////////////////////////////////////
    ///////   PipelineInterface IF/ID  ////////
    assign IF_ID_en = 1;
    assign IF_ID_sync_rst = 0; 
    `include "include/generated/PipelineInterface_IF_ID_Inst.vh"
    ///////////////////////////////////////////
    
    // STAGE ID
    
    `include "include/generated/Controller_Inst.vh"

    wire ID_R1_read_w;
    wire ID_R2_read_w;
    ///////////////////////////////////////////
    ///////   PipelineInterface ID/EX  ////////
    assign ID_EX_en = 1;
    assign ID_EX_sync_rst = 0; 
    `include "include/generated/PipelineInterface_ID_EX_Inst.vh"
    /////////////////////////////

    // STAGE EX

    ///////////////////////////////////////////
    ///////   PipelineInterface EX/MEM  ///////
    assign EX_MEM_en = 1;
    assign EX_MEM_sync_rst = 0; 
    `include "include/generated/PipelineInterface_EX_MEM_Inst.vh"
    ///////////////////////////////////////////

    // STAGE MEM

    ///////////////////////////////////////////
    //////   PipelineInterface MEM/WB  ////////
    assign MEM_WB_en = 1;
    assign MEM_WB_sync_rst = 0; 
    `include "include/generated/PipelineInterface_MEM_WB_Inst.vh"
    ///////////////////////////////////////////

    // STAGE WB

endmodule


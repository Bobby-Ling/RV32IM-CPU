`timescale 1ns / 1ps

// Brief: CPU Top Module
// Author: Bobby Ling
module RiscV32CoreDemo(
    input clk, 
    input async_rst
);

    `include "include/PipelineStageWireDefs.vh"

    // STAGE IF

    ////////////////////////////
    ///////   ps1 IF/ID  ////////
    assign IF_ID_en = 1;
    assign IF_ID_sync_rst = 0; 
    `include "include/generated/PipelineInterface_IF_ID_Inst.vh"
    ////////////////////////////
    
    // STAGE ID

    /////////////////////////////
    ///////   ps2 ID/EX  ////////
    assign ID_EX_en = 1;
    assign ID_EX_sync_rst = 0; 
    `include "include/generated/PipelineInterface_ID_EX_Inst.vh"
    /////////////////////////////

    // STAGE EX

    /////////////////////////////
    ///////   ps3 EX/MEM  ////////
    assign EX_MEM_en = 1;
    assign EX_MEM_sync_rst = 0; 
    `include "include/generated/PipelineInterface_EX_MEM_Inst.vh"
    ////////////////////////////


    //////////////////////////////
    //////   ps4 MEM/WB  /////////
    assign MEM_WB_en = 1;
    assign MEM_WB_sync_rst = 0; 
    `include "include/generated/PipelineInterface_MEM_WB_Inst.vh"
    //////////////////////////////

    // STAGE WB

endmodule


    `include "../../generated/Controller.v"
    // generated file, do not edit
    Controller Controller_U(
        .AluOp_o(ID_AluOp),
        .MemtoReg_o(ID_MemtoReg),
        .MemWrite_o(ID_MemWrite),
        .ALU_Src_o(ID_ALU_Src),
        .RegWrite_o(ID_RegWrite),
        .ECALL_o(ID_ECALL),
        .S_Type_o(ID_S_Type),
        .JAL_o(ID_JAL),
        .JALR_o(ID_JALR),
        .rs1Used_o(ID_rs1Used),
        .rs2Used_o(ID_rs2Used),
        .Branch_o(ID_Branch),
        .AluRst2_o(ID_AluRst2),
        .Alu1U_o(ID_Alu1U),
        .Alu2U_o(ID_Alu2U)
    );

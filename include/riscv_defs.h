#pragma once

#define INS32B_SIZE 4  // instruction length

#define OP_MASK 0x0000007f  //mask of opcode

#define OP_R 0x33           //opcode of R type
#define OP_32W 0x3b         //opcode of RV64M standard externtion
#define OP_I1 0x03          //opcode of I type 1 part: lb lh lw ld
#define OP_I2 0x13          //opcode of I type 2 part: addi slli slti xori srli srai ori andi
#define OP_I3 0x1b          //opcode of I type 3 part: addiw
#define OP_JALR 0x67        //opcode of jalr
#define OP_SCALL 0x73       //opcode of ecall
#define OP_S 0x23           //opcode of S type
#define OP_SB 0x63          //opcode of SB type: beq bne blt bge
#define OP_AUIPC 0x17       //opcode of auipc
#define OP_LUI 0x37         //opcode of lui
#define OP_JAL 0x6f         //opcode of jal

#define FUNC3_MASK 0x00007000  //mask of funct3
#define GET_FUNC3(a) ((a&FUNC3_MASK)>>12)

#define FUNC7_MASK 0xfe000000  //mask of funct7
#define GET_FUNC7(a) ((a&FUNC7_MASK)>>25)

#define RS1_MASK 0x000f8000    //mask of rs1
#define GET_RS1(a) ((a&RS1_MASK)>>15)

#define RS2_MASK 0x01f00000    //mask of rs2
#define GET_RS2(a) ((a&RS2_MASK)>>20)

#define RD_MASK 0x00000f80     //mask of rd
#define GET_RD(a) ((a&RD_MASK)>>7)


//instruction in Simple Green Card
enum InsType{
    BUBBLE  = 0,
    ADD = 1,
    MUL = 2,
    SUB = 3,
    SLL = 4,
    MULH = 5,
    MULW = 39,
    SLT = 6,
    XOR = 7,
    DIV = 8,
    SRL = 9,
    SRA = 10,
    OR = 11,
    REM = 12,
    AND = 13,

    LB = 14,
    LH = 15,
    LW = 16,
    LD = 17,

    ADDI = 18,
    SLLI = 19,
    SLLIW = 40,
    SLTI = 20,
    XORI = 21,
    SRLI = 22,
    SRLIW = 41,
    SRAI = 23,
    SRAIW = 42,
    ORI = 24,
    ANDI = 25,

    ADDIW = 26,

    JALR = 27,

    ECALL = 28,

    SB = 29,
    SH = 30,
    SW = 31,
    SD = 32,

    BEQ = 33,
    BNE = 34,
    BLT = 35,
    BGE = 36,
    AUIPC = 37,
    LUI = 38,
    JAL = 43,
    ADDW = 44,
};

//Register Index
#define ZERO 0
#define RA 1    //Return address
#define SP 2    //Stack pointer
#define GP 3    //Global pointer
#define TP 4    //Thread pointer
#define T0 5    //Temporary/alternate link register
#define T1 6    // |
#define T2 7    //Temporaries
#define S0 8    //Saved register/frame pointer
#define S1 9    //Saved register
#define A0 10   // |
#define A1 11   //Function arguments/return values
#define A2 12
#define A3 13
#define A4 14
#define A5 15

//cycle config
#define MUL32CYCLE 30
#define MUL64CYCLE 60
#define DIV32CYCLE 40
#define DIV64CYCLE 80
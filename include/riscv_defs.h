#pragma once

#define RV64INS_SIZE 4

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
#define BUBBLE 0
#define ADD 1
#define MUL 2
#define SUB 3
#define SLL 4
#define MULH 5
#define MULW 39
#define SLT 6
#define XOR 7
#define DIV 8
#define SRL 9
#define SRA 10
#define OR 11
#define REM 12
#define AND 13

#define LB 14
#define LH 15
#define LW 16
#define LD 17

#define ADDI 18
#define SLLI 19
#define SLLIW 40
#define SLTI 20
#define XORI 21
#define SRLI 22
#define SRLIW 41
#define SRAI 23
#define SRAIW 42
#define ORI 24
#define ANDI 25

#define ADDIW 26

#define JALR 27

#define ECALL 28

#define SB 29
#define SH 30
#define SW 31
#define SD 32

#define BEQ 33
#define BNE 34
#define BLT 35
#define BGE 36
#define AUIPC 37
#define LUI 38
#define JAL 43
#define ADDW 44

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
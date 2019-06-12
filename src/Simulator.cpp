#include "src/Simulator.h"

using namespace riscv;

namespace {

uint64_t sign_ext(uint64_t i, int32_t byte) {
    switch(byte){
    case 1:
        if((i & 0x80) >> 7){
            i += 0xffffffffffffff00;
        }
        break;
    case 2:
        if((i & 0x8000) >> 15){
            i += 0xffffffffffff0000;
        }
        break;
    case 4:
        if((i & 0x80000000) >> 31){
            i += 0xffffffff00000000;
        }
        break;
    default:
        break;
    }
    return i;
}

uint64_t sign_ext_bit(uint64_t i, int32_t bit) {
    uint64_t tmp = (uint64_t) 1 << (bit - 1);
    if((tmp & i) >> (bit - 1)){
        i += ((0xffffffffffffffff>>bit)<<bit);
    }
    return i;
}

} // anonymous namespace

void Simulator::read_into_memory(const char* filename){
    FILE* elf = fopen(filename, "rb");
    int size;
    uint8_t* memory = mem.memory;
    while((size = fread(memory, 1000, 1, elf)) > 0){
        debug("readinto file size : %d\n", size*1000);
        memory += size*1000;
    }
}

void Simulator::single_step(){

}

void Simulator::pipeline(){
    bool not_end;
    state.cycle_cnt += 4;
    while(1){
        not_end = one_ins_exec();
        state.cycle_cnt++;
        state.dynamic_ins_cnt++;
        if(!not_end)
            break;
    }
}

bool Simulator::one_ins_exec(){
    IF();
    ID(cpu.ir, ins_type, rs1, rs2, rd, imm);

    if(ins_type == JALR){
        state.jr_stall++;
    }
    else if(ins_type == LB || ins_type == LH || ins_type == LW || ins_type == LD){
        old_ins = 1;
        old_rd = rd;
    }

    uint64_t ex_ret = EX(ins_type, rs1, rs2, imm);

    uint64_t mem_ret = MEM(ins_type, ex_ret, rs2);

    if (ins_type == JAL || ins_type == JALR){
        WB(ins_type, cpu.pc, rd);
        cpu.pc = mem_ret;
    } else {
        WB(ins_type, mem_ret, rd);
    }

    if(ins_type == BEQ || ins_type == BNE || ins_type == BLT || ins_type == BGE){
        if(ex_ret == 1){
            debug("B imm : %llx\n",sign_ext_bit(imm,13));
            cpu.pc = cpu.pc - INS32B_SIZE + sign_ext_bit(imm,13);
			debug("B jmp PC : %llx\n", cpu.pc);
        } else {
            debug("B not jump\n");
        }
    }

    if(cpu.pc == end_addr){
        return false;
    }
    return true;
}

void Simulator::IF(){
    cpu.ir = get_instruction();
    debug("%llx : %08x\n", cpu.pc, cpu.ir);
    cpu.pc += INS32B_SIZE;
}

void Simulator::ID(uint32_t ins, InsType& type, uint32_t& id_rs1, uint32_t& id_rs2, uint32_t& id_rd, uint32_t& id_imm){
    uint32_t opcode = ins&OP_MASK;
    uint32_t func3 = GET_FUNC3(ins);
    uint32_t func7 = GET_FUNC7(ins);
    switch(opcode){
        case OP_R:
            switch(func3){
				case 0x0:
					if(func7==0x00){
						type = ADD;
						debug("ADD\n");
					}
					else if(func7==0x01){
						type = MUL;
						debug("MUL\n");
					}
					else if(func7==0x20){
						type = SUB;
						debug("SUB\n");
					}
					else
						printf("Error: Unkown Func7 0x%02x (R type Func3 0x%01x) !\n",func7,func3);
					break;
				case 0x1:
					if(func7==0x00){
						type = SLL;
						debug("SLL\n");
					}
					else if(func7==0x01){
						type = MULH;
						debug("MULH\n");
					}
					else
						printf("Error: Unkown Func7 0x%02x (R type Func3 0x%01x) !\n",func7,func3);
					break;
				case 0x2:
					if(func7==0x00){
						type = SLT;
						debug("SLT\n");
					}
					else
						printf("Error: Unkown Func7 0x%02x (R type Func3 0x%01x) !\n",func7,func3);
					break;
				case 0x4:
					if(func7==0x00){
						type = XOR;
						debug("XOR\n");
					}
					else if(func7==0x01){
						type = DIV;
						debug("DIV\n");
					}
					else
						printf("Error: Unkown Func7 0x%02x (R type Func3 0x%01x) !\n",func7,func3);
					break;
				case 0x5:
					if(func7==0x00){
						type = SRL;
						debug("SRL ins\n");
					}
					else if(func7==0x20){
						type = SRA;
						debug("SRA\n");
					}
					else
						printf("Error: Unkown Func7 0x%02x (R type Func3 0x%01x) !\n",func7,func3);
					break;
				case 0x6:
					if(func7==0x00){
						type = OR;
						debug("OR\n");
					}
					else if(func7==0x01){
						type = REM;
						debug("REM\n");
					}
					else
						printf("Error: Unkown Func7 0x%02x (R type Func3 0x%01x) !\n",func7,func3);
					break;
				case 0x7:
					if(func7==0x00){
						type = AND;
						debug("AND\n");
					}
					else
						printf("Error: Unkown Func7 0x%02x (R type Func3 0x%01x) !\n",func3,func7);
					break;
				default:
					printf("Error: Unkown Func3 0x%01x (R type) !\n",func3);
			}

			id_rs1 = GET_RS1(ins);
			id_rs2 = GET_RS2(ins);
			id_rd = GET_RD(ins);
			id_imm = 0;
			break;

		case OP_32W:
			switch(func3){
				case 0x0:
					if(func7 == 0x0){
						type = ADDW;
						debug("ADDW\n");
					}
					else if(func7 == 0x1){
						type = MULW;
						debug("MULW\n");
					}
					else{
						printf("Error: Unknown Func7 0x%02x (OP_MULW) !\n",func7);
					}
					break;
				case 0x4:
				case 0x5:
				case 0x6:
				case 0x7:
					printf("Simulator : don't realize this ins(OP_MULW)!\n");
					break;
			}
			id_rs1 = GET_RS1(ins);
			id_rs2 = GET_RS2(ins);
			id_rd = GET_RD(ins);
			id_imm = 0;
			break;

		case OP_I1:
			if(func3 == 0x0){
				type = LB;
				debug("LB\n");
			}
			else if(func3 == 0x1){
				type = LH;
				debug("LH\n");
			}
			else if(func3 == 0x2){
				type = LW;
				debug("LW\n");
			}
			else if(func3 == 0x3){
				type = LD;
				debug("LD\n");
			}
			else{
				printf("Error: Unkown Func3 0x%01x (I1 type) !\n",func3);
            }

			id_rd = GET_RD(ins);
			id_rs1 = GET_RS1(ins);
			id_rs2 = (unsigned int)-1;
			id_imm = (ins&0xfff00000) >>20;
			break;

		case OP_I2:
			switch(func3){
				case(0x0):
					type = ADDI;
					debug("ADDI\n");
					break;
				case(0x1):
					if(func7==0x00){
						type = SLLI;
						debug("SLLI\n");
					}
					else
						printf("Error: Unknown Func7 0x%02x (I2 type Func3 0x%01x) !\n",func7,func3);
					break;
				case(0x2):
					type = SLTI;
					debug("SLTI\n");
					break;
				case(0x4):
					type = XORI;
					debug("XORI\n");
					break;
				case(0x5):
					if(func7==0x00){
						type = SRLI;
						debug("SRLI\n");
					}
					else if(func7==0x10){
						type = SRAI;
						debug("SRAI\n");
					}
					else
						printf("Error : Unknown Func7 0x%02x (I2 type Func3 0x%01x) !\n",func7,func3);
					break;
				case(0x6):
					type = ORI;
					debug("ORI\n");
					break;
				case(0x7):
					type = ANDI;
					debug("ANDI\n");
					break;
				default:
					printf("Error: Unknown Func3 0x%01x (I2 type) !\n",func3);
			}

			id_rd = GET_RD(ins);
			id_rs1 = GET_RS1(ins);
			id_rs2 = (unsigned int)-1;
			id_imm = (ins&0xfff00000) >>20;
			break;

		case OP_I3:
			switch(func3){
				case 0x0:
					type = ADDIW;
					debug("ADDIW\n");
					break;
				case 0x1:
					type = SLLIW;
					debug("SLLIW\n");
					break;
				case 0x5:
					if(func7 == 0x0){
						type = SRLIW;
						debug("SRLIW\n");
					}
					else if(func7 == 0x20){
						type = SRAIW;
						debug("SRAIW\n");
					}
					else{
						printf("Error: Unkown func7!\n");
					}
					break;
				default:
					printf("Error: Unknown Func3 0x%01x (I3 type) !\n",func3);
			}
			id_rd = GET_RD(ins);
			id_rs1 = GET_RS1(ins);
			id_rs2 = (unsigned int)-1;
			id_imm = (ins&0xfff00000) >>20;
			break;

		case OP_JALR:
			if(func3 == 0x0){
				type = JALR;
				debug("JALR\n");
			}
			else
				printf("Error: Unknown Func3 0x%01x (JALR type) !\n",func3);

			id_rd = GET_RD(ins);
			id_rs1 = GET_RS1(ins);
			id_rs2 = (unsigned int)-1;
			id_imm = (ins&0xfff00000) >>20;
			break;

		case OP_SCALL:
			debug("ECALL\n");
			type = ECALL;
			id_rd = (unsigned int)-1;
			id_rs1 = (unsigned int)-1;
			id_rs2 = (unsigned int)-1;
			id_imm = 0;
			break;

		case OP_S:
			switch(func3){
				case(0x0):
					type = SB;
					debug("SB\n");
					break;
				case(0x1):
					type = SH;
					debug("SH\n");
					break;
				case(0x2):
					type = SW;
					debug("SW\n");
					break;
				case(0x3):
					type = SD;
					debug("SD\n");
					break;
				default:
					printf("Error: Unknown Func3 0x%01x (S type) !\n",func3);
			}

			id_rd = (unsigned int)-1;
			id_rs1 = GET_RS1(ins);
			id_rs2 = GET_RS2(ins);
			id_imm = ((ins&0x00000f80)>>7) + ((ins&0xfe000000)>>20);
			break;

		case OP_SB:
			switch(func3){
				case(0x0):
					type = BEQ;
					debug("BEQ\n");
					break;
				case(0x1):
					type = BNE;
					debug("BNE\n");
					break;
				case(0x4):
					type = BLT;
					debug("BLT\n");
					break;
				case(0x5):
					type = BGE;
					debug("BGE\n");
					break;
				default:
					printf("Error: Unknown Func3 0x%01x (SB type) !\n",func3);
			}

			id_rd = (unsigned int)-1;
			id_rs1 = GET_RS1(ins);
			id_rs2 = GET_RS2(ins);
			id_imm = ((ins&0x00000f00)>>7) + ((ins&0x7e000000)>>20) + ((ins&0x00000080)<<4) + ((ins&0x80000000)>>19);
			break;

		case OP_AUIPC:
			debug("AUIPC\n");
			type = AUIPC;
			id_rd = GET_RD(ins);
			id_rs1 = (unsigned int)-1;
			id_rs2 = (unsigned int)-1;
			id_imm = (ins&0xfffff000);
			break;

		case OP_LUI:
			debug("LUI\n");
			type = LUI;
			id_rd = GET_RD(ins);
			id_rs1 = (unsigned int)-1;
			id_rs2 = (unsigned int)-1;
			id_imm = (ins&0xfffff000);

			break;
		case OP_JAL:
			debug("JAL\n");
			type = JAL;
			id_rd = GET_RD(ins);
			debug("OP_JAL rd : %d\n",(ins&0x00000f80)>>7);
			id_rs1 = (unsigned int)-1;
			id_rs2 = (unsigned int)-1;
			id_imm = ((ins&0x7fe00000)>>20) + ((ins&0x00100000)>>9)+ (ins&0x000ff000) + ((ins&0x80000000)>>11);
			debug("ID OP_JAL imm : %x\n",id_imm);
			debug("imm[20]:%x  imm[19:12]:%x  imm[11]:%x  imm[10:1]:%x\n",((ins&0x80000000)>>11),(ins&0x000ff000),((ins&0x00100000)>>9),((ins&0x7fe00000)>>20));
			break;
		default:
			printf("Simulator : Unkown type instruction, opcode 0x%02x \n",opcode);

		break;
	}
}

uint64_t Simulator::EX(InsType type, uint32_t ex_rs1, uint32_t ex_rs2, uint32_t ex_imm){
    uint64_t ex_result;
    uint64_t rs1_v = (ex_rs1 == (uint32_t)-1 ? 0 : cpu.reg[ex_rs1]);
    uint64_t rs2_v = (ex_rs2 == (uint32_t)-1 ? 0 : cpu.reg[ex_rs2]);
    uint64_t ex_imm_ext12 = sign_ext_bit((uint64_t)ex_imm, 12);

    switch(type){
        case ADD:
			ex_result = (int64_t)rs1_v + (int64_t)rs2_v;
			break;
		case ADDW:
			ex_result = (int32_t)(rs1_v&0x00000000ffffffff) + (int32_t)(rs2_v&0x00000000ffffffff);
			ex_result = sign_ext(ex_result,4);
			break;
		case MUL:
			state.cycle_cnt += MUL64CYCLE;
			ex_result = (int64_t)rs1_v * (int64_t)rs2_v;  //R[rd] <- (R[rs1]*R[rs2])[63:0]
			// not completely
			break;
		case SUB:
			ex_result = (int64_t)rs1_v - (int64_t)rs2_v;
			break;
		case SLL:
			ex_result = rs1_v << rs2_v;
			break;
		case MULH:
			state.cycle_cnt += MUL64CYCLE;
			printf("Yemu : this ins is not realized!\n");
		//	ex_result = rs1_v * rs2_v; //R[rd] <- (R[rs1]*R[rs2])[127:64]
			break;
		case MULW:
			state.cycle_cnt += MUL32CYCLE;
			ex_result = ((int32_t)(rs1_v&0x00000000ffffffff))*((int32_t)(rs2_v&0x00000000ffffffff));
			ex_result = sign_ext(ex_result,4);
			break;
		case SLT:
			ex_result = ((int64_t)rs1_v < (int64_t)rs2_v)? 1 : 0;
			break;
		case XOR:
			ex_result = rs1_v ^ rs2_v;
			break;
		case DIV:
			state.cycle_cnt += DIV64CYCLE;
			ex_result = (int64_t)rs1_v / (int64_t)rs2_v;
			break;
		case SRL:
			ex_result = rs1_v >> rs2_v;
			break;
		case SRA:
			ex_result = sign_ext_bit(rs1_v >> rs2_v , 64 - rs2_v);
			break;
		case OR:
			ex_result = rs1_v | rs2_v;
			break;
		case REM:
			ex_result = (int64_t)rs1_v % (int64_t)rs2_v;
			break;
		case AND:
			ex_result = rs1_v & rs2_v;
			break;
		case LB:
		case LH:
		case LW:
		case LD:
			ex_result = rs1_v + ex_imm_ext12; //R[rd] <- SignExt(Mem(R[rs1]+offset,byte))
			break;
		case ADDI:
			ex_result = rs1_v + ex_imm_ext12; //addi rd,rs1,imm
			break;
		case SLLI:
			ex_result = rs1_v << (ex_imm&0x0000003f); //R[rd] <- R[rs1] << imm[5:0]
			break;
		case SLLIW:
			ex_result = rs1_v << (ex_imm&0x0000001f);
			ex_result = sign_ext(ex_result,4);
			break;
		case SLTI:
			ex_result = ((int64_t)rs1_v < ex_imm_ext12)? 1:0;//R[rd] <- (R[rs1] < imm)?1:0
			break;
		case XORI:
			ex_result = rs1_v ^ ex_imm_ext12; //R[rd] <- R[rs1] ^ imm
			break;
		case SRLI:
			ex_result = rs1_v >> (ex_imm&0x0000003f); //R[rd] <- R[rs1] >> imm[5:0]
			break;
		case SRLIW:
			ex_result = (rs1_v&0x00000000ffffffff) >> (ex_imm&0x0000001f);
			break;
		case SRAI:
			ex_result = sign_ext_bit(rs1_v >> (ex_imm&0x0000003f) , 64-(ex_imm&0x0000003f));
			break;
		case SRAIW:
			ex_result = sign_ext_bit(rs1_v >> (ex_imm&0x0000001f) , 64-(ex_imm&0x0000001f));
			break;
		case ORI:
			ex_result = rs1_v | ex_imm_ext12;
			break;
		case ANDI:
			ex_result = rs1_v & ex_imm_ext12;
			break;
		case ADDIW:
			ex_result = sign_ext((uint32_t)(rs1_v + ex_imm_ext12), 4);
			break;
		case JALR:
			ex_result = rs1_v + ex_imm_ext12;
			ex_result = (ex_result >> 1) << 1;
			break;
		case ECALL:
			//sys_call(reg[10],reg[11]);
			break;
		case SB:
		case SH:
		case SW:
		case SD:
			ex_result = rs1_v +ex_imm_ext12;
			break;
		case BEQ:
			if(rs1_v == rs2_v){
				return 1;
			}
			else{
				return 0;
			}
			break;
		case BNE:
			if(rs1_v != rs2_v){
				return 1;
			}
			else{
				return 0;
			}
			break;
		case BLT:
			if((int64_t)rs1_v < (int64_t)rs2_v){
				return 1;
			}
			else{
				return 0;
			}
			break;
		case BGE:
			if((int64_t)rs1_v >= (int64_t)rs2_v){
				return 1;
			}
			else{
				return 0;
			}
			break;
		case AUIPC:
			printf("Simulator : this ins is not realized!\n");
			//
			break;
		case LUI:
			ex_result = (uint64_t)ex_imm;
			break;
		case JAL:
			ex_result = cpu.pc + sign_ext_bit(ex_imm,21) - INS32B_SIZE;
			debug("new PC : %llx\n",ex_result);
			break;
		default:
			break;
	}
	return ex_result;
}

uint64_t Simulator::MEM(InsType type, uint64_t ex_result, uint32_t mem_rs2){
    uint64_t mem_result = 0;
    switch(type){
		case LB:
			mem_result = sign_ext(read_mem(ex_result,1),1);
			break;
		case LH:
			mem_result = sign_ext(read_mem(ex_result,2),2);
			break;
		case LW:
			mem_result = sign_ext(read_mem(ex_result,4),4);
			break;
		case LD:
			mem_result = read_mem(ex_result,8);
			break;
		case SB:
			write_mem(ex_result, cpu.reg[mem_rs2],1);
			break;
		case SH:
			write_mem(ex_result, cpu.reg[mem_rs2],2);
			break;
		case SW:
			write_mem(ex_result, cpu.reg[mem_rs2],4);
			break;
		case SD:
			write_mem(ex_result, cpu.reg[mem_rs2],8);
			break;
		default:
			mem_result = ex_result;
			break;
	}
	return mem_result;
}

void Simulator::WB(InsType type, uint64_t mem_result, uint32_t wb_rd){
    switch(type){
		case SB:
		case SH:
		case SW:
		case SD:
		case BEQ:
		case BNE:
		case BLT:
		case BGE:
		case ECALL:
			break;
		default:
			if(wb_rd == 0)
				mem_result = 0;
			cpu.reg[wb_rd] = mem_result;
			debug("WB : rd %d : %016llx\n",wb_rd,mem_result);
			break;
	}
}

uint64_t Simulator::read_mem(uint64_t addr, int32_t byte){
    switch(byte){
		case 1:
			//mem((unsigned long long)(memory+addr-mem_offset),1);
			return *(uint8_t*)(mem.memory + addr - mem.memory_offset);
			break;
		case 2:
			//mem((unsigned long long)(memory+addr-mem_offset),1);
			return *(uint16_t*)(mem.memory + addr - mem.memory_offset);
			break;
		case 4:
			//mem((unsigned long long)(memory+addr-mem_offset),1);
			return *(uint32_t*)(mem.memory + addr - mem.memory_offset);
			break;
		case 8:
			//mem((unsigned long long)(memory+addr-mem_offset),1);
			return *(uint64_t*)(mem.memory + addr - mem.memory_offset);
			break;
	}
    return -1;
}

void Simulator::write_mem(uint64_t addr, uint64_t reg_v, int32_t byte){
    switch(byte){
		case 1:
			//mem((unsigned long long)(memory+addr-mem_offset),0);
			*(uint8_t*)(mem.memory + addr - mem.memory_offset) = (uint8_t)reg_v;
			break;
		case 2:
			//mem((unsigned long long)(memory+addr-mem_offset),0);
			*(uint16_t*)(mem.memory + addr - mem.memory_offset) = (uint16_t)reg_v;
			break;
		case 4:
			//mem((unsigned long long)(memory+addr-mem_offset),0);
			*(uint32_t*)(mem.memory + addr - mem.memory_offset) = (uint32_t)reg_v;
			break;
		case 8:
			//mem((unsigned long long)(memory+addr-mem_offset),0);
			*(uint64_t*)(mem.memory + addr - mem.memory_offset) = reg_v;
			break;
	}
}

// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.4.1
// timestamp : Tue Dec 15 15:36:11 2020 GMT
// usage     : riscv_ctg \
//                  -- cgf ('/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/dataset.cgf', '/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/rv32i.cgf') \
//                  -- xlen 32 \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the sb instruction of the RISC-V I extension for the sb-align covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32I")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sb-align)

RVTEST_SIGBASE( x1,signature_x1_1)

inst_0:
// rs1 != rs2, rs1==x2, rs2==x25, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648, imm_val < 0, ea_align == 0 and (imm_val % 4) == 3
// opcode: sb; op1:x2; op2:x25; op2val:-0x80000000; immval:-0x201; align:0
TEST_STORE(x1,x12,0,x2,x25,-0x80000000,-0x201,0,sb,0)

inst_1:
// rs1==x22, rs2==x27, rs2_val == 0, imm_val > 0, ea_align == 0 and (imm_val % 4) == 2
// opcode: sb; op1:x22; op2:x27; op2val:0x0; immval:0x2; align:0
TEST_STORE(x1,x12,0,x22,x27,0x0,0x2,4,sb,0)

inst_2:
// rs1==x29, rs2==x11, rs2_val == (2**(xlen-1)-1), ea_align == 0 and (imm_val % 4) == 0, rs2_val == 2147483647
// opcode: sb; op1:x29; op2:x11; op2val:0x7fffffff; immval:0x200; align:0
TEST_STORE(x1,x12,0,x29,x11,0x7fffffff,0x200,8,sb,0)

inst_3:
// rs1==x31, rs2==x30, rs2_val == 1, 
// opcode: sb; op1:x31; op2:x30; op2val:0x1; immval:0x200; align:0
TEST_STORE(x1,x12,0,x31,x30,0x1,0x200,12,sb,0)

inst_4:
// rs1==x30, rs2==x28, ea_align == 0 and (imm_val % 4) == 1, rs2_val == -262145
// opcode: sb; op1:x30; op2:x28; op2val:-0x40001; immval:0x5; align:0
TEST_STORE(x1,x12,0,x30,x28,-0x40001,0x5,16,sb,0)

inst_5:
// rs1==x26, rs2==x21, ea_align == 2 and (imm_val % 4) == 0, rs2_val == 4194304
// opcode: sb; op1:x26; op2:x21; op2val:0x400000; immval:-0x400; align:2
TEST_STORE(x1,x12,0,x26,x21,0x400000,-0x400,20,sb,2)

inst_6:
// rs1==x14, rs2==x29, ea_align == 2 and (imm_val % 4) == 1, rs2_val == -8388609
// opcode: sb; op1:x14; op2:x29; op2val:-0x800001; immval:0x1; align:2
TEST_STORE(x1,x12,0,x14,x29,-0x800001,0x1,24,sb,2)

inst_7:
// rs1==x23, rs2==x24, ea_align == 2 and (imm_val % 4) == 2, rs2_val == 4
// opcode: sb; op1:x23; op2:x24; op2val:0x4; immval:-0x2; align:2
TEST_STORE(x1,x12,0,x23,x24,0x4,-0x2,28,sb,2)

inst_8:
// rs1==x9, rs2==x4, ea_align == 2 and (imm_val % 4) == 3, rs2_val == -1431655766
// opcode: sb; op1:x9; op2:x4; op2val:-0x55555556; immval:-0x81; align:2
TEST_STORE(x1,x12,0,x9,x4,-0x55555556,-0x81,32,sb,2)

inst_9:
// rs1==x5, rs2==x7, ea_align == 1 and (imm_val % 4) == 0, 
// opcode: sb; op1:x5; op2:x7; op2val:-0x7; immval:0x100; align:1
TEST_STORE(x1,x12,0,x5,x7,-0x7,0x100,36,sb,1)

inst_10:
// rs1==x28, rs2==x0, ea_align == 1 and (imm_val % 4) == 1, rs2_val == -33
// opcode: sb; op1:x28; op2:x0; op2val:0x0; immval:0x5; align:1
TEST_STORE(x1,x12,0,x28,x0,0x0,0x5,40,sb,1)

inst_11:
// rs1==x3, rs2==x23, ea_align == 1 and (imm_val % 4) == 2, rs2_val == -33554433
// opcode: sb; op1:x3; op2:x23; op2val:-0x2000001; immval:-0xa; align:1
TEST_STORE(x1,x12,0,x3,x23,-0x2000001,-0xa,44,sb,1)

inst_12:
// rs1==x21, rs2==x10, ea_align == 1 and (imm_val % 4) == 3, rs2_val == -65537
// opcode: sb; op1:x21; op2:x10; op2val:-0x10001; immval:-0x5; align:1
TEST_STORE(x1,x12,0,x21,x10,-0x10001,-0x5,48,sb,1)

inst_13:
// rs1==x27, rs2==x18, ea_align == 3 and (imm_val % 4) == 0, rs2_val == 8388608
// opcode: sb; op1:x27; op2:x18; op2val:0x800000; immval:-0x4; align:3
TEST_STORE(x1,x12,0,x27,x18,0x800000,-0x4,52,sb,3)

inst_14:
// rs1==x6, rs2==x15, ea_align == 3 and (imm_val % 4) == 1, rs2_val == -16777217
// opcode: sb; op1:x6; op2:x15; op2val:-0x1000001; immval:0x9; align:3
TEST_STORE(x1,x12,0,x6,x15,-0x1000001,0x9,56,sb,3)

inst_15:
// rs1==x17, rs2==x2, ea_align == 3 and (imm_val % 4) == 2, 
// opcode: sb; op1:x17; op2:x2; op2val:-0x2000001; immval:-0xa; align:3
TEST_STORE(x1,x12,0,x17,x2,-0x2000001,-0xa,60,sb,3)

inst_16:
// rs1==x24, rs2==x5, ea_align == 3 and (imm_val % 4) == 3, rs2_val == 536870912
// opcode: sb; op1:x24; op2:x5; op2val:0x20000000; immval:-0x81; align:3
TEST_STORE(x1,x12,0,x24,x5,0x20000000,-0x81,64,sb,3)

inst_17:
// rs1==x11, rs2==x13, imm_val == 0, rs2_val == -32769
// opcode: sb; op1:x11; op2:x13; op2val:-0x8001; immval:0x0; align:0
TEST_STORE(x1,x12,0,x11,x13,-0x8001,0x0,68,sb,0)

inst_18:
// rs1==x8, rs2==x16, rs2_val == 2, 
// opcode: sb; op1:x8; op2:x16; op2val:0x2; immval:-0x1; align:0
TEST_STORE(x1,x12,0,x8,x16,0x2,-0x1,72,sb,0)

inst_19:
// rs1==x15, rs2==x12, rs2_val == 8, 
// opcode: sb; op1:x15; op2:x12; op2val:0x8; immval:-0x7; align:0
TEST_STORE(x1,x5,0,x15,x12,0x8,-0x7,76,sb,0)
RVTEST_SIGBASE( x2,signature_x2_0)

inst_20:
// rs1==x4, rs2==x20, rs2_val == 16, 
// opcode: sb; op1:x4; op2:x20; op2val:0x10; immval:-0x4; align:0
TEST_STORE(x2,x5,0,x4,x20,0x10,-0x4,0,sb,0)

inst_21:
// rs1==x10, rs2==x1, rs2_val == 32, 
// opcode: sb; op1:x10; op2:x1; op2val:0x20; immval:-0x1; align:0
TEST_STORE(x2,x5,0,x10,x1,0x20,-0x1,4,sb,0)

inst_22:
// rs1==x13, rs2==x3, rs2_val == 64, 
// opcode: sb; op1:x13; op2:x3; op2val:0x40; immval:0x5; align:0
TEST_STORE(x2,x5,0,x13,x3,0x40,0x5,8,sb,0)

inst_23:
// rs1==x19, rs2==x17, rs2_val == 128, 
// opcode: sb; op1:x19; op2:x17; op2val:0x80; immval:-0x400; align:0
TEST_STORE(x2,x5,0,x19,x17,0x80,-0x400,12,sb,0)

inst_24:
// rs1==x20, rs2==x9, rs2_val == 256, 
// opcode: sb; op1:x20; op2:x9; op2val:0x100; immval:0x3; align:0
TEST_STORE(x2,x5,0,x20,x9,0x100,0x3,16,sb,0)

inst_25:
// rs1==x25, rs2==x26, rs2_val == 512, 
// opcode: sb; op1:x25; op2:x26; op2val:0x200; immval:-0x41; align:0
TEST_STORE(x2,x5,0,x25,x26,0x200,-0x41,20,sb,0)

inst_26:
// rs1==x18, rs2==x22, rs2_val == 1024, 
// opcode: sb; op1:x18; op2:x22; op2val:0x400; immval:0x3ff; align:0
TEST_STORE(x2,x5,0,x18,x22,0x400,0x3ff,24,sb,0)

inst_27:
// rs1==x7, rs2==x31, rs2_val == 2048, 
// opcode: sb; op1:x7; op2:x31; op2val:0x800; immval:0x200; align:0
TEST_STORE(x2,x5,0,x7,x31,0x800,0x200,28,sb,0)

inst_28:
// rs1==x16, rs2==x14, rs2_val == 4096, 
// opcode: sb; op1:x16; op2:x14; op2val:0x1000; immval:-0x400; align:0
TEST_STORE(x2,x5,0,x16,x14,0x1000,-0x400,32,sb,0)

inst_29:
// rs1==x1, rs2==x6, rs2_val == 8192, 
// opcode: sb; op1:x1; op2:x6; op2val:0x2000; immval:0x9; align:0
TEST_STORE(x2,x5,0,x1,x6,0x2000,0x9,36,sb,0)

inst_30:
// rs1==x12, rs2==x19, rs2_val == 16384, 
// opcode: sb; op1:x12; op2:x19; op2val:0x4000; immval:0x6; align:0
TEST_STORE(x2,x5,0,x12,x19,0x4000,0x6,40,sb,0)

inst_31:
// rs2==x8, rs2_val == 32768, 
// opcode: sb; op1:x26; op2:x8; op2val:0x8000; immval:0x7; align:0
TEST_STORE(x2,x5,0,x26,x8,0x8000,0x7,44,sb,0)

inst_32:
// rs2_val == 65536, 
// opcode: sb; op1:x10; op2:x11; op2val:0x10000; immval:0x9; align:0
TEST_STORE(x2,x5,0,x10,x11,0x10000,0x9,48,sb,0)

inst_33:
// rs2_val == 131072, 
// opcode: sb; op1:x10; op2:x11; op2val:0x20000; immval:-0x7; align:0
TEST_STORE(x2,x5,0,x10,x11,0x20000,-0x7,52,sb,0)

inst_34:
// rs2_val == 262144, 
// opcode: sb; op1:x10; op2:x11; op2val:0x40000; immval:0x3; align:0
TEST_STORE(x2,x5,0,x10,x11,0x40000,0x3,56,sb,0)

inst_35:
// rs2_val == 524288, 
// opcode: sb; op1:x10; op2:x11; op2val:0x80000; immval:-0x4; align:0
TEST_STORE(x2,x5,0,x10,x11,0x80000,-0x4,60,sb,0)

inst_36:
// rs2_val == 1048576, 
// opcode: sb; op1:x10; op2:x11; op2val:0x100000; immval:0x7ff; align:0
TEST_STORE(x2,x5,0,x10,x11,0x100000,0x7ff,64,sb,0)

inst_37:
// rs2_val == 2097152, 
// opcode: sb; op1:x10; op2:x11; op2val:0x200000; immval:-0x5; align:0
TEST_STORE(x2,x5,0,x10,x11,0x200000,-0x5,68,sb,0)

inst_38:
// rs2_val == -1025, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x401; immval:0x7ff; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x401,0x7ff,72,sb,0)

inst_39:
// rs2_val == -2049, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x801; immval:-0x41; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x801,-0x41,76,sb,0)

inst_40:
// rs2_val == -4097, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x1001; immval:-0x101; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x1001,-0x101,80,sb,0)

inst_41:
// rs2_val == -8193, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x2001; immval:0x555; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x2001,0x555,84,sb,0)

inst_42:
// rs2_val == -16385, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x4001; immval:0x7ff; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x4001,0x7ff,88,sb,0)

inst_43:
// rs2_val == -131073, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x20001; immval:0x3ff; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x20001,0x3ff,92,sb,0)

inst_44:
// rs2_val == -524289, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x80001; immval:0x400; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x80001,0x400,96,sb,0)

inst_45:
// rs2_val == -1048577, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x100001; immval:0x3; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x100001,0x3,100,sb,0)

inst_46:
// rs2_val == -2097153, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x200001; immval:0x10; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x200001,0x10,104,sb,0)

inst_47:
// rs2_val == -4194305, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x400001; immval:0x0; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x400001,0x0,108,sb,0)

inst_48:
// rs2_val == -67108865, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x4000001; immval:-0x101; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x4000001,-0x101,112,sb,0)

inst_49:
// rs2_val == -134217729, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x8000001; immval:-0x401; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x8000001,-0x401,116,sb,0)

inst_50:
// rs2_val == -268435457, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x10000001; immval:-0x81; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x10000001,-0x81,120,sb,0)

inst_51:
// rs2_val == -536870913, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x20000001; immval:-0x7; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x20000001,-0x7,124,sb,0)

inst_52:
// rs2_val == -1073741825, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x40000001; immval:-0x1; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x40000001,-0x1,128,sb,0)

inst_53:
// rs2_val == 1431655765, 
// opcode: sb; op1:x10; op2:x11; op2val:0x55555555; immval:-0x81; align:0
TEST_STORE(x2,x5,0,x10,x11,0x55555555,-0x81,132,sb,0)

inst_54:
// rs2_val == 16777216, 
// opcode: sb; op1:x10; op2:x11; op2val:0x1000000; immval:0x20; align:0
TEST_STORE(x2,x5,0,x10,x11,0x1000000,0x20,136,sb,0)

inst_55:
// rs2_val == 33554432, 
// opcode: sb; op1:x10; op2:x11; op2val:0x2000000; immval:0x100; align:0
TEST_STORE(x2,x5,0,x10,x11,0x2000000,0x100,140,sb,0)

inst_56:
// rs2_val == 67108864, 
// opcode: sb; op1:x10; op2:x11; op2val:0x4000000; immval:0x80; align:0
TEST_STORE(x2,x5,0,x10,x11,0x4000000,0x80,144,sb,0)

inst_57:
// rs2_val == 134217728, 
// opcode: sb; op1:x10; op2:x11; op2val:0x8000000; immval:0x100; align:0
TEST_STORE(x2,x5,0,x10,x11,0x8000000,0x100,148,sb,0)

inst_58:
// rs2_val == 268435456, 
// opcode: sb; op1:x10; op2:x11; op2val:0x10000000; immval:0x8; align:0
TEST_STORE(x2,x5,0,x10,x11,0x10000000,0x8,152,sb,0)

inst_59:
// rs2_val == 1073741824, 
// opcode: sb; op1:x10; op2:x11; op2val:0x40000000; immval:-0x6; align:0
TEST_STORE(x2,x5,0,x10,x11,0x40000000,-0x6,156,sb,0)

inst_60:
// rs2_val == -2, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x2; immval:0x3; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x2,0x3,160,sb,0)

inst_61:
// rs2_val == -3, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x3; immval:-0x1; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x3,-0x1,164,sb,0)

inst_62:
// rs2_val == -5, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x5; immval:0x10; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x5,0x10,168,sb,0)

inst_63:
// rs2_val == -9, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x9; immval:-0x3; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x9,-0x3,172,sb,0)

inst_64:
// rs2_val == -17, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x11; immval:0x400; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x11,0x400,176,sb,0)

inst_65:
// rs2_val == -65, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x41; immval:0x5; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x41,0x5,180,sb,0)

inst_66:
// rs2_val == -129, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x81; immval:0x7ff; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x81,0x7ff,184,sb,0)

inst_67:
// rs2_val == -257, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x101; immval:0x5; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x101,0x5,188,sb,0)

inst_68:
// rs2_val == -513, 
// opcode: sb; op1:x10; op2:x11; op2val:-0x201; immval:-0x8; align:0
TEST_STORE(x2,x5,0,x10,x11,-0x201,-0x8,192,sb,0)

inst_69:
// ea_align == 1 and (imm_val % 4) == 1, rs2_val == -33
// opcode: sb; op1:x10; op2:x11; op2val:-0x21; immval:0x5; align:1
TEST_STORE(x2,x5,0,x10,x11,-0x21,0x5,196,sb,1)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4

rvtest_data:
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
RVTEST_DATA_END


RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;


signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 50*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

tsig_begin_canary:
CANARY;
mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef
tsig_end_canary:
CANARY;

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END

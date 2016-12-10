// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __dut_mfcc_hamming_H__
#define __dut_mfcc_hamming_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dut_mfcc_hamming_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 256;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dut_mfcc_hamming_ram) {
        ram[0] = "0b00111101101000111101011100001010";
        ram[1] = "0b00111101101001000010000001110001";
        ram[2] = "0b00111101101001001111101110011000";
        ram[3] = "0b00111101101001100110100110001100";
        ram[4] = "0b00111101101010000110100101000000";
        ram[5] = "0b00111101101010101111101100111011";
        ram[6] = "0b00111101101011100001110111101011";
        ram[7] = "0b00111101101100011101000101001110";
        ram[8] = "0b00111101101101100001010101100110";
        ram[9] = "0b00111101101110101110100010011111";
        ram[10] = "0b00111101110000000100101011111001";
        ram[11] = "0b00111101110001100011101101101001";
        ram[12] = "0b00111101110011001011100011100001";
        ram[13] = "0b00111101110100111100001101100001";
        ram[14] = "0b00111101110110110101011100111111";
        ram[15] = "0b00111101111000110111001101101101";
        ram[16] = "0b00111101111011000001110100101010";
        ram[17] = "0b00111101111101010100100111111001";
        ram[18] = "0b00111101111111101111111100011001";
        ram[19] = "0b00111110000001001001101110100110";
        ram[20] = "0b00111110000010011111011010101001";
        ram[21] = "0b00111110000011111001010111010101";
        ram[22] = "0b00111110000101010111001111101011";
        ram[23] = "0b00111110000110111000111001001100";
        ram[24] = "0b00111110001000011110101000110110";
        ram[25] = "0b00111110001010000111111111001100";
        ram[26] = "0b00111110001011110101000110101101";
        ram[27] = "0b00111110001101100101111111011001";
        ram[28] = "0b00111110001111011010010100010010";
        ram[29] = "0b00111110010001010010001111110110";
        ram[30] = "0b00111110010011001101110010000111";
        ram[31] = "0b00111110010101001100011011100111";
        ram[32] = "0b00111110010111001110100001010011";
        ram[33] = "0b00111110011001010011111000101101";
        ram[34] = "0b00111110011011011100010111010110";
        ram[35] = "0b00111110011101100111111101001110";
        ram[36] = "0b00111110011111110110010101010110";
        ram[37] = "0b00111110100001000011111010010110";
        ram[38] = "0b00111110100010001101111101111010";
        ram[39] = "0b00111110100011011001011010100111";
        ram[40] = "0b00111110100100100110001011001100";
        ram[41] = "0b00111110100101110100001111101001";
        ram[42] = "0b00111110100111000011011101100001";
        ram[43] = "0b00111110101000010011111010000001";
        ram[44] = "0b00111110101001100101011010101100";
        ram[45] = "0b00111110101010110111111111100001";
        ram[46] = "0b00111110101100001011101000011111";
        ram[47] = "0b00111110101101100000001011001001";
        ram[48] = "0b00111110101110110101101100101101";
        ram[49] = "0b00111110110000001100000010101101";
        ram[50] = "0b00111110110001100011010010011000";
        ram[51] = "0b00111110110010111011001011111111";
        ram[52] = "0b00111110110100010011110100110010";
        ram[53] = "0b00111110110101101101001100110001";
        ram[54] = "0b00111110110111000111000100001101";
        ram[55] = "0b00111110111000100001100000010110";
        ram[56] = "0b00111110111001111100011011111100";
        ram[57] = "0b00111110111011010111110110111111";
        ram[58] = "0b00111110111100110011100111000001";
        ram[59] = "0b00111110111110001111100110110001";
        ram[60] = "0b00111110111111101100000000101111";
        ram[61] = "0b00111111000000100100001111111110";
        ram[62] = "0b00111111000001010010100111011100";
        ram[63] = "0b00111111000010000001000001100010";
        ram[64] = "0b00111111000010101111011011101000";
        ram[65] = "0b00111111000011011101111000010110";
        ram[66] = "0b00111111000100001100001111110100";
        ram[67] = "0b00111111000100111010100100101010";
        ram[68] = "0b00111111000101101000110001101001";
        ram[69] = "0b00111111000110010110111001011001";
        ram[70] = "0b00111111000111000100110110101001";
        ram[71] = "0b00111111000111110010101001011010";
        ram[72] = "0b00111111001000100000001111000101";
        ram[73] = "0b00111111001001001101100101000000";
        ram[74] = "0b00111111001001111010101011001110";
        ram[75] = "0b00111111001010100111011100011101";
        ram[76] = "0b00111111001011010011111101111101";
        ram[77] = "0b00111111001100000000000111110111";
        ram[78] = "0b00111111001100101011111010001100";
        ram[79] = "0b00111111001101010111010010010010";
        ram[80] = "0b00111111001110000010010000001011";
        ram[81] = "0b00111111001110101100110001001111";
        ram[82] = "0b00111111001111010110110101011101";
        ram[83] = "0b00111111010000000000011010001110";
        ram[84] = "0b00111111010000101001011100111001";
        ram[85] = "0b00111111010001010001111010111000";
        ram[86] = "0b00111111010001111001110110110010";
        ram[87] = "0b00111111010010100001001000110000";
        ram[88] = "0b00111111010011000111110110000000";
        ram[89] = "0b00111111010011101101111001010101";
        ram[90] = "0b00111111010100010011010010101101";
        ram[91] = "0b00111111010100110111111111100001";
        ram[92] = "0b00111111010101011011111111110000";
        ram[93] = "0b00111111010101111111010000110100";
        ram[94] = "0b00111111010110100001110000000100";
        ram[95] = "0b00111111010111000011011101100001";
        ram[96] = "0b00111111010111100100011001001010";
        ram[97] = "0b00111111011000000100100000010111";
        ram[98] = "0b00111111011000100011110011001001";
        ram[99] = "0b00111111011001000010001100010000";
        ram[100] = "0b00111111011001011111110000111011";
        ram[101] = "0b00111111011001111100011001010100";
        ram[102] = "0b00111111011010011000001010101010";
        ram[103] = "0b00111111011010110010111111101100";
        ram[104] = "0b00111111011011001100110101110101";
        ram[105] = "0b00111111011011100101110010010010";
        ram[106] = "0b00111111011011111101101111110101";
        ram[107] = "0b00111111011100010100101011110101";
        ram[108] = "0b00111111011100101010101011100011";
        ram[109] = "0b00111111011100111111100111000110";
        ram[110] = "0b00111111011101010011100001000111";
        ram[111] = "0b00111111011101100110011001100110";
        ram[112] = "0b00111111011101111000010000100011";
        ram[113] = "0b00111111011110001001000000101110";
        ram[114] = "0b00111111011110011000101100101111";
        ram[115] = "0b00111111011110100111010100100101";
        ram[116] = "0b00111111011110110100111000010010";
        ram[117] = "0b00111111011111000001010010100101";
        ram[118] = "0b00111111011111001100101000101110";
        ram[119] = "0b00111111011111010110110101011101";
        ram[120] = "0b00111111011111011111111011011010";
        ram[121] = "0b00111111011111100111110111111110";
        ram[122] = "0b00111111011111101110101101110000";
        ram[123] = "0b00111111011111110100011100110000";
        ram[124] = "0b00111111011111111000111111101111";
        ram[125] = "0b00111111011111111100011011111100";
        ram[126] = "0b00111111011111111110101110101111";
        ram[127] = "0b00111111011111111111111000001001";
        ram[128] = "0b00111111011111111111111000001001";
        ram[129] = "0b00111111011111111110101110101111";
        ram[130] = "0b00111111011111111100011011111100";
        ram[131] = "0b00111111011111111000111111101111";
        ram[132] = "0b00111111011111110100011100110000";
        ram[133] = "0b00111111011111101110101101110000";
        ram[134] = "0b00111111011111100111110111111110";
        ram[135] = "0b00111111011111011111111011011010";
        ram[136] = "0b00111111011111010110110101011101";
        ram[137] = "0b00111111011111001100101000101110";
        ram[138] = "0b00111111011111000001010010100101";
        ram[139] = "0b00111111011110110100111000010010";
        ram[140] = "0b00111111011110100111010100100101";
        ram[141] = "0b00111111011110011000101100101111";
        ram[142] = "0b00111111011110001001000000101110";
        ram[143] = "0b00111111011101111000010000100011";
        ram[144] = "0b00111111011101100110011001100110";
        ram[145] = "0b00111111011101010011100001000111";
        ram[146] = "0b00111111011100111111100111000110";
        ram[147] = "0b00111111011100101010101011100011";
        ram[148] = "0b00111111011100010100101011110101";
        ram[149] = "0b00111111011011111101101111110101";
        ram[150] = "0b00111111011011100101110010010010";
        ram[151] = "0b00111111011011001100110101110101";
        ram[152] = "0b00111111011010110010111111101100";
        ram[153] = "0b00111111011010011000001010101010";
        ram[154] = "0b00111111011001111100011001010100";
        ram[155] = "0b00111111011001011111110000111011";
        ram[156] = "0b00111111011001000010001100010000";
        ram[157] = "0b00111111011000100011110011001001";
        ram[158] = "0b00111111011000000100100000010111";
        ram[159] = "0b00111111010111100100011001001010";
        ram[160] = "0b00111111010111000011011101100001";
        ram[161] = "0b00111111010110100001110000000100";
        ram[162] = "0b00111111010101111111010000110100";
        ram[163] = "0b00111111010101011011111111110000";
        ram[164] = "0b00111111010100110111111111100001";
        ram[165] = "0b00111111010100010011010010101101";
        ram[166] = "0b00111111010011101101111001010101";
        ram[167] = "0b00111111010011000111110110000000";
        ram[168] = "0b00111111010010100001001000110000";
        ram[169] = "0b00111111010001111001110110110010";
        ram[170] = "0b00111111010001010001111010111000";
        ram[171] = "0b00111111010000101001011100111001";
        ram[172] = "0b00111111010000000000011010001110";
        ram[173] = "0b00111111001111010110110101011101";
        ram[174] = "0b00111111001110101100110001001111";
        ram[175] = "0b00111111001110000010010000001011";
        ram[176] = "0b00111111001101010111010010010010";
        ram[177] = "0b00111111001100101011111010001100";
        ram[178] = "0b00111111001100000000000111110111";
        ram[179] = "0b00111111001011010011111101111101";
        ram[180] = "0b00111111001010100111011100011101";
        ram[181] = "0b00111111001001111010101011001110";
        ram[182] = "0b00111111001001001101100101000000";
        ram[183] = "0b00111111001000100000001111000101";
        ram[184] = "0b00111111000111110010101001011010";
        ram[185] = "0b00111111000111000100110110101001";
        ram[186] = "0b00111111000110010110111001011001";
        ram[187] = "0b00111111000101101000110001101001";
        ram[188] = "0b00111111000100111010100100101010";
        ram[189] = "0b00111111000100001100001111110100";
        ram[190] = "0b00111111000011011101111000010110";
        ram[191] = "0b00111111000010101111011011101000";
        ram[192] = "0b00111111000010000001000001100010";
        ram[193] = "0b00111111000001010010100111011100";
        ram[194] = "0b00111111000000100100001111111110";
        ram[195] = "0b00111110111111101100000000101111";
        ram[196] = "0b00111110111110001111100110110001";
        ram[197] = "0b00111110111100110011100111000001";
        ram[198] = "0b00111110111011010111110110111111";
        ram[199] = "0b00111110111001111100011011111100";
        ram[200] = "0b00111110111000100001100000010110";
        ram[201] = "0b00111110110111000111000100001101";
        ram[202] = "0b00111110110101101101001100110001";
        ram[203] = "0b00111110110100010011110100110010";
        ram[204] = "0b00111110110010111011001011111111";
        ram[205] = "0b00111110110001100011010010011000";
        ram[206] = "0b00111110110000001100000010101101";
        ram[207] = "0b00111110101110110101101100101101";
        ram[208] = "0b00111110101101100000001011001001";
        ram[209] = "0b00111110101100001011101000011111";
        ram[210] = "0b00111110101010110111111111100001";
        ram[211] = "0b00111110101001100101011010101100";
        ram[212] = "0b00111110101000010011111010000001";
        ram[213] = "0b00111110100111000011011101100001";
        ram[214] = "0b00111110100101110100001111101001";
        ram[215] = "0b00111110100100100110001011001100";
        ram[216] = "0b00111110100011011001011010100111";
        ram[217] = "0b00111110100010001101111101111010";
        ram[218] = "0b00111110100001000011111010010110";
        ram[219] = "0b00111110011111110110010101010110";
        ram[220] = "0b00111110011101100111111101001110";
        ram[221] = "0b00111110011011011100010111010110";
        ram[222] = "0b00111110011001010011111000101101";
        ram[223] = "0b00111110010111001110100001010011";
        ram[224] = "0b00111110010101001100011011100111";
        ram[225] = "0b00111110010011001101110010000111";
        ram[226] = "0b00111110010001010010001111110110";
        ram[227] = "0b00111110001111011010010100010010";
        ram[228] = "0b00111110001101100101111111011001";
        ram[229] = "0b00111110001011110101000110101101";
        ram[230] = "0b00111110001010000111111111001100";
        ram[231] = "0b00111110001000011110101000110110";
        ram[232] = "0b00111110000110111000111001001100";
        ram[233] = "0b00111110000101010111001111101011";
        ram[234] = "0b00111110000011111001010111010101";
        ram[235] = "0b00111110000010011111011010101001";
        ram[236] = "0b00111110000001001001101110100110";
        ram[237] = "0b00111101111111101111111100011001";
        ram[238] = "0b00111101111101010100100111111001";
        ram[239] = "0b00111101111011000001110100101010";
        ram[240] = "0b00111101111000110111001101101101";
        ram[241] = "0b00111101110110110101011100111111";
        ram[242] = "0b00111101110100111100001101100001";
        ram[243] = "0b00111101110011001011100011100001";
        ram[244] = "0b00111101110001100011101101101001";
        ram[245] = "0b00111101110000000100101011111001";
        ram[246] = "0b00111101101110101110100010011111";
        ram[247] = "0b00111101101101100001010101100110";
        ram[248] = "0b00111101101100011101000101001110";
        ram[249] = "0b00111101101011100001110111101011";
        ram[250] = "0b00111101101010101111101100111011";
        ram[251] = "0b00111101101010000110100101000000";
        ram[252] = "0b00111101101001100110100110001100";
        ram[253] = "0b00111101101001001111101110011000";
        ram[254] = "0b00111101101001000010000001110001";
        ram[255] = "0b00111101101000111101011100001010";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(dut_mfcc_hamming) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 256;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dut_mfcc_hamming_ram* meminst;


SC_CTOR(dut_mfcc_hamming) {
meminst = new dut_mfcc_hamming_ram("dut_mfcc_hamming_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~dut_mfcc_hamming() {
    delete meminst;
}


};//endmodule
#endif

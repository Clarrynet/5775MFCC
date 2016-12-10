// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __dut_mfcc_melfb_H__
#define __dut_mfcc_melfb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dut_mfcc_melfb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 2580;
  static const unsigned AddressWidth = 12;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dut_mfcc_melfb_ram) {
        ram[0] = "0b00000000000000000000000000000000";
        ram[1] = "0b00111111100100110000010101010011";
        ram[2] = "0b00111111111000100100000010111000";
        ram[3] = "0b00111111001111011101011000111001";
        for (unsigned i = 4; i < 131 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[131] = "0b00111110011011011111111110000010";
        ram[132] = "0b00111111101000010001001101000000";
        ram[133] = "0b00111111111000100011110101110001";
        ram[134] = "0b00111111010101110010001100100101";
        for (unsigned i = 135; i < 262 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[262] = "0b00111110011011100001011100011010";
        ram[263] = "0b00111111100101000110110111000110";
        ram[264] = "0b00111111111110100101101011101110";
        ram[265] = "0b00111111100011100001111001001111";
        ram[266] = "0b00111110100110011100010011011011";
        for (unsigned i = 267; i < 393 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[393] = "0b00111101001101001001101111101001";
        ram[394] = "0b00111111011000111100001010111001";
        ram[395] = "0b00111111110110011000111111000101";
        ram[396] = "0b00111111110000101111010011110001";
        ram[397] = "0b00111111010001101010100010010111";
        ram[398] = "0b00111101011010001111011111011011";
        for (unsigned i = 399; i < 525 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[525] = "0b00111110111101000010111011011100";
        ram[526] = "0b00111111100111001010110000001000";
        ram[527] = "0b00111111111110001011011110000000";
        ram[528] = "0b00111111101011101000110110111001";
        ram[529] = "0b00111111001100011100111000000111";
        ram[530] = "0b00111101010001000101111011010101";
        for (unsigned i = 531; i < 657 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[657] = "0b00111111001000101110011100101110";
        ram[658] = "0b00111111101001110001011101011001";
        ram[659] = "0b00111111111110011101111001101010";
        ram[660] = "0b00111111101101100001000100110100";
        ram[661] = "0b00111111010100010000010011010101";
        ram[662] = "0b00111110011010101001100100110001";
        for (unsigned i = 663; i < 789 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[789] = "0b00111111000100111110000000110111";
        ram[790] = "0b00111111100101110111110011101110";
        ram[791] = "0b00111111111000101010110011011010";
        ram[792] = "0b00111111110101000101110101100100";
        ram[793] = "0b00111111100011011000010001001101";
        ram[794] = "0b00111111000100010100010110110111";
        ram[795] = "0b00111101001101000101001010000011";
        for (unsigned i = 796; i < 921 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[921] = "0b00111110101011101000011010000011";
        ram[922] = "0b00111111011001001111101000000101";
        ram[923] = "0b00111111101101110101110000101001";
        ram[924] = "0b00111111111110100101111000110101";
        ram[925] = "0b00111111110001000110011100111000";
        ram[926] = "0b00111111100001001101110100101111";
        ram[927] = "0b00111111000011011101100000110000";
        ram[928] = "0b00111101101001111111100000000001";
        for (unsigned i = 929; i < 1054 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[1054] = "0b00111110111011100101110010010010";
        ram[1055] = "0b00111111011101100100010001010010";
        ram[1056] = "0b00111111101110010001001101000000";
        ram[1057] = "0b00111111111101011000000100000110";
        ram[1058] = "0b00111111110011111000011011000010";
        ram[1059] = "0b00111111100101011110110100101001";
        ram[1060] = "0b00111111001110110100100101111011";
        ram[1061] = "0b00111110100110100111101100001011";
        for (unsigned i = 1062; i < 1187 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[1187] = "0b00111110110000011110101000110110";
        ram[1188] = "0b00111111010101000010011011111110";
        ram[1189] = "0b00111111101000100101101011101110";
        ram[1190] = "0b00111111110110010110000111100101";
        ram[1191] = "0b00111111111100001100101100101001";
        ram[1192] = "0b00111111101111000010001001101000";
        ram[1193] = "0b00111111100010001001000000101110";
        ram[1194] = "0b00111111001011000001110010000010";
        ram[1195] = "0b00111110100100100100000010111000";
        for (unsigned i = 1196; i < 1320 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[1320] = "0b00111101111100110011001100110011";
        ram[1321] = "0b00111111000001111011110100100111";
        ram[1322] = "0b00111111011011101101111011111100";
        ram[1323] = "0b00111111101010011111001000010011";
        ram[1324] = "0b00111111110110110111000101110110";
        ram[1325] = "0b00111111111101000000101101111000";
        ram[1326] = "0b00111111110001000111011110011010";
        ram[1327] = "0b00111111100101011100100100011101";
        ram[1328] = "0b00111111010011111111010000110100";
        ram[1329] = "0b00111110111011000000001011110011";
        ram[1330] = "0b00111101111011010110001000111001";
        for (unsigned i = 1331; i < 1454 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[1454] = "0b00111101101111110100011011101101";
        ram[1455] = "0b00111110111011100010010000110101";
        ram[1456] = "0b00111111010101000110110100011110";
        ram[1457] = "0b00111111100110000000011010001110";
        ram[1458] = "0b00111111110001001111110111110100";
        ram[1459] = "0b00111111111100010010101000110000";
        ram[1460] = "0b00111111111000110111000101110110";
        ram[1461] = "0b00111111101110001100111001110000";
        ram[1462] = "0b00111111100011101110011000110010";
        ram[1463] = "0b00111111010010110110000100010011";
        ram[1464] = "0b00111110111101001010001000110100";
        ram[1465] = "0b00111110001010100100010101001110";
        for (unsigned i = 1466; i < 1589 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[1589] = "0b00111110011001000110100111010111";
        ram[1590] = "0b00111111000011100110000010000000";
        ram[1591] = "0b00111111011000100011001011110100";
        ram[1592] = "0b00111111100110100100110111010011";
        ram[1593] = "0b00111111110000101101011101110011";
        ram[1594] = "0b00111111111010101011011010101110";
        ram[1595] = "0b00111111111011100000101010100110";
        ram[1596] = "0b00111111110001110110110010001011";
        ram[1597] = "0b00111111101000010110010100101100";
        ram[1598] = "0b00111111011101111110001010000010";
        ram[1599] = "0b00111111001011100001101110110000";
        ram[1600] = "0b00111110110010101101011011001011";
        ram[1601] = "0b00111101111011100100111000100111";
        for (unsigned i = 1602; i < 1724 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[1724] = "0b00111110000011111010100000101111";
        ram[1725] = "0b00111110111000100101001100010001";
        ram[1726] = "0b00111111001111010011011110100000";
        ram[1727] = "0b00111111100001000000111010111111";
        ram[1728] = "0b00111111101010001111001001111100";
        ram[1729] = "0b00111111110011010100100101010010";
        ram[1730] = "0b00111111111100010001100111001110";
        ram[1731] = "0b00111111111010111001100011001000";
        ram[1732] = "0b00111111110010001100101100101001";
        ram[1733] = "0b00111111101001100111101000010000";
        ram[1734] = "0b00111111100001001001111011101101";
        ram[1735] = "0b00111111010001100111101010110111";
        ram[1736] = "0b00111111000001001001100100000111";
        ram[1737] = "0b00111110100001110010110001010010";
        ram[1738] = "0b00111100010110101111100011011111";
        for (unsigned i = 1739; i < 1860 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[1860] = "0b00111110001000110100000110011110";
        ram[1861] = "0b00111110110111001101011101001001";
        ram[1862] = "0b00111111001100110000111010000000";
        ram[1863] = "0b00111111011101101011111110000111";
        ram[1864] = "0b00111111100111001100001011111000";
        ram[1865] = "0b00111111101111011011001000101101";
        ram[1866] = "0b00111111110111100011010100111111";
        ram[1867] = "0b00111111111111100100100011101001";
        ram[1868] = "0b00111111111000100000100100000011";
        ram[1869] = "0b00111111110000101100011100010001";
        ram[1870] = "0b00111111101000111110011101101101";
        ram[1871] = "0b00111111100001010110011011001111";
        ram[1872] = "0b00111111010011101001001001001111";
        ram[1873] = "0b00111111000100110000111100101000";
        ram[1874] = "0b00111110101100001000010001100010";
        ram[1875] = "0b00111101111100010011000101100110";
        for (unsigned i = 1876; i < 1997 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[1997] = "0b00111110011011111010101011001110";
        ram[1998] = "0b00111110111101001110011110101011";
        ram[1999] = "0b00111111001110000011001111000110";
        ram[2000] = "0b00111111011101010011000001101010";
        ram[2001] = "0b00111111100110001011011110000000";
        ram[2002] = "0b00111111101101100111101000010000";
        ram[2003] = "0b00111111110100111101110110011000";
        ram[2004] = "0b00111111111100001110101111101110";
        ram[2005] = "0b00111111111100100101101011101110";
        ram[2006] = "0b00111111110101011111101001000100";
        ram[2007] = "0b00111111101110011110101110000101";
        ram[2008] = "0b00111111100111100010101101101011";
        ram[2009] = "0b00111111100000101011110100111100";
        ram[2010] = "0b00111111010011110011010011010111";
        ram[2011] = "0b00111111000110011000011111101000";
        ram[2012] = "0b00111110110010001101111101111010";
        ram[2013] = "0b00111110001111111001111100000010";
        for (unsigned i = 2014; i < 2134 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[2134] = "0b00111101110110100011110000100001";
        ram[2135] = "0b00111110101010000001100001000000";
        ram[2136] = "0b00111111000011000010101110010101";
        ram[2137] = "0b00111111010000111010100010000010";
        ram[2138] = "0b00111111011110101000011101111111";
        ram[2139] = "0b00111111100110000110010110010101";
        ram[2140] = "0b00111111101100110011110100001000";
        ram[2141] = "0b00111111110011011100100100011101";
        ram[2142] = "0b00111111111010000000110100011011";
        ram[2143] = "0b00111111111111011111011011111101";
        ram[2144] = "0b00111111111001000011111111100110";
        ram[2145] = "0b00111111110010101100110110011111";
        ram[2146] = "0b00111111101100011001110011100000";
        ram[2147] = "0b00111111100110001010110110101100";
        ram[2148] = "0b00111111011111111111101011000010";
        ram[2149] = "0b00111111010011110001100101010000";
        ram[2150] = "0b00111111000111101011001100010100";
        ram[2151] = "0b00111110110111011000101011011011";
        ram[2152] = "0b00111110011111010011011011111000";
        ram[2153] = "0b00111101100000100101010100101010";
        for (unsigned i = 2154; i < 2272 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[2272] = "0b00111100100000100011010000100010";
        ram[2273] = "0b00111110010111100000000011010010";
        ram[2274] = "0b00111110110101001100110101110101";
        ram[2275] = "0b00111111000111001100100000110110";
        ram[2276] = "0b00111111010011101010011010100000";
        ram[2277] = "0b00111111100000000000001101000111";
        ram[2278] = "0b00111111100110000111001010110000";
        ram[2279] = "0b00111111101100001010011100011110";
        ram[2280] = "0b00111111110010001001110101001001";
        ram[2281] = "0b00111111111000000101100001111001";
        ram[2282] = "0b00111111111101111101101111110101";
        ram[2283] = "0b00111111111100001101101110001100";
        ram[2284] = "0b00111111110110011100101011000001";
        ram[2285] = "0b00111111110000101111000110101010";
        ram[2286] = "0b00111111101011000100110100000001";
        ram[2287] = "0b00111111100101011101110011000110";
        ram[2288] = "0b00111111011111110100001101000010";
        ram[2289] = "0b00111111010100110011000111100100";
        ram[2290] = "0b00111111001001111000010011001011";
        ram[2291] = "0b00111110111110000111001010110000";
        ram[2292] = "0b00111110101000101001110111000111";
        ram[2293] = "0b00111110000110110000101100111001";
        for (unsigned i = 2294; i < 2412 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[2412] = "0b00111101111100100011011110001011";
        ram[2413] = "0b00111110100110001101001001011111";
        ram[2414] = "0b00111110111101000011101010101000";
        ram[2415] = "0b00111111001001110110010111111110";
        ram[2416] = "0b00111111010101000100010100100100";
        ram[2417] = "0b00111111100000000101111100000111";
        ram[2418] = "0b00111111100101100110011001100110";
        ram[2419] = "0b00111111101011000011110010011111";
        ram[2420] = "0b00111111110000011110010011110111";
        ram[2421] = "0b00111111110101110101100011100010";
        ram[2422] = "0b00111111111011001001111011101101";
        ram[2423] = "0b00111111111111100100100011101001";
        ram[2424] = "0b00111111111010010110000111100101";
        ram[2425] = "0b00111111110101001010010101111010";
        ram[2426] = "0b00111111110000000001001110101001";
        ram[2427] = "0b00111111101010111010111110111000";
        ram[2428] = "0b00111111100101110111011001100000";
        ram[2429] = "0b00111111100000110110011110100001";
        ram[2430] = "0b00111111010111110000001110110000";
        ram[2431] = "0b00111111001101111000101000001001";
        ram[2432] = "0b00111111000100000110000001010111";
        ram[2433] = "0b00111110110100110000101111100001";
        ram[2434] = "0b00111110100001011111001100001110";
        ram[2435] = "0b00111101111001011100100100011101";
        for (unsigned i = 2436; i < 2552 ; i = i + 1) {
            ram[i] = "0b00000000000000000000000000000000";
        }
        ram[2552] = "0b00111100010110101101011101010010";
        ram[2553] = "0b00111110001101001111100010110110";
        ram[2554] = "0b00111110101011010110110010110101";
        ram[2555] = "0b00111110111111111010110101101101";
        ram[2556] = "0b00111111001010001001111101000001";
        ram[2557] = "0b00111111010100010001000111110001";
        ram[2558] = "0b00111111011110010011000010111110";
        ram[2559] = "0b00111111100100000111110010000101";
        ram[2560] = "0b00111111101001000011110010011111";
        ram[2561] = "0b00111111101101111100111011011001";
        ram[2562] = "0b00111111110010110011110100001000";
        ram[2563] = "0b00111111110111101000001111100100";
        ram[2564] = "0b00111111111100011010001101101110";
        ram[2565] = "0b00111111111110110110000100010011";
        ram[2566] = "0b00111111111010001000110011100111";
        ram[2567] = "0b00111111110101011101110011000110";
        ram[2568] = "0b00111111110000110101000010110001";
        ram[2569] = "0b00111111101100001110100010100111";
        ram[2570] = "0b00111111100111101010000101100010";
        ram[2571] = "0b00111111100011000111111000101000";
        ram[2572] = "0b00111111011101001111100010110110";
        ram[2573] = "0b00111111010100010011100010011011";
        ram[2574] = "0b00111111001011011011101000001010";
        ram[2575] = "0b00111111000010100111110100000011";
        ram[2576] = "0b00111110110011101111111100011001";
        ram[2577] = "0b00111110100010011000001101010001";
        ram[2578] = "0b00111110000010010000100000011100";
        ram[2579] = "0b00000000000000000000000000000000";


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


SC_MODULE(dut_mfcc_melfb) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 2580;
static const unsigned AddressWidth = 12;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dut_mfcc_melfb_ram* meminst;


SC_CTOR(dut_mfcc_melfb) {
meminst = new dut_mfcc_melfb_ram("dut_mfcc_melfb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~dut_mfcc_melfb() {
    delete meminst;
}


};//endmodule
#endif
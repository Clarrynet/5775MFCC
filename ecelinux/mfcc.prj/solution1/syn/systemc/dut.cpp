// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "dut.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic dut::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic dut::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<11> dut::ap_ST_st1_fsm_0 = "1";
const sc_lv<11> dut::ap_ST_st2_fsm_1 = "10";
const sc_lv<11> dut::ap_ST_st3_fsm_2 = "100";
const sc_lv<11> dut::ap_ST_st4_fsm_3 = "1000";
const sc_lv<11> dut::ap_ST_st5_fsm_4 = "10000";
const sc_lv<11> dut::ap_ST_st6_fsm_5 = "100000";
const sc_lv<11> dut::ap_ST_st7_fsm_6 = "1000000";
const sc_lv<11> dut::ap_ST_st8_fsm_7 = "10000000";
const sc_lv<11> dut::ap_ST_st9_fsm_8 = "100000000";
const sc_lv<11> dut::ap_ST_st10_fsm_9 = "1000000000";
const sc_lv<11> dut::ap_ST_st11_fsm_10 = "10000000000";
const sc_lv<32> dut::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> dut::ap_const_lv1_1 = "1";
const sc_lv<32> dut::ap_const_lv32_1 = "1";
const sc_lv<1> dut::ap_const_lv1_0 = "0";
const sc_lv<32> dut::ap_const_lv32_2 = "10";
const sc_lv<32> dut::ap_const_lv32_A = "1010";
const sc_lv<32> dut::ap_const_lv32_3 = "11";
const sc_lv<32> dut::ap_const_lv32_8 = "1000";
const sc_lv<14> dut::ap_const_lv14_0 = "00000000000000";
const sc_lv<32> dut::ap_const_lv32_9 = "1001";
const sc_lv<14> dut::ap_const_lv14_3100 = "11000100000000";
const sc_lv<14> dut::ap_const_lv14_1 = "1";

dut::dut(sc_module_name name) : sc_module(name), mVcdFile(0) {
    sound_in_U = new dut_mfcc_M("sound_in_U");
    sound_in_U->clk(ap_clk);
    sound_in_U->reset(ap_rst);
    sound_in_U->address0(sound_in_address0);
    sound_in_U->ce0(sound_in_ce0);
    sound_in_U->we0(sound_in_we0);
    sound_in_U->d0(tmp_s_reg_184);
    sound_in_U->q0(sound_in_q0);
    grp_dut_mfcc_fu_104 = new dut_mfcc("grp_dut_mfcc_fu_104");
    grp_dut_mfcc_fu_104->ap_clk(ap_clk);
    grp_dut_mfcc_fu_104->ap_rst(ap_rst);
    grp_dut_mfcc_fu_104->ap_start(grp_dut_mfcc_fu_104_ap_start);
    grp_dut_mfcc_fu_104->ap_done(grp_dut_mfcc_fu_104_ap_done);
    grp_dut_mfcc_fu_104->ap_idle(grp_dut_mfcc_fu_104_ap_idle);
    grp_dut_mfcc_fu_104->ap_ready(grp_dut_mfcc_fu_104_ap_ready);
    grp_dut_mfcc_fu_104->sound_file_address0(grp_dut_mfcc_fu_104_sound_file_address0);
    grp_dut_mfcc_fu_104->sound_file_ce0(grp_dut_mfcc_fu_104_sound_file_ce0);
    grp_dut_mfcc_fu_104->sound_file_q0(sound_in_q0);
    grp_dut_mfcc_fu_104->ap_return(grp_dut_mfcc_fu_104_ap_return);
    dut_uitofp_64ns_32_6_U38 = new dut_uitofp_64ns_32_6<1,6,64,32>("dut_uitofp_64ns_32_6_U38");
    dut_uitofp_64ns_32_6_U38->clk(ap_clk);
    dut_uitofp_64ns_32_6_U38->reset(ap_rst);
    dut_uitofp_64ns_32_6_U38->din0(grp_fu_129_p0);
    dut_uitofp_64ns_32_6_U38->ce(ap_var_for_const0);
    dut_uitofp_64ns_32_6_U38->dout(grp_fu_129_p1);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( strm_out_V_V_full_n );
    sensitive << ( ap_sig_cseq_ST_st11_fsm_10 );
    sensitive << ( grp_dut_mfcc_fu_104_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( strm_out_V_V_full_n );
    sensitive << ( ap_sig_cseq_ST_st11_fsm_10 );
    sensitive << ( grp_dut_mfcc_fu_104_ap_done );

    SC_METHOD(thread_ap_sig_131);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_26);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_47);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_58);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_67);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_73);
    sensitive << ( strm_in_V_V_empty_n );
    sensitive << ( exitcond_fu_132_p2 );

    SC_METHOD(thread_ap_sig_89);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_98);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st10_fsm_9);
    sensitive << ( ap_sig_131 );

    SC_METHOD(thread_ap_sig_cseq_ST_st11_fsm_10);
    sensitive << ( ap_sig_67 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_26 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_47 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_58 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_3);
    sensitive << ( ap_sig_89 );

    SC_METHOD(thread_ap_sig_cseq_ST_st9_fsm_8);
    sensitive << ( ap_sig_98 );

    SC_METHOD(thread_exitcond_fu_132_p2);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( ap_sig_73 );
    sensitive << ( i_reg_92 );

    SC_METHOD(thread_grp_dut_mfcc_fu_104_ap_start);
    sensitive << ( ap_reg_grp_dut_mfcc_fu_104_ap_start );

    SC_METHOD(thread_grp_fu_129_p0);
    sensitive << ( tmp_V_1_reg_169 );
    sensitive << ( tmp_V_2_reg_174 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );

    SC_METHOD(thread_i_8_fu_138_p2);
    sensitive << ( i_reg_92 );

    SC_METHOD(thread_sound_in_address0);
    sensitive << ( ap_sig_cseq_ST_st11_fsm_10 );
    sensitive << ( grp_dut_mfcc_fu_104_sound_file_address0 );
    sensitive << ( ap_sig_cseq_ST_st10_fsm_9 );
    sensitive << ( tmp_63_fu_151_p1 );

    SC_METHOD(thread_sound_in_ce0);
    sensitive << ( ap_sig_cseq_ST_st11_fsm_10 );
    sensitive << ( grp_dut_mfcc_fu_104_sound_file_ce0 );
    sensitive << ( ap_sig_cseq_ST_st10_fsm_9 );

    SC_METHOD(thread_sound_in_we0);
    sensitive << ( ap_sig_cseq_ST_st10_fsm_9 );

    SC_METHOD(thread_strm_in_V_V_blk_n);
    sensitive << ( strm_in_V_V_empty_n );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond_fu_132_p2 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );

    SC_METHOD(thread_strm_in_V_V_read);
    sensitive << ( strm_in_V_V_empty_n );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond_fu_132_p2 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( ap_sig_73 );

    SC_METHOD(thread_strm_out_V_V_blk_n);
    sensitive << ( strm_out_V_V_full_n );
    sensitive << ( ap_sig_cseq_ST_st11_fsm_10 );

    SC_METHOD(thread_strm_out_V_V_din);
    sensitive << ( strm_out_V_V_full_n );
    sensitive << ( ap_sig_cseq_ST_st11_fsm_10 );
    sensitive << ( grp_dut_mfcc_fu_104_ap_done );
    sensitive << ( grp_dut_mfcc_fu_104_ap_return );

    SC_METHOD(thread_strm_out_V_V_write);
    sensitive << ( strm_out_V_V_full_n );
    sensitive << ( ap_sig_cseq_ST_st11_fsm_10 );
    sensitive << ( grp_dut_mfcc_fu_104_ap_done );

    SC_METHOD(thread_tmp_63_fu_151_p1);
    sensitive << ( i_reg_92 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( strm_in_V_V_empty_n );
    sensitive << ( strm_out_V_V_full_n );
    sensitive << ( exitcond_fu_132_p2 );
    sensitive << ( ap_sig_73 );
    sensitive << ( grp_dut_mfcc_fu_104_ap_done );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "00000000001";
    ap_reg_grp_dut_mfcc_fu_104_ap_start = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "dut_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, strm_in_V_V_dout, "(port)strm_in_V_V_dout");
    sc_trace(mVcdFile, strm_in_V_V_empty_n, "(port)strm_in_V_V_empty_n");
    sc_trace(mVcdFile, strm_in_V_V_read, "(port)strm_in_V_V_read");
    sc_trace(mVcdFile, strm_out_V_V_din, "(port)strm_out_V_V_din");
    sc_trace(mVcdFile, strm_out_V_V_full_n, "(port)strm_out_V_V_full_n");
    sc_trace(mVcdFile, strm_out_V_V_write, "(port)strm_out_V_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_26, "ap_sig_26");
    sc_trace(mVcdFile, strm_in_V_V_blk_n, "strm_in_V_V_blk_n");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_47, "ap_sig_47");
    sc_trace(mVcdFile, exitcond_fu_132_p2, "exitcond_fu_132_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_58, "ap_sig_58");
    sc_trace(mVcdFile, strm_out_V_V_blk_n, "strm_out_V_V_blk_n");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st11_fsm_10, "ap_sig_cseq_ST_st11_fsm_10");
    sc_trace(mVcdFile, ap_sig_67, "ap_sig_67");
    sc_trace(mVcdFile, i_8_fu_138_p2, "i_8_fu_138_p2");
    sc_trace(mVcdFile, i_8_reg_164, "i_8_reg_164");
    sc_trace(mVcdFile, ap_sig_73, "ap_sig_73");
    sc_trace(mVcdFile, tmp_V_1_reg_169, "tmp_V_1_reg_169");
    sc_trace(mVcdFile, tmp_V_2_reg_174, "tmp_V_2_reg_174");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_3, "ap_sig_cseq_ST_st4_fsm_3");
    sc_trace(mVcdFile, ap_sig_89, "ap_sig_89");
    sc_trace(mVcdFile, grp_fu_129_p1, "grp_fu_129_p1");
    sc_trace(mVcdFile, tmp_s_reg_184, "tmp_s_reg_184");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st9_fsm_8, "ap_sig_cseq_ST_st9_fsm_8");
    sc_trace(mVcdFile, ap_sig_98, "ap_sig_98");
    sc_trace(mVcdFile, sound_in_address0, "sound_in_address0");
    sc_trace(mVcdFile, sound_in_ce0, "sound_in_ce0");
    sc_trace(mVcdFile, sound_in_we0, "sound_in_we0");
    sc_trace(mVcdFile, sound_in_q0, "sound_in_q0");
    sc_trace(mVcdFile, grp_dut_mfcc_fu_104_ap_start, "grp_dut_mfcc_fu_104_ap_start");
    sc_trace(mVcdFile, grp_dut_mfcc_fu_104_ap_done, "grp_dut_mfcc_fu_104_ap_done");
    sc_trace(mVcdFile, grp_dut_mfcc_fu_104_ap_idle, "grp_dut_mfcc_fu_104_ap_idle");
    sc_trace(mVcdFile, grp_dut_mfcc_fu_104_ap_ready, "grp_dut_mfcc_fu_104_ap_ready");
    sc_trace(mVcdFile, grp_dut_mfcc_fu_104_sound_file_address0, "grp_dut_mfcc_fu_104_sound_file_address0");
    sc_trace(mVcdFile, grp_dut_mfcc_fu_104_sound_file_ce0, "grp_dut_mfcc_fu_104_sound_file_ce0");
    sc_trace(mVcdFile, grp_dut_mfcc_fu_104_ap_return, "grp_dut_mfcc_fu_104_ap_return");
    sc_trace(mVcdFile, i_reg_92, "i_reg_92");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st10_fsm_9, "ap_sig_cseq_ST_st10_fsm_9");
    sc_trace(mVcdFile, ap_sig_131, "ap_sig_131");
    sc_trace(mVcdFile, ap_reg_grp_dut_mfcc_fu_104_ap_start, "ap_reg_grp_dut_mfcc_fu_104_ap_start");
    sc_trace(mVcdFile, tmp_63_fu_151_p1, "tmp_63_fu_151_p1");
    sc_trace(mVcdFile, grp_fu_129_p0, "grp_fu_129_p0");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("dut.hdltvin.dat");
    mHdltvoutHandle.open("dut.hdltvout.dat");
}

dut::~dut() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete sound_in_U;
    delete grp_dut_mfcc_fu_104;
    delete dut_uitofp_64ns_32_6_U38;
}

void dut::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void dut::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_grp_dut_mfcc_fu_104_ap_start = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
             !ap_sig_73.read() && 
             !esl_seteq<1,1,1>(exitcond_fu_132_p2.read(), ap_const_lv1_0))) {
            ap_reg_grp_dut_mfcc_fu_104_ap_start = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_dut_mfcc_fu_104_ap_ready.read())) {
            ap_reg_grp_dut_mfcc_fu_104_ap_start = ap_const_logic_0;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st10_fsm_9.read())) {
        i_reg_92 = i_8_reg_164.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i_reg_92 = ap_const_lv14_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && !ap_sig_73.read())) {
        i_8_reg_164 = i_8_fu_138_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && esl_seteq<1,1,1>(exitcond_fu_132_p2.read(), ap_const_lv1_0) && !ap_sig_73.read())) {
        tmp_V_1_reg_169 = strm_in_V_V_dout.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && !esl_seteq<1,1,1>(strm_in_V_V_empty_n.read(), ap_const_logic_0))) {
        tmp_V_2_reg_174 = strm_in_V_V_dout.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st9_fsm_8.read())) {
        tmp_s_reg_184 = grp_fu_129_p1.read();
    }
}

void dut::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st11_fsm_10.read()) && 
         !(esl_seteq<1,1,1>(strm_out_V_V_full_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_const_logic_0, grp_dut_mfcc_fu_104_ap_done.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void dut::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void dut::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st11_fsm_10.read()) && 
         !(esl_seteq<1,1,1>(strm_out_V_V_full_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_const_logic_0, grp_dut_mfcc_fu_104_ap_done.read())))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void dut::thread_ap_sig_131() {
    ap_sig_131 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(9, 9));
}

void dut::thread_ap_sig_26() {
    ap_sig_26 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void dut::thread_ap_sig_47() {
    ap_sig_47 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void dut::thread_ap_sig_58() {
    ap_sig_58 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void dut::thread_ap_sig_67() {
    ap_sig_67 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(10, 10));
}

void dut::thread_ap_sig_73() {
    ap_sig_73 = (esl_seteq<1,1,1>(exitcond_fu_132_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(strm_in_V_V_empty_n.read(), ap_const_logic_0));
}

void dut::thread_ap_sig_89() {
    ap_sig_89 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void dut::thread_ap_sig_98() {
    ap_sig_98 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(8, 8));
}

void dut::thread_ap_sig_cseq_ST_st10_fsm_9() {
    if (ap_sig_131.read()) {
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_0;
    }
}

void dut::thread_ap_sig_cseq_ST_st11_fsm_10() {
    if (ap_sig_67.read()) {
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_0;
    }
}

void dut::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_26.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void dut::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_47.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void dut::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_58.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void dut::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_89.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void dut::thread_ap_sig_cseq_ST_st9_fsm_8() {
    if (ap_sig_98.read()) {
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_0;
    }
}

void dut::thread_exitcond_fu_132_p2() {
    exitcond_fu_132_p2 = (!i_reg_92.read().is_01() || !ap_const_lv14_3100.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_92.read() == ap_const_lv14_3100);
}

void dut::thread_grp_dut_mfcc_fu_104_ap_start() {
    grp_dut_mfcc_fu_104_ap_start = ap_reg_grp_dut_mfcc_fu_104_ap_start.read();
}

void dut::thread_grp_fu_129_p0() {
    grp_fu_129_p0 = esl_concat<32,32>(tmp_V_2_reg_174.read(), tmp_V_1_reg_169.read());
}

void dut::thread_i_8_fu_138_p2() {
    i_8_fu_138_p2 = (!i_reg_92.read().is_01() || !ap_const_lv14_1.is_01())? sc_lv<14>(): (sc_biguint<14>(i_reg_92.read()) + sc_biguint<14>(ap_const_lv14_1));
}

void dut::thread_sound_in_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st10_fsm_9.read())) {
        sound_in_address0 =  (sc_lv<14>) (tmp_63_fu_151_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st11_fsm_10.read())) {
        sound_in_address0 = grp_dut_mfcc_fu_104_sound_file_address0.read();
    } else {
        sound_in_address0 = "XXXXXXXXXXXXXX";
    }
}

void dut::thread_sound_in_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st10_fsm_9.read())) {
        sound_in_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st11_fsm_10.read())) {
        sound_in_ce0 = grp_dut_mfcc_fu_104_sound_file_ce0.read();
    } else {
        sound_in_ce0 = ap_const_logic_0;
    }
}

void dut::thread_sound_in_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st10_fsm_9.read()))) {
        sound_in_we0 = ap_const_logic_1;
    } else {
        sound_in_we0 = ap_const_logic_0;
    }
}

void dut::thread_strm_in_V_V_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          esl_seteq<1,1,1>(exitcond_fu_132_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()))) {
        strm_in_V_V_blk_n = strm_in_V_V_empty_n.read();
    } else {
        strm_in_V_V_blk_n = ap_const_logic_1;
    }
}

void dut::thread_strm_in_V_V_read() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          esl_seteq<1,1,1>(exitcond_fu_132_p2.read(), ap_const_lv1_0) && 
          !ap_sig_73.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
          !esl_seteq<1,1,1>(strm_in_V_V_empty_n.read(), ap_const_logic_0)))) {
        strm_in_V_V_read = ap_const_logic_1;
    } else {
        strm_in_V_V_read = ap_const_logic_0;
    }
}

void dut::thread_strm_out_V_V_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st11_fsm_10.read())) {
        strm_out_V_V_blk_n = strm_out_V_V_full_n.read();
    } else {
        strm_out_V_V_blk_n = ap_const_logic_1;
    }
}

void dut::thread_strm_out_V_V_din() {
    strm_out_V_V_din = esl_zext<32,1>(grp_dut_mfcc_fu_104_ap_return.read());
}

void dut::thread_strm_out_V_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st11_fsm_10.read()) && 
         !(esl_seteq<1,1,1>(strm_out_V_V_full_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_const_logic_0, grp_dut_mfcc_fu_104_ap_done.read())))) {
        strm_out_V_V_write = ap_const_logic_1;
    } else {
        strm_out_V_V_write = ap_const_logic_0;
    }
}

void dut::thread_tmp_63_fu_151_p1() {
    tmp_63_fu_151_p1 = esl_zext<64,14>(i_reg_92.read());
}

void dut::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if ((!ap_sig_73.read() && !esl_seteq<1,1,1>(exitcond_fu_132_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_st11_fsm_10;
            } else if ((esl_seteq<1,1,1>(exitcond_fu_132_p2.read(), ap_const_lv1_0) && !ap_sig_73.read())) {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        case 4 : 
            if (!esl_seteq<1,1,1>(strm_in_V_V_empty_n.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_st7_fsm_6;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_st8_fsm_7;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_st9_fsm_8;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_st10_fsm_9;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_st2_fsm_1;
            break;
        case 1024 : 
            if (!(esl_seteq<1,1,1>(strm_out_V_V_full_n.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_const_logic_0, grp_dut_mfcc_fu_104_ap_done.read()))) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st11_fsm_10;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<11>) ("XXXXXXXXXXX");
            break;
    }
}

void dut::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"strm_in_V_V_dout\" :  \"" << strm_in_V_V_dout.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"strm_in_V_V_empty_n\" :  \"" << strm_in_V_V_empty_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"strm_in_V_V_read\" :  \"" << strm_in_V_V_read.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"strm_out_V_V_din\" :  \"" << strm_out_V_V_din.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"strm_out_V_V_full_n\" :  \"" << strm_out_V_V_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"strm_out_V_V_write\" :  \"" << strm_out_V_V_write.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}


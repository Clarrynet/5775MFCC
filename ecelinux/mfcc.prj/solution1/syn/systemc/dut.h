// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_HH_
#define _dut_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_mfcc.h"
#include "dut_uitofp_64ns_32_6.h"
#include "dut_mfcc_M.h"

namespace ap_rtl {

struct dut : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > strm_in_V_V_dout;
    sc_in< sc_logic > strm_in_V_V_empty_n;
    sc_out< sc_logic > strm_in_V_V_read;
    sc_out< sc_lv<32> > strm_out_V_V_din;
    sc_in< sc_logic > strm_out_V_V_full_n;
    sc_out< sc_logic > strm_out_V_V_write;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    dut(sc_module_name name);
    SC_HAS_PROCESS(dut);

    ~dut();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    dut_mfcc_M* sound_in_U;
    dut_mfcc* grp_dut_mfcc_fu_104;
    dut_uitofp_64ns_32_6<1,6,64,32>* dut_uitofp_64ns_32_6_U38;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_26;
    sc_signal< sc_logic > strm_in_V_V_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_47;
    sc_signal< sc_lv<1> > exitcond_fu_132_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_58;
    sc_signal< sc_logic > strm_out_V_V_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_67;
    sc_signal< sc_lv<14> > i_8_fu_138_p2;
    sc_signal< sc_lv<14> > i_8_reg_164;
    sc_signal< bool > ap_sig_73;
    sc_signal< sc_lv<32> > tmp_V_1_reg_169;
    sc_signal< sc_lv<32> > tmp_V_2_reg_174;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_89;
    sc_signal< sc_lv<32> > grp_fu_129_p1;
    sc_signal< sc_lv<32> > tmp_s_reg_184;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_98;
    sc_signal< sc_lv<14> > sound_in_address0;
    sc_signal< sc_logic > sound_in_ce0;
    sc_signal< sc_logic > sound_in_we0;
    sc_signal< sc_lv<32> > sound_in_q0;
    sc_signal< sc_logic > grp_dut_mfcc_fu_104_ap_start;
    sc_signal< sc_logic > grp_dut_mfcc_fu_104_ap_done;
    sc_signal< sc_logic > grp_dut_mfcc_fu_104_ap_idle;
    sc_signal< sc_logic > grp_dut_mfcc_fu_104_ap_ready;
    sc_signal< sc_lv<14> > grp_dut_mfcc_fu_104_sound_file_address0;
    sc_signal< sc_logic > grp_dut_mfcc_fu_104_sound_file_ce0;
    sc_signal< sc_lv<1> > grp_dut_mfcc_fu_104_ap_return;
    sc_signal< sc_lv<14> > i_reg_92;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_131;
    sc_signal< sc_logic > ap_reg_grp_dut_mfcc_fu_104_ap_start;
    sc_signal< sc_lv<64> > tmp_63_fu_151_p1;
    sc_signal< sc_lv<64> > grp_fu_129_p0;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_st1_fsm_0;
    static const sc_lv<11> ap_ST_st2_fsm_1;
    static const sc_lv<11> ap_ST_st3_fsm_2;
    static const sc_lv<11> ap_ST_st4_fsm_3;
    static const sc_lv<11> ap_ST_st5_fsm_4;
    static const sc_lv<11> ap_ST_st6_fsm_5;
    static const sc_lv<11> ap_ST_st7_fsm_6;
    static const sc_lv<11> ap_ST_st8_fsm_7;
    static const sc_lv<11> ap_ST_st9_fsm_8;
    static const sc_lv<11> ap_ST_st10_fsm_9;
    static const sc_lv<11> ap_ST_st11_fsm_10;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<14> ap_const_lv14_3100;
    static const sc_lv<14> ap_const_lv14_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_131();
    void thread_ap_sig_26();
    void thread_ap_sig_47();
    void thread_ap_sig_58();
    void thread_ap_sig_67();
    void thread_ap_sig_73();
    void thread_ap_sig_89();
    void thread_ap_sig_98();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_exitcond_fu_132_p2();
    void thread_grp_dut_mfcc_fu_104_ap_start();
    void thread_grp_fu_129_p0();
    void thread_i_8_fu_138_p2();
    void thread_sound_in_address0();
    void thread_sound_in_ce0();
    void thread_sound_in_we0();
    void thread_strm_in_V_V_blk_n();
    void thread_strm_in_V_V_read();
    void thread_strm_out_V_V_blk_n();
    void thread_strm_out_V_V_din();
    void thread_strm_out_V_V_write();
    void thread_tmp_63_fu_151_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif

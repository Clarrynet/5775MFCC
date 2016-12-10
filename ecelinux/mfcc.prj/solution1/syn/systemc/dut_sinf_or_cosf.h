// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_sinf_or_cosf_HH_
#define _dut_sinf_or_cosf_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_big_mult_v3small_71_24_17_s.h"
#include "dut_my_to_float_31_1_s.h"
#include "dut_mul_32s_31ns_62_6.h"
#include "dut_mul_mul_17ns_15s_32_1.h"
#include "dut_mul_mul_23s_17ns_40_1.h"
#include "dut_sinf_or_cosf_hls_sin_cos_K0_V.h"
#include "dut_sinf_or_cosf_hls_sin_cos_K1_V.h"
#include "dut_sinf_or_cosf_hls_sin_cos_K2_V.h"

namespace ap_rtl {

struct dut_sinf_or_cosf : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > t_in;
    sc_out< sc_lv<32> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    dut_sinf_or_cosf(sc_module_name name);
    SC_HAS_PROCESS(dut_sinf_or_cosf);

    ~dut_sinf_or_cosf();

    sc_trace_file* mVcdFile;

    dut_sinf_or_cosf_hls_sin_cos_K0_V* hls_sin_cos_K0_V_U;
    dut_sinf_or_cosf_hls_sin_cos_K1_V* hls_sin_cos_K1_V_U;
    dut_sinf_or_cosf_hls_sin_cos_K2_V* hls_sin_cos_K2_V_U;
    dut_big_mult_v3small_71_24_17_s* grp_dut_big_mult_v3small_71_24_17_s_fu_281;
    dut_my_to_float_31_1_s* grp_dut_my_to_float_31_1_s_fu_287;
    dut_mul_32s_31ns_62_6<1,6,32,31,62>* dut_mul_32s_31ns_62_6_U6;
    dut_mul_mul_17ns_15s_32_1<1,1,17,15,32>* dut_mul_mul_17ns_15s_32_1_U7;
    dut_mul_mul_23s_17ns_40_1<1,1,23,17,40>* dut_mul_mul_23s_17ns_40_1_U8;
    sc_signal< sc_lv<14> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_31;
    sc_signal< sc_lv<8> > hls_sin_cos_K0_V_address0;
    sc_signal< sc_logic > hls_sin_cos_K0_V_ce0;
    sc_signal< sc_lv<30> > hls_sin_cos_K0_V_q0;
    sc_signal< sc_lv<8> > hls_sin_cos_K1_V_address0;
    sc_signal< sc_logic > hls_sin_cos_K1_V_ce0;
    sc_signal< sc_lv<23> > hls_sin_cos_K1_V_q0;
    sc_signal< sc_lv<8> > hls_sin_cos_K2_V_address0;
    sc_signal< sc_logic > hls_sin_cos_K2_V_ce0;
    sc_signal< sc_lv<15> > hls_sin_cos_K2_V_q0;
    sc_signal< sc_lv<1> > p_Result_s_reg_948;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_66;
    sc_signal< sc_logic > grp_dut_big_mult_v3small_71_24_17_s_fu_281_ap_done;
    sc_signal< sc_lv<8> > loc_V_fu_326_p4;
    sc_signal< sc_lv<8> > loc_V_reg_953;
    sc_signal< sc_lv<23> > loc_V_1_fu_336_p1;
    sc_signal< sc_lv<23> > loc_V_1_reg_960;
    sc_signal< sc_lv<1> > closepath_fu_340_p2;
    sc_signal< sc_lv<1> > closepath_reg_965;
    sc_signal< sc_lv<3> > p_Val2_23_fu_366_p3;
    sc_signal< sc_lv<3> > p_Val2_23_reg_970;
    sc_signal< sc_lv<49> > p_Val2_13_fu_384_p3;
    sc_signal< sc_lv<49> > p_Val2_13_reg_984;
    sc_signal< sc_lv<18> > p_Result_i3_i_reg_989;
    sc_signal< sc_lv<31> > p_Val2_16_reg_994;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_91;
    sc_signal< sc_lv<1> > tmp_12_reg_999;
    sc_signal< sc_lv<8> > Ex_V_fu_482_p2;
    sc_signal< sc_lv<8> > Ex_V_reg_1004;
    sc_signal< sc_lv<1> > isNeg_reg_1010;
    sc_signal< sc_lv<31> > p_Val2_24_fu_499_p2;
    sc_signal< sc_lv<31> > p_Val2_24_reg_1016;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_106;
    sc_signal< sc_lv<17> > p_Val2_3_reg_1021;
    sc_signal< sc_lv<9> > tmp_s_reg_1026;
    sc_signal< sc_lv<1> > sin_basis_fu_639_p2;
    sc_signal< sc_lv<1> > sin_basis_reg_1031;
    sc_signal< sc_lv<17> > tmp_1_reg_1052;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_127;
    sc_signal< sc_lv<30> > p_Val2_s_reg_1057;
    sc_signal< sc_lv<23> > hls_sin_cos_K1_V_load_reg_1062;
    sc_signal< sc_lv<15> > hls_sin_cos_K2_V_load_reg_1067;
    sc_signal< sc_lv<24> > tmp_3_reg_1072;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_139;
    sc_signal< sc_lv<16> > tmp_4_reg_1077;
    sc_signal< sc_lv<32> > r_V_fu_732_p2;
    sc_signal< sc_lv<32> > r_V_reg_1082;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_150;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_159;
    sc_signal< sc_lv<31> > p_0_reg_1097;
    sc_signal< sc_logic > ap_sig_cseq_ST_st13_fsm_12;
    sc_signal< bool > ap_sig_170;
    sc_signal< sc_lv<9> > r_V_1_fu_778_p2;
    sc_signal< sc_lv<9> > r_V_1_reg_1102;
    sc_signal< sc_logic > grp_dut_big_mult_v3small_71_24_17_s_fu_281_ap_start;
    sc_signal< sc_logic > grp_dut_big_mult_v3small_71_24_17_s_fu_281_ap_idle;
    sc_signal< sc_logic > grp_dut_big_mult_v3small_71_24_17_s_fu_281_ap_ready;
    sc_signal< sc_lv<95> > grp_dut_big_mult_v3small_71_24_17_s_fu_281_ap_return;
    sc_signal< sc_logic > grp_dut_my_to_float_31_1_s_fu_287_ap_start;
    sc_signal< sc_logic > grp_dut_my_to_float_31_1_s_fu_287_ap_done;
    sc_signal< sc_logic > grp_dut_my_to_float_31_1_s_fu_287_ap_idle;
    sc_signal< sc_logic > grp_dut_my_to_float_31_1_s_fu_287_ap_ready;
    sc_signal< sc_lv<32> > grp_dut_my_to_float_31_1_s_fu_287_ap_return;
    sc_signal< sc_lv<1> > tmp_7_phi_fu_225_p36;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_13;
    sc_signal< bool > ap_sig_196;
    sc_signal< sc_lv<1> > icmp_fu_818_p2;
    sc_signal< sc_lv<1> > grp_fu_308_p2;
    sc_signal< sc_lv<4> > p_Result_17_fu_797_p3;
    sc_signal< sc_lv<1> > or_cond1_fu_845_p2;
    sc_signal< sc_logic > ap_reg_grp_dut_big_mult_v3small_71_24_17_s_fu_281_ap_start;
    sc_signal< sc_logic > ap_reg_grp_dut_my_to_float_31_1_s_fu_287_ap_start;
    sc_signal< sc_lv<64> > tmp_2_fu_653_p1;
    sc_signal< sc_lv<3> > grp_fu_293_p2;
    sc_signal< sc_lv<2> > grp_fu_298_p4;
    sc_signal< sc_lv<32> > p_Val2_21_fu_314_p1;
    sc_signal< sc_lv<3> > tmp_83_i_fu_356_p4;
    sc_signal< sc_lv<49> > p_Val2_11_fu_346_p4;
    sc_signal< sc_lv<1> > tmp_fu_374_p1;
    sc_signal< sc_lv<49> > p_Val2_i_fu_378_p2;
    sc_signal< sc_lv<8> > p_i_fu_402_p2;
    sc_signal< sc_lv<19> > p_Result_12_fu_414_p3;
    sc_signal< sc_lv<19> > p_Result_13_fu_421_p4;
    sc_signal< sc_lv<32> > p_Result_14_fu_431_p3;
    sc_signal< sc_lv<32> > val_assign_fu_439_p3;
    sc_signal< sc_lv<5> > Mx_zeros_V_fu_447_p1;
    sc_signal< sc_lv<49> > tmp_84_i_fu_451_p1;
    sc_signal< sc_lv<49> > p_Val2_15_fu_455_p2;
    sc_signal< sc_lv<8> > storemerge_i_fu_407_p3;
    sc_signal< sc_lv<8> > tmp_87_i_fu_478_p1;
    sc_signal< sc_lv<31> > tmp_86_i_fu_496_p1;
    sc_signal< sc_lv<9> > sh_i_cast_fu_504_p1;
    sc_signal< sc_lv<9> > tmp_89_i_fu_507_p2;
    sc_signal< sc_lv<9> > sh_assign_fu_513_p3;
    sc_signal< sc_lv<31> > sh_assign_1_i_cast_fu_524_p1;
    sc_signal< sc_lv<31> > tmp_91_i_fu_532_p2;
    sc_signal< sc_lv<32> > tmp_90_i_fu_528_p1;
    sc_signal< sc_lv<32> > sh_assign_1_i_cast1_fu_520_p1;
    sc_signal< sc_lv<32> > tmp_91_i_cast_fu_538_p1;
    sc_signal< sc_lv<32> > tmp_93_i_fu_542_p2;
    sc_signal< sc_lv<32> > p_Val2_0_i234_in_i_fu_548_p3;
    sc_signal< sc_lv<1> > sel_tmp1_fu_590_p2;
    sc_signal< sc_lv<1> > sel_tmp_fu_585_p2;
    sc_signal< sc_lv<1> > not_sel_tmp_fu_601_p2;
    sc_signal< sc_lv<1> > not_sel_tmp1_fu_606_p2;
    sc_signal< sc_lv<1> > tmp7_fu_611_p2;
    sc_signal< sc_lv<1> > sel_tmp2_fu_595_p2;
    sc_signal< sc_lv<1> > sel_tmp3_fu_617_p2;
    sc_signal< sc_lv<1> > sel_tmp5_fu_628_p2;
    sc_signal< sc_lv<1> > tmp8_fu_633_p2;
    sc_signal< sc_lv<1> > sel_tmp4_fu_623_p2;
    sc_signal< sc_lv<7> > p_Result_s_48_fu_555_p4;
    sc_signal< sc_lv<8> > p_Result_15_fu_645_p3;
    sc_signal< sc_lv<9> > p_Val2_4_fu_663_p0;
    sc_signal< sc_lv<18> > OP1_V_3_fu_660_p1;
    sc_signal< sc_lv<9> > p_Val2_4_fu_663_p1;
    sc_signal< sc_lv<18> > p_Val2_4_fu_663_p2;
    sc_signal< sc_lv<40> > p_Val2_6_fu_941_p2;
    sc_signal< sc_lv<32> > p_Val2_7_fu_934_p2;
    sc_signal< sc_lv<31> > p_Val2_8_fu_709_p3;
    sc_signal< sc_lv<32> > tmp_5_fu_716_p1;
    sc_signal< sc_lv<32> > tmp_6_fu_720_p1;
    sc_signal< sc_lv<32> > p_Val2_9_fu_723_p2;
    sc_signal< sc_lv<32> > tmp_76_cast_fu_729_p1;
    sc_signal< sc_lv<31> > Mx_V_ret_s_fu_738_p3;
    sc_signal< sc_lv<31> > grp_fu_751_p1;
    sc_signal< sc_lv<62> > grp_fu_751_p2;
    sc_signal< sc_lv<8> > Ex_V_ret_s_fu_757_p3;
    sc_signal< sc_lv<9> > rhs_V_fu_774_p1;
    sc_signal< sc_lv<32> > p_Val2_19_fu_785_p1;
    sc_signal< sc_lv<3> > k_V_off1_fu_803_p2;
    sc_signal< sc_lv<2> > tmp_15_fu_808_p4;
    sc_signal< sc_lv<3> > k_V_off2_fu_824_p2;
    sc_signal< sc_lv<2> > tmp_16_fu_829_p4;
    sc_signal< sc_lv<1> > icmp1_fu_839_p2;
    sc_signal< sc_lv<1> > p_Result_16_fu_789_p3;
    sc_signal< sc_lv<1> > tmp_8_fu_857_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_862_p2;
    sc_signal< sc_lv<1> > p_Result_11_fu_851_p2;
    sc_signal< sc_lv<31> > tmp_19_fu_878_p1;
    sc_signal< sc_lv<32> > p_Result_18_fu_882_p3;
    sc_signal< sc_lv<1> > sel_tmp6_demorgan_fu_894_p2;
    sc_signal< sc_lv<1> > tmp_i_fu_873_p2;
    sc_signal< sc_lv<1> > sel_tmp6_fu_900_p2;
    sc_signal< sc_lv<1> > sel_tmp7_fu_906_p2;
    sc_signal< sc_lv<1> > or_cond_fu_867_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_920_p2;
    sc_signal< sc_lv<32> > sel_tmp8_fu_912_p3;
    sc_signal< sc_lv<32> > ret_i_i_fu_890_p1;
    sc_signal< sc_lv<17> > p_Val2_7_fu_934_p0;
    sc_signal< sc_lv<17> > p_Val2_6_fu_941_p1;
    sc_signal< sc_lv<32> > p_s_fu_926_p3;
    sc_signal< sc_lv<32> > ap_return_preg;
    sc_signal< sc_lv<14> > ap_NS_fsm;
    sc_signal< sc_lv<62> > grp_fu_751_p10;
    sc_signal< sc_lv<40> > p_Val2_6_fu_941_p10;
    sc_signal< sc_lv<32> > p_Val2_7_fu_934_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<14> ap_ST_st1_fsm_0;
    static const sc_lv<14> ap_ST_st2_fsm_1;
    static const sc_lv<14> ap_ST_st3_fsm_2;
    static const sc_lv<14> ap_ST_st4_fsm_3;
    static const sc_lv<14> ap_ST_st5_fsm_4;
    static const sc_lv<14> ap_ST_st6_fsm_5;
    static const sc_lv<14> ap_ST_st7_fsm_6;
    static const sc_lv<14> ap_ST_st8_fsm_7;
    static const sc_lv<14> ap_ST_st9_fsm_8;
    static const sc_lv<14> ap_ST_st10_fsm_9;
    static const sc_lv<14> ap_ST_st11_fsm_10;
    static const sc_lv<14> ap_ST_st12_fsm_11;
    static const sc_lv<14> ap_ST_st13_fsm_12;
    static const sc_lv<14> ap_ST_st14_fsm_13;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_B;
    static const sc_lv<4> ap_const_lv4_C;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_D;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_7E;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_43;
    static const sc_lv<32> ap_const_lv32_44;
    static const sc_lv<32> ap_const_lv32_46;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<49> ap_const_lv49_0;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<8> ap_const_lv8_83;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<13> ap_const_lv13_1FFF;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<31> ap_const_lv31_7FFFFFFF;
    static const sc_lv<32> ap_const_lv32_3D;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<32> ap_const_lv32_7FFFFFFF;
    static const sc_lv<32> ap_const_lv32_3F800000;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_Ex_V_fu_482_p2();
    void thread_Ex_V_ret_s_fu_757_p3();
    void thread_Mx_V_ret_s_fu_738_p3();
    void thread_Mx_zeros_V_fu_447_p1();
    void thread_OP1_V_3_fu_660_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_106();
    void thread_ap_sig_127();
    void thread_ap_sig_139();
    void thread_ap_sig_150();
    void thread_ap_sig_159();
    void thread_ap_sig_170();
    void thread_ap_sig_196();
    void thread_ap_sig_31();
    void thread_ap_sig_66();
    void thread_ap_sig_91();
    void thread_ap_sig_cseq_ST_st13_fsm_12();
    void thread_ap_sig_cseq_ST_st14_fsm_13();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_closepath_fu_340_p2();
    void thread_grp_dut_big_mult_v3small_71_24_17_s_fu_281_ap_start();
    void thread_grp_dut_my_to_float_31_1_s_fu_287_ap_start();
    void thread_grp_fu_293_p2();
    void thread_grp_fu_298_p4();
    void thread_grp_fu_308_p2();
    void thread_grp_fu_751_p1();
    void thread_grp_fu_751_p10();
    void thread_hls_sin_cos_K0_V_address0();
    void thread_hls_sin_cos_K0_V_ce0();
    void thread_hls_sin_cos_K1_V_address0();
    void thread_hls_sin_cos_K1_V_ce0();
    void thread_hls_sin_cos_K2_V_address0();
    void thread_hls_sin_cos_K2_V_ce0();
    void thread_icmp1_fu_839_p2();
    void thread_icmp_fu_818_p2();
    void thread_k_V_off1_fu_803_p2();
    void thread_k_V_off2_fu_824_p2();
    void thread_loc_V_1_fu_336_p1();
    void thread_loc_V_fu_326_p4();
    void thread_not_sel_tmp1_fu_606_p2();
    void thread_not_sel_tmp_fu_601_p2();
    void thread_or_cond1_fu_845_p2();
    void thread_or_cond_fu_867_p2();
    void thread_p_Result_11_fu_851_p2();
    void thread_p_Result_12_fu_414_p3();
    void thread_p_Result_13_fu_421_p4();
    void thread_p_Result_14_fu_431_p3();
    void thread_p_Result_15_fu_645_p3();
    void thread_p_Result_16_fu_789_p3();
    void thread_p_Result_17_fu_797_p3();
    void thread_p_Result_18_fu_882_p3();
    void thread_p_Result_s_48_fu_555_p4();
    void thread_p_Val2_0_i234_in_i_fu_548_p3();
    void thread_p_Val2_11_fu_346_p4();
    void thread_p_Val2_13_fu_384_p3();
    void thread_p_Val2_15_fu_455_p2();
    void thread_p_Val2_19_fu_785_p1();
    void thread_p_Val2_21_fu_314_p1();
    void thread_p_Val2_23_fu_366_p3();
    void thread_p_Val2_24_fu_499_p2();
    void thread_p_Val2_4_fu_663_p0();
    void thread_p_Val2_4_fu_663_p1();
    void thread_p_Val2_4_fu_663_p2();
    void thread_p_Val2_6_fu_941_p1();
    void thread_p_Val2_6_fu_941_p10();
    void thread_p_Val2_7_fu_934_p0();
    void thread_p_Val2_7_fu_934_p00();
    void thread_p_Val2_8_fu_709_p3();
    void thread_p_Val2_9_fu_723_p2();
    void thread_p_Val2_i_fu_378_p2();
    void thread_p_i_fu_402_p2();
    void thread_p_s_fu_926_p3();
    void thread_r_V_1_fu_778_p2();
    void thread_r_V_fu_732_p2();
    void thread_ret_i_i_fu_890_p1();
    void thread_rhs_V_fu_774_p1();
    void thread_sel_tmp1_fu_590_p2();
    void thread_sel_tmp2_fu_595_p2();
    void thread_sel_tmp3_fu_617_p2();
    void thread_sel_tmp4_fu_623_p2();
    void thread_sel_tmp5_fu_628_p2();
    void thread_sel_tmp6_demorgan_fu_894_p2();
    void thread_sel_tmp6_fu_900_p2();
    void thread_sel_tmp7_fu_906_p2();
    void thread_sel_tmp8_fu_912_p3();
    void thread_sel_tmp_fu_585_p2();
    void thread_sh_assign_1_i_cast1_fu_520_p1();
    void thread_sh_assign_1_i_cast_fu_524_p1();
    void thread_sh_assign_fu_513_p3();
    void thread_sh_i_cast_fu_504_p1();
    void thread_sin_basis_fu_639_p2();
    void thread_storemerge_i_fu_407_p3();
    void thread_tmp7_fu_611_p2();
    void thread_tmp8_fu_633_p2();
    void thread_tmp_10_fu_920_p2();
    void thread_tmp_15_fu_808_p4();
    void thread_tmp_16_fu_829_p4();
    void thread_tmp_19_fu_878_p1();
    void thread_tmp_2_fu_653_p1();
    void thread_tmp_5_fu_716_p1();
    void thread_tmp_6_fu_720_p1();
    void thread_tmp_76_cast_fu_729_p1();
    void thread_tmp_7_phi_fu_225_p36();
    void thread_tmp_83_i_fu_356_p4();
    void thread_tmp_84_i_fu_451_p1();
    void thread_tmp_86_i_fu_496_p1();
    void thread_tmp_87_i_fu_478_p1();
    void thread_tmp_89_i_fu_507_p2();
    void thread_tmp_8_fu_857_p2();
    void thread_tmp_90_i_fu_528_p1();
    void thread_tmp_91_i_cast_fu_538_p1();
    void thread_tmp_91_i_fu_532_p2();
    void thread_tmp_93_i_fu_542_p2();
    void thread_tmp_9_fu_862_p2();
    void thread_tmp_fu_374_p1();
    void thread_tmp_i_fu_873_p2();
    void thread_val_assign_fu_439_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

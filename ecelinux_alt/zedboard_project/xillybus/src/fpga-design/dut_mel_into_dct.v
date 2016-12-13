// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dut_mel_into_dct (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        z2_address0,
        z2_ce0,
        z2_q0,
        ap_return
);

parameter    ap_ST_st1_fsm_0 = 41'b1;
parameter    ap_ST_st2_fsm_1 = 41'b10;
parameter    ap_ST_st3_fsm_2 = 41'b100;
parameter    ap_ST_st4_fsm_3 = 41'b1000;
parameter    ap_ST_st5_fsm_4 = 41'b10000;
parameter    ap_ST_st6_fsm_5 = 41'b100000;
parameter    ap_ST_st7_fsm_6 = 41'b1000000;
parameter    ap_ST_st8_fsm_7 = 41'b10000000;
parameter    ap_ST_st9_fsm_8 = 41'b100000000;
parameter    ap_ST_st10_fsm_9 = 41'b1000000000;
parameter    ap_ST_st11_fsm_10 = 41'b10000000000;
parameter    ap_ST_st12_fsm_11 = 41'b100000000000;
parameter    ap_ST_st13_fsm_12 = 41'b1000000000000;
parameter    ap_ST_st14_fsm_13 = 41'b10000000000000;
parameter    ap_ST_st15_fsm_14 = 41'b100000000000000;
parameter    ap_ST_st16_fsm_15 = 41'b1000000000000000;
parameter    ap_ST_st17_fsm_16 = 41'b10000000000000000;
parameter    ap_ST_st18_fsm_17 = 41'b100000000000000000;
parameter    ap_ST_st19_fsm_18 = 41'b1000000000000000000;
parameter    ap_ST_st20_fsm_19 = 41'b10000000000000000000;
parameter    ap_ST_st21_fsm_20 = 41'b100000000000000000000;
parameter    ap_ST_st22_fsm_21 = 41'b1000000000000000000000;
parameter    ap_ST_st23_fsm_22 = 41'b10000000000000000000000;
parameter    ap_ST_st24_fsm_23 = 41'b100000000000000000000000;
parameter    ap_ST_st25_fsm_24 = 41'b1000000000000000000000000;
parameter    ap_ST_st26_fsm_25 = 41'b10000000000000000000000000;
parameter    ap_ST_st27_fsm_26 = 41'b100000000000000000000000000;
parameter    ap_ST_st28_fsm_27 = 41'b1000000000000000000000000000;
parameter    ap_ST_st29_fsm_28 = 41'b10000000000000000000000000000;
parameter    ap_ST_st30_fsm_29 = 41'b100000000000000000000000000000;
parameter    ap_ST_st31_fsm_30 = 41'b1000000000000000000000000000000;
parameter    ap_ST_st32_fsm_31 = 41'b10000000000000000000000000000000;
parameter    ap_ST_st33_fsm_32 = 41'b100000000000000000000000000000000;
parameter    ap_ST_st34_fsm_33 = 41'b1000000000000000000000000000000000;
parameter    ap_ST_st35_fsm_34 = 41'b10000000000000000000000000000000000;
parameter    ap_ST_st36_fsm_35 = 41'b100000000000000000000000000000000000;
parameter    ap_ST_st37_fsm_36 = 41'b1000000000000000000000000000000000000;
parameter    ap_ST_st38_fsm_37 = 41'b10000000000000000000000000000000000000;
parameter    ap_ST_st39_fsm_38 = 41'b100000000000000000000000000000000000000;
parameter    ap_ST_st40_fsm_39 = 41'b1000000000000000000000000000000000000000;
parameter    ap_ST_st41_fsm_40 = 41'b10000000000000000000000000000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_18 = 32'b11000;
parameter    ap_const_lv32_1A = 32'b11010;
parameter    ap_const_lv32_1B = 32'b11011;
parameter    ap_const_lv32_1C = 32'b11100;
parameter    ap_const_lv32_24 = 32'b100100;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv32_19 = 32'b11001;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv32_27 = 32'b100111;
parameter    ap_const_lv32_28 = 32'b101000;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv6_31 = 6'b110001;
parameter    ap_const_lv6_1 = 6'b1;
parameter    ap_const_lv7_0 = 7'b0000000;
parameter    ap_const_lv10_31 = 10'b110001;
parameter    ap_const_lv5_14 = 5'b10100;
parameter    ap_const_lv5_1 = 5'b1;
parameter    ap_const_lv8_81 = 8'b10000001;
parameter    ap_const_lv8_1 = 8'b1;
parameter    ap_const_lv32_3E64F92E = 32'b111110011001001111100100101110;
parameter    ap_const_lv32_3EA1E89B = 32'b111110101000011110100010011011;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv2_2 = 2'b10;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] z2_address0;
output   z2_ce0;
input  [31:0] z2_q0;
output  [1:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg z2_ce0;

(* fsm_encoding = "none" *) reg   [40:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_58;
wire   [11:0] melfb_address0;
reg    melfb_ce0;
wire   [31:0] melfb_q0;
wire   [8:0] dct_coeff_address0;
reg    dct_coeff_ce0;
wire   [31:0] dct_coeff_q0;
wire   [31:0] grp_fu_268_p2;
reg   [31:0] reg_284;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_91;
reg    ap_sig_cseq_ST_st32_fsm_31;
reg    ap_sig_98;
wire   [5:0] frame_2_fu_295_p2;
reg   [5:0] frame_2_reg_522;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_108;
wire   [9:0] tmp_cast7_fu_301_p1;
reg   [9:0] tmp_cast7_reg_527;
wire   [0:0] exitcond4_fu_289_p2;
wire   [13:0] tmp_19_fu_321_p2;
reg   [13:0] tmp_19_reg_534;
wire   [9:0] next_mul_fu_327_p2;
reg   [9:0] next_mul_reg_539;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_125;
wire   [7:0] j_cast_fu_333_p1;
reg   [7:0] j_cast_reg_544;
wire   [4:0] j_3_fu_343_p2;
reg   [4:0] j_3_reg_552;
wire   [11:0] p_shl_fu_349_p3;
reg   [11:0] p_shl_reg_557;
wire   [0:0] exitcond3_fu_337_p2;
wire   [7:0] x_1_fu_363_p2;
reg   [7:0] x_1_reg_565;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_143;
wire   [0:0] exitcond2_fu_357_p2;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_158;
wire   [31:0] grp_fu_262_p2;
reg    ap_sig_cseq_ST_st13_fsm_12;
reg    ap_sig_168;
wire   [9:0] tmp_20_fu_402_p2;
reg   [9:0] tmp_20_reg_595;
reg    ap_sig_cseq_ST_st14_fsm_13;
reg    ap_sig_177;
wire   [31:0] grp_fu_278_p2;
reg   [31:0] tmp_i_reg_600;
reg    ap_sig_cseq_ST_st25_fsm_24;
reg    ap_sig_186;
wire   [9:0] next_mul6_fu_411_p2;
reg   [9:0] next_mul6_reg_605;
reg    ap_sig_cseq_ST_st27_fsm_26;
reg    ap_sig_195;
wire   [4:0] k_1_fu_423_p2;
reg   [4:0] k_1_reg_613;
wire   [31:0] p_s_fu_435_p3;
reg   [31:0] p_s_reg_618;
wire   [0:0] exitcond1_fu_417_p2;
wire   [8:0] p_shl4_fu_443_p3;
reg   [8:0] p_shl4_reg_623;
wire   [6:0] p_shl5_fu_451_p3;
reg   [6:0] p_shl5_reg_628;
wire   [4:0] n_fu_469_p2;
reg   [4:0] n_reg_636;
reg    ap_sig_cseq_ST_st28_fsm_27;
reg    ap_sig_215;
wire   [9:0] next_mul4_fu_475_p2;
reg   [9:0] next_mul4_reg_641;
wire   [0:0] exitcond_fu_463_p2;
wire   [9:0] tmp_25_fu_510_p2;
reg   [9:0] tmp_25_reg_656;
wire   [31:0] z_q0;
reg    ap_sig_cseq_ST_st29_fsm_28;
reg    ap_sig_237;
reg    ap_sig_cseq_ST_st37_fsm_36;
reg    ap_sig_246;
reg   [9:0] z_address0;
reg    z_ce0;
reg    z_we0;
reg   [9:0] X_address0;
reg    X_ce0;
reg    X_we0;
wire   [31:0] X_q0;
wire    grp_dut_knn_fu_255_ap_start;
wire    grp_dut_knn_fu_255_ap_done;
wire    grp_dut_knn_fu_255_ap_idle;
wire    grp_dut_knn_fu_255_ap_ready;
wire   [9:0] grp_dut_knn_fu_255_input_r_address0;
wire    grp_dut_knn_fu_255_input_r_ce0;
reg   [5:0] frame_reg_141;
reg   [4:0] j_reg_152;
reg    ap_sig_cseq_ST_st26_fsm_25;
reg    ap_sig_290;
reg   [9:0] phi_mul_reg_163;
reg   [31:0] x_assign_reg_175;
reg   [7:0] x_reg_187;
reg   [4:0] k_reg_198;
reg    ap_sig_cseq_ST_st40_fsm_39;
reg    ap_sig_308;
reg   [9:0] phi_mul5_reg_209;
reg   [31:0] sum1_reg_221;
reg   [4:0] n2_reg_233;
reg   [9:0] phi_mul3_reg_244;
reg    ap_reg_grp_dut_knn_fu_255_ap_start;
reg    ap_sig_cseq_ST_st41_fsm_40;
reg    ap_sig_329;
wire   [63:0] tmp_15_fu_383_p1;
wire   [63:0] tmp_28_cast_fu_397_p1;
wire   [63:0] tmp_27_cast_fu_407_p1;
wire   [63:0] tmp_32_cast_fu_486_p1;
wire   [63:0] tmp_22_fu_505_p1;
wire   [63:0] tmp_30_cast_fu_515_p1;
reg   [31:0] grp_fu_262_p0;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_357;
reg    ap_sig_cseq_ST_st33_fsm_32;
reg    ap_sig_364;
reg   [31:0] grp_fu_268_p0;
reg   [31:0] grp_fu_268_p1;
wire   [12:0] tmp_16_fu_309_p3;
wire   [13:0] tmp_cast_fu_305_p1;
wire   [13:0] p_shl2_cast_fu_317_p1;
wire   [7:0] tmp1_fu_369_p2;
wire   [11:0] tmp1_cast_fu_374_p1;
wire   [11:0] tmp_14_fu_378_p2;
wire   [13:0] tmp_16_cast_fu_388_p1;
wire   [13:0] tmp_24_fu_392_p2;
wire   [0:0] tmp_s_fu_429_p2;
wire   [9:0] tmp_26_fu_481_p2;
wire   [6:0] n2_cast4_fu_459_p1;
wire   [6:0] tmp2_fu_491_p2;
wire   [8:0] tmp2_cast_fu_496_p1;
wire   [8:0] tmp_21_fu_500_p2;
reg   [40:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 41'b1;
#0 ap_reg_grp_dut_knn_fu_255_ap_start = 1'b0;
end

dut_mel_into_dct_melfb #(
    .DataWidth( 32 ),
    .AddressRange( 2580 ),
    .AddressWidth( 12 ))
melfb_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(melfb_address0),
    .ce0(melfb_ce0),
    .q0(melfb_q0)
);

dut_mel_into_dct_dct_coeff #(
    .DataWidth( 32 ),
    .AddressRange( 400 ),
    .AddressWidth( 9 ))
dct_coeff_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_address0),
    .ce0(dct_coeff_ce0),
    .q0(dct_coeff_q0)
);

dut_mel_into_dct_z #(
    .DataWidth( 32 ),
    .AddressRange( 980 ),
    .AddressWidth( 10 ))
z_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(z_address0),
    .ce0(z_ce0),
    .we0(z_we0),
    .d0(tmp_i_reg_600),
    .q0(z_q0)
);

dut_mel_into_dct_z #(
    .DataWidth( 32 ),
    .AddressRange( 980 ),
    .AddressWidth( 10 ))
X_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(X_address0),
    .ce0(X_ce0),
    .we0(X_we0),
    .d0(grp_fu_268_p2),
    .q0(X_q0)
);

dut_knn grp_dut_knn_fu_255(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dut_knn_fu_255_ap_start),
    .ap_done(grp_dut_knn_fu_255_ap_done),
    .ap_idle(grp_dut_knn_fu_255_ap_idle),
    .ap_ready(grp_dut_knn_fu_255_ap_ready),
    .input_r_address0(grp_dut_knn_fu_255_input_r_address0),
    .input_r_ce0(grp_dut_knn_fu_255_input_r_ce0),
    .input_r_q0(X_q0)
);

dut_fadd_32ns_32ns_32_5_full_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_fadd_32ns_32ns_32_5_full_dsp_U29(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_262_p0),
    .din1(reg_284),
    .ce(1'b1),
    .dout(grp_fu_262_p2)
);

dut_fmul_32ns_32ns_32_4_max_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_fmul_32ns_32ns_32_4_max_dsp_U30(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_268_p0),
    .din1(grp_fu_268_p1),
    .ce(1'b1),
    .dout(grp_fu_268_p2)
);

dut_flog_32ns_32ns_32_13_full_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 13 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_flog_32ns_32ns_32_13_full_dsp_U31(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ap_const_lv32_0),
    .din1(x_assign_reg_175),
    .ce(1'b1),
    .dout(grp_fu_278_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_dut_knn_fu_255_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond4_fu_289_p2 == 1'b0))) begin
            ap_reg_grp_dut_knn_fu_255_ap_start <= 1'b1;
        end else if ((1'b1 == grp_dut_knn_fu_255_ap_ready)) begin
            ap_reg_grp_dut_knn_fu_255_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st27_fsm_26) & ~(1'b0 == exitcond1_fu_417_p2))) begin
        frame_reg_141 <= frame_2_reg_522;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        frame_reg_141 <= ap_const_lv6_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond4_fu_289_p2 == 1'b0))) begin
        j_reg_152 <= ap_const_lv5_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st26_fsm_25)) begin
        j_reg_152 <= j_3_reg_552;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond3_fu_337_p2))) begin
        k_reg_198 <= ap_const_lv5_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st40_fsm_39)) begin
        k_reg_198 <= k_1_reg_613;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st37_fsm_36)) begin
        n2_reg_233 <= n_reg_636;
    end else if (((1'b1 == ap_sig_cseq_ST_st27_fsm_26) & (1'b0 == exitcond1_fu_417_p2))) begin
        n2_reg_233 <= ap_const_lv5_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st37_fsm_36)) begin
        phi_mul3_reg_244 <= next_mul4_reg_641;
    end else if (((1'b1 == ap_sig_cseq_ST_st27_fsm_26) & (1'b0 == exitcond1_fu_417_p2))) begin
        phi_mul3_reg_244 <= ap_const_lv10_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond3_fu_337_p2))) begin
        phi_mul5_reg_209 <= ap_const_lv10_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st40_fsm_39)) begin
        phi_mul5_reg_209 <= next_mul6_reg_605;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond4_fu_289_p2 == 1'b0))) begin
        phi_mul_reg_163 <= ap_const_lv10_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st26_fsm_25)) begin
        phi_mul_reg_163 <= next_mul_reg_539;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st37_fsm_36)) begin
        sum1_reg_221 <= grp_fu_262_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st27_fsm_26) & (1'b0 == exitcond1_fu_417_p2))) begin
        sum1_reg_221 <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == exitcond3_fu_337_p2))) begin
        x_assign_reg_175 <= ap_const_lv32_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        x_assign_reg_175 <= grp_fu_262_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == exitcond3_fu_337_p2))) begin
        x_reg_187 <= ap_const_lv8_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        x_reg_187 <= x_1_reg_565;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        frame_2_reg_522 <= frame_2_fu_295_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        j_3_reg_552 <= j_3_fu_343_p2;
        j_cast_reg_544[4 : 0] <= j_cast_fu_333_p1[4 : 0];
        next_mul_reg_539 <= next_mul_fu_327_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st27_fsm_26)) begin
        k_1_reg_613 <= k_1_fu_423_p2;
        next_mul6_reg_605 <= next_mul6_fu_411_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st28_fsm_27)) begin
        n_reg_636 <= n_fu_469_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st28_fsm_27) & (1'b0 == exitcond_fu_463_p2))) begin
        next_mul4_reg_641 <= next_mul4_fu_475_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st27_fsm_26) & (1'b0 == exitcond1_fu_417_p2))) begin
        p_s_reg_618[0] <= p_s_fu_435_p3[0];
p_s_reg_618[2] <= p_s_fu_435_p3[2];
p_s_reg_618[5 : 4] <= p_s_fu_435_p3[5 : 4];
p_s_reg_618[8 : 7] <= p_s_fu_435_p3[8 : 7];
p_s_reg_618[12] <= p_s_fu_435_p3[12];
p_s_reg_618[16] <= p_s_fu_435_p3[16];
p_s_reg_618[18] <= p_s_fu_435_p3[18];
p_s_reg_618[23 : 22] <= p_s_fu_435_p3[23 : 22];
        p_shl4_reg_623[8 : 4] <= p_shl4_fu_443_p3[8 : 4];
        p_shl5_reg_628[6 : 2] <= p_shl5_fu_451_p3[6 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == exitcond3_fu_337_p2))) begin
        p_shl_reg_557[11 : 7] <= p_shl_fu_349_p3[11 : 7];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st32_fsm_31))) begin
        reg_284 <= grp_fu_268_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond4_fu_289_p2 == 1'b0))) begin
        tmp_19_reg_534 <= tmp_19_fu_321_p2;
        tmp_cast7_reg_527[5 : 0] <= tmp_cast7_fu_301_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        tmp_20_reg_595 <= tmp_20_fu_402_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st28_fsm_27) & ~(1'b0 == exitcond_fu_463_p2))) begin
        tmp_25_reg_656 <= tmp_25_fu_510_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st25_fsm_24)) begin
        tmp_i_reg_600 <= grp_fu_278_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        x_1_reg_565 <= x_1_fu_363_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st40_fsm_39)) begin
        X_address0 = tmp_30_cast_fu_515_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st41_fsm_40)) begin
        X_address0 = grp_dut_knn_fu_255_input_r_address0;
    end else begin
        X_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st40_fsm_39)) begin
        X_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st41_fsm_40)) begin
        X_ce0 = grp_dut_knn_fu_255_input_r_ce0;
    end else begin
        X_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st40_fsm_39)) begin
        X_we0 = 1'b1;
    end else begin
        X_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | ((1'b1 == ap_sig_cseq_ST_st41_fsm_40) & ~(1'b0 == grp_dut_knn_fu_255_ap_done)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st41_fsm_40) & ~(1'b0 == grp_dut_knn_fu_255_ap_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_168) begin
        ap_sig_cseq_ST_st13_fsm_12 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st13_fsm_12 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_177) begin
        ap_sig_cseq_ST_st14_fsm_13 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st14_fsm_13 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_58) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_186) begin
        ap_sig_cseq_ST_st25_fsm_24 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st25_fsm_24 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_290) begin
        ap_sig_cseq_ST_st26_fsm_25 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st26_fsm_25 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_195) begin
        ap_sig_cseq_ST_st27_fsm_26 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st27_fsm_26 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_215) begin
        ap_sig_cseq_ST_st28_fsm_27 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st28_fsm_27 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_237) begin
        ap_sig_cseq_ST_st29_fsm_28 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st29_fsm_28 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_108) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_98) begin
        ap_sig_cseq_ST_st32_fsm_31 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st32_fsm_31 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_364) begin
        ap_sig_cseq_ST_st33_fsm_32 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st33_fsm_32 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_246) begin
        ap_sig_cseq_ST_st37_fsm_36 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st37_fsm_36 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_125) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_308) begin
        ap_sig_cseq_ST_st40_fsm_39 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st40_fsm_39 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_329) begin
        ap_sig_cseq_ST_st41_fsm_40 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st41_fsm_40 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_143) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_158) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_91) begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_357) begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st28_fsm_27)) begin
        dct_coeff_ce0 = 1'b1;
    end else begin
        dct_coeff_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st33_fsm_32)) begin
        grp_fu_262_p0 = sum1_reg_221;
    end else if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        grp_fu_262_p0 = x_assign_reg_175;
    end else begin
        grp_fu_262_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st29_fsm_28)) begin
        grp_fu_268_p0 = z_q0;
    end else if ((1'b1 == ap_sig_cseq_ST_st28_fsm_27)) begin
        grp_fu_268_p0 = p_s_reg_618;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        grp_fu_268_p0 = melfb_q0;
    end else begin
        grp_fu_268_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st29_fsm_28)) begin
        grp_fu_268_p1 = dct_coeff_q0;
    end else if ((1'b1 == ap_sig_cseq_ST_st28_fsm_27)) begin
        grp_fu_268_p1 = sum1_reg_221;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        grp_fu_268_p1 = z2_q0;
    end else begin
        grp_fu_268_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        melfb_ce0 = 1'b1;
    end else begin
        melfb_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        z2_ce0 = 1'b1;
    end else begin
        z2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st26_fsm_25)) begin
        z_address0 = tmp_27_cast_fu_407_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st28_fsm_27)) begin
        z_address0 = tmp_32_cast_fu_486_p1;
    end else begin
        z_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st28_fsm_27) | (1'b1 == ap_sig_cseq_ST_st26_fsm_25))) begin
        z_ce0 = 1'b1;
    end else begin
        z_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st26_fsm_25)) begin
        z_we0 = 1'b1;
    end else begin
        z_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if ((exitcond4_fu_289_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st41_fsm_40;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if ((1'b0 == exitcond3_fu_337_p2)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st27_fsm_26;
            end
        end
        ap_ST_st4_fsm_3 : begin
            if (~(1'b0 == exitcond2_fu_357_p2)) begin
                ap_NS_fsm = ap_ST_st14_fsm_13;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st11_fsm_10 : begin
            ap_NS_fsm = ap_ST_st12_fsm_11;
        end
        ap_ST_st12_fsm_11 : begin
            ap_NS_fsm = ap_ST_st13_fsm_12;
        end
        ap_ST_st13_fsm_12 : begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st14_fsm_13 : begin
            ap_NS_fsm = ap_ST_st15_fsm_14;
        end
        ap_ST_st15_fsm_14 : begin
            ap_NS_fsm = ap_ST_st16_fsm_15;
        end
        ap_ST_st16_fsm_15 : begin
            ap_NS_fsm = ap_ST_st17_fsm_16;
        end
        ap_ST_st17_fsm_16 : begin
            ap_NS_fsm = ap_ST_st18_fsm_17;
        end
        ap_ST_st18_fsm_17 : begin
            ap_NS_fsm = ap_ST_st19_fsm_18;
        end
        ap_ST_st19_fsm_18 : begin
            ap_NS_fsm = ap_ST_st20_fsm_19;
        end
        ap_ST_st20_fsm_19 : begin
            ap_NS_fsm = ap_ST_st21_fsm_20;
        end
        ap_ST_st21_fsm_20 : begin
            ap_NS_fsm = ap_ST_st22_fsm_21;
        end
        ap_ST_st22_fsm_21 : begin
            ap_NS_fsm = ap_ST_st23_fsm_22;
        end
        ap_ST_st23_fsm_22 : begin
            ap_NS_fsm = ap_ST_st24_fsm_23;
        end
        ap_ST_st24_fsm_23 : begin
            ap_NS_fsm = ap_ST_st25_fsm_24;
        end
        ap_ST_st25_fsm_24 : begin
            ap_NS_fsm = ap_ST_st26_fsm_25;
        end
        ap_ST_st26_fsm_25 : begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st27_fsm_26 : begin
            if ((1'b0 == exitcond1_fu_417_p2)) begin
                ap_NS_fsm = ap_ST_st28_fsm_27;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st28_fsm_27 : begin
            if (~(1'b0 == exitcond_fu_463_p2)) begin
                ap_NS_fsm = ap_ST_st38_fsm_37;
            end else begin
                ap_NS_fsm = ap_ST_st29_fsm_28;
            end
        end
        ap_ST_st29_fsm_28 : begin
            ap_NS_fsm = ap_ST_st30_fsm_29;
        end
        ap_ST_st30_fsm_29 : begin
            ap_NS_fsm = ap_ST_st31_fsm_30;
        end
        ap_ST_st31_fsm_30 : begin
            ap_NS_fsm = ap_ST_st32_fsm_31;
        end
        ap_ST_st32_fsm_31 : begin
            ap_NS_fsm = ap_ST_st33_fsm_32;
        end
        ap_ST_st33_fsm_32 : begin
            ap_NS_fsm = ap_ST_st34_fsm_33;
        end
        ap_ST_st34_fsm_33 : begin
            ap_NS_fsm = ap_ST_st35_fsm_34;
        end
        ap_ST_st35_fsm_34 : begin
            ap_NS_fsm = ap_ST_st36_fsm_35;
        end
        ap_ST_st36_fsm_35 : begin
            ap_NS_fsm = ap_ST_st37_fsm_36;
        end
        ap_ST_st37_fsm_36 : begin
            ap_NS_fsm = ap_ST_st28_fsm_27;
        end
        ap_ST_st38_fsm_37 : begin
            ap_NS_fsm = ap_ST_st39_fsm_38;
        end
        ap_ST_st39_fsm_38 : begin
            ap_NS_fsm = ap_ST_st40_fsm_39;
        end
        ap_ST_st40_fsm_39 : begin
            ap_NS_fsm = ap_ST_st27_fsm_26;
        end
        ap_ST_st41_fsm_40 : begin
            if (~(1'b0 == grp_dut_knn_fu_255_ap_done)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st41_fsm_40;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_return = ap_const_lv2_2;

always @ (*) begin
    ap_sig_108 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_125 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_143 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_158 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_168 = (1'b1 == ap_CS_fsm[ap_const_lv32_C]);
end

always @ (*) begin
    ap_sig_177 = (1'b1 == ap_CS_fsm[ap_const_lv32_D]);
end

always @ (*) begin
    ap_sig_186 = (1'b1 == ap_CS_fsm[ap_const_lv32_18]);
end

always @ (*) begin
    ap_sig_195 = (1'b1 == ap_CS_fsm[ap_const_lv32_1A]);
end

always @ (*) begin
    ap_sig_215 = (1'b1 == ap_CS_fsm[ap_const_lv32_1B]);
end

always @ (*) begin
    ap_sig_237 = (1'b1 == ap_CS_fsm[ap_const_lv32_1C]);
end

always @ (*) begin
    ap_sig_246 = (1'b1 == ap_CS_fsm[ap_const_lv32_24]);
end

always @ (*) begin
    ap_sig_290 = (1'b1 == ap_CS_fsm[ap_const_lv32_19]);
end

always @ (*) begin
    ap_sig_308 = (1'b1 == ap_CS_fsm[ap_const_lv32_27]);
end

always @ (*) begin
    ap_sig_329 = (1'b1 == ap_CS_fsm[ap_const_lv32_28]);
end

always @ (*) begin
    ap_sig_357 = (1'b1 == ap_CS_fsm[ap_const_lv32_8]);
end

always @ (*) begin
    ap_sig_364 = (1'b1 == ap_CS_fsm[ap_const_lv32_20]);
end

always @ (*) begin
    ap_sig_58 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_91 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

always @ (*) begin
    ap_sig_98 = (1'b1 == ap_CS_fsm[ap_const_lv32_1F]);
end

assign dct_coeff_address0 = tmp_22_fu_505_p1;

assign exitcond1_fu_417_p2 = ((k_reg_198 == ap_const_lv5_14) ? 1'b1 : 1'b0);

assign exitcond2_fu_357_p2 = ((x_reg_187 == ap_const_lv8_81) ? 1'b1 : 1'b0);

assign exitcond3_fu_337_p2 = ((j_reg_152 == ap_const_lv5_14) ? 1'b1 : 1'b0);

assign exitcond4_fu_289_p2 = ((frame_reg_141 == ap_const_lv6_31) ? 1'b1 : 1'b0);

assign exitcond_fu_463_p2 = ((n2_reg_233 == ap_const_lv5_14) ? 1'b1 : 1'b0);

assign frame_2_fu_295_p2 = (frame_reg_141 + ap_const_lv6_1);

assign grp_dut_knn_fu_255_ap_start = ap_reg_grp_dut_knn_fu_255_ap_start;

assign j_3_fu_343_p2 = (j_reg_152 + ap_const_lv5_1);

assign j_cast_fu_333_p1 = j_reg_152;

assign k_1_fu_423_p2 = (k_reg_198 + ap_const_lv5_1);

assign melfb_address0 = tmp_15_fu_383_p1;

assign n2_cast4_fu_459_p1 = n2_reg_233;

assign n_fu_469_p2 = (n2_reg_233 + ap_const_lv5_1);

assign next_mul4_fu_475_p2 = (phi_mul3_reg_244 + ap_const_lv10_31);

assign next_mul6_fu_411_p2 = (phi_mul5_reg_209 + ap_const_lv10_31);

assign next_mul_fu_327_p2 = (phi_mul_reg_163 + ap_const_lv10_31);

assign p_s_fu_435_p3 = ((tmp_s_fu_429_p2[0:0] === 1'b1) ? ap_const_lv32_3E64F92E : ap_const_lv32_3EA1E89B);

assign p_shl2_cast_fu_317_p1 = tmp_16_fu_309_p3;

assign p_shl4_fu_443_p3 = {{k_reg_198}, {ap_const_lv4_0}};

assign p_shl5_fu_451_p3 = {{k_reg_198}, {ap_const_lv2_0}};

assign p_shl_fu_349_p3 = {{j_reg_152}, {ap_const_lv7_0}};

assign tmp1_cast_fu_374_p1 = tmp1_fu_369_p2;

assign tmp1_fu_369_p2 = (x_reg_187 + j_cast_reg_544);

assign tmp2_cast_fu_496_p1 = tmp2_fu_491_p2;

assign tmp2_fu_491_p2 = (p_shl5_reg_628 + n2_cast4_fu_459_p1);

assign tmp_14_fu_378_p2 = (p_shl_reg_557 + tmp1_cast_fu_374_p1);

assign tmp_15_fu_383_p1 = tmp_14_fu_378_p2;

assign tmp_16_cast_fu_388_p1 = x_reg_187;

assign tmp_16_fu_309_p3 = {{frame_reg_141}, {ap_const_lv7_0}};

assign tmp_19_fu_321_p2 = (tmp_cast_fu_305_p1 + p_shl2_cast_fu_317_p1);

assign tmp_20_fu_402_p2 = (tmp_cast7_reg_527 + phi_mul_reg_163);

assign tmp_21_fu_500_p2 = (tmp2_cast_fu_496_p1 + p_shl4_reg_623);

assign tmp_22_fu_505_p1 = tmp_21_fu_500_p2;

assign tmp_24_fu_392_p2 = (tmp_19_reg_534 + tmp_16_cast_fu_388_p1);

assign tmp_25_fu_510_p2 = (tmp_cast7_reg_527 + phi_mul5_reg_209);

assign tmp_26_fu_481_p2 = (tmp_cast7_reg_527 + phi_mul3_reg_244);

assign tmp_27_cast_fu_407_p1 = tmp_20_reg_595;

assign tmp_28_cast_fu_397_p1 = tmp_24_fu_392_p2;

assign tmp_30_cast_fu_515_p1 = tmp_25_reg_656;

assign tmp_32_cast_fu_486_p1 = tmp_26_fu_481_p2;

assign tmp_cast7_fu_301_p1 = frame_reg_141;

assign tmp_cast_fu_305_p1 = frame_reg_141;

assign tmp_s_fu_429_p2 = ((k_reg_198 == ap_const_lv5_0) ? 1'b1 : 1'b0);

assign x_1_fu_363_p2 = (x_reg_187 + ap_const_lv8_1);

assign z2_address0 = tmp_28_cast_fu_397_p1;

always @ (posedge ap_clk) begin
    tmp_cast7_reg_527[9:6] <= 4'b0000;
    j_cast_reg_544[7:5] <= 3'b000;
    p_shl_reg_557[6:0] <= 7'b0000000;
    p_s_reg_618[1] <= 1'b1;
    p_s_reg_618[3:3] <= 1'b1;
    p_s_reg_618[6:6] <= 1'b0;
    p_s_reg_618[11:9] <= 3'b100;
    p_s_reg_618[15:13] <= 3'b111;
    p_s_reg_618[17:17] <= 1'b0;
    p_s_reg_618[21:19] <= 3'b100;
    p_s_reg_618[31:24] <= 8'b00111110;
    p_shl4_reg_623[3:0] <= 4'b0000;
    p_shl5_reg_628[1:0] <= 2'b00;
end

endmodule //dut_mel_into_dct
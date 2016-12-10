// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dut_big_mult_v3small_71_24_17_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_return
);

parameter    ap_ST_st1_fsm_0 = 7'b1;
parameter    ap_ST_st2_fsm_1 = 7'b10;
parameter    ap_ST_st3_fsm_2 = 7'b100;
parameter    ap_ST_st4_fsm_3 = 7'b1000;
parameter    ap_ST_st5_fsm_4 = 7'b10000;
parameter    ap_ST_st6_fsm_5 = 7'b100000;
parameter    ap_ST_st7_fsm_6 = 7'b1000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv64_4 = 64'b100;
parameter    ap_const_lv41_66317D2BC0 = 41'b110011000110001011111010010101111000000;
parameter    ap_const_lv3_5 = 3'b101;
parameter    ap_const_lv3_7 = 3'b111;
parameter    ap_const_lv32_11 = 32'b10001;
parameter    ap_const_lv32_28 = 32'b101000;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv7_10 = 7'b10000;
parameter    ap_const_lv7_5E = 7'b1011110;
parameter    ap_const_lv32_5E = 32'b1011110;
parameter    ap_const_lv95_7FFFFFFFFFFFFFFFFFFFFFFF = 95'b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_44 = 32'b1000100;
parameter    ap_const_lv95_0 = 95'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [94:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[94:0] ap_return;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_24;
wire   [2:0] pp_V_address0;
reg    pp_V_ce0;
wire   [39:0] pp_V_q0;
wire   [2:0] i_10_fu_162_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_44;
wire   [63:0] tmp_64_fu_174_p1;
reg   [63:0] tmp_64_reg_429;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_53;
wire   [0:0] exitcond14_fu_168_p2;
wire   [2:0] i_9_fu_190_p2;
reg   [2:0] i_9_reg_444;
wire   [2:0] tmp_s_fu_227_p2;
reg   [2:0] tmp_s_reg_452;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_72;
wire   [0:0] exitcond_fu_221_p2;
wire   [94:0] p_Result_22_fu_396_p2;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_90;
reg   [2:0] pps_V_address0;
reg    pps_V_ce0;
reg    pps_V_we0;
reg   [40:0] pps_V_d0;
wire   [40:0] pps_V_q0;
reg   [2:0] i_reg_110;
wire   [0:0] exitcond13_fu_156_p2;
reg   [2:0] i_1_reg_121;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_121;
reg   [94:0] p_Val2_s_reg_132;
reg   [2:0] i_2_reg_144;
wire   [63:0] tmp_66_fu_185_p1;
wire   [63:0] tmp_70_fu_233_p1;
wire   [40:0] tmp_71_cast_fu_216_p1;
wire   [2:0] tmp_65_fu_179_p2;
wire   [23:0] tmp_fu_196_p4;
wire   [39:0] r_V_4_cast_fu_206_p1;
wire   [39:0] tmp_67_fu_210_p2;
wire   [1:0] tmp_69_fu_238_p1;
wire   [5:0] Li_fu_242_p4;
wire   [6:0] Li_cast1_fu_252_p1;
wire   [6:0] Ui_fu_260_p2;
wire   [16:0] tmp_71_fu_270_p1;
wire   [31:0] Li_cast_fu_256_p1;
wire   [31:0] Ui_1_cast_fu_266_p1;
wire   [6:0] tmp_73_fu_284_p1;
wire   [0:0] tmp_72_fu_278_p2;
wire   [6:0] tmp_74_fu_288_p2;
wire   [6:0] tmp_75_fu_294_p3;
wire   [6:0] tmp_77_fu_310_p3;
wire   [6:0] tmp_76_fu_302_p3;
wire   [6:0] tmp_78_fu_318_p2;
wire   [94:0] loc_V_fu_274_p1;
wire   [94:0] tmp_79_fu_324_p1;
wire   [94:0] tmp_82_fu_336_p2;
reg   [94:0] tmp_83_fu_342_p4;
wire   [94:0] tmp_80_fu_328_p1;
wire   [94:0] tmp_81_fu_332_p1;
wire   [94:0] tmp_85_fu_360_p2;
wire   [94:0] tmp_86_fu_366_p2;
wire   [94:0] p_demorgan_fu_372_p2;
wire   [94:0] tmp_87_fu_378_p2;
wire   [94:0] tmp_84_fu_352_p3;
wire   [94:0] tmp_88_fu_384_p2;
wire   [94:0] tmp_89_fu_390_p2;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_264;
wire   [26:0] tmp_68_fu_402_p1;
wire   [94:0] p_Result_s_fu_406_p5;
reg   [94:0] ap_return_preg;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'b1;
#0 ap_return_preg = 95'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
end

dut_big_mult_v3small_71_24_17_s_pp_V #(
    .DataWidth( 40 ),
    .AddressRange( 5 ),
    .AddressWidth( 3 ))
pp_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(pp_V_address0),
    .ce0(pp_V_ce0),
    .q0(pp_V_q0)
);

dut_big_mult_v3small_71_24_17_s_pps_V #(
    .DataWidth( 41 ),
    .AddressRange( 5 ),
    .AddressWidth( 3 ))
pps_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(pps_V_address0),
    .ce0(pps_V_ce0),
    .we0(pps_V_we0),
    .d0(pps_V_d0),
    .q0(pps_V_q0)
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
        ap_return_preg <= ap_const_lv95_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
            ap_return_preg <= p_Result_s_fu_406_p5;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        i_1_reg_121 <= i_9_reg_444;
    end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond13_fu_156_p2))) begin
        i_1_reg_121 <= ap_const_lv3_1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(exitcond14_fu_168_p2 == 1'b0))) begin
        i_2_reg_144 <= ap_const_lv3_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        i_2_reg_144 <= tmp_s_reg_452;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond13_fu_156_p2))) begin
        i_reg_110 <= i_10_fu_162_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i_reg_110 <= ap_const_lv3_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (exitcond14_fu_168_p2 == 1'b0))) begin
        i_9_reg_444 <= i_9_fu_190_p2;
        tmp_64_reg_429[2 : 0] <= tmp_64_fu_174_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        p_Val2_s_reg_132 <= p_Result_22_fu_396_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        tmp_s_reg_452 <= tmp_s_fu_227_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6))) begin
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
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        ap_return = p_Result_s_fu_406_p5;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (ap_sig_24) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_44) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_53) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_121) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_72) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_90) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_264) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        pp_V_ce0 = 1'b1;
    end else begin
        pp_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        pps_V_address0 = tmp_64_reg_429;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        pps_V_address0 = ap_const_lv64_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == exitcond_fu_221_p2))) begin
        pps_V_address0 = ap_const_lv64_4;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == exitcond_fu_221_p2))) begin
        pps_V_address0 = tmp_70_fu_233_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        pps_V_address0 = tmp_66_fu_185_p1;
    end else begin
        pps_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st3_fsm_2) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == exitcond_fu_221_p2)) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == exitcond_fu_221_p2)) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3))) begin
        pps_V_ce0 = 1'b1;
    end else begin
        pps_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        pps_V_d0 = tmp_71_cast_fu_216_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        pps_V_d0 = ap_const_lv41_66317D2BC0;
    end else begin
        pps_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond13_fu_156_p2)) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3))) begin
        pps_V_we0 = 1'b1;
    end else begin
        pps_V_we0 = 1'b0;
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
            if (~(1'b0 == exitcond13_fu_156_p2)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(exitcond14_fu_168_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st5_fsm_4 : begin
            if (~(1'b0 == exitcond_fu_221_p2)) begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st7_fsm_6 : begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Li_cast1_fu_252_p1 = Li_fu_242_p4;

assign Li_cast_fu_256_p1 = Li_fu_242_p4;

assign Li_fu_242_p4 = {{{tmp_69_fu_238_p1}, {1'b0}}, {i_2_reg_144}};

assign Ui_1_cast_fu_266_p1 = Ui_fu_260_p2;

assign Ui_fu_260_p2 = (ap_const_lv7_10 + Li_cast1_fu_252_p1);

always @ (*) begin
    ap_sig_121 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_24 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_264 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_44 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_53 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_72 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_90 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

assign exitcond13_fu_156_p2 = ((i_reg_110 == ap_const_lv3_5) ? 1'b1 : 1'b0);

assign exitcond14_fu_168_p2 = ((i_1_reg_121 == ap_const_lv3_5) ? 1'b1 : 1'b0);

assign exitcond_fu_221_p2 = ((i_2_reg_144 == ap_const_lv3_4) ? 1'b1 : 1'b0);

assign i_10_fu_162_p2 = (i_reg_110 + ap_const_lv3_1);

assign i_9_fu_190_p2 = (i_1_reg_121 + ap_const_lv3_1);

assign loc_V_fu_274_p1 = tmp_71_fu_270_p1;

assign p_Result_22_fu_396_p2 = (tmp_88_fu_384_p2 | tmp_89_fu_390_p2);

assign p_Result_s_fu_406_p5 = {{tmp_68_fu_402_p1}, {p_Val2_s_reg_132[32'd67 : 32'd0]}};

assign p_demorgan_fu_372_p2 = (tmp_85_fu_360_p2 & tmp_86_fu_366_p2);

assign pp_V_address0 = tmp_64_fu_174_p1;

assign r_V_4_cast_fu_206_p1 = tmp_fu_196_p4;

assign tmp_64_fu_174_p1 = i_1_reg_121;

assign tmp_65_fu_179_p2 = ($signed(i_1_reg_121) + $signed(ap_const_lv3_7));

assign tmp_66_fu_185_p1 = tmp_65_fu_179_p2;

assign tmp_67_fu_210_p2 = (r_V_4_cast_fu_206_p1 + pp_V_q0);

assign tmp_68_fu_402_p1 = pps_V_q0[26:0];

assign tmp_69_fu_238_p1 = i_2_reg_144[1:0];

assign tmp_70_fu_233_p1 = i_2_reg_144;

assign tmp_71_cast_fu_216_p1 = tmp_67_fu_210_p2;

assign tmp_71_fu_270_p1 = pps_V_q0[16:0];

assign tmp_72_fu_278_p2 = ((Li_cast_fu_256_p1 > Ui_1_cast_fu_266_p1) ? 1'b1 : 1'b0);

assign tmp_73_fu_284_p1 = Li_fu_242_p4;

assign tmp_74_fu_288_p2 = ($signed(ap_const_lv7_5E) - $signed(tmp_73_fu_284_p1));

assign tmp_75_fu_294_p3 = ((tmp_72_fu_278_p2[0:0] === 1'b1) ? tmp_73_fu_284_p1 : Ui_fu_260_p2);

assign tmp_76_fu_302_p3 = ((tmp_72_fu_278_p2[0:0] === 1'b1) ? Ui_fu_260_p2 : tmp_73_fu_284_p1);

assign tmp_77_fu_310_p3 = ((tmp_72_fu_278_p2[0:0] === 1'b1) ? tmp_74_fu_288_p2 : tmp_73_fu_284_p1);

assign tmp_78_fu_318_p2 = ($signed(ap_const_lv7_5E) - $signed(tmp_75_fu_294_p3));

assign tmp_79_fu_324_p1 = tmp_77_fu_310_p3;

assign tmp_80_fu_328_p1 = tmp_76_fu_302_p3;

assign tmp_81_fu_332_p1 = tmp_78_fu_318_p2;

assign tmp_82_fu_336_p2 = loc_V_fu_274_p1 << tmp_79_fu_324_p1;

integer ap_tvar_int_0;

always @ (tmp_82_fu_336_p2) begin
    for (ap_tvar_int_0 = 95 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > ap_const_lv32_5E - ap_const_lv32_0) begin
            tmp_83_fu_342_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_83_fu_342_p4[ap_tvar_int_0] = tmp_82_fu_336_p2[ap_const_lv32_5E - ap_tvar_int_0];
        end
    end
end

assign tmp_84_fu_352_p3 = ((tmp_72_fu_278_p2[0:0] === 1'b1) ? tmp_83_fu_342_p4 : tmp_82_fu_336_p2);

assign tmp_85_fu_360_p2 = ap_const_lv95_7FFFFFFFFFFFFFFFFFFFFFFF << tmp_80_fu_328_p1;

assign tmp_86_fu_366_p2 = ap_const_lv95_7FFFFFFFFFFFFFFFFFFFFFFF >> tmp_81_fu_332_p1;

assign tmp_87_fu_378_p2 = (p_demorgan_fu_372_p2 ^ ap_const_lv95_7FFFFFFFFFFFFFFFFFFFFFFF);

assign tmp_88_fu_384_p2 = (p_Val2_s_reg_132 & tmp_87_fu_378_p2);

assign tmp_89_fu_390_p2 = (tmp_84_fu_352_p3 & p_demorgan_fu_372_p2);

assign tmp_fu_196_p4 = {{pps_V_q0[ap_const_lv32_28 : ap_const_lv32_11]}};

assign tmp_s_fu_227_p2 = (i_2_reg_144 + ap_const_lv3_1);

always @ (posedge ap_clk) begin
    tmp_64_reg_429[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end

endmodule //dut_big_mult_v3small_71_24_17_s
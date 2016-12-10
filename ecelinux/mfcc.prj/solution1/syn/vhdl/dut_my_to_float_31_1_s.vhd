-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dut_my_to_float_31_1_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_V : IN STD_LOGIC_VECTOR (30 downto 0);
    prescale : IN STD_LOGIC_VECTOR (8 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of dut_my_to_float_31_1_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_1D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011101";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv8_7F : STD_LOGIC_VECTOR (7 downto 0) := "01111111";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_21 : BOOLEAN;
    signal out_bits_0_V_fu_186_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal out_bits_0_V_reg_426 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_s_fu_210_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_s_reg_431 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_228_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_47 : BOOLEAN;
    signal c_1_1_fu_252_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond_fu_222_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_1_2_fu_260_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_23_fu_268_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_23_reg_454 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_64 : BOOLEAN;
    signal i_1_fu_276_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_1_reg_458 : STD_LOGIC_VECTOR (1 downto 0);
    signal sh_assign_fu_286_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal sh_assign_reg_463 : STD_LOGIC_VECTOR (31 downto 0);
    signal in_shift_V_fu_340_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal in_shift_V_reg_469 : STD_LOGIC_VECTOR (30 downto 0);
    signal shift_2_fu_348_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_81 : BOOLEAN;
    signal c_0_s_reg_80 : STD_LOGIC_VECTOR (31 downto 0);
    signal c_1_s_reg_92 : STD_LOGIC_VECTOR (31 downto 0);
    signal i1_reg_104 : STD_LOGIC_VECTOR (1 downto 0);
    signal in_shift_reg_115 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_16_fu_354_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal shift_reg_125 : STD_LOGIC_VECTOR (31 downto 0);
    signal i2_reg_137 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_Val2_in_phi_fu_151_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal p_Val2_in_reg_148 : STD_LOGIC_VECTOR (30 downto 0);
    signal shift_1_phi_fu_161_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal shift_1_reg_158 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_3_fu_168_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_fu_178_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_22_fu_198_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_s_fu_202_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_24_fu_234_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_bits_V_load_phi_fu_238_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal c_0_fu_244_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_25_fu_282_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal isNeg_fu_294_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_11_fu_302_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_12_fu_316_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sh_assign_2_fu_308_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_14_fu_320_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_15_fu_326_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_27_fu_332_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_28_fu_336_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_30_fu_374_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_13_fu_377_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_31_fu_383_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_17_fu_369_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal phitmp_fu_387_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal out_exp_V_fu_393_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Val2_s_fu_359_p4 : STD_LOGIC_VECTOR (22 downto 0);
    signal p_Result_19_fu_401_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_write_assign_fu_411_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg(0) <= '0';
                ap_return_preg(1) <= '0';
                ap_return_preg(2) <= '0';
                ap_return_preg(3) <= '0';
                ap_return_preg(4) <= '0';
                ap_return_preg(5) <= '0';
                ap_return_preg(6) <= '0';
                ap_return_preg(7) <= '0';
                ap_return_preg(8) <= '0';
                ap_return_preg(9) <= '0';
                ap_return_preg(10) <= '0';
                ap_return_preg(11) <= '0';
                ap_return_preg(12) <= '0';
                ap_return_preg(13) <= '0';
                ap_return_preg(14) <= '0';
                ap_return_preg(15) <= '0';
                ap_return_preg(16) <= '0';
                ap_return_preg(17) <= '0';
                ap_return_preg(18) <= '0';
                ap_return_preg(19) <= '0';
                ap_return_preg(20) <= '0';
                ap_return_preg(21) <= '0';
                ap_return_preg(22) <= '0';
                ap_return_preg(23) <= '0';
                ap_return_preg(24) <= '0';
                ap_return_preg(25) <= '0';
                ap_return_preg(26) <= '0';
                ap_return_preg(27) <= '0';
                ap_return_preg(28) <= '0';
                ap_return_preg(29) <= '0';
                ap_return_preg(30) <= '0';
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and ((ap_const_lv1_0 = tmp_16_fu_354_p2) or not((ap_const_lv1_0 = tmp_23_reg_454))))) then 
                                        ap_return_preg(30 downto 0) <= result_write_assign_fu_411_p1(30 downto 0);
                end if; 
            end if;
        end if;
    end process;


    i1_reg_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond_fu_222_p2 = ap_const_lv1_0))) then 
                i1_reg_104 <= i_fu_228_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i1_reg_104 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    i2_reg_137_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond_fu_222_p2 = ap_const_lv1_0)))) then 
                i2_reg_137 <= ap_const_lv2_0;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = tmp_23_reg_454) and not((ap_const_lv1_0 = tmp_16_fu_354_p2)))) then 
                i2_reg_137 <= i_1_reg_458;
            end if; 
        end if;
    end process;

    in_shift_reg_115_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond_fu_222_p2 = ap_const_lv1_0)))) then 
                in_shift_reg_115 <= in_V;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = tmp_23_reg_454) and not((ap_const_lv1_0 = tmp_16_fu_354_p2)))) then 
                in_shift_reg_115 <= in_shift_V_reg_469;
            end if; 
        end if;
    end process;

    p_Val2_in_reg_148_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = tmp_23_reg_454) and (ap_const_lv1_0 = tmp_16_fu_354_p2))) then 
                p_Val2_in_reg_148 <= in_shift_V_reg_469;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_lv1_0 = tmp_23_fu_268_p3)))) then 
                p_Val2_in_reg_148 <= in_shift_reg_115;
            end if; 
        end if;
    end process;

    shift_1_reg_158_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = tmp_23_reg_454) and (ap_const_lv1_0 = tmp_16_fu_354_p2))) then 
                shift_1_reg_158 <= shift_2_fu_348_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_lv1_0 = tmp_23_fu_268_p3)))) then 
                shift_1_reg_158 <= shift_reg_125;
            end if; 
        end if;
    end process;

    shift_reg_125_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond_fu_222_p2 = ap_const_lv1_0)))) then 
                shift_reg_125 <= ap_const_lv32_0;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = tmp_23_reg_454) and not((ap_const_lv1_0 = tmp_16_fu_354_p2)))) then 
                shift_reg_125 <= shift_2_fu_348_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond_fu_222_p2 = ap_const_lv1_0))) then
                c_0_s_reg_80 <= c_1_1_fu_252_p3;
                c_1_s_reg_92 <= c_1_2_fu_260_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                i_1_reg_458 <= i_1_fu_276_p2;
                tmp_23_reg_454 <= i2_reg_137(1 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = tmp_23_fu_268_p3))) then
                in_shift_V_reg_469 <= in_shift_V_fu_340_p3;
                sh_assign_reg_463 <= sh_assign_fu_286_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then
                out_bits_0_V_reg_426 <= out_bits_0_V_fu_186_p5;
                p_Result_s_reg_431 <= p_Result_s_fu_210_p5;
            end if;
        end if;
    end process;
    ap_return_preg(31) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond_fu_222_p2, tmp_23_reg_454, tmp_16_fu_354_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if ((exitcond_fu_222_p2 = ap_const_lv1_0)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st4_fsm_3 => 
                if (((ap_const_lv1_0 = tmp_16_fu_354_p2) or not((ap_const_lv1_0 = tmp_23_reg_454)))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;

    ap_done_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0, tmp_23_reg_454, ap_sig_cseq_ST_st4_fsm_3, tmp_16_fu_354_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and ((ap_const_lv1_0 = tmp_16_fu_354_p2) or not((ap_const_lv1_0 = tmp_23_reg_454)))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(tmp_23_reg_454, ap_sig_cseq_ST_st4_fsm_3, tmp_16_fu_354_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and ((ap_const_lv1_0 = tmp_16_fu_354_p2) or not((ap_const_lv1_0 = tmp_23_reg_454))))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(tmp_23_reg_454, ap_sig_cseq_ST_st4_fsm_3, tmp_16_fu_354_p2, result_write_assign_fu_411_p1, ap_return_preg)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and ((ap_const_lv1_0 = tmp_16_fu_354_p2) or not((ap_const_lv1_0 = tmp_23_reg_454))))) then 
            ap_return <= result_write_assign_fu_411_p1;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;


    ap_sig_21_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_21 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_47_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_47 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    ap_sig_64_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_64 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_81_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_81 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_21)
    begin
        if (ap_sig_21) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_47)
    begin
        if (ap_sig_47) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_64)
    begin
        if (ap_sig_64) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_81)
    begin
        if (ap_sig_81) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;

    
    c_0_fu_244_p3_proc : process(out_bits_V_load_phi_fu_238_p3)
    begin
        c_0_fu_244_p3 <= std_logic_vector(to_unsigned(32, 32));
        for i in 32 - 1 downto 0 loop
            if out_bits_V_load_phi_fu_238_p3(i) = '1' then
                c_0_fu_244_p3 <= std_logic_vector(to_unsigned(32-1-i,32));
                exit;
            end if;
        end loop;
    end process;

    c_1_1_fu_252_p3 <= 
        c_0_s_reg_80 when (tmp_24_fu_234_p1(0) = '1') else 
        c_0_fu_244_p3;
    c_1_2_fu_260_p3 <= 
        c_0_fu_244_p3 when (tmp_24_fu_234_p1(0) = '1') else 
        c_1_s_reg_92;
    exitcond_fu_222_p2 <= "1" when (i1_reg_104 = ap_const_lv2_2) else "0";
    i_1_fu_276_p2 <= std_logic_vector(unsigned(i2_reg_137) + unsigned(ap_const_lv2_1));
    i_fu_228_p2 <= std_logic_vector(unsigned(i1_reg_104) + unsigned(ap_const_lv2_1));
    in_shift_V_fu_340_p3 <= 
        tmp_27_fu_332_p1 when (isNeg_fu_294_p3(0) = '1') else 
        tmp_28_fu_336_p1;
    isNeg_fu_294_p3 <= sh_assign_fu_286_p3(31 downto 31);
    out_bits_0_V_fu_186_p5 <= (tmp_fu_178_p3 & ap_const_lv32_0(14 downto 0));
    out_bits_V_load_phi_fu_238_p3 <= 
        p_Result_s_reg_431 when (tmp_24_fu_234_p1(0) = '1') else 
        out_bits_0_V_reg_426;
    out_exp_V_fu_393_p3 <= 
        ap_const_lv8_0 when (tmp_17_fu_369_p2(0) = '1') else 
        phitmp_fu_387_p2;
    p_Result_19_fu_401_p4 <= ((ap_const_lv1_0 & out_exp_V_fu_393_p3) & p_Val2_s_fu_359_p4);
    p_Result_3_fu_168_p4 <= in_V(30 downto 15);
    p_Result_s_fu_210_p5 <= (tmp_s_fu_202_p3 & ap_const_lv32_0(15 downto 0));

    p_Val2_in_phi_fu_151_p4_assign_proc : process(tmp_23_reg_454, in_shift_V_reg_469, ap_sig_cseq_ST_st4_fsm_3, tmp_16_fu_354_p2, p_Val2_in_reg_148)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = tmp_23_reg_454) and (ap_const_lv1_0 = tmp_16_fu_354_p2))) then 
            p_Val2_in_phi_fu_151_p4 <= in_shift_V_reg_469;
        else 
            p_Val2_in_phi_fu_151_p4 <= p_Val2_in_reg_148;
        end if; 
    end process;

    p_Val2_s_fu_359_p4 <= p_Val2_in_phi_fu_151_p4(29 downto 7);
    phitmp_fu_387_p2 <= std_logic_vector(unsigned(tmp_13_fu_377_p2) - unsigned(tmp_31_fu_383_p1));
    result_write_assign_fu_411_p1 <= p_Result_19_fu_401_p4;
    sh_assign_2_fu_308_p3 <= 
        tmp_11_fu_302_p2 when (isNeg_fu_294_p3(0) = '1') else 
        sh_assign_fu_286_p3;
    sh_assign_fu_286_p3 <= 
        c_1_s_reg_92 when (tmp_25_fu_282_p1(0) = '1') else 
        c_0_s_reg_80;

    shift_1_phi_fu_161_p4_assign_proc : process(tmp_23_reg_454, shift_2_fu_348_p2, ap_sig_cseq_ST_st4_fsm_3, tmp_16_fu_354_p2, shift_1_reg_158)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = tmp_23_reg_454) and (ap_const_lv1_0 = tmp_16_fu_354_p2))) then 
            shift_1_phi_fu_161_p4 <= shift_2_fu_348_p2;
        else 
            shift_1_phi_fu_161_p4 <= shift_1_reg_158;
        end if; 
    end process;

    shift_2_fu_348_p2 <= std_logic_vector(unsigned(shift_reg_125) + unsigned(sh_assign_reg_463));
    tmp_11_fu_302_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(sh_assign_fu_286_p3));
        tmp_12_fu_316_p1 <= std_logic_vector(resize(signed(in_shift_reg_115),32));

    tmp_13_fu_377_p2 <= std_logic_vector(unsigned(ap_const_lv8_7F) - unsigned(tmp_30_fu_374_p1));
    tmp_14_fu_320_p2 <= std_logic_vector(shift_right(signed(tmp_12_fu_316_p1),to_integer(unsigned('0' & sh_assign_2_fu_308_p3(31-1 downto 0)))));
    tmp_15_fu_326_p2 <= std_logic_vector(shift_left(unsigned(tmp_12_fu_316_p1),to_integer(unsigned('0' & sh_assign_2_fu_308_p3(31-1 downto 0)))));
    tmp_16_fu_354_p2 <= "1" when (sh_assign_reg_463 = ap_const_lv32_10) else "0";
    tmp_17_fu_369_p2 <= "1" when (in_V = ap_const_lv31_0) else "0";
    tmp_22_fu_198_p1 <= in_V(15 - 1 downto 0);
    tmp_23_fu_268_p3 <= i2_reg_137(1 downto 1);
    tmp_24_fu_234_p1 <= i1_reg_104(1 - 1 downto 0);
    tmp_25_fu_282_p1 <= i2_reg_137(1 - 1 downto 0);
    tmp_27_fu_332_p1 <= tmp_14_fu_320_p2(31 - 1 downto 0);
    tmp_28_fu_336_p1 <= tmp_15_fu_326_p2(31 - 1 downto 0);
    tmp_30_fu_374_p1 <= prescale(8 - 1 downto 0);
    tmp_31_fu_383_p1 <= shift_1_phi_fu_161_p4(8 - 1 downto 0);
    tmp_fu_178_p3 <= (p_Result_3_fu_168_p4 & ap_const_lv1_1);
    tmp_s_fu_202_p3 <= (tmp_22_fu_198_p1 & ap_const_lv1_1);
end behav;

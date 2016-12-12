set C_TypeInfoList {{ 
"dut" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"strm_in": [[], {"reference": "0"}] }, {"strm_out": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<ap_uint<32> >", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName dut
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut}
set C_modelType { void 0 }
set C_modelArgList {
	{ strm_in_V_V int 32 regular {fifo 0 volatile }  }
	{ strm_out_V_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "strm_in_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "strm_in.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "strm_out_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "strm_out.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ strm_in_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ strm_in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ strm_in_V_V_read sc_out sc_logic 1 signal 0 } 
	{ strm_out_V_V_din sc_out sc_lv 32 signal 1 } 
	{ strm_out_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ strm_out_V_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "strm_in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "dout" }} , 
 	{ "name": "strm_in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "empty_n" }} , 
 	{ "name": "strm_in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "read" }} , 
 	{ "name": "strm_out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "din" }} , 
 	{ "name": "strm_out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "full_n" }} , 
 	{ "name": "strm_out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"], "CDFG" : "dut", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_in_V_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [
			{"Name" : "strm_in_V_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "strm_out_V_V", "Type" : "Fifo", "Direction" : "O", "BlockSignal" : [
			{"Name" : "strm_out_V_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "melfb", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_mel_into_dct_fu_119", "Port" : "melfb"}]}, 
		{"Name" : "hls_ref_4oPi_table_100_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_mel_into_dct_fu_119", "Port" : "hls_ref_4oPi_table_100_V"}]}, 
		{"Name" : "hls_sin_cos_K0_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_mel_into_dct_fu_119", "Port" : "hls_sin_cos_K0_V"}]}, 
		{"Name" : "hls_sin_cos_K1_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_mel_into_dct_fu_119", "Port" : "hls_sin_cos_K1_V"}]}, 
		{"Name" : "hls_sin_cos_K2_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_mel_into_dct_fu_119", "Port" : "hls_sin_cos_K2_V"}]}, 
		{"Name" : "training_data_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_mel_into_dct_fu_119", "Port" : "training_data_V"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_mel_into_dct_fu_119"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.stage1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119", "Parent" : "0", "Child" : ["3", "4", "5", "6", "19", "30", "31", "32", "33", "34"], "CDFG" : "dut_mel_into_dct", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "z2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "melfb", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "hls_ref_4oPi_table_100_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_sinf_or_cosf_fu_249", "Port" : "hls_ref_4oPi_table_100_V"}]}, 
		{"Name" : "hls_sin_cos_K0_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_sinf_or_cosf_fu_249", "Port" : "hls_sin_cos_K0_V"}]}, 
		{"Name" : "hls_sin_cos_K1_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_sinf_or_cosf_fu_249", "Port" : "hls_sin_cos_K1_V"}]}, 
		{"Name" : "hls_sin_cos_K2_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_sinf_or_cosf_fu_249", "Port" : "hls_sin_cos_K2_V"}]}, 
		{"Name" : "training_data_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_knn_fu_262", "Port" : "training_data_V"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st73_fsm_72", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_sinf_or_cosf_fu_249"},
		{"State" : "ap_ST_st86_fsm_85", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_knn_fu_262"}],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.melfb_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.z_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.X_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_sinf_or_cosf_fu_249", "Parent" : "2", "Child" : ["7", "8", "9", "10", "11", "15", "16", "17", "18"], "CDFG" : "dut_sinf_or_cosf", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "t_in", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "hls_ref_4oPi_table_100_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "hls_sin_cos_K0_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "hls_sin_cos_K1_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "hls_sin_cos_K2_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st3_fsm_2", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_big_mult_v3small_71_24_17_s_fu_309"},
		{"State" : "ap_ST_st15_fsm_14", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_my_to_float_31_1_s_fu_315"}],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_sinf_or_cosf_fu_249.hls_ref_4oPi_table_100_V_U", "Parent" : "6", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_sinf_or_cosf_fu_249.hls_sin_cos_K0_V_U", "Parent" : "6", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_sinf_or_cosf_fu_249.hls_sin_cos_K1_V_U", "Parent" : "6", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_sinf_or_cosf_fu_249.hls_sin_cos_K2_V_U", "Parent" : "6", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_sinf_or_cosf_fu_249.grp_dut_big_mult_v3small_71_24_17_s_fu_309", "Parent" : "6", "Child" : ["12", "13", "14"], "CDFG" : "dut_big_mult_v3small_71_24_17_s", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_sinf_or_cosf_fu_249.grp_dut_big_mult_v3small_71_24_17_s_fu_309.pp_V_U", "Parent" : "11", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_sinf_or_cosf_fu_249.grp_dut_big_mult_v3small_71_24_17_s_fu_309.pps_V_U", "Parent" : "11", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_sinf_or_cosf_fu_249.grp_dut_big_mult_v3small_71_24_17_s_fu_309.dut_mul_41s_24ns_41_4_U1", "Parent" : "11", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_sinf_or_cosf_fu_249.grp_dut_my_to_float_31_1_s_fu_315", "Parent" : "6", "Child" : [], "CDFG" : "dut_my_to_float_31_1_s", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "prescale", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_sinf_or_cosf_fu_249.dut_mul_32s_31ns_62_6_U7", "Parent" : "6", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_sinf_or_cosf_fu_249.dut_mul_mul_17ns_15s_32_1_U8", "Parent" : "6", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_sinf_or_cosf_fu_249.dut_mul_mul_23s_17ns_40_1_U9", "Parent" : "6", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_knn_fu_262", "Parent" : "2", "Child" : ["20", "21", "22", "23", "24", "25", "26", "27", "28", "29"], "CDFG" : "dut_knn", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "training_data_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_knn_fu_262.training_data_V_U", "Parent" : "19", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_knn_fu_262.training_data2_U", "Parent" : "19", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_knn_fu_262.training_instance_U", "Parent" : "19", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_knn_fu_262.min_distance_U", "Parent" : "19", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_knn_fu_262.distance_U", "Parent" : "19", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_knn_fu_262.group_U", "Parent" : "19", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_knn_fu_262.dut_fsub_32ns_32ns_32_5_full_dsp_U15", "Parent" : "19", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_knn_fu_262.dut_uitofp_32ns_32_6_U16", "Parent" : "19", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_knn_fu_262.dut_sitofp_32ns_32_6_U17", "Parent" : "19", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.grp_dut_knn_fu_262.dut_fcmp_32ns_32ns_1_1_U18", "Parent" : "19", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.dut_fadd_32ns_32ns_32_5_full_dsp_U25", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.dut_fmul_32ns_32ns_32_4_max_dsp_U26", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.dut_fdiv_32ns_32ns_32_16_U27", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.dut_sitofp_32ns_32_6_U28", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_mel_into_dct_fu_119.dut_flog_32ns_32ns_32_13_full_dsp_U29", "Parent" : "2", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3852047", "Max" : "3930727"}
	, {"Name" : "Interval", "Min" : "3852048", "Max" : "3930728"}
]}

set Spec2ImplPortList { 
	strm_in_V_V { ap_fifo {  { strm_in_V_V_dout fifo_data 0 32 }  { strm_in_V_V_empty_n fifo_status 0 1 }  { strm_in_V_V_read fifo_update 1 1 } } }
	strm_out_V_V { ap_fifo {  { strm_out_V_V_din fifo_data 1 32 }  { strm_out_V_V_full_n fifo_status 0 1 }  { strm_out_V_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	strm_in_V_V { fifo_read 258 no_conditional }
	strm_out_V_V { fifo_write 2 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

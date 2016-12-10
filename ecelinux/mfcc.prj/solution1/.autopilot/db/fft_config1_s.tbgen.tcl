set moduleName fft_config1_s
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {fft<config1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ xn int 64 regular {array 256 { } 0 1 }  }
	{ xk int 64 regular {array 256 { } 0 1 }  }
	{ status_data_V int 8 regular {fifo 1}  }
	{ config_ch_data_V int 16 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "xn", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "xk", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "status_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "config_ch_data_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ xn_address0 sc_out sc_lv 8 signal 0 } 
	{ xn_ce0 sc_out sc_logic 1 signal 0 } 
	{ xn_we0 sc_out sc_logic 1 signal 0 } 
	{ xn_d0 sc_out sc_lv 64 signal 0 } 
	{ xn_q0 sc_in sc_lv 64 signal 0 } 
	{ xn_address1 sc_out sc_lv 8 signal 0 } 
	{ xn_ce1 sc_out sc_logic 1 signal 0 } 
	{ xn_we1 sc_out sc_logic 1 signal 0 } 
	{ xn_d1 sc_out sc_lv 64 signal 0 } 
	{ xn_q1 sc_in sc_lv 64 signal 0 } 
	{ xk_address0 sc_out sc_lv 8 signal 1 } 
	{ xk_ce0 sc_out sc_logic 1 signal 1 } 
	{ xk_we0 sc_out sc_logic 1 signal 1 } 
	{ xk_d0 sc_out sc_lv 64 signal 1 } 
	{ xk_q0 sc_in sc_lv 64 signal 1 } 
	{ xk_address1 sc_out sc_lv 8 signal 1 } 
	{ xk_ce1 sc_out sc_logic 1 signal 1 } 
	{ xk_we1 sc_out sc_logic 1 signal 1 } 
	{ xk_d1 sc_out sc_lv 64 signal 1 } 
	{ xk_q1 sc_in sc_lv 64 signal 1 } 
	{ status_data_V_din sc_out sc_lv 8 signal 2 } 
	{ status_data_V_full_n sc_in sc_logic 1 signal 2 } 
	{ status_data_V_write sc_out sc_logic 1 signal 2 } 
	{ config_ch_data_V_dout sc_in sc_lv 16 signal 3 } 
	{ config_ch_data_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ config_ch_data_V_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "xn_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xn", "role": "address0" }} , 
 	{ "name": "xn_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xn", "role": "ce0" }} , 
 	{ "name": "xn_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xn", "role": "we0" }} , 
 	{ "name": "xn_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xn", "role": "d0" }} , 
 	{ "name": "xn_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xn", "role": "q0" }} , 
 	{ "name": "xn_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xn", "role": "address1" }} , 
 	{ "name": "xn_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xn", "role": "ce1" }} , 
 	{ "name": "xn_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xn", "role": "we1" }} , 
 	{ "name": "xn_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xn", "role": "d1" }} , 
 	{ "name": "xn_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xn", "role": "q1" }} , 
 	{ "name": "xk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xk", "role": "address0" }} , 
 	{ "name": "xk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xk", "role": "ce0" }} , 
 	{ "name": "xk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xk", "role": "we0" }} , 
 	{ "name": "xk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xk", "role": "d0" }} , 
 	{ "name": "xk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xk", "role": "q0" }} , 
 	{ "name": "xk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xk", "role": "address1" }} , 
 	{ "name": "xk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xk", "role": "ce1" }} , 
 	{ "name": "xk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xk", "role": "we1" }} , 
 	{ "name": "xk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xk", "role": "d1" }} , 
 	{ "name": "xk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xk", "role": "q1" }} , 
 	{ "name": "status_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "status_data_V", "role": "din" }} , 
 	{ "name": "status_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "status_data_V", "role": "full_n" }} , 
 	{ "name": "status_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "status_data_V", "role": "write" }} , 
 	{ "name": "config_ch_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "config_ch_data_V", "role": "dout" }} , 
 	{ "name": "config_ch_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config_ch_data_V", "role": "empty_n" }} , 
 	{ "name": "config_ch_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config_ch_data_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : [], "CDFG" : "fft_config1_s", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "xn", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "xk", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "874", "Max" : "874"}
	, {"Name" : "Interval", "Min" : "874", "Max" : "874"}
]}

set Spec2ImplPortList { 
	xn { ap_memory {  { xn_address0 mem_address 1 8 }  { xn_ce0 mem_ce 1 1 }  { xn_we0 mem_we 1 1 }  { xn_d0 mem_din 1 64 }  { xn_q0 mem_dout 0 64 }  { xn_address1 mem_address 1 8 }  { xn_ce1 mem_ce 1 1 }  { xn_we1 mem_we 1 1 }  { xn_d1 mem_din 1 64 }  { xn_q1 mem_dout 0 64 } } }
	xk { ap_memory {  { xk_address0 mem_address 1 8 }  { xk_ce0 mem_ce 1 1 }  { xk_we0 mem_we 1 1 }  { xk_d0 mem_din 1 64 }  { xk_q0 mem_dout 0 64 }  { xk_address1 mem_address 1 8 }  { xk_ce1 mem_ce 1 1 }  { xk_we1 mem_we 1 1 }  { xk_d1 mem_din 1 64 }  { xk_q1 mem_dout 0 64 } } }
	status_data_V { ap_fifo {  { status_data_V_din fifo_data 1 8 }  { status_data_V_full_n fifo_status 0 1 }  { status_data_V_write fifo_update 1 1 } } }
	config_ch_data_V { ap_fifo {  { config_ch_data_V_dout fifo_data 0 16 }  { config_ch_data_V_empty_n fifo_status 0 1 }  { config_ch_data_V_read fifo_update 1 1 } } }
}

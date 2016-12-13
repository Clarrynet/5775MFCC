#=============================================================================
# run_base.tcl 
#=============================================================================
# @brief: A Tcl script for synthesizing the baseline mfcc design.

# Project name
set hls_prj mfcc.prj

# Open/reset the project
open_project ${hls_prj} -reset

# Top function of the design is "dut"
set_top dut

# Add design and testbench files
add_files mfcc.cpp
#add_files fft_top.cpp
add_files -tb mfcc_test.cpp
add_files -tb data
add_files fft.cpp

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

### You can insert your own directives here ###
set_directive_inline -off mfcc_fft
set_directive_inline -off knn
set_directive_inline -off fft
config_dataflow -default_channel fifo -fifo_depth 1
############################################

# Simulate the C++ design
csim_design
# Synthesize the design
csynth_design
# Co-simulate the design
#cosim_design
exit

#==========================================================================
# Makefile
#==========================================================================
# @brief: A makefile the compiles and runs the digitrec program
#
# @desc: 1. Enter "make" to compile & execute the digitrec program
#        2. Enter "make clean" to clean up the directory (before submission)


# Extract Vivado HLS include path
VHLS_PATH := $(dir $(shell which vivado_hls))/..
VHLS_INC ?= ${VHLS_PATH}/include

# Specify compilation flags
CFLAGS = -g -I${VHLS_INC} -DK_CONST=3  -L/opt/xilinx/xilinx_2016.2/Vivado_HLS/2016.2/lnx64/tools/fpo_v7_0 -lIp_floating_point_v7_0_bitacc_cmodel -Wl,-rpath,/opt/xilinx/xilinx_2016.2/Vivado_HLS/2016.2/lnx64/tools/fpo_v7_0

# Compile & run mfcc implementation
all: mfcc.cpp mfcc_test.cpp fft.cpp 
	@echo "Compiling & executing the mfcc program ..."
	g++ ${CFLAGS} mfcc.cpp mfcc_test.cpp fft.cpp -o final
	./final

# Clean up the directory before submission
clean:
	@echo "Clean up output files"
	rm -rf final vivado_hls.log mfcc.prj result out.dat *~

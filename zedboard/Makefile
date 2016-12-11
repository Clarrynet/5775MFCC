#==========================================================================
# Makefile
#==========================================================================
# @brief: A makefile the compiles and runs the digitrec program
#
# @desc: 1. "make" or "make sw" runs software execution by default
#        2. "make fpga" invokes the HW accelerator
#        3. "make clean" cleans up the directory


INC_PATH=/usr/include/vivado_hls/2015.2
CFLAGS = -I${INC_PATH} -L/opt/xilinx/xilinx_2016.2/Vivado_HLS/2016.2/lnx64/tools/fft_v9_0 -lIp_xfft_v9_0_bitacc_cmodel -Wl,-rpath,/opt/xilinx/xilinx_2016.2/Vivado_HLS/2016.2/lnx64/tools/fft_v9_0

all: sw

sw: mfcc.cpp mfcc_test.cpp
	@echo "Compiling & executing mfcc software program on ARM ..."
	g++ ${CFLAGS} mfcc.cpp mfcc_test.cpp -o mfcc-arm
	./mfcc-arm

fpga: host.cpp
	@echo "Compiling host program & running digitrec accelerator ..."
	g++ ${CFLAGS} host.cpp -o mfcc-fpga
	./mfcc-fpga

# Clean up the directory before submission
clean:
	@echo "Clean up output files"
	rm -rf mfcc-sw vivado_hls.log *.prj result out.dat *~
	rm -rf mfcc-fpga

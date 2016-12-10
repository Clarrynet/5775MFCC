//===========================================================================
// mfcc.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef MFCC_H
#define MFCC_H

#include<hls_stream.h>


#include "typedefs.h"
#include "training_data.h"



// The K_CONST value: number of nearest neighbors
#ifndef K_CONST
#define K_CONST 3
#endif

// Top function for digit recognition
int mfcc(  const float  sound_file[12544]);

int mfcc_wrapper( );

int knn(float input[20][49]);

void dut(    hls::stream<bit32_t> &strm_in,    hls::stream<bit32_t> &strm_out);

#endif

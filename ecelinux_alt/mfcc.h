//===========================================================================
// mfcc.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef MFCC_H
#define MFCC_H

#include<hls_stream.h>

#include<cmath>
#include "typedefs.h"
#include "training_data.h"

typedef union {
  int i;
  float f;
 }u;

// The K_CONST value: number of nearest neighbors
#ifndef K_CONST
#define K_CONST 3
#endif

// Top function for digit recognition
void mfcc_fft(  const float  sound_file[12544], float output[49][129]);

int knn(float input[20][49]);

void dut(    hls::stream<bit32_t> &strm_in,    hls::stream<bit32_t> &strm_out);

int mel_into_dct(float z2[49][129]);

#endif

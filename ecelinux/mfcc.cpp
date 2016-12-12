//==========================================================================
//mfcc.cpp
//==========================================================================
// @brief: A k-nearest-neighbors implementation for digit recognition

#include "mfcc.h"
#include "fft_top.h"

//----------------------------------------------------------
// Top function
//----------------------------------------------------------
// @param[in] : input - the testing instance
// @return : the recognized digit (0~9)


using namespace std;

void dut( hls::stream<bit32_t> &strm_in, hls::stream<bit32_t> &strm_out ){
  float stage1[49][129];
  bit64_t in_digit;
  for(int i =0; i<49; i++){
    for(int j =0; j<129; j++){
      bit32_t input_lo = strm_in.read();
      bit32_t input_hi = strm_in.read(); 
      in_digit(31, 0) = input_lo;
      in_digit(63, 32) = input_hi;
      u dat;
      dat.i = in_digit;
      stage1[i][j] = dat.f;
    }
  }
  int output = mel_into_dct(stage1);
  strm_out.write( output );
  strm_out.write( 1 );
}

void mfcc_fft(const float sound_file[12544], float output[49][129]) 
{ 
  //THIS IS THE FREQUENCY OF THE INPUT SAMPLE
  //MAY HAVE TO SET THIS
  int fs = 11025;
  const int m = 100;
  const int n = 256;
  const int melfb_h = 20;
  const int melfb_w = 129;
  const int nbFrame = 49;
  int l = 32768;  //length of input data

  static cmpxDataIn xn_input[nbFrame][256];
  static cmpxDataOut xk_output[nbFrame][256];

  //split the incoming audio into  nbFrame # of frames 
  //each frame has 256 data points
  
  float M[n][nbFrame];
  //Multiply each by a hamming coeff
  for (int i = 0; i<n; i++){
    for (int j = 0; j< nbFrame; j++){
      M[i][j] = sound_file[((j*m) +i)]*hamming[i];
    }
  }
 
  //Fill each FFT array 
  for (int i = 0; i<n; i++){
    for (int j = 0; j<nbFrame; j++){
      xn_input[j][i] = cmpxDataIn((double)M[i][j], (double)0);
    }
  }

  //Run the FFT for each frame
  bool ovflo;
  int direction =0;
  cmpxDataIn xn[n];
  cmpxDataOut xk[n];
   
  //#pragma HLS dataflow
  config_t fft_config;
  status_t fft_status;


  for (int i =0; i<nbFrame; i++){
  fft_config.setDir(direction);
  fft_config.setSch(0x2AB);
    for (int j=0; j< n; j++)
      xn[j] = xn_input[i][j];
  #pragma HLS interface ap_hs port=direction
  #pragma HLS interface ap_fifo depth=1 port=ovflo
  #pragma HLS interface ap_fifo depth=FFT_LENGTH port=xn,xk
  #pragma HLS interface ap_fifo port = fft_config
  #pragma HLS data_pack variable=xn
  #pragma HLS data_pack variable=xk
    
    hls::fft<config1>(xn, xk, &fft_status, &fft_config);
    for (int j=0; j< n; j++)
      xk_output[i][j] = xk[j];
  }

  //OuterLoop: once per frame
  for (int frame =0; frame<nbFrame; frame++){
    for (int i = 0; i<129; i++){
       output[frame][i] = ((xk_output[frame][i].real()*xk_output[frame][i].real()) + (xk_output[frame][i].imag()*xk_output[frame][i].imag()));    
    }
  }
}


int mel_into_dct(float z2[49][129]){ 


  int fs = 11025;
  const int m = 100;
  const int n = 256;
  const int melfb_h = 20;
  const int melfb_w = 129;
  const int nbFrame = 49;
  int l = 32768;  //length of input data

  //Coefficient (melfb) Multiplication  
  float z[melfb_h][nbFrame];
  //X is the output (MFCC)
  float X[20][nbFrame];


  for (int frame =0; frame<nbFrame; frame++){ 
    for (int j = 0; j<melfb_h; j++){
      float sum = 0;
      for (int x = 0; x<melfb_w; x++){
         sum += melfb[x+ (j*melfb_w) ]*z2[frame][x];
      }
      z[j][frame] = log(sum);  
    }  
  
    //Discrete Cosine Transform
    for (int k = 0; k < melfb_h; ++k) {
      float sum = 0;
      float s = sqrt(2.0f/20.0f);
      if (k == 0){
        s = sqrt(1.0f/20.0f);
      }
      for (int n = 0; n < 20; ++n) {
        sum += z[n][frame] * cos(3.141592f * ((2.0f*(float)n)+1)*((float)k) /40.0f );
      }
      X[k][frame] = s * sum;
    }
  }
/*
//Print the MFCC Coeffs
  for (int i = 0; i< 20; i++){
    for (int j = 0; j< 5; j++){
      printf("%f ", X[i][j]);
    }
    printf("\n");   
  }
*/
  int output = knn(X);
  return(output);
}


// KNN FUNCTION
int knn( float input[20][49] ){
  //#include "training_data.h"
  float training_data2[14][49*20+1];
  float training_instance[20][49*14];
  float sigma=0.2f;
  int min_distance[20];
  int distance[14];
  int group_final;
  int group_one, group_zero;
  int group[20];
  for ( int j = 0; j < 14; j++ ){ 
    for ( int i = 0; i < 20; i++ ){
      for ( int k = 0; k < 49; k++ ){    
        training_data2[j][i*k]=training_data[i*50+j*1000+k];
      }
    }
    training_data2[j][49*20] = j/7;
  }
  for ( int i = 0; i < 20; i++ ){
    for ( int j = 0; j < 14; j++ ){
      for ( int k = 0; k < 49; k++ ){
        training_instance[i][j*k] = training_data2[j][i*k];
      }
    }        
  }
  for ( int i = 0; i < 20; i++ ){
    for ( int j = 0; j < 14; j++ ){
      for ( int k = 0; k < 49; k++ ){
        if (abs(input[i][k]-training_instance[i][j*k])<sigma){
          distance[j]++;
        }
      }
      if (distance[j]<min_distance[i]){
        min_distance[i]=distance[j];
        group[i]=training_data2[j][49*20];
      }
    }
    if (group[i]==0)
      group_zero++;
    else
      group_one++;
  }
  if (group_zero>group_one)
    group_final=0;
  else
    group_final=1;
  return group_final;
}

// XSIP watermark, do not delete 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

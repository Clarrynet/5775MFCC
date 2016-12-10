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
int mfcc_wrapper(){
  const int n = 256;
  const int m = 100;
  const int nbFrame = 49;
  //split the incoming audio into  nbFrame # of frames 
  //each frame has 256 data points  
 
  float M[nbFrame][n];
  for (int i = 0; i<n; i++){
    for (int j = 0; j< nbFrame; j++){
      M[j][i] = input_data_alt[((j*m) +i)]*hamming[i];
    }
  }

  int knn_set[nbFrame];
  int group_one, group_zero, group_final;
  for(int i =0; i<nbFrame; i++){
  if (mfcc(M[i])==0)
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
int mfcc(float M[256]){ 
  //THIS IS THE FREQUENCY OF THE INPUT SAMPLE
  //MAY HAVE TO SET THIS
  int fs = 11025;
  const int m = 100;
  const int n = 256;
  const int melfb_h = 20;
  const int melfb_w = 129;
  const int nbFrame = 49;
  int l = 32768;  //length of input data

  static cmpxDataIn xn_input[256];
  static cmpxDataOut xk_output[256];


  
  //Fill each FFT array 
  for (int i = 0; i<n; i++){
    //for (int j = 0; j<nbFrame; j++){
      xn_input[i] = cmpxDataIn((double)M[i], (double)0);
    //}
  }

  //Run the FFT for each frame
  bool ovflo;
  int direction =0;
  //for (int i =0; i<nbFrame; i++){
    fft_top(direction, xn_input, xk_output, &ovflo);
 // }     
  //Coefficient (melfb) Multiplication  
  float z[melfb_h];
  float z2[129];
  //X is the output (MFCC)
  float X[20];

  //OuterLoop: once per frame
 // for (int frame =0; frame<nbFrame; frame++){
    for (int i = 0; i<129; i++){
       z2[i] = ((xk_output[i].real()*xk_output[i].real()) + (xk_output[i].imag()*xk_output[i].imag()));    
    }
    
    for (int j = 0; j<nbFrame; j++){
      float sum = 0;
      for (int x = 0; x<melfb_w; x++){
         sum += melfb[x+ (j*melfb_w) ]*z2[x];
      }
      z[j] = log(sum);  
    }  
  
    //Discrete Cosine Transform
    for (int k = 0; k < melfb_h; ++k) {
      float sum = 0;
      float s = sqrt(2.0f/20.0f);
      if (k == 0){
        s = sqrt(1.0f/20.0f);
      }
      for (int n = 0; n < 20; ++n) {
        sum += z[n] * cos(3.141592f * ((2.0f*(float)n)+1)*((float)k) /40.0f );
      }
      X[k] = s * sum;
    }
//  }

//Print the MFCC Coeffs
  for (int i = 0; i< 20; i++){
    //for (int j = 0; j< 5; j++){
      //printf("%f ", X[i]);
    //}
    //printf("\n");   
  }
  int output = knn(X);
  printf("%d ", output);
  return(output);
}


// KNN FUNCTION
int knn( float input[20] ) 
{
  //#include "training_data.h"
  float training_data2[14][49*20+1];
  float training_instance[20][49*14];
  float sigma=0.2f;
  int min_distance[20];
  int distance[14];
  int group_final;
  int group_one, group_zero;
  int group[20];
  group_one =0;
  group_zero =0;
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
        if (abs(input[i]-training_instance[i][j*k])<sigma){
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
    printf("%d ", group[i]);
    printf("%d ", group_zero);
    printf("%d ", group_one);
    printf("\n");
  }
  if (group_zero>group_one)
    group_final=0;
  else
    group_final=1;
  return group_final;
  }

// XSIP watermark, do not delete 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

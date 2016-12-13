    #ifndef __FFT_H__  
    #define __FFT_H__  
     
    #include "math.h"
    #include <iostream>
    #include <stdio.h>
    
    using namespace std;

    typedef pair<float, float> complex;
   
   /* typedef struct complex   
    {  
      float real;        
      float imag;       
    }complex;  */
      
    #define PI 3.1415926535897932384626433832795028841971  
    
    #define NPT 256
      
    ///////////////////////////////////////////  
    void conjugate_complex(complex in[],complex out[]);  
    void c_plus(complex a,complex b,complex *c);
    void c_mul(complex a,complex b,complex *c) ;
    void c_sub(complex a,complex b,complex *c);  
    void c_div(complex a,complex b,complex *c);  
    void fft(complex f[]);
    void ifft(complex f[]); 
    void c_abs(complex f[],float out[]);
    ////////////////////////////////////////////  
    #endif  

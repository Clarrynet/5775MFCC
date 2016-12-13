    #include "math.h" 
    #include "fft.h" 
    #include <hls_math.h>

    using namespace std;

    #define NPT 256

    void conjugate_complex(complex in[NPT],complex out[NPT])  
    {  
      int i = 0;  
      for(i=0;i<NPT;i++)  
      {  
        out[i].second = -in[i].second;  
        out[i].first = in[i].first;  
      }   
    }  
      
    void c_abs(complex f[NPT],float out[NPT])  
    {  
      int i = 0;  
      float t;  
      for(i=0;i<NPT;i++)  
      {  
        t = f[i].first * f[i].first + f[i].second * f[i].second;  
        out[i] = sqrt(t);  
      }   
    }  
      
      
    void c_plus(complex a,complex b,complex *c)  
    {  
      c->first = a.first + b.first;  
      c->second = a.second + b.second;  
    }  
      
    void c_sub(complex a,complex b,complex *c)  
    {  
      c->first = a.first - b.first;  
      c->second = a.second - b.second;   
    }  
      
    void c_mul(complex a,complex b,complex *c)  
    {  
      c->first = a.first * b.first - a.second * b.second;  
      c->second = a.first * b.second + a.second * b.first;     
    }  
      
    void c_div(complex a,complex b,complex *c)  
    {  
      c->first = (a.first * b.first + a.second * b.second)/(b.first * b.first +b.second * b.second);  
      c->second = (a.second * b.first - a.first * b.second)/(b.first * b.first +b.second * b.second);  
    }  
      
    #define SWAP(a,b)  tempr=(a);(a)=(b);(b)=tempr  
      
    void Wn_i(int i,complex *Wn,char flag)  
    {  
      Wn->first = hls::cosf(2*PI*i/NPT);  
      if(flag == 1)  
      Wn->second = -hls::sinf(2*PI*i/NPT);  
      else if(flag == 0)  
      Wn->second = -hls::sinf(2*PI*i/NPT);  
    }  
      
    
    void fft(complex f[NPT])  
    {  
      complex t,wn;
      int i,j,k,m,n,l,r,M;  
      int la,lb,lc;  
 
      for(i=NPT,M=1;(i=i/2)!=1;M++);   
 
      for(i=1,j=NPT/2;i<=NPT-2;i++)  
      {  
        if(i<j)  
        {  
          t=f[j];  
          f[j]=f[i];  
          f[i]=t;  
        }  
        k=NPT/2;  
        while(k<=j)  
        {  
          j=j-k;  
          k=k/2;  
        }  
        j=j+k;  
      }  
      
    
      for(m=1;m<=M;m++)  
      {  
        la=1<<m;          
        lb=la/2;     
                    
        
        for(l=1;l<=lb;l++)  
        {  
          r=(l-1)*(1<<(M-m));        
          for(n=l-1;n<NPT-1;n=n+la)  
          {  
            lc=n+lb;        
            //Wn_i(r,&wn,1);//wn=Wnr 
           // wn.first = 1;
            //wn.second = 1;
            wn.first = hls::cosf(2*PI*i/NPT);   
            wn.second = -hls::sinf(2*PI*i/NPT);    
            c_mul(f[lc],wn,&t);//t = f[lc] * wn
            c_sub(f[n],t,&(f[lc]));//f[lc] = f[n] - f[lc] * Wnr  
            c_plus(f[n],t,&(f[n]));//f[n] = f[n] + f[lc] * Wnr  
          }  
        }  
      }  
    }  
      
 
    void ifft(complex f[NPT])  
    {  
      int i=0;  
      conjugate_complex(f,f);  
      fft(f);  
      conjugate_complex(f,f);  
      for(i=0;i<NPT;i++)  
      {  
        f[i].second = (f[i].second)/NPT;  
        f[i].first = (f[i].first)/NPT;  
      }  
    }  



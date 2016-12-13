#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>
#include<math.h>
#include<assert.h>

#include<iostream>
#include<fstream>
#include "mfcc.h"
#include "typedefs.h"
#include "timer.h"

//------------------------------------------------------------------------
// Helper function for hex to int conversion
//------------------------------------------------------------------------
int64_t hexstring_to_int64 (std::string h) {
  int64_t x = 0;
  for (int i = 0; i < h.length(); ++i) {
    char c = h[i];
    int k = (c > '9') ? toupper(c)-'A'+10 : c - '0';
    x = x*16 + k;
  }
  return x;
}

//--------------------------------------
// main function
//--------------------------------------
int main(int argc, char** argv)
{
  // Open channels to the FPGA board.
  // These channels appear as files to the Linux OS
  int fdr = open("/dev/xillybus_read_32", O_RDONLY);
  int fdw = open("/dev/xillybus_write_32", O_WRONLY);

  // Check that the channels are correctly opened
  if ((fdr < 0) || (fdw < 0)) {
    fprintf (stderr, "Failed to open Xillybus device channels\n");
    exit(-1);
  }
  
  // Read input file for the testing set
  std::string line;
  std::ifstream myfile ("data/fake_testing_set.dat");

  // HLS streams for communicating with the cordic block
  hls::stream<bit32_t> mfcc_in;
  hls::stream<bit32_t> mfcc_out;

  //Store input from sound file
  const int N = 1;
  const int M = 12544;
  bit64_t inputs[M];
  
  // Timer
  Timer timer("mfcc FPGA");
  
  int nbytes;
  int error = 0;
  int num_test_insts = 0;
  bit32_t interpreted_digit;
  int actuals[2];
  int expecteds[2];
if ( myfile.is_open() ) {
    int error = 0;
    int num_test_insts = 0;
    
    while ( std::getline( myfile, line) ) {
      // Read handwritten digit input and expected digit    
      digit input_digit =
          strtoul( line.substr(0, line.find(",")).c_str(), NULL, 16);
      int input_value = 
          strtoul(line.substr(line.find(",") + 1,
                              line.length()).c_str(), NULL, 10);
    
    timer.start();

    //--------------------------------------------------------------------
    // Add your code here to communicate with the hardware module
    //--------------------------------------------------------------------
    for (int i = 0; i < M; ++i) {
       // for(int i =0; i<49; i++){
        //  for(int j =0; j<129; j++){
            //myfile << (stage1[i][j]);
            //myfile << "\n";
            
            u dat;
            dat.f = input_data[M];
            inputs[i] = dat.i;
            bit64_t input_i;
            input_i(inputs[i].length()-1,0) = inputs[i](inputs[i].length()-1,0);
            int64_t input = input_i;     
            //write words to device
            nbytes = write (fdw, (void*)&input, sizeof(input));
            assert (nbytes == sizeof(input));
         // }
       // }   
    }   
    for (int i = 0; i < N; ++i) {
      // Receive bytes through the read channel
      // and assert that the right number of bytes were recieved
      int d_out;
      nbytes = read (fdr, (void*)&d_out, sizeof(d_out));
      assert (nbytes == sizeof(d_out));
      actuals[i] = d_out;
    }
    timer.stop();
    //check error
    for (int i = 0; i < N; ++i) {
      interpreted_digit = actuals[i];   
      if(interpreted_digit != expecteds[i]){
        error +=1;
	  }
	  num_test_insts +=1;
    }

    std::cout << "#" << std::dec << num_test_insts;
    std::cout << ": \tTestInstance=" << std::hex << input_digit;
    std::cout << " \tInterpreted=" << interpreted_digit 
              << " \tExpected=" << input_value
              << " " << std::endl;
    // Report overall error out of all testing instances
    std::cout << "Number of test instances = " << num_test_insts << std::endl;
    std::cout << "Overall Error Rate = " << std::setprecision(3)
              << ( (double)error / num_test_insts ) * 100
              << "%" << std::endl;
 
    // Close input file for the testing set
    myfile.close();
    }
  }
  else
      std::cout << "Unable to open file for the testing set!" << std::endl; 
  
  return 0;
}

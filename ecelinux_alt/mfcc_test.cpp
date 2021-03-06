//=========================================================================
// testbench.cpp
//=========================================================================
// @brief: testbench for k-nearest-neighbor sound recongnition application
#include <inttypes.h>
#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>
//#include "training_data.h"
#include "mfcc.h"
#include "timer.h"
//using namespace std;


int main() 
{
  // Output file that saves the test bench results
  std::ofstream outfile;
  outfile.open("out.dat");
  
  // Read input file for the testing set
  std::string line;
  std::ifstream myfile ("data/fake_testing_set.dat");

  // HLS streams for communicating with the cordic block
  hls::stream<bit32_t> mfcc_in;
  hls::stream<bit32_t> mfcc_out;

  // Timer
  Timer timer("mfcc FPGA");

  //Store input from sound file
  const int N = 12544;
  bit64_t inputs[N];
  bit32_t hanging_2;
  bit32_t hanging_3;
  
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

        
        //float stage1[49][129];
        //mfcc_fft(input_data, stage1);
        timer.start();
        //for(int i =0; i<49; i++){
          for(int j =0; j<12544; j++){ 
            u dat;
            dat.f = input_data[j];
            inputs[j] = dat.i;     
            //write words to device 
            bit32_t input_lo = inputs[j].range(31,0);
            bit32_t input_hi = inputs[j].range(63,32);
            mfcc_in.write( input_lo);
            mfcc_in.write( input_hi);
          }
       // }

      
      // Call design under test (DUT)
      dut(mfcc_in, mfcc_out);
      bit32_t interpreted_digit =0;
      interpreted_digit = mfcc_out.read();
      hanging_2 = mfcc_out.read();
     // hanging_3 = mfcc_out.read();
      timer.stop();
      // Print result messages to console
      num_test_insts++;
      std::cout << "#" << std::dec << num_test_insts;
      std::cout << ": \tTestInstance=" << std::hex << input_digit;
      std::cout << " \tInterpreted=" << interpreted_digit 
                << " \tExpected=" << input_value;
      // Print result messages to file
      outfile << "#" << std::dec << num_test_insts;
      outfile << ": \tTestInstance=" << std::hex << input_digit;
      outfile << " \tInterpreted=" << interpreted_digit 
              << " \tExpected=" << input_value;
      
      // Check for any difference between k-NN interpreted digit vs. expected digit
      if ( interpreted_digit != input_value ) {
        error++;
        std::cout << " \t[Mismatch!]";
        outfile << " \t[Mismatch!]";
      }
      
      std::cout << std::endl;
      outfile << std::endl;
    }
    std::cout << "Hanging 2 " << (double)hanging_2 << "\n";  
    // Report overall error out of all testing instances
    std::cout << "Overall Error Rate = " << std::setprecision(3)
              << ( (double)error / num_test_insts ) * 100
              << "%" << std::endl;
    outfile << "Overall Error Rate = " << std::setprecision(3)
            << ( (double) error / num_test_insts ) * 100 
            << "%" << std::endl;
    
    // Close input file for the testing set
    myfile.close();
    
  }
  else
      std::cout << "Unable to open file for the testing set!" << std::endl; 
  
  // Close output file
  outfile.close();

  return 0;
}

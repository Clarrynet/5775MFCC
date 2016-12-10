//===========================================================================
// training_data.h
//===========================================================================
// @brief: This header defines a 2D array that includes 14 training sets, 
//         where each set contains 1000 training data.


#ifndef TRAINING_DATA_H
#define TRAINING_DATA_H

#include "typedefs.h"

#define TRAINING_SIZE 1000

const digit training_data[14 * TRAINING_SIZE] = {
    #include "data/training_data_full.dat" 
    
};

const float input_data[32768] = {
    #include "data/testdata.dat"
};


const float hamming[256] = {
    #include "data/hamming.dat"
};
const float melfb[2580] = {
    #include "data/melfb.dat"
};

#endif

#!/bin/bash

echo "Dummy"
export MESSAGE="hoge"
if [ "${USE_CUDA_PARALLEL}" = "00" ]; then
    echo "00"
    export RESULT="00"
fi
if [ "${USE_CUDA_PARALLEL}" = "01" ]; then
    echo "01"    
    export RESULT="01"
fi
if [ "${USE_CUDA_PARALLEL}" = "10" ]; then
    echo "10"        
    export RESULT="10"
fi
if [ "${USE_CUDA_PARALLEL}" = "11" ]; then
    echo "11"            
    export RESULT="11"
fi
            


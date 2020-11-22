#!/bin/bash

echo "Dummy"
export MESSAGE="hoge"
if [ "${USE_CUDA_PARALLEL}" = "00" ]; then
    export RESULT="00"
fi
if [ "${USE_CUDA_PARALLEL}" = "01" ]; then
    export RESULT="01"
fi
if [ "${USE_CUDA_PARALLEL}" = "10" ]; then
    export RESULT="10"
fi
if [ "${USE_CUDA_PARALLEL}" = "11" ]; then
    export RESULT="11"
fi
            


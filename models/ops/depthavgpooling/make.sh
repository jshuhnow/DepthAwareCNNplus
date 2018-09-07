#!/bin/bash
cd "$(dirname ${BASH_SOURCE[0]})"
cd src
pwd
nvcc -c -o depthavgpooling_cuda_kernel.cu.o depthavgpooling_cuda_kernel.cu -x cu -Xcompiler -fPIC -std=c++11 -arch=sm_60
cd ..
CC=g++ python3 build.py

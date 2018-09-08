#!/bin/bash


DOWNLOADER="aria2c"
DOWNLOADER_PARAM='-s 16 -x 16 -d'

PYTHON_EXECUTABLE="python3"
NYU_PATH="../data/nyuv2"
NYU_DATASET="http://horatio.cs.nyu.edu/mit/silberman/nyu_depth_v2/nyu_depth_v2_labeled.mat"
cwd=$(pwd)

cd "$(dirname ${BASH_SOURCE[0]})"
mkdir -p $NYU_PATH 
#$DOWNLOADER $DOWNLOADER_PARAM $NYU_PATH $NYU_DATASET

cd $NYU_PATH 
$PYTHON_EXECUTABLE preprocess.py
cd $cwd

bash ../models/ops/depthavgpooling/make.sh
bash ../models/ops/depthconv/make.sh


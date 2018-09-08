cwd=$(pwd)
cd ..
python3 test.py \
--gpu_ids 2 \
--name nyuv2_VGGdeeplab_depthconv \
--dataset_mode nyuv2 \
--depthconv \
--list ./lists/nyuv2/test.lst \
--how_many 0
cd $cwd

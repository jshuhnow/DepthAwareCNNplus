cwd=$(pwd)
cd ..
python3 test.py \
--gpu_ids 2 \
--name nyuv2_VGGdeeplab_depthconv \
--depthconv \
--dataset_mode nyuv2 \
--list ./lists/nyuv2/val.lst \
--how_many 0
cd $cwd

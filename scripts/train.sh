cwd=$(pwd)
cd ..
python3 train.py \
--model DeeplabVGG \
--name nyuv2_VGGdeeplab_depthconv \
--dataset_mode nyuv2 \
--flip --scale --crop --colorjitter \
--depthconv \
--list ./lists/nyuv2/train.lst \
--vallist ./lists/nyuv2/val.lst \
--continue_train
cd $cwd

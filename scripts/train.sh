cwd=$(pwd)
cd ..
python3 train.py \
--model DeeplabVGG \
--name nyuv2_VGGdeeplab_depthconv_1 \
--dataset_mode nyuv2 \
--depthconv \
--depthglobalpool \
--flip --scale --crop --colorjitter \
--list ./lists/nyuv2/train.lst \
--vallist ./lists/nyuv2/val.lst
cd $cwd
#--continue_train \
#--continue_train \

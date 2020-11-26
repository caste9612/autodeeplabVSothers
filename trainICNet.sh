#CUDA_VISIBLE_DEVICES=0 python Fast_Seg-master/train_distribute.py \
#--data_dir /home/antonioc/Scrivania/ML/dataset/cityscape/leftImg8bit_trainvaltest \
#--save_dir /home/antonioc/Scrivania/ML/autodeeplabVSothers/ModelsSnapshotFolder
#--restore_from "/nas/dataset/pretrained/resnet50-deep.pth" \
#--data_list "/home/antonioc/Scrivania/ML/autodeeplabVSothers/cityscapes" \

CUDA_VISIBLE_DEVICES=0 python -m torch.distributed.launch \
--nproc_per_node=1 Fast_Seg-master/train_distribute.py --data_set cityscapes \
--data_dir "/home/antonioc/Scrivania/ML/dataset/cityscape/leftImg8bit_trainvaltest" \
--data_list "/home/antonioc/Scrivania/ML/autodeeplabVSothers/cityscapes/trainval.txt" \
--arch icnet \
--save_dir "/home/antonioc/Scrivania/ML/autodeeplabVSothers/ModelsSnapshotFolder" \
--input_size 832 \
--batch_size_per_gpu 1 \
--learning_rate 0.01 \
--num_steps 50000 \
--rgb 0 \
--ohem 1 --ohem_thres 0.7 --ohem_keep 100000 \
--log_file "./log/ICNet.log"
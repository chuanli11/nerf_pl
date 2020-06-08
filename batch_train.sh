#!/bin/bash

python train.py \
	--dataset_name llff \
	--root_dir /tmp/ubuntu/data_consiliencecap/test1 \
	--N_importance 64 --img_wh 1024 683 \
	--num_epochs 30 --batch_size 1024 \
	--optimizer adam --lr 5e-4 \
	--lr_scheduler steplr --decay_step 10 20 --decay_gamma 0.5 \
	--exp_name exp_test1 \
	--gpus 0,1,2,3,4,5,6,7

python train.py \
	--dataset_name llff \
	--root_dir /tmp/ubuntu/data_consiliencecap/test2 \
	--N_importance 64 --img_wh 1024 683 \
	--num_epochs 20 --batch_size 1024 \
	--optimizer adam --lr 5e-4 \
	--lr_scheduler steplr --decay_step 10 20 --decay_gamma 0.5 \
	--exp_name exp_test2 \
	--gpus 0,1,2,3


python train.py \
	--dataset_name llff \
	--root_dir /tmp/ubuntu/data_consiliencecap/test3 \
	--N_importance 64 --img_wh 1024 683 \
	--num_epochs 20 --batch_size 1024 \
	--optimizer adam --lr 5e-4 \
	--lr_scheduler steplr --decay_step 10 20 --decay_gamma 0.5 \
	--exp_name exp_test3 \
	--gpus 0,1,2,3


python train.py \
	--dataset_name llff \
	--root_dir /tmp/ubuntu/data_consiliencecap/testall \
	--N_importance 64 --img_wh 1024 683 \
	--num_epochs 20 --batch_size 1024 \
	--optimizer adam --lr 5e-4 \
	--lr_scheduler steplr --decay_step 10 20 --decay_gamma 0.5 \
	--exp_name exp_testall \
	--gpus 0

